module Decl150Base3  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x2 ) ) ) $ ( x2 ) ) ) ) $ ( if false then true else false )
        d5 : if false then if false then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if d1 then d1 else false ) ) ) $ ( if d1 then false else d1 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( x10 ) ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d12 : if true then if true then Bool else Bool else if false then Bool else Bool
        d12 = if if d1 then d5 else false then if false then true else false else if d7 then true else d7
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if true then true else x14 ) ) ) $ ( if false then true else d12 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then x19 else x19 ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if x18 then x18 else true ) ) ) $ ( if d1 then d7 else false )
        d20 : if false then if true then Bool else Bool else if true then Bool else Bool
        d20 = if if d12 then false else d17 then if false then d12 else false else if d5 then d1 else true
        d21 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then x24 else Bool ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> d5 ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d25 = if if false then true else d12 then if false then false else d1 else if d17 then false else d12
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> x30 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if true then x29 else true ) ) ) $ ( if true then d20 else false )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d32 = if if true then true else d25 then if false then d17 else d5 else if false then d12 else d7
        d34 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x37 ) ) ) $ ( x36 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if x35 then d5 else x35 ) ) ) $ ( if d21 then d5 else false )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> Bool ) ) ) $ ( x41 ) ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> d12 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d5 )
        d43 : if true then if true then Bool else Bool else if false then Bool else Bool
        d43 = if if d5 then d20 else d13 then if false then false else false else if false then true else d7
        d44 : if false then if true then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if d28 then d38 else d7 ) ) ) $ ( if d13 then true else d20 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d46 = if if d13 then false else d17 then if d34 then false else d1 else if false then true else d1
        d49 : if true then if false then Bool else Bool else if true then Bool else Bool
        d49 = if if d13 then true else d46 then if d28 then true else d44 else if true then d43 else false
        d50 : if true then if true then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> x51 ) ) ) $ ( d1 ) ) ) ) $ ( if false then true else d28 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( x56 ) ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> x54 ) ) ) $ ( x54 ) ) ) ) $ ( if true then d32 else d17 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if d20 then x59 else d32 ) ) ) $ ( if d34 then false else d20 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> false ) ) ) $ ( d49 ) ) ) ) $ ( if false then d46 else d53 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else x67 ) ) ) $ ( if false then Bool else Bool )
        d66 = if if d49 then true else false then if false then false else d13 else if false then d34 else false
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if true then Bool else x69 ) ) ) $ ( if true then Bool else Bool )
        d68 = if if d34 then true else d13 then if true then true else false else if true then d21 else true
        d70 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if d1 then x71 else true ) ) ) $ ( if d7 then true else true )
        d73 : if true then if true then Bool else Bool else if true then Bool else Bool
        d73 = if if true then false else false then if true then true else true else if d20 then false else true
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d74 = if if false then d21 else d32 then if d53 then d68 else d20 else if true then true else d50
        d77 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> false ) ) ) $ ( x78 ) ) ) ) $ ( if d38 then d66 else d13 )
        d82 : if false then if true then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> d53 ) ) ) $ ( true ) ) ) ) $ ( if false then d43 else false )
        d85 : if false then if false then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if x86 then x86 else d70 ) ) ) $ ( if true then false else d1 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( x90 ) ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> d5 ) ) ) $ ( d85 ) ) ) ) $ ( if false then false else false )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then Bool else x95 ) ) ) $ ( if false then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> true ) ) ) $ ( x93 ) ) ) ) $ ( if true then d74 else d74 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( x97 ) ) ) ) $ ( if true then Bool else Bool )
        d96 = if if d87 then d74 else d49 then if d77 then d34 else true else if d70 then d21 else d50
        d99 : if false then if true then Bool else Bool else if true then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> d62 ) ) ) $ ( true ) ) ) ) $ ( if d17 then true else d25 )
        d102 : if true then if false then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> x104 ) ) ) $ ( d44 ) ) ) ) $ ( if true then d1 else d32 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d105 = if if d87 then false else false then if false then d50 else d13 else if d66 then d102 else false
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if false then Bool else x108 ) ) ) $ ( if false then Bool else Bool )
        d107 = if if false then d74 else d66 then if false then d66 else true else if false then true else d50
        d109 : if true then if true then Bool else Bool else if false then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if false then true else x110 ) ) ) $ ( if false then d107 else d46 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then x112 else x112 ) ) ) $ ( if false then Bool else Bool )
        d111 = if if d99 then true else d99 then if d68 then d46 else d13 else if true then false else false
        d113 : if true then if false then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if d25 then d73 else x114 ) ) ) $ ( if false then d92 else d28 )
        d115 : if true then if true then Bool else Bool else if false then Bool else Bool
        d115 = if if true then false else false then if d109 then true else d109 else if true then true else d73
        d116 : if false then if true then Bool else Bool else if true then Bool else Bool
        d116 = if if d115 then false else d113 then if false then false else false else if true then d82 else true
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then Bool else x118 ) ) ) $ ( if true then Bool else Bool )
        d117 = if if true then d62 else d1 then if d77 then d107 else true else if d17 then true else true
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x120 ) ) ) $ ( x120 ) ) ) ) $ ( if false then Bool else Bool )
        d119 = if if d62 then true else d105 then if true then d105 else d115 else if true then d20 else true
        d122 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if true then x125 else Bool ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> d44 ) ) ) $ ( d113 ) ) ) ) $ ( if false then d13 else true )
        d126 : if true then if false then Bool else Bool else if false then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> d13 ) ) ) $ ( true ) ) ) ) $ ( if true then d53 else true )
        d129 : if false then if false then Bool else Bool else if true then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> x130 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d132 : if true then if false then Bool else Bool else if false then Bool else Bool
        d132 = if if d122 then true else true then if true then false else d58 else if d13 then d107 else false
        d133 : if false then if false then Bool else Bool else if true then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> x134 ) ) ) $ ( false ) ) ) ) $ ( if d53 then d119 else d111 )
        d136 : if false then if true then Bool else Bool else if false then Bool else Bool
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> if x137 then true else x137 ) ) ) $ ( if true then d62 else true )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> x141 ) ) ) $ ( x141 ) ) ) ) $ ( if true then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d1 )
        d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> Bool ) ) ) $ ( x144 ) ) ) ) $ ( if false then Bool else Bool )
        d143 = if if true then true else false then if false then d12 else true else if d87 then false else true
        d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> x148 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d146 = if if d133 then d20 else d85 then if d87 then d12 else d46 else if true then false else d5
        d149 : ( ( Set -> Set ) ∋ ( ( λ x151 -> if false then Bool else x151 ) ) ) $ ( if true then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if d132 then true else true ) ) ) $ ( if true then true else d58 )
        d152 : if false then if true then Bool else Bool else if true then Bool else Bool
        d152 = if if d119 then d20 else true then if true then true else d28 else if false then true else true
        d153 : if true then if false then Bool else Bool else if true then Bool else Bool
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> if false then x154 else true ) ) ) $ ( if d20 then false else d132 )
        d155 : if false then if false then Bool else Bool else if true then Bool else Bool
        d155 = if if d138 then d146 else d12 then if d87 then false else d99 else if true then false else true
        d156 : if false then if false then Bool else Bool else if true then Bool else Bool
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> if x157 then true else true ) ) ) $ ( if d109 then true else d116 )
        d158 : if false then if false then Bool else Bool else if true then Bool else Bool
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> if false then true else false ) ) ) $ ( if false then false else d99 )
        d160 : if false then if true then Bool else Bool else if true then Bool else Bool
        d160 = if if d62 then d38 else d126 then if false then true else d129 else if d1 then d77 else d152
        d161 : ( ( Set -> Set ) ∋ ( ( λ x162 -> if false then Bool else x162 ) ) ) $ ( if false then Bool else Bool )
        d161 = if if d58 then false else true then if d146 then false else false else if true then true else false
        d163 : if false then if false then Bool else Bool else if true then Bool else Bool
        d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> ( ( Bool -> Bool ) ∋ ( ( λ x165 -> true ) ) ) $ ( d5 ) ) ) ) $ ( if false then d70 else true )
        d166 : if true then if true then Bool else Bool else if true then Bool else Bool
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> ( ( Bool -> Bool ) ∋ ( ( λ x168 -> x167 ) ) ) $ ( x167 ) ) ) ) $ ( if d126 then d156 else true )
        d169 : if true then if true then Bool else Bool else if true then Bool else Bool
        d169 = if if true then true else d113 then if false then d20 else d113 else if true then d160 else true
        d170 : if true then if false then Bool else Bool else if true then Bool else Bool
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> if d13 then d107 else x171 ) ) ) $ ( if d122 then d66 else true )
        d172 : if false then if true then Bool else Bool else if true then Bool else Bool
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x173 -> ( ( Bool -> Bool ) ∋ ( ( λ x174 -> x173 ) ) ) $ ( false ) ) ) ) $ ( if true then d74 else d7 )
        d175 : if true then if true then Bool else Bool else if true then Bool else Bool
        d175 = if if false then false else true then if d116 then true else true else if false then d116 else true
        d176 : if true then if false then Bool else Bool else if false then Bool else Bool
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( Bool -> Bool ) ∋ ( ( λ x178 -> x178 ) ) ) $ ( d25 ) ) ) ) $ ( if true then false else false )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if false then x180 else Bool ) ) ) $ ( if true then Bool else Bool )
        d179 = if if true then true else d25 then if false then d17 else d143 else if d53 then d163 else false
        d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> if false then x182 else x182 ) ) ) $ ( if false then false else d155 )
        d184 : if true then if true then Bool else Bool else if true then Bool else Bool
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> ( ( Bool -> Bool ) ∋ ( ( λ x186 -> false ) ) ) $ ( d136 ) ) ) ) $ ( if d166 then d87 else false )
        d187 : if true then if true then Bool else Bool else if true then Bool else Bool
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x188 -> if true then d12 else d12 ) ) ) $ ( if d25 then d169 else true )
        d189 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if d146 then d50 else d184 ) ) ) $ ( if true then d136 else d77 )
        d192 : if false then if true then Bool else Bool else if true then Bool else Bool
        d192 = if if d62 then false else false then if d179 then d58 else false else if true then true else false
        d193 : if true then if true then Bool else Bool else if false then Bool else Bool
        d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> if x194 then x194 else d161 ) ) ) $ ( if true then false else false )
        d195 : if true then if true then Bool else Bool else if false then Bool else Bool
        d195 = ( ( Bool -> Bool ) ∋ ( ( λ x196 -> ( ( Bool -> Bool ) ∋ ( ( λ x197 -> x196 ) ) ) $ ( d74 ) ) ) ) $ ( if d66 then false else true )
        d198 : if false then if false then Bool else Bool else if false then Bool else Bool
        d198 = if if d163 then false else true then if d166 then d43 else true else if d181 then false else d161
        d199 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x201 -> x200 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d199 = if if true then d53 else d152 then if d85 then d44 else d49 else if false then d193 else d105
        d202 : if false then if false then Bool else Bool else if false then Bool else Bool
        d202 = ( ( Bool -> Bool ) ∋ ( ( λ x203 -> if false then false else d7 ) ) ) $ ( if false then true else d82 )
        d204 : ( ( Set -> Set ) ∋ ( ( λ x206 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d204 = ( ( Bool -> Bool ) ∋ ( ( λ x205 -> if x205 then x205 else true ) ) ) $ ( if false then true else d58 )
        d207 : ( ( Set -> Set ) ∋ ( ( λ x210 -> if true then Bool else x210 ) ) ) $ ( if true then Bool else Bool )
        d207 = ( ( Bool -> Bool ) ∋ ( ( λ x208 -> ( ( Bool -> Bool ) ∋ ( ( λ x209 -> d179 ) ) ) $ ( false ) ) ) ) $ ( if d28 then false else d109 )
        d211 : ( ( Set -> Set ) ∋ ( ( λ x213 -> ( ( Set -> Set ) ∋ ( ( λ x214 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x212 -> if true then false else false ) ) ) $ ( if false then d117 else true )
        d215 : if true then if false then Bool else Bool else if false then Bool else Bool
        d215 = ( ( Bool -> Bool ) ∋ ( ( λ x216 -> if d113 then x216 else d20 ) ) ) $ ( if true then d176 else d129 )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x219 -> ( ( Set -> Set ) ∋ ( ( λ x220 -> x219 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x218 -> if true then x218 else d199 ) ) ) $ ( if d187 then d192 else false )
        d221 : if false then if true then Bool else Bool else if false then Bool else Bool
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x222 -> ( ( Bool -> Bool ) ∋ ( ( λ x223 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d224 : if true then if false then Bool else Bool else if false then Bool else Bool
        d224 = ( ( Bool -> Bool ) ∋ ( ( λ x225 -> ( ( Bool -> Bool ) ∋ ( ( λ x226 -> x226 ) ) ) $ ( x225 ) ) ) ) $ ( if d96 then true else d136 )
        d227 : if false then if false then Bool else Bool else if true then Bool else Bool
        d227 = ( ( Bool -> Bool ) ∋ ( ( λ x228 -> ( ( Bool -> Bool ) ∋ ( ( λ x229 -> d163 ) ) ) $ ( x228 ) ) ) ) $ ( if d85 then false else d166 )
        d230 : if false then if true then Bool else Bool else if true then Bool else Bool
        d230 = ( ( Bool -> Bool ) ∋ ( ( λ x231 -> if false then true else true ) ) ) $ ( if d217 then true else d227 )
        d232 : if true then if true then Bool else Bool else if true then Bool else Bool
        d232 = if if false then true else d169 then if d155 then true else d129 else if d163 then d117 else d156
        d233 : if false then if true then Bool else Bool else if true then Bool else Bool
        d233 = if if d38 then false else d34 then if true then d170 else d230 else if true then d96 else true
        d234 : if false then if true then Bool else Bool else if false then Bool else Bool
        d234 = ( ( Bool -> Bool ) ∋ ( ( λ x235 -> ( ( Bool -> Bool ) ∋ ( ( λ x236 -> true ) ) ) $ ( x235 ) ) ) ) $ ( if true then true else d199 )
        d237 : if true then if true then Bool else Bool else if true then Bool else Bool
        d237 = if if true then d153 else false then if true then false else d21 else if true then false else d13
        d238 : ( ( Set -> Set ) ∋ ( ( λ x239 -> if true then Bool else x239 ) ) ) $ ( if true then Bool else Bool )
        d238 = if if true then true else d119 then if false then false else d169 else if false then false else true
        d240 : ( ( Set -> Set ) ∋ ( ( λ x241 -> if true then x241 else x241 ) ) ) $ ( if false then Bool else Bool )
        d240 = if if true then true else true then if d170 then false else d227 else if false then true else d237
        d242 : if true then if false then Bool else Bool else if true then Bool else Bool
        d242 = if if d233 then d92 else d77 then if d224 then d122 else d240 else if d77 then d204 else d122
        d243 : if false then if true then Bool else Bool else if false then Bool else Bool
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x244 -> ( ( Bool -> Bool ) ∋ ( ( λ x245 -> d136 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d44 )
        d246 : if false then if true then Bool else Bool else if false then Bool else Bool
        d246 = ( ( Bool -> Bool ) ∋ ( ( λ x247 -> if x247 then d111 else true ) ) ) $ ( if d87 then d111 else false )
        d248 : if false then if false then Bool else Bool else if true then Bool else Bool
        d248 = if if true then d126 else d224 then if false then d77 else d122 else if false then d82 else true
        d249 : if true then if true then Bool else Bool else if true then Bool else Bool
        d249 = if if d195 then true else false then if true then d170 else false else if false then d158 else true
        d250 : if false then if true then Bool else Bool else if false then Bool else Bool
        d250 = if if d17 then d46 else true then if true then true else false else if false then d163 else d136
        d251 : ( ( Set -> Set ) ∋ ( ( λ x252 -> if true then x252 else x252 ) ) ) $ ( if false then Bool else Bool )
        d251 = if if false then false else d136 then if d152 then d227 else d92 else if d204 then d122 else true
        d253 : ( ( Set -> Set ) ∋ ( ( λ x254 -> ( ( Set -> Set ) ∋ ( ( λ x255 -> Bool ) ) ) $ ( x254 ) ) ) ) $ ( if true then Bool else Bool )
        d253 = if if d7 then d105 else false then if false then d160 else false else if false then d199 else false
        d256 : if true then if false then Bool else Bool else if false then Bool else Bool
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x257 -> if false then d207 else x257 ) ) ) $ ( if false then false else false )
        d258 : ( ( Set -> Set ) ∋ ( ( λ x260 -> if true then Bool else x260 ) ) ) $ ( if true then Bool else Bool )
        d258 = ( ( Bool -> Bool ) ∋ ( ( λ x259 -> if x259 then d77 else x259 ) ) ) $ ( if d87 then true else true )
        d261 : if false then if true then Bool else Bool else if false then Bool else Bool
        d261 = ( ( Bool -> Bool ) ∋ ( ( λ x262 -> ( ( Bool -> Bool ) ∋ ( ( λ x263 -> false ) ) ) $ ( d256 ) ) ) ) $ ( if d253 then true else d105 )
        d264 : ( ( Set -> Set ) ∋ ( ( λ x266 -> if true then x266 else Bool ) ) ) $ ( if false then Bool else Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x265 -> if true then x265 else x265 ) ) ) $ ( if d143 then d230 else false )
        d267 : if false then if true then Bool else Bool else if true then Bool else Bool
        d267 = if if d38 then true else false then if d115 then false else false else if d117 then true else true
        d268 : ( ( Set -> Set ) ∋ ( ( λ x269 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> x269 ) ) ) $ ( x269 ) ) ) ) $ ( if true then Bool else Bool )
        d268 = if if false then d156 else false then if false then false else d87 else if d133 then true else d5
        d271 : if false then if false then Bool else Bool else if true then Bool else Bool
        d271 = ( ( Bool -> Bool ) ∋ ( ( λ x272 -> if x272 then false else true ) ) ) $ ( if d28 then true else d73 )
        d273 : if true then if false then Bool else Bool else if false then Bool else Bool
        d273 = ( ( Bool -> Bool ) ∋ ( ( λ x274 -> ( ( Bool -> Bool ) ∋ ( ( λ x275 -> true ) ) ) $ ( d58 ) ) ) ) $ ( if true then d198 else d267 )
        d276 : if false then if false then Bool else Bool else if true then Bool else Bool
        d276 = if if d25 then d152 else d109 then if d166 then true else d132 else if d234 then d155 else true
        d277 : ( ( Set -> Set ) ∋ ( ( λ x278 -> if false then x278 else x278 ) ) ) $ ( if true then Bool else Bool )
        d277 = if if d149 then true else false then if false then true else d187 else if false then false else d153
        d279 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x281 -> x281 ) ) ) $ ( x280 ) ) ) ) $ ( if true then Bool else Bool )
        d279 = if if false then true else false then if d181 then false else false else if false then false else true
        d282 : ( ( Set -> Set ) ∋ ( ( λ x283 -> if true then x283 else Bool ) ) ) $ ( if false then Bool else Bool )
        d282 = if if true then false else false then if d155 then d105 else false else if d193 then false else d146
        d284 : if false then if false then Bool else Bool else if false then Bool else Bool
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x285 -> if x285 then d146 else false ) ) ) $ ( if d143 then false else d224 )
        d286 : ( ( Set -> Set ) ∋ ( ( λ x289 -> ( ( Set -> Set ) ∋ ( ( λ x290 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d286 = ( ( Bool -> Bool ) ∋ ( ( λ x287 -> ( ( Bool -> Bool ) ∋ ( ( λ x288 -> d105 ) ) ) $ ( d215 ) ) ) ) $ ( if false then d44 else true )
        d291 : ( ( Set -> Set ) ∋ ( ( λ x292 -> if true then x292 else Bool ) ) ) $ ( if true then Bool else Bool )
        d291 = if if false then false else d211 then if true then true else d109 else if false then d279 else d50
        d293 : ( ( Set -> Set ) ∋ ( ( λ x294 -> if true then x294 else x294 ) ) ) $ ( if false then Bool else Bool )
        d293 = if if false then true else false then if d215 then d249 else d198 else if d204 then d279 else false
        d295 : ( ( Set -> Set ) ∋ ( ( λ x296 -> if true then Bool else x296 ) ) ) $ ( if false then Bool else Bool )
        d295 = if if d136 then d250 else true then if true then false else d211 else if true then d230 else d20
        d297 : ( ( Set -> Set ) ∋ ( ( λ x298 -> if true then x298 else x298 ) ) ) $ ( if true then Bool else Bool )
        d297 = if if d117 then false else false then if false then true else d99 else if d155 then true else d232
        d299 : ( ( Set -> Set ) ∋ ( ( λ x302 -> if false then Bool else x302 ) ) ) $ ( if true then Bool else Bool )
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x301 -> d12 ) ) ) $ ( false ) ) ) ) $ ( if d282 then false else true )
        d303 : ( ( Set -> Set ) ∋ ( ( λ x305 -> if false then x305 else x305 ) ) ) $ ( if false then Bool else Bool )
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x304 -> if x304 then x304 else d170 ) ) ) $ ( if true then false else d297 )
        d306 : if true then if true then Bool else Bool else if true then Bool else Bool
        d306 = ( ( Bool -> Bool ) ∋ ( ( λ x307 -> if true then true else d256 ) ) ) $ ( if d20 then d132 else true )
        d308 : ( ( Set -> Set ) ∋ ( ( λ x309 -> if false then x309 else Bool ) ) ) $ ( if true then Bool else Bool )
        d308 = if if d258 then true else true then if false then d126 else false else if d207 then true else true
        d310 : ( ( Set -> Set ) ∋ ( ( λ x311 -> ( ( Set -> Set ) ∋ ( ( λ x312 -> x312 ) ) ) $ ( x311 ) ) ) ) $ ( if true then Bool else Bool )
        d310 = if if false then true else false then if true then false else d70 else if true then d169 else true
        d313 : ( ( Set -> Set ) ∋ ( ( λ x314 -> ( ( Set -> Set ) ∋ ( ( λ x315 -> Bool ) ) ) $ ( x314 ) ) ) ) $ ( if false then Bool else Bool )
        d313 = if if true then d1 else false then if false then d116 else d111 else if d115 then d238 else d12
        d316 : ( ( Set -> Set ) ∋ ( ( λ x319 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> x319 ) ) ) $ ( x319 ) ) ) ) $ ( if false then Bool else Bool )
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x317 -> ( ( Bool -> Bool ) ∋ ( ( λ x318 -> x317 ) ) ) $ ( x317 ) ) ) ) $ ( if true then false else d242 )
        d321 : ( ( Set -> Set ) ∋ ( ( λ x322 -> if false then x322 else Bool ) ) ) $ ( if false then Bool else Bool )
        d321 = if if d264 then true else false then if false then false else d129 else if d253 then true else true
        d323 : if false then if true then Bool else Bool else if false then Bool else Bool
        d323 = ( ( Bool -> Bool ) ∋ ( ( λ x324 -> ( ( Bool -> Bool ) ∋ ( ( λ x325 -> x325 ) ) ) $ ( x324 ) ) ) ) $ ( if d116 then d277 else false )
        d326 : ( ( Set -> Set ) ∋ ( ( λ x327 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d326 = if if false then false else false then if d237 then d234 else d126 else if true then true else d256
        d328 : ( ( Set -> Set ) ∋ ( ( λ x329 -> ( ( Set -> Set ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( x329 ) ) ) ) $ ( if false then Bool else Bool )
        d328 = if if d62 then d38 else d238 then if true then d53 else false else if false then true else d204
        d331 : ( ( Set -> Set ) ∋ ( ( λ x332 -> ( ( Set -> Set ) ∋ ( ( λ x333 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d331 = if if false then false else d258 then if d34 then true else d258 else if d62 then true else false
        d334 : if true then if false then Bool else Bool else if false then Bool else Bool
        d334 = if if d143 then d156 else false then if d5 then d49 else d109 else if d211 then d284 else true
        d335 : ( ( Set -> Set ) ∋ ( ( λ x338 -> ( ( Set -> Set ) ∋ ( ( λ x339 -> x339 ) ) ) $ ( x338 ) ) ) ) $ ( if true then Bool else Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x336 -> ( ( Bool -> Bool ) ∋ ( ( λ x337 -> x337 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d340 : ( ( Set -> Set ) ∋ ( ( λ x342 -> if false then x342 else Bool ) ) ) $ ( if true then Bool else Bool )
        d340 = ( ( Bool -> Bool ) ∋ ( ( λ x341 -> if x341 then d323 else false ) ) ) $ ( if d7 then d240 else false )
        d343 : ( ( Set -> Set ) ∋ ( ( λ x345 -> if true then x345 else Bool ) ) ) $ ( if false then Bool else Bool )
        d343 = ( ( Bool -> Bool ) ∋ ( ( λ x344 -> if d211 then true else x344 ) ) ) $ ( if false then false else d295 )
        d346 : if true then if false then Bool else Bool else if false then Bool else Bool
        d346 = if if d156 then d343 else true then if false then d119 else false else if false then d92 else d276
        d347 : ( ( Set -> Set ) ∋ ( ( λ x348 -> ( ( Set -> Set ) ∋ ( ( λ x349 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d347 = if if true then false else d73 then if d306 then d297 else false else if false then d160 else d161
        d350 : if true then if true then Bool else Bool else if true then Bool else Bool
        d350 = if if d58 then true else d44 then if d99 then true else true else if d187 then false else d306
        d351 : ( ( Set -> Set ) ∋ ( ( λ x354 -> if true then x354 else Bool ) ) ) $ ( if false then Bool else Bool )
        d351 = ( ( Bool -> Bool ) ∋ ( ( λ x352 -> ( ( Bool -> Bool ) ∋ ( ( λ x353 -> x352 ) ) ) $ ( d310 ) ) ) ) $ ( if true then d116 else d181 )
        d355 : ( ( Set -> Set ) ∋ ( ( λ x356 -> ( ( Set -> Set ) ∋ ( ( λ x357 -> Bool ) ) ) $ ( x356 ) ) ) ) $ ( if true then Bool else Bool )
        d355 = if if false then d85 else d291 then if d313 then true else true else if d133 then true else true
        d358 : if false then if true then Bool else Bool else if true then Bool else Bool
        d358 = ( ( Bool -> Bool ) ∋ ( ( λ x359 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( true ) ) ) ) $ ( if d181 then false else true )
        d361 : if true then if true then Bool else Bool else if true then Bool else Bool
        d361 = ( ( Bool -> Bool ) ∋ ( ( λ x362 -> if false then x362 else false ) ) ) $ ( if false then false else false )
        d363 : if true then if false then Bool else Bool else if true then Bool else Bool
        d363 = if if true then d44 else d217 then if d204 then false else d82 else if true then false else false
        d364 : if false then if false then Bool else Bool else if true then Bool else Bool
        d364 = if if true then d126 else false then if d361 then d85 else d264 else if true then d99 else d116
        d365 : ( ( Set -> Set ) ∋ ( ( λ x368 -> ( ( Set -> Set ) ∋ ( ( λ x369 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d365 = ( ( Bool -> Bool ) ∋ ( ( λ x366 -> ( ( Bool -> Bool ) ∋ ( ( λ x367 -> d299 ) ) ) $ ( true ) ) ) ) $ ( if d217 then d129 else false )
        d370 : if true then if true then Bool else Bool else if false then Bool else Bool
        d370 = if if false then d117 else false then if true then false else true else if true then false else true
        d371 : ( ( Set -> Set ) ∋ ( ( λ x374 -> ( ( Set -> Set ) ∋ ( ( λ x375 -> x374 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d371 = ( ( Bool -> Bool ) ∋ ( ( λ x372 -> ( ( Bool -> Bool ) ∋ ( ( λ x373 -> d204 ) ) ) $ ( true ) ) ) ) $ ( if false then d50 else true )
        d376 : ( ( Set -> Set ) ∋ ( ( λ x377 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d376 = if if d249 then false else false then if d211 then true else true else if true then false else d187
        d378 : ( ( Set -> Set ) ∋ ( ( λ x379 -> if false then Bool else x379 ) ) ) $ ( if false then Bool else Bool )
        d378 = if if d87 then d107 else d187 then if false then false else d82 else if true then d13 else false
        d380 : if true then if false then Bool else Bool else if false then Bool else Bool
        d380 = if if false then true else d20 then if false then d161 else d323 else if false then d138 else false