module Decl450Base6  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then x4 else x4 ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d5 : if true then if true then Bool else Bool else if true then Bool else Bool
        d5 = if if false then d1 else true then if d1 then d1 else d1 else if d1 then false else false
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then x9 else x9 ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d10 : if true then if false then Bool else Bool else if false then Bool else Bool
        d10 = if if d1 then d6 else false then if true then true else false else if d5 then d6 else false
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if false then x14 else Bool ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> false ) ) ) $ ( x12 ) ) ) ) $ ( if false then d10 else d10 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if true then Bool else x17 ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if x16 then d10 else x16 ) ) ) $ ( if true then d11 else true )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else x20 ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if x19 then d5 else d6 ) ) ) $ ( if true then d15 else d15 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d21 = if if false then d5 else d18 then if d1 then d15 else false else if true then d6 else d5
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = if if false then d11 else true then if true then false else false else if d18 then false else d11
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = if if d6 then d5 else d11 then if false then false else true else if d6 then true else d5
        d26 : if true then if true then Bool else Bool else if false then Bool else Bool
        d26 = if if d11 then true else true then if false then d10 else true else if d10 then d18 else false
        d27 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if x28 then x28 else x28 ) ) ) $ ( if false then d25 else true )
        d31 : if false then if false then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( d24 ) ) ) ) $ ( if false then d15 else d11 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then Bool else x35 ) ) ) $ ( if true then Bool else Bool )
        d34 = if if false then d31 else false then if d26 then d18 else d21 else if true then d27 else d27
        d36 : if true then if true then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if d11 then false else d11 ) ) ) $ ( if true then false else d31 )
        d38 : if false then if true then Bool else Bool else if true then Bool else Bool
        d38 = if if d31 then d27 else d24 then if false then d26 else d26 else if false then true else false
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if true then x41 else Bool ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if x40 then d31 else false ) ) ) $ ( if true then false else d21 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = if if false then d11 else d18 then if true then true else true else if false then d15 else d38
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> x45 ) ) ) $ ( x45 ) ) ) ) $ ( if true then Bool else Bool )
        d44 = if if d1 then false else d21 then if false then d21 else d36 else if true then d26 else false
        d47 : if false then if true then Bool else Bool else if true then Bool else Bool
        d47 = if if false then d42 else d42 then if d27 then false else d5 else if d24 then d27 else d10
        d48 : if true then if true then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if true then false else true ) ) ) $ ( if false then true else d5 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( x53 ) ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> d25 ) ) ) $ ( x51 ) ) ) ) $ ( if d1 then false else d26 )
        d55 : if false then if false then Bool else Bool else if false then Bool else Bool
        d55 = if if d11 then true else d50 then if false then false else d10 else if true then false else d42
        d56 : if true then if true then Bool else Bool else if false then Bool else Bool
        d56 = if if false then d10 else true then if d47 then d26 else d36 else if true then d55 else true
        d57 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> x61 ) ) ) $ ( x60 ) ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> true ) ) ) $ ( x58 ) ) ) ) $ ( if true then true else true )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> x64 ) ) ) $ ( x63 ) ) ) ) $ ( if false then Bool else Bool )
        d62 = if if true then d34 else d24 then if true then true else false else if true then d38 else true
        d65 : if true then if false then Bool else Bool else if true then Bool else Bool
        d65 = if if true then true else d18 then if true then true else d6 else if true then d21 else false
        d66 : if true then if false then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if x67 then x67 else d47 ) ) ) $ ( if d25 then d5 else false )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then x69 else x69 ) ) ) $ ( if false then Bool else Bool )
        d68 = if if d38 then false else d50 then if true then false else false else if d66 then d24 else true
        d70 : if true then if false then Bool else Bool else if false then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> x72 ) ) ) $ ( false ) ) ) ) $ ( if true then d47 else d1 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> x75 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d73 = if if d21 then true else d65 then if d65 then false else d68 else if d31 then true else d62
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> d55 ) ) ) $ ( x77 ) ) ) ) $ ( if d11 then false else true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if true then x83 else x83 ) ) ) $ ( if false then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if x82 then x82 else true ) ) ) $ ( if false then false else false )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d84 = if if d11 then false else d5 then if d57 then false else false else if d1 then d48 else false
        d86 : if false then if false then Bool else Bool else if false then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if true then true else false ) ) ) $ ( if true then true else true )
        d88 : if true then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> d65 ) ) ) $ ( true ) ) ) ) $ ( if d76 then false else true )
        d91 : if true then if false then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> true ) ) ) $ ( x92 ) ) ) ) $ ( if false then false else d76 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> x95 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = if if d88 then true else true then if true then d70 else false else if d15 then d56 else d65
        d97 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> x100 ) ) ) $ ( x100 ) ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> d42 ) ) ) $ ( x98 ) ) ) ) $ ( if d21 then true else true )
        d102 : if true then if false then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> x103 ) ) ) $ ( d91 ) ) ) ) $ ( if d88 then false else true )
        d105 : if false then if false then Bool else Bool else if true then Bool else Bool
        d105 = if if d15 then false else true then if false then true else d27 else if true then true else d70
        d106 : if true then if true then Bool else Bool else if false then Bool else Bool
        d106 = if if d86 then true else d36 then if false then d102 else d65 else if d6 then d76 else true
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d107 = if if d73 then true else d10 then if d84 then d81 else d18 else if true then d1 else d26
        d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then x112 else Bool ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if x111 then false else true ) ) ) $ ( if false then d11 else d11 )
        d113 : if true then if false then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if false then false else d73 ) ) ) $ ( if d24 then false else false )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> x116 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d115 = if if false then d24 else d68 then if d105 then d62 else d24 else if false then false else true
        d118 : if true then if true then Bool else Bool else if true then Bool else Bool
        d118 = if if d26 then true else d91 then if false then d94 else true else if true then d42 else d91
        d119 : if true then if false then Bool else Bool else if true then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> d38 ) ) ) $ ( d76 ) ) ) ) $ ( if true then false else d91 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if false then x123 else Bool ) ) ) $ ( if false then Bool else Bool )
        d122 = if if false then true else true then if d55 then d50 else true else if true then d18 else false
        d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d124 = if if false then d107 else true then if d105 then false else false else if true then d76 else d73
        d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if true then x128 else Bool ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if true then false else d68 ) ) ) $ ( if true then d57 else true )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> x130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d129 = if if false then d21 else true then if true then true else d24 else if d11 then false else d119
        d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> Bool ) ) ) $ ( x133 ) ) ) ) $ ( if false then Bool else Bool )
        d132 = if if d97 then false else true then if true then d119 else true else if false then false else d55
        d135 : ( ( Set -> Set ) ∋ ( ( λ x138 -> if false then Bool else x138 ) ) ) $ ( if false then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( Bool -> Bool ) ∋ ( ( λ x137 -> true ) ) ) $ ( x136 ) ) ) ) $ ( if false then false else false )
        d139 : if true then if false then Bool else Bool else if true then Bool else Bool
        d139 = if if d57 then false else false then if d36 then false else d129 else if d50 then false else d129
        d140 : if false then if true then Bool else Bool else if true then Bool else Bool
        d140 = if if true then d62 else d50 then if false then d50 else d11 else if d27 then d1 else false
        d141 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> ( ( Bool -> Bool ) ∋ ( ( λ x143 -> d119 ) ) ) $ ( x142 ) ) ) ) $ ( if false then d102 else false )
        d146 : if false then if true then Bool else Bool else if true then Bool else Bool
        d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> if d113 then false else d84 ) ) ) $ ( if true then false else true )
        d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> if true then x149 else x149 ) ) ) $ ( if false then Bool else Bool )
        d148 = if if d132 then d84 else false then if d106 then false else d25 else if d119 then d126 else d115
        d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d150 = if if true then d11 else d110 then if d39 then true else d66 else if true then d81 else d21
        d153 : if true then if true then Bool else Bool else if true then Bool else Bool
        d153 = if if d150 then true else true then if d31 then d6 else false else if false then true else false
        d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> if true then x155 else Bool ) ) ) $ ( if true then Bool else Bool )
        d154 = if if d73 then false else d119 then if true then true else false else if d65 then true else d50
        d156 : if false then if true then Bool else Bool else if true then Bool else Bool
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> if true then d81 else true ) ) ) $ ( if false then true else true )
        d158 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if false then x160 else x160 ) ) ) $ ( if false then Bool else Bool )
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> if d66 then d39 else true ) ) ) $ ( if d48 then d122 else d47 )
        d161 : if true then if false then Bool else Bool else if true then Bool else Bool
        d161 = if if true then d148 else d1 then if false then false else d113 else if false then true else false
        d162 : if true then if true then Bool else Bool else if true then Bool else Bool
        d162 = if if d24 then d66 else d27 then if d26 then false else d50 else if d62 then false else d34
        d163 : if false then if true then Bool else Bool else if true then Bool else Bool
        d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> ( ( Bool -> Bool ) ∋ ( ( λ x165 -> true ) ) ) $ ( x164 ) ) ) ) $ ( if d27 then d110 else d94 )
        d166 : if false then if false then Bool else Bool else if true then Bool else Bool
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> if d36 then false else d141 ) ) ) $ ( if false then true else false )
        d168 : if false then if false then Bool else Bool else if false then Bool else Bool
        d168 = if if d34 then d150 else true then if d57 then d162 else true else if d15 then true else true
        d169 : if false then if false then Bool else Bool else if true then Bool else Bool
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x171 -> true ) ) ) $ ( x170 ) ) ) ) $ ( if d97 then d148 else false )
        d172 : if false then if true then Bool else Bool else if true then Bool else Bool
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x173 -> if d73 then d15 else x173 ) ) ) $ ( if d122 then false else d70 )
        d174 : if false then if true then Bool else Bool else if false then Bool else Bool
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> ( ( Bool -> Bool ) ∋ ( ( λ x176 -> d139 ) ) ) $ ( x175 ) ) ) ) $ ( if false then false else d66 )
        d177 : if true then if true then Bool else Bool else if true then Bool else Bool
        d177 = if if d166 then d42 else d174 then if false then true else d86 else if d105 then d139 else d39
        d178 : if false then if true then Bool else Bool else if false then Bool else Bool
        d178 = if if true then false else d135 then if d141 then false else true else if false then d34 else d110
        d179 : if false then if true then Bool else Bool else if true then Bool else Bool
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x181 -> true ) ) ) $ ( true ) ) ) ) $ ( if d177 then d106 else true )
        d182 : ( ( Set -> Set ) ∋ ( ( λ x185 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( Bool -> Bool ) ∋ ( ( λ x184 -> x183 ) ) ) $ ( true ) ) ) ) $ ( if d115 then false else d168 )
        d186 : ( ( Set -> Set ) ∋ ( ( λ x189 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> ( ( Bool -> Bool ) ∋ ( ( λ x188 -> false ) ) ) $ ( false ) ) ) ) $ ( if d102 then true else true )
        d191 : if false then if false then Bool else Bool else if false then Bool else Bool
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x192 -> if false then false else d150 ) ) ) $ ( if d158 then true else d148 )
        d193 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> ( ( Bool -> Bool ) ∋ ( ( λ x195 -> d154 ) ) ) $ ( d169 ) ) ) ) $ ( if d148 then true else d124 )
        d198 : if false then if true then Bool else Bool else if false then Bool else Bool
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x199 -> ( ( Bool -> Bool ) ∋ ( ( λ x200 -> true ) ) ) $ ( d10 ) ) ) ) $ ( if false then d156 else d166 )
        d201 : ( ( Set -> Set ) ∋ ( ( λ x202 -> if false then x202 else Bool ) ) ) $ ( if true then Bool else Bool )
        d201 = if if d38 then false else false then if d140 then true else true else if false then false else d55
        d203 : if false then if true then Bool else Bool else if true then Bool else Bool
        d203 = if if d118 then false else true then if true then false else false else if true then true else d191
        d204 : ( ( Set -> Set ) ∋ ( ( λ x205 -> ( ( Set -> Set ) ∋ ( ( λ x206 -> x205 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d204 = if if false then d122 else d119 then if d21 then d88 else true else if d5 then false else false
        d207 : ( ( Set -> Set ) ∋ ( ( λ x208 -> ( ( Set -> Set ) ∋ ( ( λ x209 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d207 = if if true then d113 else false then if false then true else d177 else if d62 then true else d158
        d210 : if true then if true then Bool else Bool else if false then Bool else Bool
        d210 = if if false then true else true then if d191 then d132 else true else if false then true else false
        d211 : if false then if true then Bool else Bool else if true then Bool else Bool
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x212 -> if true then d66 else d186 ) ) ) $ ( if false then d146 else d129 )
        d213 : ( ( Set -> Set ) ∋ ( ( λ x216 -> if false then Bool else x216 ) ) ) $ ( if false then Bool else Bool )
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x214 -> ( ( Bool -> Bool ) ∋ ( ( λ x215 -> x214 ) ) ) $ ( x214 ) ) ) ) $ ( if true then d122 else true )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x219 -> if true then x219 else Bool ) ) ) $ ( if true then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x218 -> if d201 then false else true ) ) ) $ ( if d21 then d84 else false )
        d220 : if false then if true then Bool else Bool else if true then Bool else Bool
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x221 -> ( ( Bool -> Bool ) ∋ ( ( λ x222 -> d11 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d223 : if true then if true then Bool else Bool else if true then Bool else Bool
        d223 = ( ( Bool -> Bool ) ∋ ( ( λ x224 -> ( ( Bool -> Bool ) ∋ ( ( λ x225 -> false ) ) ) $ ( d122 ) ) ) ) $ ( if d213 then d106 else true )
        d226 : if true then if false then Bool else Bool else if false then Bool else Bool
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x227 -> if false then x227 else x227 ) ) ) $ ( if false then false else true )
        d228 : ( ( Set -> Set ) ∋ ( ( λ x231 -> ( ( Set -> Set ) ∋ ( ( λ x232 -> x231 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x229 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> d26 ) ) ) $ ( true ) ) ) ) $ ( if true then d97 else false )
        d233 : if false then if true then Bool else Bool else if true then Bool else Bool
        d233 = if if true then d129 else false then if true then false else false else if false then d177 else d18
        d234 : if true then if false then Bool else Bool else if false then Bool else Bool
        d234 = if if true then d84 else true then if false then d139 else d91 else if false then true else d122
        d235 : if true then if false then Bool else Bool else if false then Bool else Bool
        d235 = if if d65 then false else d213 then if true then true else d207 else if d1 then false else d115
        d236 : ( ( Set -> Set ) ∋ ( ( λ x237 -> ( ( Set -> Set ) ∋ ( ( λ x238 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d236 = if if d6 then true else d161 then if d233 then d168 else d36 else if false then d73 else d21
        d239 : if true then if false then Bool else Bool else if false then Bool else Bool
        d239 = if if d191 then d203 else d36 then if d178 then d177 else true else if true then d11 else false
        d240 : ( ( Set -> Set ) ∋ ( ( λ x243 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d240 = ( ( Bool -> Bool ) ∋ ( ( λ x241 -> ( ( Bool -> Bool ) ∋ ( ( λ x242 -> true ) ) ) $ ( x241 ) ) ) ) $ ( if d182 then d65 else d97 )
        d244 : if false then if false then Bool else Bool else if false then Bool else Bool
        d244 = ( ( Bool -> Bool ) ∋ ( ( λ x245 -> if false then x245 else x245 ) ) ) $ ( if d122 then d81 else d191 )
        d246 : ( ( Set -> Set ) ∋ ( ( λ x249 -> if false then x249 else Bool ) ) ) $ ( if true then Bool else Bool )
        d246 = ( ( Bool -> Bool ) ∋ ( ( λ x247 -> ( ( Bool -> Bool ) ∋ ( ( λ x248 -> d102 ) ) ) $ ( false ) ) ) ) $ ( if d220 then false else d39 )
        d250 : if true then if true then Bool else Bool else if false then Bool else Bool
        d250 = if if d105 then d38 else true then if true then true else d94 else if d25 then false else false
        d251 : if true then if false then Bool else Bool else if false then Bool else Bool
        d251 = if if d11 then false else d38 then if true then false else true else if d115 then d162 else true
        d252 : ( ( Set -> Set ) ∋ ( ( λ x255 -> ( ( Set -> Set ) ∋ ( ( λ x256 -> Bool ) ) ) $ ( x255 ) ) ) ) $ ( if false then Bool else Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x253 -> ( ( Bool -> Bool ) ∋ ( ( λ x254 -> x253 ) ) ) $ ( d234 ) ) ) ) $ ( if d50 then false else false )
        d257 : ( ( Set -> Set ) ∋ ( ( λ x258 -> ( ( Set -> Set ) ∋ ( ( λ x259 -> x259 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d257 = if if d42 then true else d122 then if false then d186 else true else if d244 then false else d179
        d260 : ( ( Set -> Set ) ∋ ( ( λ x262 -> if false then Bool else x262 ) ) ) $ ( if false then Bool else Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x261 -> if false then d119 else d124 ) ) ) $ ( if d139 then d250 else true )
        d263 : if true then if false then Bool else Bool else if true then Bool else Bool
        d263 = if if true then d124 else d154 then if false then false else d132 else if d251 then true else d203
        d264 : if true then if false then Bool else Bool else if false then Bool else Bool
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x265 -> if d84 then true else false ) ) ) $ ( if d235 then true else d207 )
        d266 : ( ( Set -> Set ) ∋ ( ( λ x267 -> ( ( Set -> Set ) ∋ ( ( λ x268 -> x267 ) ) ) $ ( x267 ) ) ) ) $ ( if false then Bool else Bool )
        d266 = if if d244 then true else d55 then if d24 then false else false else if true then true else false
        d269 : ( ( Set -> Set ) ∋ ( ( λ x270 -> if false then x270 else x270 ) ) ) $ ( if true then Bool else Bool )
        d269 = if if true then false else d39 then if d18 then d244 else true else if false then false else d15
        d271 : if false then if true then Bool else Bool else if false then Bool else Bool
        d271 = ( ( Bool -> Bool ) ∋ ( ( λ x272 -> ( ( Bool -> Bool ) ∋ ( ( λ x273 -> x272 ) ) ) $ ( d204 ) ) ) ) $ ( if d5 then d39 else false )
        d274 : if true then if false then Bool else Bool else if true then Bool else Bool
        d274 = if if d250 then true else d102 then if d168 then d191 else true else if true then true else true
        d275 : ( ( Set -> Set ) ∋ ( ( λ x276 -> ( ( Set -> Set ) ∋ ( ( λ x277 -> Bool ) ) ) $ ( x276 ) ) ) ) $ ( if true then Bool else Bool )
        d275 = if if true then true else false then if true then false else false else if d239 then true else true
        d278 : ( ( Set -> Set ) ∋ ( ( λ x279 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d278 = if if d239 then false else d246 then if d86 then d226 else d193 else if true then false else d154
        d281 : ( ( Set -> Set ) ∋ ( ( λ x284 -> if false then x284 else Bool ) ) ) $ ( if true then Bool else Bool )
        d281 = ( ( Bool -> Bool ) ∋ ( ( λ x282 -> ( ( Bool -> Bool ) ∋ ( ( λ x283 -> true ) ) ) $ ( x282 ) ) ) ) $ ( if false then d73 else d27 )
        d285 : ( ( Set -> Set ) ∋ ( ( λ x287 -> if true then x287 else Bool ) ) ) $ ( if false then Bool else Bool )
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x286 -> if d15 then x286 else x286 ) ) ) $ ( if true then d252 else d162 )
        d288 : if true then if false then Bool else Bool else if true then Bool else Bool
        d288 = if if false then d203 else d182 then if d1 then d174 else d153 else if true then true else d148
        d289 : ( ( Set -> Set ) ∋ ( ( λ x292 -> if true then x292 else Bool ) ) ) $ ( if false then Bool else Bool )
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x291 -> x290 ) ) ) $ ( x290 ) ) ) ) $ ( if false then d105 else false )
        d293 : if false then if true then Bool else Bool else if true then Bool else Bool
        d293 = if if true then d106 else false then if d285 then true else false else if false then d150 else d207
        d294 : ( ( Set -> Set ) ∋ ( ( λ x295 -> if true then Bool else x295 ) ) ) $ ( if true then Bool else Bool )
        d294 = if if d68 then true else d217 then if d115 then d193 else d161 else if true then d118 else d140
        d296 : if true then if true then Bool else Bool else if true then Bool else Bool
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x297 -> ( ( Bool -> Bool ) ∋ ( ( λ x298 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then d244 else false )
        d299 : ( ( Set -> Set ) ∋ ( ( λ x300 -> ( ( Set -> Set ) ∋ ( ( λ x301 -> x300 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d299 = if if false then false else d269 then if true then d246 else false else if d156 then d169 else d211
        d302 : ( ( Set -> Set ) ∋ ( ( λ x303 -> ( ( Set -> Set ) ∋ ( ( λ x304 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d302 = if if d204 then false else true then if false then d156 else d177 else if d289 then d162 else d70
        d305 : ( ( Set -> Set ) ∋ ( ( λ x307 -> ( ( Set -> Set ) ∋ ( ( λ x308 -> x308 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x306 -> if true then d122 else x306 ) ) ) $ ( if true then false else true )
        d309 : ( ( Set -> Set ) ∋ ( ( λ x311 -> ( ( Set -> Set ) ∋ ( ( λ x312 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d309 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if x310 then d266 else d15 ) ) ) $ ( if true then true else true )
        d313 : if true then if false then Bool else Bool else if true then Bool else Bool
        d313 = ( ( Bool -> Bool ) ∋ ( ( λ x314 -> ( ( Bool -> Bool ) ∋ ( ( λ x315 -> x315 ) ) ) $ ( x314 ) ) ) ) $ ( if true then d5 else true )
        d316 : ( ( Set -> Set ) ∋ ( ( λ x319 -> if true then x319 else Bool ) ) ) $ ( if true then Bool else Bool )
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x317 -> ( ( Bool -> Bool ) ∋ ( ( λ x318 -> d6 ) ) ) $ ( true ) ) ) ) $ ( if d278 then d18 else d141 )
        d320 : if true then if false then Bool else Bool else if false then Bool else Bool
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x321 -> if d126 then x321 else x321 ) ) ) $ ( if d220 then d182 else d217 )
        d322 : if false then if true then Bool else Bool else if true then Bool else Bool
        d322 = ( ( Bool -> Bool ) ∋ ( ( λ x323 -> ( ( Bool -> Bool ) ∋ ( ( λ x324 -> d278 ) ) ) $ ( d118 ) ) ) ) $ ( if d42 then true else d110 )
        d325 : if false then if false then Bool else Bool else if false then Bool else Bool
        d325 = if if d76 then d66 else false then if true then d44 else true else if true then false else d66
        d326 : if true then if true then Bool else Bool else if true then Bool else Bool
        d326 = ( ( Bool -> Bool ) ∋ ( ( λ x327 -> ( ( Bool -> Bool ) ∋ ( ( λ x328 -> x328 ) ) ) $ ( x327 ) ) ) ) $ ( if false then d146 else d293 )
        d329 : if false then if true then Bool else Bool else if false then Bool else Bool
        d329 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> ( ( Bool -> Bool ) ∋ ( ( λ x331 -> x331 ) ) ) $ ( d154 ) ) ) ) $ ( if d62 then d154 else d57 )
        d332 : if false then if true then Bool else Bool else if false then Bool else Bool
        d332 = if if false then true else true then if true then false else d269 else if false then false else d201
        d333 : ( ( Set -> Set ) ∋ ( ( λ x335 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d333 = ( ( Bool -> Bool ) ∋ ( ( λ x334 -> if false then false else true ) ) ) $ ( if false then false else false )
        d336 : if true then if false then Bool else Bool else if false then Bool else Bool
        d336 = ( ( Bool -> Bool ) ∋ ( ( λ x337 -> ( ( Bool -> Bool ) ∋ ( ( λ x338 -> false ) ) ) $ ( d226 ) ) ) ) $ ( if d299 then false else true )
        d339 : if true then if false then Bool else Bool else if false then Bool else Bool
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if false then d106 else x340 ) ) ) $ ( if false then d251 else d105 )
        d341 : ( ( Set -> Set ) ∋ ( ( λ x342 -> ( ( Set -> Set ) ∋ ( ( λ x343 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d341 = if if true then false else false then if d299 then false else d57 else if d191 then d179 else d110
        d344 : ( ( Set -> Set ) ∋ ( ( λ x346 -> ( ( Set -> Set ) ∋ ( ( λ x347 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x345 -> if x345 then x345 else false ) ) ) $ ( if false then d76 else false )
        d348 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x351 -> x350 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d348 = ( ( Bool -> Bool ) ∋ ( ( λ x349 -> if true then false else true ) ) ) $ ( if d81 then d169 else true )
        d352 : if true then if false then Bool else Bool else if true then Bool else Bool
        d352 = if if d325 then d293 else true then if d94 then d44 else true else if d68 then d333 else d278
        d353 : ( ( Set -> Set ) ∋ ( ( λ x356 -> ( ( Set -> Set ) ∋ ( ( λ x357 -> Bool ) ) ) $ ( x356 ) ) ) ) $ ( if true then Bool else Bool )
        d353 = ( ( Bool -> Bool ) ∋ ( ( λ x354 -> ( ( Bool -> Bool ) ∋ ( ( λ x355 -> x355 ) ) ) $ ( x354 ) ) ) ) $ ( if d158 then d169 else d44 )
        d358 : ( ( Set -> Set ) ∋ ( ( λ x361 -> if true then x361 else Bool ) ) ) $ ( if false then Bool else Bool )
        d358 = ( ( Bool -> Bool ) ∋ ( ( λ x359 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( false ) ) ) ) $ ( if false then d39 else d57 )
        d362 : ( ( Set -> Set ) ∋ ( ( λ x363 -> ( ( Set -> Set ) ∋ ( ( λ x364 -> x363 ) ) ) $ ( x363 ) ) ) ) $ ( if false then Bool else Bool )
        d362 = if if true then true else d156 then if true then false else true else if d204 then d352 else true
        d365 : if true then if true then Bool else Bool else if false then Bool else Bool
        d365 = ( ( Bool -> Bool ) ∋ ( ( λ x366 -> ( ( Bool -> Bool ) ∋ ( ( λ x367 -> x367 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d368 : ( ( Set -> Set ) ∋ ( ( λ x369 -> ( ( Set -> Set ) ∋ ( ( λ x370 -> x370 ) ) ) $ ( x369 ) ) ) ) $ ( if true then Bool else Bool )
        d368 = if if d325 then d329 else false then if d132 then d66 else true else if true then d320 else d207
        d371 : if true then if false then Bool else Bool else if true then Bool else Bool
        d371 = ( ( Bool -> Bool ) ∋ ( ( λ x372 -> if x372 then x372 else d244 ) ) ) $ ( if d153 then true else false )
        d373 : if false then if true then Bool else Bool else if false then Bool else Bool
        d373 = ( ( Bool -> Bool ) ∋ ( ( λ x374 -> ( ( Bool -> Bool ) ∋ ( ( λ x375 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d376 : if false then if true then Bool else Bool else if true then Bool else Bool
        d376 = if if false then false else d211 then if d288 then d250 else false else if d309 then true else false
        d377 : ( ( Set -> Set ) ∋ ( ( λ x380 -> if false then x380 else x380 ) ) ) $ ( if false then Bool else Bool )
        d377 = ( ( Bool -> Bool ) ∋ ( ( λ x378 -> ( ( Bool -> Bool ) ∋ ( ( λ x379 -> false ) ) ) $ ( true ) ) ) ) $ ( if d132 then d352 else true )
        d381 : if false then if true then Bool else Bool else if true then Bool else Bool
        d381 = if if d166 then false else d275 then if true then false else d278 else if false then false else d326
        d382 : ( ( Set -> Set ) ∋ ( ( λ x385 -> if false then x385 else x385 ) ) ) $ ( if false then Bool else Bool )
        d382 = ( ( Bool -> Bool ) ∋ ( ( λ x383 -> ( ( Bool -> Bool ) ∋ ( ( λ x384 -> true ) ) ) $ ( d70 ) ) ) ) $ ( if true then d250 else d252 )
        d386 : if true then if true then Bool else Bool else if true then Bool else Bool
        d386 = if if d57 then d38 else false then if true then false else false else if true then true else false
        d387 : if false then if false then Bool else Bool else if false then Bool else Bool
        d387 = if if false then false else true then if true then false else d186 else if d344 then true else true
        d388 : if false then if false then Bool else Bool else if false then Bool else Bool
        d388 = ( ( Bool -> Bool ) ∋ ( ( λ x389 -> ( ( Bool -> Bool ) ∋ ( ( λ x390 -> x389 ) ) ) $ ( x389 ) ) ) ) $ ( if d274 then false else true )
        d391 : ( ( Set -> Set ) ∋ ( ( λ x392 -> ( ( Set -> Set ) ∋ ( ( λ x393 -> Bool ) ) ) $ ( x392 ) ) ) ) $ ( if false then Bool else Bool )
        d391 = if if false then d55 else false then if d57 then d352 else d333 else if false then true else d70
        d394 : ( ( Set -> Set ) ∋ ( ( λ x395 -> ( ( Set -> Set ) ∋ ( ( λ x396 -> x395 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d394 = if if false then d236 else true then if d293 then d352 else d18 else if d65 then false else true
        d397 : ( ( Set -> Set ) ∋ ( ( λ x399 -> ( ( Set -> Set ) ∋ ( ( λ x400 -> x400 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x398 -> if x398 then d55 else d6 ) ) ) $ ( if false then true else false )
        d401 : if false then if false then Bool else Bool else if true then Bool else Bool
        d401 = if if false then true else d344 then if d246 then d166 else true else if d38 then false else false
        d402 : ( ( Set -> Set ) ∋ ( ( λ x403 -> if true then x403 else Bool ) ) ) $ ( if false then Bool else Bool )
        d402 = if if d150 then true else d391 then if d305 then d387 else true else if true then d220 else true
        d404 : ( ( Set -> Set ) ∋ ( ( λ x407 -> if true then x407 else x407 ) ) ) $ ( if true then Bool else Bool )
        d404 = ( ( Bool -> Bool ) ∋ ( ( λ x405 -> ( ( Bool -> Bool ) ∋ ( ( λ x406 -> x405 ) ) ) $ ( x405 ) ) ) ) $ ( if false then d235 else d10 )
        d408 : if true then if false then Bool else Bool else if false then Bool else Bool
        d408 = if if d275 then d174 else true then if d140 then d113 else d135 else if true then true else false
        d409 : ( ( Set -> Set ) ∋ ( ( λ x411 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d409 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if x410 then d73 else false ) ) ) $ ( if d239 then d76 else false )
        d412 : if false then if true then Bool else Bool else if true then Bool else Bool
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x413 -> if d1 then x413 else x413 ) ) ) $ ( if false then d341 else d220 )
        d414 : if true then if true then Bool else Bool else if true then Bool else Bool
        d414 = ( ( Bool -> Bool ) ∋ ( ( λ x415 -> ( ( Bool -> Bool ) ∋ ( ( λ x416 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d110 else true )
        d417 : ( ( Set -> Set ) ∋ ( ( λ x420 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x418 -> ( ( Bool -> Bool ) ∋ ( ( λ x419 -> false ) ) ) $ ( d226 ) ) ) ) $ ( if d336 then d341 else false )
        d421 : if true then if true then Bool else Bool else if true then Bool else Bool
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x422 -> if true then true else x422 ) ) ) $ ( if d397 then d169 else false )
        d423 : if false then if false then Bool else Bool else if false then Bool else Bool
        d423 = if if true then d26 else d68 then if true then d414 else d15 else if false then true else d371
        d424 : ( ( Set -> Set ) ∋ ( ( λ x427 -> if false then Bool else x427 ) ) ) $ ( if false then Bool else Bool )
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x425 -> ( ( Bool -> Bool ) ∋ ( ( λ x426 -> x426 ) ) ) $ ( d233 ) ) ) ) $ ( if d353 then d178 else true )
        d428 : ( ( Set -> Set ) ∋ ( ( λ x429 -> if true then Bool else x429 ) ) ) $ ( if true then Bool else Bool )
        d428 = if if d288 then d110 else false then if true then d264 else d365 else if true then d76 else false
        d430 : ( ( Set -> Set ) ∋ ( ( λ x431 -> if false then x431 else Bool ) ) ) $ ( if true then Bool else Bool )
        d430 = if if false then true else false then if d126 then d146 else false else if d178 then d348 else d281
        d432 : if true then if false then Bool else Bool else if true then Bool else Bool
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x433 -> if true then true else true ) ) ) $ ( if true then d172 else false )
        d434 : if true then if true then Bool else Bool else if false then Bool else Bool
        d434 = ( ( Bool -> Bool ) ∋ ( ( λ x435 -> ( ( Bool -> Bool ) ∋ ( ( λ x436 -> true ) ) ) $ ( x435 ) ) ) ) $ ( if false then d264 else true )
        d437 : if true then if true then Bool else Bool else if false then Bool else Bool
        d437 = ( ( Bool -> Bool ) ∋ ( ( λ x438 -> ( ( Bool -> Bool ) ∋ ( ( λ x439 -> x438 ) ) ) $ ( true ) ) ) ) $ ( if d70 then false else d156 )
        d440 : if false then if false then Bool else Bool else if false then Bool else Bool
        d440 = if if false then d434 else d42 then if d207 then true else d313 else if true then true else true
        d441 : if false then if true then Bool else Bool else if true then Bool else Bool
        d441 = if if d132 then d115 else false then if d66 then true else true else if true then d266 else d220
        d442 : ( ( Set -> Set ) ∋ ( ( λ x443 -> ( ( Set -> Set ) ∋ ( ( λ x444 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d442 = if if false then true else false then if true then false else d394 else if true then d191 else d70
        d445 : if true then if false then Bool else Bool else if true then Bool else Bool
        d445 = if if false then d322 else d191 then if false then d220 else d56 else if d119 then false else d353
        d446 : if true then if false then Bool else Bool else if false then Bool else Bool
        d446 = ( ( Bool -> Bool ) ∋ ( ( λ x447 -> ( ( Bool -> Bool ) ∋ ( ( λ x448 -> d414 ) ) ) $ ( d169 ) ) ) ) $ ( if d264 then d132 else d408 )
        d449 : if false then if true then Bool else Bool else if false then Bool else Bool
        d449 = if if d302 then d409 else false then if true then false else d260 else if false then d353 else true
        d450 : ( ( Set -> Set ) ∋ ( ( λ x452 -> if true then x452 else x452 ) ) ) $ ( if false then Bool else Bool )
        d450 = ( ( Bool -> Bool ) ∋ ( ( λ x451 -> if true then d402 else x451 ) ) ) $ ( if d150 then d50 else d158 )
        d453 : if false then if false then Bool else Bool else if true then Bool else Bool
        d453 = if if false then d56 else d430 then if false then d66 else true else if d440 then d27 else d122
        d454 : if true then if false then Bool else Bool else if false then Bool else Bool
        d454 = if if true then false else d198 then if d168 then d66 else true else if false then d115 else false
        d455 : ( ( Set -> Set ) ∋ ( ( λ x456 -> ( ( Set -> Set ) ∋ ( ( λ x457 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d455 = if if d373 then false else d201 then if d174 then d132 else true else if true then false else true
        d458 : if false then if true then Bool else Bool else if false then Bool else Bool
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x459 -> ( ( Bool -> Bool ) ∋ ( ( λ x460 -> true ) ) ) $ ( true ) ) ) ) $ ( if d27 then true else false )
        d461 : ( ( Set -> Set ) ∋ ( ( λ x464 -> if true then Bool else x464 ) ) ) $ ( if false then Bool else Bool )
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x462 -> ( ( Bool -> Bool ) ∋ ( ( λ x463 -> d263 ) ) ) $ ( d299 ) ) ) ) $ ( if d18 then d177 else d153 )
        d465 : if true then if true then Bool else Bool else if true then Bool else Bool
        d465 = ( ( Bool -> Bool ) ∋ ( ( λ x466 -> ( ( Bool -> Bool ) ∋ ( ( λ x467 -> false ) ) ) $ ( false ) ) ) ) $ ( if d449 then false else d24 )
        d468 : if false then if false then Bool else Bool else if true then Bool else Bool
        d468 = ( ( Bool -> Bool ) ∋ ( ( λ x469 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> true ) ) ) $ ( x469 ) ) ) ) $ ( if d62 then d26 else d86 )
        d471 : ( ( Set -> Set ) ∋ ( ( λ x474 -> if true then Bool else x474 ) ) ) $ ( if true then Bool else Bool )
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x472 -> ( ( Bool -> Bool ) ∋ ( ( λ x473 -> d352 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d417 )
        d475 : ( ( Set -> Set ) ∋ ( ( λ x476 -> if true then x476 else x476 ) ) ) $ ( if true then Bool else Bool )
        d475 = if if true then d113 else d257 then if true then false else d358 else if d182 then true else false
        d477 : ( ( Set -> Set ) ∋ ( ( λ x479 -> if true then x479 else x479 ) ) ) $ ( if false then Bool else Bool )
        d477 = ( ( Bool -> Bool ) ∋ ( ( λ x478 -> if x478 then d264 else d166 ) ) ) $ ( if d453 then d119 else d455 )
        d480 : if true then if true then Bool else Bool else if false then Bool else Bool
        d480 = if if d126 then d275 else d455 then if d296 then d62 else true else if false then true else d421
        d481 : if true then if false then Bool else Bool else if false then Bool else Bool
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x482 -> if x482 then x482 else x482 ) ) ) $ ( if true then true else true )
        d483 : if false then if true then Bool else Bool else if false then Bool else Bool
        d483 = if if true then d246 else d177 then if d26 then d352 else true else if d25 then d449 else d341
        d484 : ( ( Set -> Set ) ∋ ( ( λ x485 -> ( ( Set -> Set ) ∋ ( ( λ x486 -> x486 ) ) ) $ ( x485 ) ) ) ) $ ( if false then Bool else Bool )
        d484 = if if d394 then d397 else d110 then if d161 then d266 else d446 else if d387 then d445 else d341
        d487 : ( ( Set -> Set ) ∋ ( ( λ x488 -> ( ( Set -> Set ) ∋ ( ( λ x489 -> x488 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d487 = if if d135 then true else false then if false then d386 else d471 else if true then d386 else d484
        d490 : if true then if false then Bool else Bool else if true then Bool else Bool
        d490 = ( ( Bool -> Bool ) ∋ ( ( λ x491 -> ( ( Bool -> Bool ) ∋ ( ( λ x492 -> false ) ) ) $ ( d402 ) ) ) ) $ ( if d371 then false else d204 )
        d493 : ( ( Set -> Set ) ∋ ( ( λ x494 -> ( ( Set -> Set ) ∋ ( ( λ x495 -> Bool ) ) ) $ ( x494 ) ) ) ) $ ( if true then Bool else Bool )
        d493 = if if d198 then d110 else d1 then if d70 then d139 else true else if true then false else true
        d496 : if true then if false then Bool else Bool else if true then Bool else Bool
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x497 -> if x497 then d274 else d251 ) ) ) $ ( if true then d373 else d25 )
        d498 : ( ( Set -> Set ) ∋ ( ( λ x501 -> ( ( Set -> Set ) ∋ ( ( λ x502 -> x501 ) ) ) $ ( x501 ) ) ) ) $ ( if true then Bool else Bool )
        d498 = ( ( Bool -> Bool ) ∋ ( ( λ x499 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( d296 ) ) ) ) $ ( if true then d432 else false )
        d503 : ( ( Set -> Set ) ∋ ( ( λ x506 -> ( ( Set -> Set ) ∋ ( ( λ x507 -> x507 ) ) ) $ ( x506 ) ) ) ) $ ( if false then Bool else Bool )
        d503 = ( ( Bool -> Bool ) ∋ ( ( λ x504 -> ( ( Bool -> Bool ) ∋ ( ( λ x505 -> true ) ) ) $ ( x504 ) ) ) ) $ ( if true then true else false )
        d508 : if true then if false then Bool else Bool else if false then Bool else Bool
        d508 = if if d471 then d266 else true then if d113 then d161 else true else if d86 then true else d285
        d509 : ( ( Set -> Set ) ∋ ( ( λ x512 -> ( ( Set -> Set ) ∋ ( ( λ x513 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> ( ( Bool -> Bool ) ∋ ( ( λ x511 -> x511 ) ) ) $ ( true ) ) ) ) $ ( if d122 then d278 else d251 )
        d514 : ( ( Set -> Set ) ∋ ( ( λ x517 -> if true then Bool else x517 ) ) ) $ ( if true then Bool else Bool )
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x515 -> ( ( Bool -> Bool ) ∋ ( ( λ x516 -> false ) ) ) $ ( x515 ) ) ) ) $ ( if false then false else true )
        d518 : ( ( Set -> Set ) ∋ ( ( λ x519 -> if true then Bool else x519 ) ) ) $ ( if true then Bool else Bool )
        d518 = if if d50 then true else d386 then if false then d240 else true else if false then false else false
        d520 : ( ( Set -> Set ) ∋ ( ( λ x521 -> if true then Bool else x521 ) ) ) $ ( if false then Bool else Bool )
        d520 = if if false then true else false then if true then d18 else d271 else if d177 then d84 else false
        d522 : ( ( Set -> Set ) ∋ ( ( λ x523 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d522 = if if d1 then d178 else d5 then if d240 then d154 else d477 else if d278 then false else true
        d524 : if true then if false then Bool else Bool else if false then Bool else Bool
        d524 = if if false then true else false then if d217 then true else d236 else if d496 then d352 else false
        d525 : ( ( Set -> Set ) ∋ ( ( λ x528 -> ( ( Set -> Set ) ∋ ( ( λ x529 -> Bool ) ) ) $ ( x528 ) ) ) ) $ ( if false then Bool else Bool )
        d525 = ( ( Bool -> Bool ) ∋ ( ( λ x526 -> ( ( Bool -> Bool ) ∋ ( ( λ x527 -> false ) ) ) $ ( x526 ) ) ) ) $ ( if d21 then d394 else d250 )
        d530 : ( ( Set -> Set ) ∋ ( ( λ x532 -> if false then Bool else x532 ) ) ) $ ( if false then Bool else Bool )
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x531 -> if x531 then true else false ) ) ) $ ( if false then true else true )
        d533 : ( ( Set -> Set ) ∋ ( ( λ x535 -> if true then Bool else x535 ) ) ) $ ( if true then Bool else Bool )
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x534 -> if true then d27 else true ) ) ) $ ( if d503 then d234 else d522 )
        d536 : if false then if true then Bool else Bool else if false then Bool else Bool
        d536 = if if true then d168 else d207 then if d376 then d50 else false else if d182 then true else true
        d537 : if false then if false then Bool else Bool else if true then Bool else Bool
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x538 -> ( ( Bool -> Bool ) ∋ ( ( λ x539 -> d146 ) ) ) $ ( true ) ) ) ) $ ( if d239 then d115 else true )
        d540 : if false then if true then Bool else Bool else if true then Bool else Bool
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x541 -> if x541 then x541 else false ) ) ) $ ( if true then d47 else d203 )
        d542 : ( ( Set -> Set ) ∋ ( ( λ x543 -> ( ( Set -> Set ) ∋ ( ( λ x544 -> x543 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d542 = if if true then d533 else false then if d454 then d376 else d449 else if d404 then d339 else true
        d545 : if true then if true then Bool else Bool else if false then Bool else Bool
        d545 = ( ( Bool -> Bool ) ∋ ( ( λ x546 -> ( ( Bool -> Bool ) ∋ ( ( λ x547 -> d269 ) ) ) $ ( false ) ) ) ) $ ( if true then d129 else d481 )
        d548 : ( ( Set -> Set ) ∋ ( ( λ x549 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> Bool ) ) ) $ ( x549 ) ) ) ) $ ( if false then Bool else Bool )
        d548 = if if d465 then d146 else true then if false then false else d271 else if true then d203 else true
        d551 : ( ( Set -> Set ) ∋ ( ( λ x552 -> ( ( Set -> Set ) ∋ ( ( λ x553 -> x552 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d551 = if if true then d493 else true then if d368 then d339 else false else if false then false else d1
        d554 : if true then if false then Bool else Bool else if false then Bool else Bool
        d554 = if if d15 then false else d434 then if d68 then true else true else if d362 then d251 else true
        d555 : ( ( Set -> Set ) ∋ ( ( λ x558 -> ( ( Set -> Set ) ∋ ( ( λ x559 -> x559 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d555 = ( ( Bool -> Bool ) ∋ ( ( λ x556 -> ( ( Bool -> Bool ) ∋ ( ( λ x557 -> true ) ) ) $ ( d450 ) ) ) ) $ ( if false then true else false )
        d560 : ( ( Set -> Set ) ∋ ( ( λ x561 -> ( ( Set -> Set ) ∋ ( ( λ x562 -> Bool ) ) ) $ ( x561 ) ) ) ) $ ( if false then Bool else Bool )
        d560 = if if d423 then true else d391 then if false then d404 else false else if true then d39 else d260
        d563 : if false then if true then Bool else Bool else if false then Bool else Bool
        d563 = ( ( Bool -> Bool ) ∋ ( ( λ x564 -> ( ( Bool -> Bool ) ∋ ( ( λ x565 -> x565 ) ) ) $ ( d313 ) ) ) ) $ ( if d545 then d432 else d39 )
        d566 : if true then if true then Bool else Bool else if true then Bool else Bool
        d566 = if if true then d524 else d177 then if d275 then d365 else false else if d397 then d204 else d107
        d567 : if true then if true then Bool else Bool else if false then Bool else Bool
        d567 = if if d86 then d518 else false then if false then d440 else d373 else if true then true else true
        d568 : if true then if false then Bool else Bool else if false then Bool else Bool
        d568 = ( ( Bool -> Bool ) ∋ ( ( λ x569 -> ( ( Bool -> Bool ) ∋ ( ( λ x570 -> false ) ) ) $ ( x569 ) ) ) ) $ ( if d158 then d182 else d493 )
        d571 : ( ( Set -> Set ) ∋ ( ( λ x573 -> if true then x573 else x573 ) ) ) $ ( if false then Bool else Bool )
        d571 = ( ( Bool -> Bool ) ∋ ( ( λ x572 -> if x572 then d455 else d294 ) ) ) $ ( if true then false else d518 )
        d574 : if true then if true then Bool else Bool else if false then Bool else Bool
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x575 -> if x575 then d322 else d5 ) ) ) $ ( if false then true else d325 )
        d576 : if false then if false then Bool else Bool else if false then Bool else Bool
        d576 = if if d551 then true else d210 then if false then false else d10 else if d320 then false else d11
        d577 : ( ( Set -> Set ) ∋ ( ( λ x579 -> ( ( Set -> Set ) ∋ ( ( λ x580 -> Bool ) ) ) $ ( x579 ) ) ) ) $ ( if false then Bool else Bool )
        d577 = ( ( Bool -> Bool ) ∋ ( ( λ x578 -> if x578 then d26 else d348 ) ) ) $ ( if d55 then d520 else false )
        d581 : ( ( Set -> Set ) ∋ ( ( λ x584 -> ( ( Set -> Set ) ∋ ( ( λ x585 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d581 = ( ( Bool -> Bool ) ∋ ( ( λ x582 -> ( ( Bool -> Bool ) ∋ ( ( λ x583 -> false ) ) ) $ ( d21 ) ) ) ) $ ( if d246 then d110 else d428 )
        d586 : ( ( Set -> Set ) ∋ ( ( λ x587 -> ( ( Set -> Set ) ∋ ( ( λ x588 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d586 = if if d25 then false else d275 then if d263 then d434 else d153 else if d577 then d445 else d168
        d589 : ( ( Set -> Set ) ∋ ( ( λ x590 -> ( ( Set -> Set ) ∋ ( ( λ x591 -> x590 ) ) ) $ ( x590 ) ) ) ) $ ( if true then Bool else Bool )
        d589 = if if d581 then d129 else true then if d5 then d458 else false else if d68 then d391 else true
        d592 : ( ( Set -> Set ) ∋ ( ( λ x593 -> ( ( Set -> Set ) ∋ ( ( λ x594 -> Bool ) ) ) $ ( x593 ) ) ) ) $ ( if false then Bool else Bool )
        d592 = if if false then d26 else d162 then if d226 then d178 else d484 else if false then d362 else d377
        d595 : ( ( Set -> Set ) ∋ ( ( λ x597 -> ( ( Set -> Set ) ∋ ( ( λ x598 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d595 = ( ( Bool -> Bool ) ∋ ( ( λ x596 -> if false then false else x596 ) ) ) $ ( if false then d21 else d210 )
        d599 : if false then if false then Bool else Bool else if true then Bool else Bool
        d599 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> ( ( Bool -> Bool ) ∋ ( ( λ x601 -> x600 ) ) ) $ ( false ) ) ) ) $ ( if d50 then d401 else true )
        d602 : ( ( Set -> Set ) ∋ ( ( λ x603 -> ( ( Set -> Set ) ∋ ( ( λ x604 -> x603 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d602 = if if true then d339 else d172 then if false then true else d39 else if true then true else d536
        d605 : ( ( Set -> Set ) ∋ ( ( λ x606 -> if false then x606 else x606 ) ) ) $ ( if false then Bool else Bool )
        d605 = if if d220 then d174 else d577 then if true then false else true else if d484 then d386 else false
        d607 : ( ( Set -> Set ) ∋ ( ( λ x608 -> if false then x608 else Bool ) ) ) $ ( if true then Bool else Bool )
        d607 = if if true then false else d11 then if d365 then d595 else false else if true then true else true
        d609 : ( ( Set -> Set ) ∋ ( ( λ x611 -> if false then Bool else x611 ) ) ) $ ( if true then Bool else Bool )
        d609 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> if true then x610 else x610 ) ) ) $ ( if d309 then true else true )
        d612 : ( ( Set -> Set ) ∋ ( ( λ x615 -> ( ( Set -> Set ) ∋ ( ( λ x616 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d612 = ( ( Bool -> Bool ) ∋ ( ( λ x613 -> ( ( Bool -> Bool ) ∋ ( ( λ x614 -> d387 ) ) ) $ ( x613 ) ) ) ) $ ( if true then true else true )
        d617 : ( ( Set -> Set ) ∋ ( ( λ x618 -> if true then x618 else Bool ) ) ) $ ( if true then Bool else Bool )
        d617 = if if true then d263 else d454 then if false then false else d27 else if true then true else d309
        d619 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if false then x620 else Bool ) ) ) $ ( if false then Bool else Bool )
        d619 = if if true then d339 else true then if d25 then d140 else d554 else if d228 then true else true
        d621 : ( ( Set -> Set ) ∋ ( ( λ x622 -> if true then Bool else x622 ) ) ) $ ( if false then Bool else Bool )
        d621 = if if d339 then d533 else true then if d163 then d525 else d577 else if true then true else false
        d623 : if true then if false then Bool else Bool else if true then Bool else Bool
        d623 = if if false then false else d172 then if d402 then d621 else true else if true then false else true
        d624 : if true then if false then Bool else Bool else if false then Bool else Bool
        d624 = if if d38 then true else false then if d440 then d386 else false else if true then d76 else false
        d625 : ( ( Set -> Set ) ∋ ( ( λ x627 -> ( ( Set -> Set ) ∋ ( ( λ x628 -> x627 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d625 = ( ( Bool -> Bool ) ∋ ( ( λ x626 -> if x626 then d493 else d274 ) ) ) $ ( if d299 then false else false )
        d629 : if true then if false then Bool else Bool else if false then Bool else Bool
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x631 -> x631 ) ) ) $ ( d574 ) ) ) ) $ ( if d468 then d223 else d236 )
        d632 : ( ( Set -> Set ) ∋ ( ( λ x635 -> if false then x635 else x635 ) ) ) $ ( if true then Bool else Bool )
        d632 = ( ( Bool -> Bool ) ∋ ( ( λ x633 -> ( ( Bool -> Bool ) ∋ ( ( λ x634 -> d38 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d174 )
        d636 : ( ( Set -> Set ) ∋ ( ( λ x637 -> ( ( Set -> Set ) ∋ ( ( λ x638 -> Bool ) ) ) $ ( x637 ) ) ) ) $ ( if true then Bool else Bool )
        d636 = if if false then false else false then if false then d412 else d449 else if d118 then d313 else d563
        d639 : if true then if true then Bool else Bool else if false then Bool else Bool
        d639 = if if false then d445 else d115 then if true then true else d10 else if d514 then false else d235
        d640 : if true then if false then Bool else Bool else if false then Bool else Bool
        d640 = if if false then d168 else d554 then if true then true else true else if d589 then true else d132
        d641 : ( ( Set -> Set ) ∋ ( ( λ x644 -> ( ( Set -> Set ) ∋ ( ( λ x645 -> x645 ) ) ) $ ( x644 ) ) ) ) $ ( if true then Bool else Bool )
        d641 = ( ( Bool -> Bool ) ∋ ( ( λ x642 -> ( ( Bool -> Bool ) ∋ ( ( λ x643 -> d244 ) ) ) $ ( d408 ) ) ) ) $ ( if false then false else true )
        d646 : ( ( Set -> Set ) ∋ ( ( λ x647 -> if true then x647 else Bool ) ) ) $ ( if false then Bool else Bool )
        d646 = if if d412 then d113 else d551 then if false then false else d475 else if false then false else d146
        d648 : ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x651 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d648 = ( ( Bool -> Bool ) ∋ ( ( λ x649 -> if x649 then false else true ) ) ) $ ( if d632 then d10 else true )
        d652 : ( ( Set -> Set ) ∋ ( ( λ x654 -> if true then Bool else x654 ) ) ) $ ( if false then Bool else Bool )
        d652 = ( ( Bool -> Bool ) ∋ ( ( λ x653 -> if d332 then x653 else x653 ) ) ) $ ( if true then true else d150 )
        d655 : if false then if true then Bool else Bool else if true then Bool else Bool
        d655 = if if true then false else false then if d401 then true else d44 else if d24 then d21 else d73
        d656 : ( ( Set -> Set ) ∋ ( ( λ x659 -> if true then x659 else x659 ) ) ) $ ( if true then Bool else Bool )
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x657 -> ( ( Bool -> Bool ) ∋ ( ( λ x658 -> d625 ) ) ) $ ( x657 ) ) ) ) $ ( if d148 then d424 else d655 )
        d660 : if false then if true then Bool else Bool else if false then Bool else Bool
        d660 = if if d182 then d341 else d368 then if d434 then d554 else true else if d65 then d11 else d358
        d661 : ( ( Set -> Set ) ∋ ( ( λ x664 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d661 = ( ( Bool -> Bool ) ∋ ( ( λ x662 -> ( ( Bool -> Bool ) ∋ ( ( λ x663 -> x663 ) ) ) $ ( x662 ) ) ) ) $ ( if d177 then true else d536 )
        d665 : ( ( Set -> Set ) ∋ ( ( λ x666 -> ( ( Set -> Set ) ∋ ( ( λ x667 -> x666 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d665 = if if d381 then false else d625 then if d250 then true else false else if false then true else d365
        d668 : ( ( Set -> Set ) ∋ ( ( λ x669 -> ( ( Set -> Set ) ∋ ( ( λ x670 -> x669 ) ) ) $ ( x669 ) ) ) ) $ ( if false then Bool else Bool )
        d668 = if if d348 then d621 else d140 then if false then true else d592 else if true then d81 else false
        d671 : ( ( Set -> Set ) ∋ ( ( λ x674 -> if true then Bool else x674 ) ) ) $ ( if true then Bool else Bool )
        d671 = ( ( Bool -> Bool ) ∋ ( ( λ x672 -> ( ( Bool -> Bool ) ∋ ( ( λ x673 -> d211 ) ) ) $ ( false ) ) ) ) $ ( if d632 then d430 else true )
        d675 : ( ( Set -> Set ) ∋ ( ( λ x678 -> ( ( Set -> Set ) ∋ ( ( λ x679 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d675 = ( ( Bool -> Bool ) ∋ ( ( λ x676 -> ( ( Bool -> Bool ) ∋ ( ( λ x677 -> d465 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d576 )
        d680 : if false then if true then Bool else Bool else if false then Bool else Bool
        d680 = if if true then d264 else false then if d629 then true else d182 else if true then d309 else true
        d681 : ( ( Set -> Set ) ∋ ( ( λ x682 -> ( ( Set -> Set ) ∋ ( ( λ x683 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d681 = if if true then true else false then if d640 then true else d281 else if d675 then d320 else d102
        d684 : if false then if true then Bool else Bool else if true then Bool else Bool
        d684 = ( ( Bool -> Bool ) ∋ ( ( λ x685 -> ( ( Bool -> Bool ) ∋ ( ( λ x686 -> x686 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d687 : if true then if true then Bool else Bool else if true then Bool else Bool
        d687 = ( ( Bool -> Bool ) ∋ ( ( λ x688 -> ( ( Bool -> Bool ) ∋ ( ( λ x689 -> d94 ) ) ) $ ( x688 ) ) ) ) $ ( if d388 then d161 else d671 )
        d690 : ( ( Set -> Set ) ∋ ( ( λ x691 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d690 = if if false then true else false then if true then d329 else d414 else if true then true else d271
        d692 : if false then if false then Bool else Bool else if true then Bool else Bool
        d692 = if if false then d141 else d56 then if false then d607 else d475 else if false then d362 else false
        d693 : ( ( Set -> Set ) ∋ ( ( λ x695 -> ( ( Set -> Set ) ∋ ( ( λ x696 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d693 = ( ( Bool -> Bool ) ∋ ( ( λ x694 -> if false then true else x694 ) ) ) $ ( if d428 then d239 else d210 )
        d697 : ( ( Set -> Set ) ∋ ( ( λ x699 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d697 = ( ( Bool -> Bool ) ∋ ( ( λ x698 -> if x698 then d313 else false ) ) ) $ ( if d86 then d203 else d156 )
        d700 : if false then if true then Bool else Bool else if false then Bool else Bool
        d700 = if if d461 then true else d336 then if true then d424 else false else if d250 then false else d409
        d701 : ( ( Set -> Set ) ∋ ( ( λ x702 -> if false then x702 else x702 ) ) ) $ ( if true then Bool else Bool )
        d701 = if if false then true else false then if d607 then true else true else if d498 then d139 else false
        d703 : if true then if false then Bool else Bool else if false then Bool else Bool
        d703 = if if d57 then false else d581 then if true then true else false else if true then true else d193
        d704 : ( ( Set -> Set ) ∋ ( ( λ x705 -> ( ( Set -> Set ) ∋ ( ( λ x706 -> Bool ) ) ) $ ( x705 ) ) ) ) $ ( if true then Bool else Bool )
        d704 = if if false then true else d446 then if true then true else false else if true then true else d605
        d707 : ( ( Set -> Set ) ∋ ( ( λ x710 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x708 -> ( ( Bool -> Bool ) ∋ ( ( λ x709 -> true ) ) ) $ ( d217 ) ) ) ) $ ( if true then false else false )
        d711 : ( ( Set -> Set ) ∋ ( ( λ x713 -> ( ( Set -> Set ) ∋ ( ( λ x714 -> Bool ) ) ) $ ( x713 ) ) ) ) $ ( if true then Bool else Bool )
        d711 = ( ( Bool -> Bool ) ∋ ( ( λ x712 -> if x712 then false else x712 ) ) ) $ ( if d412 then d586 else false )
        d715 : ( ( Set -> Set ) ∋ ( ( λ x716 -> ( ( Set -> Set ) ∋ ( ( λ x717 -> x716 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d715 = if if true then d15 else d617 then if d21 then false else true else if d542 then d168 else d656
        d718 : if true then if true then Bool else Bool else if true then Bool else Bool
        d718 = ( ( Bool -> Bool ) ∋ ( ( λ x719 -> ( ( Bool -> Bool ) ∋ ( ( λ x720 -> true ) ) ) $ ( true ) ) ) ) $ ( if d437 then d641 else true )
        d721 : ( ( Set -> Set ) ∋ ( ( λ x724 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x722 -> ( ( Bool -> Bool ) ∋ ( ( λ x723 -> d102 ) ) ) $ ( false ) ) ) ) $ ( if d102 then true else d704 )
        d725 : ( ( Set -> Set ) ∋ ( ( λ x726 -> ( ( Set -> Set ) ∋ ( ( λ x727 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d725 = if if d508 then false else false then if false then d246 else d660 else if d269 then false else d250
        d728 : ( ( Set -> Set ) ∋ ( ( λ x729 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d728 = if if false then true else d207 then if true then d296 else d530 else if d57 then false else true
        d730 : ( ( Set -> Set ) ∋ ( ( λ x731 -> if false then Bool else x731 ) ) ) $ ( if true then Bool else Bool )
        d730 = if if d639 then d461 else d414 then if true then true else d468 else if true then false else d391
        d732 : ( ( Set -> Set ) ∋ ( ( λ x733 -> ( ( Set -> Set ) ∋ ( ( λ x734 -> Bool ) ) ) $ ( x733 ) ) ) ) $ ( if true then Bool else Bool )
        d732 = if if d169 then true else false then if d126 then d530 else true else if d156 then true else d675
        d735 : ( ( Set -> Set ) ∋ ( ( λ x736 -> if true then Bool else x736 ) ) ) $ ( if false then Bool else Bool )
        d735 = if if true then false else true then if d124 then d352 else d632 else if false then d477 else true
        d737 : ( ( Set -> Set ) ∋ ( ( λ x738 -> if true then Bool else x738 ) ) ) $ ( if true then Bool else Bool )
        d737 = if if true then d21 else false then if false then d6 else false else if d690 then d566 else false
        d739 : if true then if false then Bool else Bool else if false then Bool else Bool
        d739 = if if true then d542 else false then if d333 then true else d110 else if d213 then true else true
        d740 : if true then if false then Bool else Bool else if false then Bool else Bool
        d740 = if if false then false else d632 then if false then false else false else if false then false else false
        d741 : ( ( Set -> Set ) ∋ ( ( λ x742 -> ( ( Set -> Set ) ∋ ( ( λ x743 -> x742 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d741 = if if d524 then true else d365 then if d213 then true else d412 else if true then d624 else false
        d744 : ( ( Set -> Set ) ∋ ( ( λ x745 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d744 = if if false then true else d554 then if false then d693 else d332 else if d251 then true else d568
        d746 : ( ( Set -> Set ) ∋ ( ( λ x747 -> ( ( Set -> Set ) ∋ ( ( λ x748 -> x747 ) ) ) $ ( x747 ) ) ) ) $ ( if false then Bool else Bool )
        d746 = if if d47 then false else d172 then if d325 then d38 else false else if d31 then true else d524
        d749 : ( ( Set -> Set ) ∋ ( ( λ x751 -> if false then Bool else x751 ) ) ) $ ( if false then Bool else Bool )
        d749 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if x750 then x750 else d281 ) ) ) $ ( if d480 then false else d404 )
        d752 : ( ( Set -> Set ) ∋ ( ( λ x753 -> if true then x753 else x753 ) ) ) $ ( if false then Bool else Bool )
        d752 = if if false then d520 else d191 then if d421 then true else d697 else if d56 then d47 else d496
        d754 : ( ( Set -> Set ) ∋ ( ( λ x755 -> ( ( Set -> Set ) ∋ ( ( λ x756 -> x756 ) ) ) $ ( x755 ) ) ) ) $ ( if false then Bool else Bool )
        d754 = if if d305 then d453 else true then if false then d148 else d251 else if false then true else true
        d757 : ( ( Set -> Set ) ∋ ( ( λ x758 -> ( ( Set -> Set ) ∋ ( ( λ x759 -> Bool ) ) ) $ ( x758 ) ) ) ) $ ( if false then Bool else Bool )
        d757 = if if d178 then true else d641 then if false then d191 else false else if d715 then false else d660
        d760 : ( ( Set -> Set ) ∋ ( ( λ x761 -> ( ( Set -> Set ) ∋ ( ( λ x762 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d760 = if if false then false else d25 then if d132 then false else d609 else if d56 then true else d567
        d763 : if false then if true then Bool else Bool else if false then Bool else Bool
        d763 = ( ( Bool -> Bool ) ∋ ( ( λ x764 -> if true then d465 else false ) ) ) $ ( if true then true else false )
        d765 : ( ( Set -> Set ) ∋ ( ( λ x767 -> ( ( Set -> Set ) ∋ ( ( λ x768 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d765 = ( ( Bool -> Bool ) ∋ ( ( λ x766 -> if x766 then d140 else x766 ) ) ) $ ( if false then d217 else true )
        d769 : if false then if true then Bool else Bool else if false then Bool else Bool
        d769 = if if d563 then d39 else d404 then if false then d119 else true else if true then true else true
        d770 : ( ( Set -> Set ) ∋ ( ( λ x771 -> ( ( Set -> Set ) ∋ ( ( λ x772 -> Bool ) ) ) $ ( x771 ) ) ) ) $ ( if false then Bool else Bool )
        d770 = if if d166 then true else false then if d397 then d625 else d217 else if true then false else d118
        d773 : ( ( Set -> Set ) ∋ ( ( λ x774 -> ( ( Set -> Set ) ∋ ( ( λ x775 -> x775 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d773 = if if d341 then true else d141 then if false then d329 else d754 else if d1 then d619 else true
        d776 : if true then if false then Bool else Bool else if false then Bool else Bool
        d776 = ( ( Bool -> Bool ) ∋ ( ( λ x777 -> if d264 then true else d648 ) ) ) $ ( if d353 then false else false )
        d778 : ( ( Set -> Set ) ∋ ( ( λ x780 -> if false then Bool else x780 ) ) ) $ ( if false then Bool else Bool )
        d778 = ( ( Bool -> Bool ) ∋ ( ( λ x779 -> if x779 then true else d744 ) ) ) $ ( if false then d401 else false )
        d781 : if false then if true then Bool else Bool else if true then Bool else Bool
        d781 = if if true then d589 else true then if false then true else true else if d36 then d641 else d18
        d782 : ( ( Set -> Set ) ∋ ( ( λ x783 -> ( ( Set -> Set ) ∋ ( ( λ x784 -> Bool ) ) ) $ ( x783 ) ) ) ) $ ( if true then Bool else Bool )
        d782 = if if true then false else true then if true then false else true else if false then d741 else true
        d785 : ( ( Set -> Set ) ∋ ( ( λ x788 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d785 = ( ( Bool -> Bool ) ∋ ( ( λ x786 -> ( ( Bool -> Bool ) ∋ ( ( λ x787 -> x786 ) ) ) $ ( d235 ) ) ) ) $ ( if true then d158 else d533 )
        d789 : ( ( Set -> Set ) ∋ ( ( λ x791 -> ( ( Set -> Set ) ∋ ( ( λ x792 -> x792 ) ) ) $ ( x791 ) ) ) ) $ ( if true then Bool else Bool )
        d789 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if false then x790 else x790 ) ) ) $ ( if d39 then d141 else true )
        d793 : ( ( Set -> Set ) ∋ ( ( λ x794 -> ( ( Set -> Set ) ∋ ( ( λ x795 -> Bool ) ) ) $ ( x794 ) ) ) ) $ ( if false then Bool else Bool )
        d793 = if if d236 then d757 else d62 then if d233 then d11 else d86 else if true then d414 else false
        d796 : ( ( Set -> Set ) ∋ ( ( λ x799 -> ( ( Set -> Set ) ∋ ( ( λ x800 -> x799 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d796 = ( ( Bool -> Bool ) ∋ ( ( λ x797 -> ( ( Bool -> Bool ) ∋ ( ( λ x798 -> false ) ) ) $ ( x797 ) ) ) ) $ ( if d97 then d481 else d660 )
        d801 : if true then if false then Bool else Bool else if false then Bool else Bool
        d801 = if if false then true else false then if true then false else false else if false then false else d465
        d802 : if false then if true then Bool else Bool else if true then Bool else Bool
        d802 = ( ( Bool -> Bool ) ∋ ( ( λ x803 -> if d639 then true else d336 ) ) ) $ ( if true then false else true )
        d804 : if true then if true then Bool else Bool else if true then Bool else Bool
        d804 = ( ( Bool -> Bool ) ∋ ( ( λ x805 -> ( ( Bool -> Bool ) ∋ ( ( λ x806 -> false ) ) ) $ ( x805 ) ) ) ) $ ( if false then d260 else false )
        d807 : ( ( Set -> Set ) ∋ ( ( λ x808 -> if true then Bool else x808 ) ) ) $ ( if true then Bool else Bool )
        d807 = if if d368 then d124 else true then if d551 then d646 else d158 else if true then d778 else false
        d809 : ( ( Set -> Set ) ∋ ( ( λ x810 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d809 = if if true then true else d391 then if false then true else false else if d802 then true else d126
        d811 : ( ( Set -> Set ) ∋ ( ( λ x814 -> ( ( Set -> Set ) ∋ ( ( λ x815 -> x815 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d811 = ( ( Bool -> Bool ) ∋ ( ( λ x812 -> ( ( Bool -> Bool ) ∋ ( ( λ x813 -> false ) ) ) $ ( true ) ) ) ) $ ( if d465 then true else d640 )
        d816 : ( ( Set -> Set ) ∋ ( ( λ x817 -> ( ( Set -> Set ) ∋ ( ( λ x818 -> x818 ) ) ) $ ( x817 ) ) ) ) $ ( if false then Bool else Bool )
        d816 = if if true then d453 else false then if true then false else true else if true then d551 else d126
        d819 : if true then if false then Bool else Bool else if false then Bool else Bool
        d819 = if if d484 then true else d617 then if d220 then true else true else if d623 then false else true
        d820 : if false then if false then Bool else Bool else if true then Bool else Bool
        d820 = ( ( Bool -> Bool ) ∋ ( ( λ x821 -> if x821 then x821 else true ) ) ) $ ( if false then d793 else true )
        d822 : ( ( Set -> Set ) ∋ ( ( λ x823 -> if false then x823 else x823 ) ) ) $ ( if false then Bool else Bool )
        d822 = if if d371 then true else d65 then if d703 then d39 else true else if d483 then d251 else d752
        d824 : ( ( Set -> Set ) ∋ ( ( λ x825 -> ( ( Set -> Set ) ∋ ( ( λ x826 -> x826 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d824 = if if false then true else true then if d455 then true else d161 else if true then d421 else true
        d827 : ( ( Set -> Set ) ∋ ( ( λ x828 -> if true then x828 else x828 ) ) ) $ ( if true then Bool else Bool )
        d827 = if if d186 then d652 else true then if false then d781 else d437 else if d514 then d107 else false
        d829 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x831 -> x831 ) ) ) $ ( x830 ) ) ) ) $ ( if false then Bool else Bool )
        d829 = if if d509 then d329 else d785 then if d725 then d198 else true else if d332 then false else d455
        d832 : ( ( Set -> Set ) ∋ ( ( λ x833 -> ( ( Set -> Set ) ∋ ( ( λ x834 -> x834 ) ) ) $ ( x833 ) ) ) ) $ ( if false then Bool else Bool )
        d832 = if if false then true else true then if d299 then true else d260 else if d455 then d465 else d263
        d835 : ( ( Set -> Set ) ∋ ( ( λ x836 -> ( ( Set -> Set ) ∋ ( ( λ x837 -> Bool ) ) ) $ ( x836 ) ) ) ) $ ( if true then Bool else Bool )
        d835 = if if false then d704 else d309 then if d122 then d700 else true else if true then d269 else false
        d838 : if false then if true then Bool else Bool else if true then Bool else Bool
        d838 = ( ( Bool -> Bool ) ∋ ( ( λ x839 -> ( ( Bool -> Bool ) ∋ ( ( λ x840 -> d430 ) ) ) $ ( x839 ) ) ) ) $ ( if d302 then true else d217 )
        d841 : if true then if false then Bool else Bool else if false then Bool else Bool
        d841 = ( ( Bool -> Bool ) ∋ ( ( λ x842 -> ( ( Bool -> Bool ) ∋ ( ( λ x843 -> d639 ) ) ) $ ( false ) ) ) ) $ ( if true then d624 else d715 )
        d844 : if false then if true then Bool else Bool else if true then Bool else Bool
        d844 = ( ( Bool -> Bool ) ∋ ( ( λ x845 -> if true then d26 else x845 ) ) ) $ ( if d445 then false else true )
        d846 : if true then if false then Bool else Bool else if true then Bool else Bool
        d846 = if if false then d76 else false then if true then true else d38 else if d445 then d329 else d118
        d847 : if false then if true then Bool else Bool else if true then Bool else Bool
        d847 = ( ( Bool -> Bool ) ∋ ( ( λ x848 -> if x848 then true else true ) ) ) $ ( if d373 then d119 else d141 )
        d849 : if true then if true then Bool else Bool else if false then Bool else Bool
        d849 = if if true then d404 else d820 then if d509 then true else d387 else if true then d754 else d417
        d850 : if true then if true then Bool else Bool else if false then Bool else Bool
        d850 = ( ( Bool -> Bool ) ∋ ( ( λ x851 -> ( ( Bool -> Bool ) ∋ ( ( λ x852 -> x851 ) ) ) $ ( d309 ) ) ) ) $ ( if d737 then true else false )
        d853 : ( ( Set -> Set ) ∋ ( ( λ x856 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d853 = ( ( Bool -> Bool ) ∋ ( ( λ x854 -> ( ( Bool -> Bool ) ∋ ( ( λ x855 -> d577 ) ) ) $ ( x854 ) ) ) ) $ ( if true then d115 else d220 )
        d857 : ( ( Set -> Set ) ∋ ( ( λ x858 -> ( ( Set -> Set ) ∋ ( ( λ x859 -> Bool ) ) ) $ ( x858 ) ) ) ) $ ( if false then Bool else Bool )
        d857 = if if d796 then d829 else d266 then if true then true else true else if d50 then true else true
        d860 : if false then if false then Bool else Bool else if false then Bool else Bool
        d860 = ( ( Bool -> Bool ) ∋ ( ( λ x861 -> ( ( Bool -> Bool ) ∋ ( ( λ x862 -> d26 ) ) ) $ ( x861 ) ) ) ) $ ( if false then d409 else d217 )
        d863 : ( ( Set -> Set ) ∋ ( ( λ x864 -> if true then x864 else Bool ) ) ) $ ( if false then Bool else Bool )
        d863 = if if false then d178 else false then if d560 then d168 else d56 else if d773 then true else false
        d865 : ( ( Set -> Set ) ∋ ( ( λ x866 -> if false then x866 else x866 ) ) ) $ ( if false then Bool else Bool )
        d865 = if if true then false else d48 then if d408 then d471 else false else if true then d320 else d617
        d867 : ( ( Set -> Set ) ∋ ( ( λ x868 -> if false then x868 else Bool ) ) ) $ ( if true then Bool else Bool )
        d867 = if if d148 then d430 else false then if d424 then false else true else if true then true else false
        d869 : if false then if false then Bool else Bool else if true then Bool else Bool
        d869 = if if false then false else true then if true then false else d841 else if d274 then true else false
        d870 : if false then if false then Bool else Bool else if false then Bool else Bool
        d870 = if if d632 then d94 else d739 then if d850 then true else d18 else if d57 then d586 else true
        d871 : ( ( Set -> Set ) ∋ ( ( λ x874 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d871 = ( ( Bool -> Bool ) ∋ ( ( λ x872 -> ( ( Bool -> Bool ) ∋ ( ( λ x873 -> false ) ) ) $ ( d524 ) ) ) ) $ ( if d849 then false else true )
        d875 : ( ( Set -> Set ) ∋ ( ( λ x876 -> ( ( Set -> Set ) ∋ ( ( λ x877 -> Bool ) ) ) $ ( x876 ) ) ) ) $ ( if true then Bool else Bool )
        d875 = if if false then false else d102 then if d530 then d749 else true else if true then false else true
        d878 : ( ( Set -> Set ) ∋ ( ( λ x881 -> ( ( Set -> Set ) ∋ ( ( λ x882 -> Bool ) ) ) $ ( x881 ) ) ) ) $ ( if true then Bool else Bool )
        d878 = ( ( Bool -> Bool ) ∋ ( ( λ x879 -> ( ( Bool -> Bool ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( false ) ) ) ) $ ( if d387 then false else false )
        d883 : ( ( Set -> Set ) ∋ ( ( λ x885 -> if false then x885 else Bool ) ) ) $ ( if false then Bool else Bool )
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x884 -> if d68 then true else true ) ) ) $ ( if d228 then d841 else d820 )
        d886 : if false then if false then Bool else Bool else if true then Bool else Bool
        d886 = ( ( Bool -> Bool ) ∋ ( ( λ x887 -> ( ( Bool -> Bool ) ∋ ( ( λ x888 -> false ) ) ) $ ( x887 ) ) ) ) $ ( if d148 then false else d607 )
        d889 : if false then if true then Bool else Bool else if true then Bool else Bool
        d889 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> ( ( Bool -> Bool ) ∋ ( ( λ x891 -> d246 ) ) ) $ ( x890 ) ) ) ) $ ( if true then d44 else false )
        d892 : ( ( Set -> Set ) ∋ ( ( λ x895 -> if false then x895 else x895 ) ) ) $ ( if false then Bool else Bool )
        d892 = ( ( Bool -> Bool ) ∋ ( ( λ x893 -> ( ( Bool -> Bool ) ∋ ( ( λ x894 -> x893 ) ) ) $ ( false ) ) ) ) $ ( if d715 then true else false )
        d896 : if false then if false then Bool else Bool else if true then Bool else Bool
        d896 = if if d765 then false else d377 then if true then false else false else if false then true else true
        d897 : ( ( Set -> Set ) ∋ ( ( λ x899 -> ( ( Set -> Set ) ∋ ( ( λ x900 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d897 = ( ( Bool -> Bool ) ∋ ( ( λ x898 -> if d703 then d437 else x898 ) ) ) $ ( if false then false else true )
        d901 : if false then if true then Bool else Bool else if false then Bool else Bool
        d901 = if if d632 then d402 else d440 then if true then d24 else d105 else if false then true else d693
        d902 : ( ( Set -> Set ) ∋ ( ( λ x905 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d902 = ( ( Bool -> Bool ) ∋ ( ( λ x903 -> ( ( Bool -> Bool ) ∋ ( ( λ x904 -> true ) ) ) $ ( d169 ) ) ) ) $ ( if d441 then d883 else false )
        d906 : ( ( Set -> Set ) ∋ ( ( λ x907 -> ( ( Set -> Set ) ∋ ( ( λ x908 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d906 = if if d302 then d718 else d271 then if d76 then d394 else d57 else if true then false else d391
        d909 : ( ( Set -> Set ) ∋ ( ( λ x910 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d909 = if if d503 then true else false then if d339 then true else true else if true then true else false
        d911 : ( ( Set -> Set ) ∋ ( ( λ x913 -> ( ( Set -> Set ) ∋ ( ( λ x914 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d911 = ( ( Bool -> Bool ) ∋ ( ( λ x912 -> if true then x912 else true ) ) ) $ ( if false then d428 else true )
        d915 : ( ( Set -> Set ) ∋ ( ( λ x917 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d915 = ( ( Bool -> Bool ) ∋ ( ( λ x916 -> if d782 then x916 else x916 ) ) ) $ ( if true then d832 else true )
        d918 : if true then if false then Bool else Bool else if false then Bool else Bool
        d918 = if if d5 then d48 else d530 then if d309 then true else d381 else if d581 then true else false
        d919 : if true then if false then Bool else Bool else if true then Bool else Bool
        d919 = if if true then true else d671 then if false then d174 else false else if true then d217 else d432
        d920 : if false then if false then Bool else Bool else if true then Bool else Bool
        d920 = ( ( Bool -> Bool ) ∋ ( ( λ x921 -> ( ( Bool -> Bool ) ∋ ( ( λ x922 -> false ) ) ) $ ( d302 ) ) ) ) $ ( if true then d468 else false )
        d923 : if true then if true then Bool else Bool else if false then Bool else Bool
        d923 = ( ( Bool -> Bool ) ∋ ( ( λ x924 -> if d18 then x924 else x924 ) ) ) $ ( if false then d203 else d264 )
        d925 : ( ( Set -> Set ) ∋ ( ( λ x926 -> ( ( Set -> Set ) ∋ ( ( λ x927 -> Bool ) ) ) $ ( x926 ) ) ) ) $ ( if true then Bool else Bool )
        d925 = if if d339 then d66 else d47 then if true then true else true else if true then d530 else true
        d928 : if false then if true then Bool else Bool else if false then Bool else Bool
        d928 = if if true then true else false then if d715 then d849 else d537 else if false then true else true
        d929 : ( ( Set -> Set ) ∋ ( ( λ x932 -> ( ( Set -> Set ) ∋ ( ( λ x933 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d929 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> ( ( Bool -> Bool ) ∋ ( ( λ x931 -> x931 ) ) ) $ ( d574 ) ) ) ) $ ( if true then d156 else false )
        d934 : if true then if false then Bool else Bool else if false then Bool else Bool
        d934 = if if false then d789 else true then if false then true else d217 else if d377 then d920 else d84
        d935 : if false then if false then Bool else Bool else if true then Bool else Bool
        d935 = if if d412 then d789 else d234 then if d741 then d316 else true else if false then d251 else false
        d936 : if true then if false then Bool else Bool else if false then Bool else Bool
        d936 = if if false then d623 else d458 then if true then d661 else d397 else if false then d126 else d883
        d937 : if false then if false then Bool else Bool else if true then Bool else Bool
        d937 = if if false then true else d508 then if d177 then d154 else d704 else if d700 then false else d106
        d938 : ( ( Set -> Set ) ∋ ( ( λ x941 -> ( ( Set -> Set ) ∋ ( ( λ x942 -> Bool ) ) ) $ ( x941 ) ) ) ) $ ( if true then Bool else Bool )
        d938 = ( ( Bool -> Bool ) ∋ ( ( λ x939 -> ( ( Bool -> Bool ) ∋ ( ( λ x940 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d166 else d735 )
        d943 : if true then if true then Bool else Bool else if false then Bool else Bool
        d943 = ( ( Bool -> Bool ) ∋ ( ( λ x944 -> if true then false else x944 ) ) ) $ ( if true then d275 else false )
        d945 : ( ( Set -> Set ) ∋ ( ( λ x946 -> ( ( Set -> Set ) ∋ ( ( λ x947 -> x947 ) ) ) $ ( x946 ) ) ) ) $ ( if true then Bool else Bool )
        d945 = if if true then true else true then if d424 then d892 else d382 else if false then d73 else d860
        d948 : if false then if true then Bool else Bool else if false then Bool else Bool
        d948 = ( ( Bool -> Bool ) ∋ ( ( λ x949 -> if d612 then d296 else true ) ) ) $ ( if d397 then true else d252 )
        d950 : if true then if true then Bool else Bool else if true then Bool else Bool
        d950 = ( ( Bool -> Bool ) ∋ ( ( λ x951 -> ( ( Bool -> Bool ) ∋ ( ( λ x952 -> x952 ) ) ) $ ( x951 ) ) ) ) $ ( if true then false else true )
        d953 : ( ( Set -> Set ) ∋ ( ( λ x954 -> if false then Bool else x954 ) ) ) $ ( if false then Bool else Bool )
        d953 = if if d560 then d703 else false then if false then false else d648 else if d763 then false else d102
        d955 : if false then if true then Bool else Bool else if true then Bool else Bool
        d955 = if if d381 then d154 else d358 then if d829 then true else true else if true then false else true
        d956 : ( ( Set -> Set ) ∋ ( ( λ x958 -> ( ( Set -> Set ) ∋ ( ( λ x959 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d956 = ( ( Bool -> Bool ) ∋ ( ( λ x957 -> if x957 then x957 else true ) ) ) $ ( if true then false else d609 )
        d960 : ( ( Set -> Set ) ∋ ( ( λ x963 -> ( ( Set -> Set ) ∋ ( ( λ x964 -> x964 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d960 = ( ( Bool -> Bool ) ∋ ( ( λ x961 -> ( ( Bool -> Bool ) ∋ ( ( λ x962 -> false ) ) ) $ ( d883 ) ) ) ) $ ( if false then d754 else false )
        d965 : ( ( Set -> Set ) ∋ ( ( λ x966 -> ( ( Set -> Set ) ∋ ( ( λ x967 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d965 = if if true then d576 else d68 then if false then d468 else true else if d668 then d211 else true
        d968 : if true then if false then Bool else Bool else if true then Bool else Bool
        d968 = if if true then d612 else d36 then if false then true else false else if d412 then d191 else false
        d969 : if true then if false then Bool else Bool else if true then Bool else Bool
        d969 = if if false then d928 else false then if d530 then true else d132 else if false then false else d576
        d970 : ( ( Set -> Set ) ∋ ( ( λ x973 -> ( ( Set -> Set ) ∋ ( ( λ x974 -> x974 ) ) ) $ ( x973 ) ) ) ) $ ( if true then Bool else Bool )
        d970 = ( ( Bool -> Bool ) ∋ ( ( λ x971 -> ( ( Bool -> Bool ) ∋ ( ( λ x972 -> x971 ) ) ) $ ( false ) ) ) ) $ ( if true then d320 else d387 )
        d975 : if false then if true then Bool else Bool else if true then Bool else Bool
        d975 = ( ( Bool -> Bool ) ∋ ( ( λ x976 -> ( ( Bool -> Bool ) ∋ ( ( λ x977 -> d432 ) ) ) $ ( d807 ) ) ) ) $ ( if false then true else d602 )
        d978 : if false then if true then Bool else Bool else if true then Bool else Bool
        d978 = if if true then false else d150 then if false then true else false else if d38 then d440 else false
        d979 : if false then if true then Bool else Bool else if false then Bool else Bool
        d979 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> if d883 then true else x980 ) ) ) $ ( if false then d749 else d520 )
        d981 : if true then if false then Bool else Bool else if true then Bool else Bool
        d981 = ( ( Bool -> Bool ) ∋ ( ( λ x982 -> if d201 then x982 else d623 ) ) ) $ ( if false then true else d57 )
        d983 : ( ( Set -> Set ) ∋ ( ( λ x984 -> if true then Bool else x984 ) ) ) $ ( if true then Bool else Bool )
        d983 = if if false then d191 else true then if false then d44 else d353 else if false then d829 else d414
        d985 : if true then if false then Bool else Bool else if false then Bool else Bool
        d985 = ( ( Bool -> Bool ) ∋ ( ( λ x986 -> ( ( Bool -> Bool ) ∋ ( ( λ x987 -> d869 ) ) ) $ ( x986 ) ) ) ) $ ( if true then d953 else false )
        d988 : if false then if true then Bool else Bool else if false then Bool else Bool
        d988 = ( ( Bool -> Bool ) ∋ ( ( λ x989 -> if d408 then true else x989 ) ) ) $ ( if d168 then d796 else false )
        d990 : if false then if true then Bool else Bool else if true then Bool else Bool
        d990 = ( ( Bool -> Bool ) ∋ ( ( λ x991 -> ( ( Bool -> Bool ) ∋ ( ( λ x992 -> d574 ) ) ) $ ( true ) ) ) ) $ ( if true then d746 else d401 )
        d993 : if false then if true then Bool else Bool else if false then Bool else Bool
        d993 = if if false then true else d969 then if true then d592 else false else if true then d721 else d902
        d994 : if false then if true then Bool else Bool else if true then Bool else Bool
        d994 = if if d629 then true else d796 then if false then true else d34 else if false then d576 else true
        d995 : if true then if false then Bool else Bool else if true then Bool else Bool
        d995 = if if d871 then d309 else false then if d481 then true else d21 else if d239 then true else d629
        d996 : if true then if true then Bool else Bool else if true then Bool else Bool
        d996 = if if false then false else true then if d850 then d455 else false else if false then false else d668
        d997 : ( ( Set -> Set ) ∋ ( ( λ x998 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d997 = if if false then false else false then if d656 then false else d865 else if true then false else false
        d999 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> ( ( Set -> Set ) ∋ ( ( λ x1001 -> x1000 ) ) ) $ ( x1000 ) ) ) ) $ ( if false then Bool else Bool )
        d999 = if if d700 then true else d869 then if d522 then d994 else d525 else if false then true else d563
        d1002 : ( ( Set -> Set ) ∋ ( ( λ x1003 -> ( ( Set -> Set ) ∋ ( ( λ x1004 -> Bool ) ) ) $ ( x1003 ) ) ) ) $ ( if true then Bool else Bool )
        d1002 = if if true then d542 else d496 then if d983 then false else false else if false then d536 else true
        d1005 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1005 = ( ( Bool -> Bool ) ∋ ( ( λ x1006 -> ( ( Bool -> Bool ) ∋ ( ( λ x1007 -> d84 ) ) ) $ ( x1006 ) ) ) ) $ ( if false then true else true )
        d1008 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1008 = if if d332 then false else d110 then if false then d704 else false else if d477 then false else true
        d1009 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1009 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if x1010 then d721 else x1010 ) ) ) $ ( if d809 then false else false )
        d1011 : ( ( Set -> Set ) ∋ ( ( λ x1014 -> ( ( Set -> Set ) ∋ ( ( λ x1015 -> Bool ) ) ) $ ( x1014 ) ) ) ) $ ( if false then Bool else Bool )
        d1011 = ( ( Bool -> Bool ) ∋ ( ( λ x1012 -> ( ( Bool -> Bool ) ∋ ( ( λ x1013 -> d386 ) ) ) $ ( x1012 ) ) ) ) $ ( if false then d785 else d687 )
        d1016 : ( ( Set -> Set ) ∋ ( ( λ x1019 -> ( ( Set -> Set ) ∋ ( ( λ x1020 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1016 = ( ( Bool -> Bool ) ∋ ( ( λ x1017 -> ( ( Bool -> Bool ) ∋ ( ( λ x1018 -> x1018 ) ) ) $ ( d744 ) ) ) ) $ ( if true then d704 else true )
        d1021 : ( ( Set -> Set ) ∋ ( ( λ x1022 -> if false then x1022 else x1022 ) ) ) $ ( if false then Bool else Bool )
        d1021 = if if d896 then d153 else false then if d329 then d250 else d655 else if d955 then d394 else d857
        d1023 : ( ( Set -> Set ) ∋ ( ( λ x1024 -> if true then x1024 else x1024 ) ) ) $ ( if true then Bool else Bool )
        d1023 = if if false then d402 else true then if true then d735 else d850 else if d730 then d305 else d153
        d1025 : ( ( Set -> Set ) ∋ ( ( λ x1027 -> ( ( Set -> Set ) ∋ ( ( λ x1028 -> Bool ) ) ) $ ( x1027 ) ) ) ) $ ( if false then Bool else Bool )
        d1025 = ( ( Bool -> Bool ) ∋ ( ( λ x1026 -> if x1026 then x1026 else x1026 ) ) ) $ ( if true then false else d386 )
        d1029 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1029 = if if false then true else true then if true then false else true else if false then d397 else true
        d1030 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> ( ( Bool -> Bool ) ∋ ( ( λ x1032 -> true ) ) ) $ ( d568 ) ) ) ) $ ( if false then false else d468 )
        d1033 : ( ( Set -> Set ) ∋ ( ( λ x1036 -> ( ( Set -> Set ) ∋ ( ( λ x1037 -> x1037 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1033 = ( ( Bool -> Bool ) ∋ ( ( λ x1034 -> ( ( Bool -> Bool ) ∋ ( ( λ x1035 -> d322 ) ) ) $ ( x1034 ) ) ) ) $ ( if d263 then d970 else true )
        d1038 : ( ( Set -> Set ) ∋ ( ( λ x1039 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> Bool ) ) ) $ ( x1039 ) ) ) ) $ ( if false then Bool else Bool )
        d1038 = if if false then true else false then if d978 then true else d94 else if d239 then d612 else true
        d1041 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1041 = ( ( Bool -> Bool ) ∋ ( ( λ x1042 -> ( ( Bool -> Bool ) ∋ ( ( λ x1043 -> true ) ) ) $ ( d408 ) ) ) ) $ ( if true then d236 else d675 )
        d1044 : ( ( Set -> Set ) ∋ ( ( λ x1045 -> ( ( Set -> Set ) ∋ ( ( λ x1046 -> Bool ) ) ) $ ( x1045 ) ) ) ) $ ( if true then Bool else Bool )
        d1044 = if if true then true else true then if d326 then d730 else false else if true then d1008 else d251
        d1047 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1047 = if if true then d115 else false then if d18 then true else d302 else if true then true else false
        d1048 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> if true then x1050 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1048 = ( ( Bool -> Bool ) ∋ ( ( λ x1049 -> if x1049 then x1049 else x1049 ) ) ) $ ( if d707 then d807 else d918 )
        d1051 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1051 = if if false then d376 else true then if d901 then true else d57 else if d934 then false else d408
        d1052 : ( ( Set -> Set ) ∋ ( ( λ x1055 -> if true then Bool else x1055 ) ) ) $ ( if false then Bool else Bool )
        d1052 = ( ( Bool -> Bool ) ∋ ( ( λ x1053 -> ( ( Bool -> Bool ) ∋ ( ( λ x1054 -> d305 ) ) ) $ ( d397 ) ) ) ) $ ( if d632 then d371 else d740 )
        d1056 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1056 = ( ( Bool -> Bool ) ∋ ( ( λ x1057 -> if x1057 then true else d274 ) ) ) $ ( if d782 then d994 else true )
        d1058 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1058 = ( ( Bool -> Bool ) ∋ ( ( λ x1059 -> if d498 then true else d629 ) ) ) $ ( if false then false else true )
        d1060 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1060 = ( ( Bool -> Bool ) ∋ ( ( λ x1061 -> ( ( Bool -> Bool ) ∋ ( ( λ x1062 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then d816 else true )
        d1063 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1063 = ( ( Bool -> Bool ) ∋ ( ( λ x1064 -> ( ( Bool -> Bool ) ∋ ( ( λ x1065 -> x1064 ) ) ) $ ( d850 ) ) ) ) $ ( if false then d581 else d1047 )
        d1066 : ( ( Set -> Set ) ∋ ( ( λ x1067 -> ( ( Set -> Set ) ∋ ( ( λ x1068 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1066 = if if d793 then false else true then if d62 then d263 else d571 else if false then d896 else false
        d1069 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> if false then Bool else x1070 ) ) ) $ ( if false then Bool else Bool )
        d1069 = if if d754 then d530 else d288 then if d441 then false else d943 else if true then d801 else true
        d1071 : ( ( Set -> Set ) ∋ ( ( λ x1072 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1071 = if if d909 then false else d648 then if d540 then true else d285 else if d62 then d402 else true
        d1073 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1073 = ( ( Bool -> Bool ) ∋ ( ( λ x1074 -> if x1074 then d401 else x1074 ) ) ) $ ( if d956 then false else d417 )
        d1075 : ( ( Set -> Set ) ∋ ( ( λ x1076 -> if true then x1076 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1075 = if if d1041 then true else d975 then if d47 then d421 else d177 else if true then false else d522
        d1077 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1077 = ( ( Bool -> Bool ) ∋ ( ( λ x1078 -> ( ( Bool -> Bool ) ∋ ( ( λ x1079 -> true ) ) ) $ ( x1078 ) ) ) ) $ ( if true then false else true )
        d1080 : ( ( Set -> Set ) ∋ ( ( λ x1082 -> ( ( Set -> Set ) ∋ ( ( λ x1083 -> x1082 ) ) ) $ ( x1082 ) ) ) ) $ ( if true then Bool else Bool )
        d1080 = ( ( Bool -> Bool ) ∋ ( ( λ x1081 -> if false then x1081 else x1081 ) ) ) $ ( if d684 then true else false )
        d1084 : ( ( Set -> Set ) ∋ ( ( λ x1086 -> ( ( Set -> Set ) ∋ ( ( λ x1087 -> Bool ) ) ) $ ( x1086 ) ) ) ) $ ( if true then Bool else Bool )
        d1084 = ( ( Bool -> Bool ) ∋ ( ( λ x1085 -> if x1085 then x1085 else x1085 ) ) ) $ ( if false then d929 else d744 )
        d1088 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1088 = if if false then true else false then if d271 then true else false else if true then true else false
        d1089 : ( ( Set -> Set ) ∋ ( ( λ x1092 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1089 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> ( ( Bool -> Bool ) ∋ ( ( λ x1091 -> false ) ) ) $ ( x1090 ) ) ) ) $ ( if d849 then d701 else d621 )
        d1093 : ( ( Set -> Set ) ∋ ( ( λ x1094 -> if true then x1094 else x1094 ) ) ) $ ( if true then Bool else Bool )
        d1093 = if if true then false else false then if d844 then d1 else true else if true then false else true
        d1095 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1095 = if if false then d329 else d975 then if false then d522 else false else if false then true else true
        d1096 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1096 = ( ( Bool -> Bool ) ∋ ( ( λ x1097 -> if x1097 then true else d878 ) ) ) $ ( if d296 then d945 else false )
        d1098 : ( ( Set -> Set ) ∋ ( ( λ x1101 -> ( ( Set -> Set ) ∋ ( ( λ x1102 -> Bool ) ) ) $ ( x1101 ) ) ) ) $ ( if true then Bool else Bool )
        d1098 = ( ( Bool -> Bool ) ∋ ( ( λ x1099 -> ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> true ) ) ) $ ( d1063 ) ) ) ) $ ( if true then true else false )
        d1103 : ( ( Set -> Set ) ∋ ( ( λ x1104 -> ( ( Set -> Set ) ∋ ( ( λ x1105 -> Bool ) ) ) $ ( x1104 ) ) ) ) $ ( if true then Bool else Bool )
        d1103 = if if d274 then false else d886 then if false then d911 else d68 else if true then true else false
        d1106 : ( ( Set -> Set ) ∋ ( ( λ x1107 -> ( ( Set -> Set ) ∋ ( ( λ x1108 -> Bool ) ) ) $ ( x1107 ) ) ) ) $ ( if false then Bool else Bool )
        d1106 = if if d883 then true else false then if d260 then d56 else d555 else if true then true else true
        d1109 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1109 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if x1110 then d179 else true ) ) ) $ ( if false then false else d749 )
        d1111 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1111 = if if true then false else d668 then if false then d84 else d139 else if d935 then true else false
        d1112 : ( ( Set -> Set ) ∋ ( ( λ x1114 -> ( ( Set -> Set ) ∋ ( ( λ x1115 -> Bool ) ) ) $ ( x1114 ) ) ) ) $ ( if true then Bool else Bool )
        d1112 = ( ( Bool -> Bool ) ∋ ( ( λ x1113 -> if d589 then x1113 else d465 ) ) ) $ ( if d760 then true else true )
        d1116 : ( ( Set -> Set ) ∋ ( ( λ x1117 -> ( ( Set -> Set ) ∋ ( ( λ x1118 -> x1117 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1116 = if if d1052 then d711 else false then if true then false else d902 else if true then true else d18
        d1119 : ( ( Set -> Set ) ∋ ( ( λ x1122 -> ( ( Set -> Set ) ∋ ( ( λ x1123 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1119 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1121 -> x1121 ) ) ) $ ( d1106 ) ) ) ) $ ( if d483 then false else d988 )
        d1124 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1124 = if if false then true else false then if d660 then false else true else if d244 then true else d44
        d1125 : ( ( Set -> Set ) ∋ ( ( λ x1128 -> ( ( Set -> Set ) ∋ ( ( λ x1129 -> x1129 ) ) ) $ ( x1128 ) ) ) ) $ ( if true then Bool else Bool )
        d1125 = ( ( Bool -> Bool ) ∋ ( ( λ x1126 -> ( ( Bool -> Bool ) ∋ ( ( λ x1127 -> true ) ) ) $ ( false ) ) ) ) $ ( if d264 then d640 else false )
        d1130 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1130 = if if d1056 then d124 else d581 then if d636 then true else true else if d1095 then false else d925
        d1131 : ( ( Set -> Set ) ∋ ( ( λ x1134 -> ( ( Set -> Set ) ∋ ( ( λ x1135 -> Bool ) ) ) $ ( x1134 ) ) ) ) $ ( if false then Bool else Bool )
        d1131 = ( ( Bool -> Bool ) ∋ ( ( λ x1132 -> ( ( Bool -> Bool ) ∋ ( ( λ x1133 -> d960 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d274 )
        d1136 : ( ( Set -> Set ) ∋ ( ( λ x1137 -> if true then x1137 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1136 = if if false then false else d995 then if true then d554 else false else if d609 then d878 else d368
        d1138 : ( ( Set -> Set ) ∋ ( ( λ x1141 -> ( ( Set -> Set ) ∋ ( ( λ x1142 -> x1141 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1138 = ( ( Bool -> Bool ) ∋ ( ( λ x1139 -> ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d928 else false )
        d1143 : ( ( Set -> Set ) ∋ ( ( λ x1144 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1143 = if if d27 then true else true then if d632 then true else d955 else if false then d453 else d81
        d1145 : ( ( Set -> Set ) ∋ ( ( λ x1146 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1145 = if if true then true else d182 then if d896 then d158 else d785 else if false then false else d34
        d1147 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> ( ( Set -> Set ) ∋ ( ( λ x1151 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1147 = ( ( Bool -> Bool ) ∋ ( ( λ x1148 -> ( ( Bool -> Bool ) ∋ ( ( λ x1149 -> d522 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d1152 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1152 = if if false then d641 else d402 then if d252 then true else d509 else if d581 then d757 else d568
        d1153 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1153 = ( ( Bool -> Bool ) ∋ ( ( λ x1154 -> if d322 then d1109 else true ) ) ) $ ( if true then d70 else false )
        d1155 : ( ( Set -> Set ) ∋ ( ( λ x1158 -> ( ( Set -> Set ) ∋ ( ( λ x1159 -> x1159 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1155 = ( ( Bool -> Bool ) ∋ ( ( λ x1156 -> ( ( Bool -> Bool ) ∋ ( ( λ x1157 -> true ) ) ) $ ( d897 ) ) ) ) $ ( if d624 then d332 else true )
        d1160 : ( ( Set -> Set ) ∋ ( ( λ x1163 -> if true then x1163 else x1163 ) ) ) $ ( if true then Bool else Bool )
        d1160 = ( ( Bool -> Bool ) ∋ ( ( λ x1161 -> ( ( Bool -> Bool ) ∋ ( ( λ x1162 -> d1056 ) ) ) $ ( x1161 ) ) ) ) $ ( if d139 then d660 else d1016 )
        d1164 : ( ( Set -> Set ) ∋ ( ( λ x1165 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1164 = if if d920 then d387 else d1124 then if d671 then d936 else d981 else if false then false else false
        d1166 : ( ( Set -> Set ) ∋ ( ( λ x1167 -> if false then x1167 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1166 = if if d424 then true else true then if false then true else true else if d754 then false else false
        d1168 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1168 = ( ( Bool -> Bool ) ∋ ( ( λ x1169 -> ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> true ) ) ) $ ( x1169 ) ) ) ) $ ( if d293 then d377 else d110 )