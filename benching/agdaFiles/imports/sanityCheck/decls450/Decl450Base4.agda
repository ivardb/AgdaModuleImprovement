module Decl450Base4  where
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
        d1 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1 = if if true then true else true then if false then false else false else if true then true else true
        d2 : if true then if false then Bool else Bool else if false then Bool else Bool
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> ( ( Bool -> Bool ) ∋ ( ( λ x4 -> x4 ) ) ) $ ( d1 ) ) ) ) $ ( if d1 then true else d1 )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> Bool ) ) ) $ ( x8 ) ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> x7 ) ) ) $ ( d2 ) ) ) ) $ ( if d2 then d2 else false )
        d10 : if false then if true then Bool else Bool else if true then Bool else Bool
        d10 = if if d1 then d1 else true then if d2 then d2 else d5 else if true then d1 else d2
        d11 : if true then if false then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> d10 ) ) ) $ ( d10 ) ) ) ) $ ( if true then false else true )
        d14 : if true then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if d11 then d5 else d2 then if d10 then d5 else false else if true then false else true
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d15 = if if d1 then true else false then if false then true else true else if true then d5 else d2
        d18 : if false then if true then Bool else Bool else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> d10 ) ) ) $ ( false ) ) ) ) $ ( if d5 then true else d1 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if false then x24 else x24 ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> true ) ) ) $ ( d18 ) ) ) ) $ ( if d11 then d5 else d15 )
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> d14 ) ) ) $ ( d18 ) ) ) ) $ ( if false then d11 else true )
        d28 : if true then if true then Bool else Bool else if true then Bool else Bool
        d28 = if if d2 then true else true then if false then d11 else d21 else if false then d5 else true
        d29 : if false then if false then Bool else Bool else if false then Bool else Bool
        d29 = if if d25 then true else false then if false then d14 else d28 else if d14 then false else true
        d30 : if false then if true then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if true then true else d2 ) ) ) $ ( if d11 then true else d21 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d32 = if if true then true else d11 then if false then d29 else true else if true then d30 else d11
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x37 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d35 = if if false then d10 else d32 then if false then d18 else d25 else if d10 then false else true
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d38 = if if true then d21 else d29 then if true then true else true else if d35 then false else true
        d41 : if false then if false then Bool else Bool else if true then Bool else Bool
        d41 = if if true then d35 else false then if false then d1 else d32 else if d11 then true else true
        d42 : if true then if true then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if x43 then x43 else false ) ) ) $ ( if false then d21 else true )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = if if d29 then d21 else true then if true then d2 else true else if d30 then true else d15
        d46 : if true then if true then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if x47 then d18 else x47 ) ) ) $ ( if true then true else d10 )
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if true then x49 else true ) ) ) $ ( if d28 then false else true )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = if if true then d1 else d30 then if true then d1 else d14 else if true then d29 else d15
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> x54 ) ) ) $ ( x54 ) ) ) ) $ ( if true then Bool else Bool )
        d53 = if if true then true else false then if true then d38 else d50 else if d50 then d50 else d5
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if d46 then d11 else false then if false then d46 else d10 else if true then d14 else true
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d56 then x60 else false ) ) ) $ ( if d18 then true else d5 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> false ) ) ) $ ( x64 ) ) ) ) $ ( if d59 then true else d28 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x70 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if d10 then d63 else true ) ) ) $ ( if false then true else d11 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if x73 then x73 else x73 ) ) ) $ ( if false then true else d30 )
        d75 : if true then if true then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if false then false else false ) ) ) $ ( if false then d21 else d25 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if false then x78 else false ) ) ) $ ( if true then false else true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x83 ) ) ) $ ( x82 ) ) ) ) $ ( if false then Bool else Bool )
        d81 = if if d1 then d68 else d63 then if d35 then false else true else if d42 then false else false
        d84 : if false then if false then Bool else Bool else if false then Bool else Bool
        d84 = if if false then false else true then if true then d44 else false else if true then true else true
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if false then x86 else Bool ) ) ) $ ( if false then Bool else Bool )
        d85 = if if true then false else d50 then if d53 then d2 else d41 else if d53 then false else true
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d87 = if if d48 then false else false then if true then true else d84 else if false then d21 else true
        d89 : if false then if true then Bool else Bool else if false then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if x90 then true else d1 ) ) ) $ ( if true then true else true )
        d91 : if false then if false then Bool else Bool else if true then Bool else Bool
        d91 = if if false then d21 else d29 then if d15 then d11 else false else if d25 then true else false
        d92 : if true then if true then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if d29 then d48 else x93 ) ) ) $ ( if d1 then true else d75 )
        d94 : if false then if true then Bool else Bool else if true then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if d42 then false else true ) ) ) $ ( if false then true else true )
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = if if false then true else false then if d84 then d11 else true else if d89 then false else true
        d97 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then x100 else Bool ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> d84 ) ) ) $ ( d35 ) ) ) ) $ ( if d85 then false else d46 )
        d101 : if false then if false then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> true ) ) ) $ ( d77 ) ) ) ) $ ( if false then d38 else d46 )
        d104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> x105 ) ) ) $ ( d72 ) ) ) ) $ ( if d25 then d38 else d68 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( x110 ) ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> x108 ) ) ) $ ( d25 ) ) ) ) $ ( if d89 then false else false )
        d112 : if false then if false then Bool else Bool else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d84 ) ) ) $ ( d101 ) ) ) ) $ ( if d53 then d96 else false )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> Bool ) ) ) $ ( x118 ) ) ) ) $ ( if true then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> x116 ) ) ) $ ( x116 ) ) ) ) $ ( if d1 then false else d28 )
        d120 : if true then if true then Bool else Bool else if false then Bool else Bool
        d120 = if if false then true else false then if d38 then false else d89 else if d10 then false else d29
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> Bool ) ) ) $ ( x122 ) ) ) ) $ ( if false then Bool else Bool )
        d121 = if if d15 then d92 else d46 then if false then d112 else d91 else if d18 then false else true
        d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> x126 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d124 = if if false then true else true then if false then true else false else if true then false else d15
        d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if false then Bool else x128 ) ) ) $ ( if false then Bool else Bool )
        d127 = if if d25 then d38 else false then if d84 then d14 else true else if d77 then d68 else false
        d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then x130 else x130 ) ) ) $ ( if true then Bool else Bool )
        d129 = if if false then false else d89 then if true then false else true else if false then true else true
        d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if false then x132 else x132 ) ) ) $ ( if false then Bool else Bool )
        d131 = if if d104 then false else d21 then if d15 then true else false else if d38 then true else false
        d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> if true then Bool else x134 ) ) ) $ ( if false then Bool else Bool )
        d133 = if if d107 then true else false then if d59 then d10 else true else if false then false else false
        d135 : if true then if false then Bool else Bool else if false then Bool else Bool
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> if x136 then x136 else true ) ) ) $ ( if true then true else true )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d137 = if if d41 then d112 else false then if d107 then false else d131 else if d127 then d75 else d59
        d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d140 = if if true then d35 else false then if false then false else false else if d10 then true else true
        d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d143 = if if d77 then d137 else true then if d48 then d115 else d48 else if true then d32 else true
        d145 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> Bool ) ) ) $ ( x147 ) ) ) ) $ ( if true then Bool else Bool )
        d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> if true then x146 else d135 ) ) ) $ ( if d30 then false else false )
        d149 : if true then if false then Bool else Bool else if false then Bool else Bool
        d149 = if if true then false else true then if d112 then d10 else d42 else if d104 then false else false
        d150 : if true then if false then Bool else Bool else if false then Bool else Bool
        d150 = if if d56 then d63 else false then if false then true else false else if false then true else true
        d151 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> Bool ) ) ) $ ( x153 ) ) ) ) $ ( if true then Bool else Bool )
        d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> if d133 then d75 else true ) ) ) $ ( if d129 then false else false )
        d155 : if true then if true then Bool else Bool else if true then Bool else Bool
        d155 = if if d44 then false else false then if true then true else false else if d89 then true else d129
        d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if true then Bool else x157 ) ) ) $ ( if false then Bool else Bool )
        d156 = if if true then d92 else false then if true then d10 else false else if false then true else d115
        d158 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if false then x160 else x160 ) ) ) $ ( if false then Bool else Bool )
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> if false then d104 else x159 ) ) ) $ ( if d72 then d129 else false )
        d161 : ( ( Set -> Set ) ∋ ( ( λ x162 -> if true then Bool else x162 ) ) ) $ ( if false then Bool else Bool )
        d161 = if if false then d94 else d145 then if d89 then d18 else d137 else if d158 then true else d35
        d163 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> Bool ) ) ) $ ( x164 ) ) ) ) $ ( if false then Bool else Bool )
        d163 = if if d145 then d131 else d30 then if d151 then d18 else false else if false then false else false
        d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if false then x167 else x167 ) ) ) $ ( if false then Bool else Bool )
        d166 = if if d68 then false else false then if d127 then false else true else if d72 then true else true
        d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if false then Bool else x169 ) ) ) $ ( if true then Bool else Bool )
        d168 = if if d129 then false else d131 then if d97 then d155 else d28 else if false then false else false
        d170 : ( ( Set -> Set ) ∋ ( ( λ x172 -> ( ( Set -> Set ) ∋ ( ( λ x173 -> Bool ) ) ) $ ( x172 ) ) ) ) $ ( if true then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> if x171 then false else x171 ) ) ) $ ( if false then false else false )
        d174 : ( ( Set -> Set ) ∋ ( ( λ x177 -> ( ( Set -> Set ) ∋ ( ( λ x178 -> x177 ) ) ) $ ( x177 ) ) ) ) $ ( if true then Bool else Bool )
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> ( ( Bool -> Bool ) ∋ ( ( λ x176 -> x175 ) ) ) $ ( x175 ) ) ) ) $ ( if d28 then false else true )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> x180 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d179 = if if d10 then d151 else true then if d44 then true else d92 else if false then true else d96
        d182 : ( ( Set -> Set ) ∋ ( ( λ x185 -> if true then x185 else Bool ) ) ) $ ( if true then Bool else Bool )
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( Bool -> Bool ) ∋ ( ( λ x184 -> x184 ) ) ) $ ( x183 ) ) ) ) $ ( if true then d15 else d120 )
        d186 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if false then x188 else x188 ) ) ) $ ( if false then Bool else Bool )
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> if x187 then true else x187 ) ) ) $ ( if d81 then true else d174 )
        d189 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if false then Bool else x190 ) ) ) $ ( if false then Bool else Bool )
        d189 = if if true then d15 else d18 then if false then false else true else if d46 then true else false
        d191 : ( ( Set -> Set ) ∋ ( ( λ x192 -> ( ( Set -> Set ) ∋ ( ( λ x193 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d191 = if if true then false else d150 then if true then false else d107 else if true then false else d149
        d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> x196 ) ) ) $ ( x195 ) ) ) ) $ ( if false then Bool else Bool )
        d194 = if if false then d182 else d145 then if d149 then true else true else if true then false else d48
        d197 : if false then if true then Bool else Bool else if true then Bool else Bool
        d197 = if if false then true else d121 then if false then d179 else false else if d2 then true else d59
        d198 : ( ( Set -> Set ) ∋ ( ( λ x199 -> if false then Bool else x199 ) ) ) $ ( if true then Bool else Bool )
        d198 = if if d59 then true else false then if true then false else true else if d120 then d107 else false
        d200 : ( ( Set -> Set ) ∋ ( ( λ x203 -> if true then x203 else Bool ) ) ) $ ( if false then Bool else Bool )
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x201 -> ( ( Bool -> Bool ) ∋ ( ( λ x202 -> false ) ) ) $ ( x201 ) ) ) ) $ ( if d35 then d53 else d97 )
        d204 : if true then if false then Bool else Bool else if true then Bool else Bool
        d204 = ( ( Bool -> Bool ) ∋ ( ( λ x205 -> if true then false else d174 ) ) ) $ ( if d179 then true else true )
        d206 : if true then if true then Bool else Bool else if true then Bool else Bool
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> if x207 then true else x207 ) ) ) $ ( if d150 then d149 else true )
        d208 : ( ( Set -> Set ) ∋ ( ( λ x209 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d208 = if if true then d129 else d197 then if d158 then d179 else true else if d2 then d200 else false
        d210 : if true then if true then Bool else Bool else if false then Bool else Bool
        d210 = if if d32 then false else false then if false then d204 else d44 else if false then d81 else false
        d211 : ( ( Set -> Set ) ∋ ( ( λ x214 -> ( ( Set -> Set ) ∋ ( ( λ x215 -> x214 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x212 -> ( ( Bool -> Bool ) ∋ ( ( λ x213 -> x212 ) ) ) $ ( d145 ) ) ) ) $ ( if true then d25 else d38 )
        d216 : ( ( Set -> Set ) ∋ ( ( λ x217 -> if false then x217 else Bool ) ) ) $ ( if false then Bool else Bool )
        d216 = if if false then false else d1 then if d50 then d104 else false else if d77 then d151 else true
        d218 : if false then if false then Bool else Bool else if true then Bool else Bool
        d218 = ( ( Bool -> Bool ) ∋ ( ( λ x219 -> if d48 then x219 else true ) ) ) $ ( if d107 then false else true )
        d220 : if true then if true then Bool else Bool else if true then Bool else Bool
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x221 -> if x221 then false else x221 ) ) ) $ ( if true then d107 else d166 )
        d222 : ( ( Set -> Set ) ∋ ( ( λ x223 -> if false then Bool else x223 ) ) ) $ ( if true then Bool else Bool )
        d222 = if if d137 then false else true then if false then d63 else true else if d198 then true else true
        d224 : ( ( Set -> Set ) ∋ ( ( λ x225 -> ( ( Set -> Set ) ∋ ( ( λ x226 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d224 = if if true then false else true then if true then true else d104 else if d194 then false else false
        d227 : ( ( Set -> Set ) ∋ ( ( λ x228 -> ( ( Set -> Set ) ∋ ( ( λ x229 -> x228 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d227 = if if d143 then false else true then if d112 then d208 else true else if d89 then d158 else true
        d230 : if true then if true then Bool else Bool else if true then Bool else Bool
        d230 = if if true then d87 else false then if false then d25 else true else if d220 then d11 else d216
        d231 : if true then if false then Bool else Bool else if true then Bool else Bool
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x232 -> if d121 then true else d161 ) ) ) $ ( if true then false else false )
        d233 : ( ( Set -> Set ) ∋ ( ( λ x235 -> ( ( Set -> Set ) ∋ ( ( λ x236 -> x235 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d233 = ( ( Bool -> Bool ) ∋ ( ( λ x234 -> if true then d84 else x234 ) ) ) $ ( if d182 then d218 else d104 )
        d237 : if false then if true then Bool else Bool else if false then Bool else Bool
        d237 = if if d1 then true else true then if d77 then d204 else d158 else if d127 then false else true
        d238 : if true then if false then Bool else Bool else if true then Bool else Bool
        d238 = if if true then d2 else d237 then if d208 then false else true else if d233 then d21 else d227
        d239 : if true then if true then Bool else Bool else if true then Bool else Bool
        d239 = if if true then false else false then if false then true else d30 else if false then d59 else false
        d240 : ( ( Set -> Set ) ∋ ( ( λ x243 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d240 = ( ( Bool -> Bool ) ∋ ( ( λ x241 -> ( ( Bool -> Bool ) ∋ ( ( λ x242 -> true ) ) ) $ ( true ) ) ) ) $ ( if d137 then true else d127 )
        d244 : if true then if false then Bool else Bool else if false then Bool else Bool
        d244 = if if d38 then d81 else true then if false then true else d198 else if d124 then false else false
        d245 : ( ( Set -> Set ) ∋ ( ( λ x247 -> if true then Bool else x247 ) ) ) $ ( if false then Bool else Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x246 -> if x246 then d211 else d200 ) ) ) $ ( if true then d182 else true )
        d248 : if true then if false then Bool else Bool else if false then Bool else Bool
        d248 = if if d35 then d35 else d10 then if false then d137 else d220 else if true then true else false
        d249 : if false then if false then Bool else Bool else if true then Bool else Bool
        d249 = if if d227 then d92 else d35 then if false then false else d1 else if d112 then d182 else d231
        d250 : if false then if false then Bool else Bool else if true then Bool else Bool
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x251 -> if x251 then true else d30 ) ) ) $ ( if false then false else false )
        d252 : if false then if false then Bool else Bool else if true then Bool else Bool
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x253 -> if false then true else d237 ) ) ) $ ( if false then true else true )
        d254 : if false then if false then Bool else Bool else if true then Bool else Bool
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x255 -> if d38 then x255 else x255 ) ) ) $ ( if d25 then true else false )
        d256 : if true then if false then Bool else Bool else if true then Bool else Bool
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x257 -> if false then x257 else x257 ) ) ) $ ( if d249 then true else true )
        d258 : ( ( Set -> Set ) ∋ ( ( λ x259 -> if false then Bool else x259 ) ) ) $ ( if true then Bool else Bool )
        d258 = if if true then d250 else d224 then if d227 then false else d85 else if false then d211 else d200
        d260 : ( ( Set -> Set ) ∋ ( ( λ x263 -> ( ( Set -> Set ) ∋ ( ( λ x264 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x261 -> ( ( Bool -> Bool ) ∋ ( ( λ x262 -> x261 ) ) ) $ ( x261 ) ) ) ) $ ( if d197 then true else d101 )
        d265 : ( ( Set -> Set ) ∋ ( ( λ x266 -> if true then x266 else Bool ) ) ) $ ( if true then Bool else Bool )
        d265 = if if false then d149 else d145 then if true then d224 else false else if d14 then false else d244
        d267 : ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then x270 else Bool ) ) ) $ ( if true then Bool else Bool )
        d267 = ( ( Bool -> Bool ) ∋ ( ( λ x268 -> ( ( Bool -> Bool ) ∋ ( ( λ x269 -> false ) ) ) $ ( d29 ) ) ) ) $ ( if d21 then false else d112 )
        d271 : ( ( Set -> Set ) ∋ ( ( λ x273 -> ( ( Set -> Set ) ∋ ( ( λ x274 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d271 = ( ( Bool -> Bool ) ∋ ( ( λ x272 -> if x272 then x272 else x272 ) ) ) $ ( if true then true else true )
        d275 : if false then if false then Bool else Bool else if false then Bool else Bool
        d275 = ( ( Bool -> Bool ) ∋ ( ( λ x276 -> ( ( Bool -> Bool ) ∋ ( ( λ x277 -> true ) ) ) $ ( d35 ) ) ) ) $ ( if d94 then false else d38 )
        d278 : ( ( Set -> Set ) ∋ ( ( λ x279 -> if false then Bool else x279 ) ) ) $ ( if true then Bool else Bool )
        d278 = if if true then true else true then if true then d151 else d210 else if d29 then false else true
        d280 : ( ( Set -> Set ) ∋ ( ( λ x281 -> ( ( Set -> Set ) ∋ ( ( λ x282 -> x281 ) ) ) $ ( x281 ) ) ) ) $ ( if true then Bool else Bool )
        d280 = if if false then true else true then if d186 then false else d278 else if d224 then d218 else d21
        d283 : ( ( Set -> Set ) ∋ ( ( λ x285 -> if false then x285 else x285 ) ) ) $ ( if true then Bool else Bool )
        d283 = ( ( Bool -> Bool ) ∋ ( ( λ x284 -> if d107 then d197 else false ) ) ) $ ( if false then false else d224 )
        d286 : ( ( Set -> Set ) ∋ ( ( λ x289 -> if true then Bool else x289 ) ) ) $ ( if false then Bool else Bool )
        d286 = ( ( Bool -> Bool ) ∋ ( ( λ x287 -> ( ( Bool -> Bool ) ∋ ( ( λ x288 -> x287 ) ) ) $ ( false ) ) ) ) $ ( if true then d18 else d56 )
        d290 : ( ( Set -> Set ) ∋ ( ( λ x292 -> ( ( Set -> Set ) ∋ ( ( λ x293 -> Bool ) ) ) $ ( x292 ) ) ) ) $ ( if true then Bool else Bool )
        d290 = ( ( Bool -> Bool ) ∋ ( ( λ x291 -> if false then true else false ) ) ) $ ( if true then d94 else false )
        d294 : ( ( Set -> Set ) ∋ ( ( λ x297 -> ( ( Set -> Set ) ∋ ( ( λ x298 -> x298 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d294 = ( ( Bool -> Bool ) ∋ ( ( λ x295 -> ( ( Bool -> Bool ) ∋ ( ( λ x296 -> x295 ) ) ) $ ( false ) ) ) ) $ ( if d245 then d198 else false )
        d299 : if false then if false then Bool else Bool else if false then Bool else Bool
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x301 -> false ) ) ) $ ( x300 ) ) ) ) $ ( if true then false else false )
        d302 : ( ( Set -> Set ) ∋ ( ( λ x303 -> ( ( Set -> Set ) ∋ ( ( λ x304 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d302 = if if d127 then d115 else false then if false then true else d275 else if false then false else false
        d305 : ( ( Set -> Set ) ∋ ( ( λ x306 -> ( ( Set -> Set ) ∋ ( ( λ x307 -> x306 ) ) ) $ ( x306 ) ) ) ) $ ( if true then Bool else Bool )
        d305 = if if true then d155 else d244 then if false then d151 else d237 else if true then false else d155
        d308 : ( ( Set -> Set ) ∋ ( ( λ x309 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d308 = if if false then true else true then if d135 then true else d166 else if d245 then d121 else d14
        d310 : if false then if false then Bool else Bool else if false then Bool else Bool
        d310 = if if false then false else true then if true then d211 else false else if false then true else true
        d311 : ( ( Set -> Set ) ∋ ( ( λ x312 -> if false then x312 else Bool ) ) ) $ ( if false then Bool else Bool )
        d311 = if if d96 then false else d244 then if d310 then false else d89 else if d278 then true else d133
        d313 : if false then if true then Bool else Bool else if false then Bool else Bool
        d313 = if if d155 then false else d96 then if true then d216 else false else if false then true else d299
        d314 : ( ( Set -> Set ) ∋ ( ( λ x317 -> if false then Bool else x317 ) ) ) $ ( if true then Bool else Bool )
        d314 = ( ( Bool -> Bool ) ∋ ( ( λ x315 -> ( ( Bool -> Bool ) ∋ ( ( λ x316 -> d143 ) ) ) $ ( d191 ) ) ) ) $ ( if d25 then true else true )
        d318 : if true then if false then Bool else Bool else if true then Bool else Bool
        d318 = if if d211 then d41 else false then if true then true else true else if d5 then true else d1
        d319 : ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then Bool else x320 ) ) ) $ ( if true then Bool else Bool )
        d319 = if if false then d42 else d267 then if d28 then d42 else d211 else if false then false else true
        d321 : ( ( Set -> Set ) ∋ ( ( λ x324 -> ( ( Set -> Set ) ∋ ( ( λ x325 -> Bool ) ) ) $ ( x324 ) ) ) ) $ ( if true then Bool else Bool )
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x322 -> ( ( Bool -> Bool ) ∋ ( ( λ x323 -> true ) ) ) $ ( d216 ) ) ) ) $ ( if d72 then d244 else d14 )
        d326 : if false then if true then Bool else Bool else if true then Bool else Bool
        d326 = if if false then true else d63 then if d129 then d280 else d308 else if false then false else false
        d327 : if false then if true then Bool else Bool else if true then Bool else Bool
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x328 -> ( ( Bool -> Bool ) ∋ ( ( λ x329 -> false ) ) ) $ ( x328 ) ) ) ) $ ( if true then false else true )
        d330 : if false then if true then Bool else Bool else if false then Bool else Bool
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x331 -> if false then d133 else false ) ) ) $ ( if d85 then true else d81 )
        d332 : if false then if true then Bool else Bool else if false then Bool else Bool
        d332 = ( ( Bool -> Bool ) ∋ ( ( λ x333 -> if x333 then x333 else x333 ) ) ) $ ( if true then d84 else d206 )
        d334 : ( ( Set -> Set ) ∋ ( ( λ x336 -> ( ( Set -> Set ) ∋ ( ( λ x337 -> x336 ) ) ) $ ( x336 ) ) ) ) $ ( if false then Bool else Bool )
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x335 -> if true then true else d161 ) ) ) $ ( if true then false else d140 )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x341 -> if false then x341 else x341 ) ) ) $ ( if true then Bool else Bool )
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x339 -> ( ( Bool -> Bool ) ∋ ( ( λ x340 -> x340 ) ) ) $ ( x339 ) ) ) ) $ ( if d89 then true else d18 )
        d342 : ( ( Set -> Set ) ∋ ( ( λ x345 -> ( ( Set -> Set ) ∋ ( ( λ x346 -> Bool ) ) ) $ ( x345 ) ) ) ) $ ( if false then Bool else Bool )
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x343 -> ( ( Bool -> Bool ) ∋ ( ( λ x344 -> false ) ) ) $ ( x343 ) ) ) ) $ ( if d299 then false else true )
        d347 : ( ( Set -> Set ) ∋ ( ( λ x348 -> if true then x348 else Bool ) ) ) $ ( if true then Bool else Bool )
        d347 = if if d112 then d197 else d163 then if true then d30 else d124 else if d245 then d84 else d85
        d349 : if true then if false then Bool else Bool else if true then Bool else Bool
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x351 -> false ) ) ) $ ( x350 ) ) ) ) $ ( if false then false else d41 )
        d352 : ( ( Set -> Set ) ∋ ( ( λ x353 -> if true then x353 else Bool ) ) ) $ ( if false then Bool else Bool )
        d352 = if if d338 then d149 else d332 then if false then false else d155 else if false then d59 else false
        d354 : ( ( Set -> Set ) ∋ ( ( λ x356 -> if true then x356 else x356 ) ) ) $ ( if false then Bool else Bool )
        d354 = ( ( Bool -> Bool ) ∋ ( ( λ x355 -> if x355 then true else x355 ) ) ) $ ( if false then d161 else d112 )
        d357 : if true then if true then Bool else Bool else if false then Bool else Bool
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x358 -> ( ( Bool -> Bool ) ∋ ( ( λ x359 -> x359 ) ) ) $ ( x358 ) ) ) ) $ ( if d238 then false else d53 )
        d360 : ( ( Set -> Set ) ∋ ( ( λ x363 -> if false then Bool else x363 ) ) ) $ ( if true then Bool else Bool )
        d360 = ( ( Bool -> Bool ) ∋ ( ( λ x361 -> ( ( Bool -> Bool ) ∋ ( ( λ x362 -> x361 ) ) ) $ ( false ) ) ) ) $ ( if d151 then true else d59 )
        d364 : ( ( Set -> Set ) ∋ ( ( λ x367 -> if false then x367 else x367 ) ) ) $ ( if true then Bool else Bool )
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x365 -> ( ( Bool -> Bool ) ∋ ( ( λ x366 -> x366 ) ) ) $ ( false ) ) ) ) $ ( if d151 then d68 else d14 )
        d368 : if true then if true then Bool else Bool else if false then Bool else Bool
        d368 = if if d174 then false else false then if d63 then d48 else d129 else if true then d77 else d143
        d369 : if true then if false then Bool else Bool else if false then Bool else Bool
        d369 = if if false then true else true then if false then true else d198 else if true then d319 else false
        d370 : ( ( Set -> Set ) ∋ ( ( λ x371 -> ( ( Set -> Set ) ∋ ( ( λ x372 -> x372 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d370 = if if false then d166 else d84 then if d313 then false else d311 else if true then d347 else false
        d373 : if false then if false then Bool else Bool else if false then Bool else Bool
        d373 = if if d140 then d97 else d200 then if d256 then false else d200 else if d271 then false else false
        d374 : ( ( Set -> Set ) ∋ ( ( λ x375 -> ( ( Set -> Set ) ∋ ( ( λ x376 -> Bool ) ) ) $ ( x375 ) ) ) ) $ ( if true then Bool else Bool )
        d374 = if if d127 then d81 else d46 then if true then false else false else if true then d319 else true
        d377 : if true then if false then Bool else Bool else if false then Bool else Bool
        d377 = if if true then d72 else d290 then if false then d299 else d327 else if false then true else d168
        d378 : if true then if false then Bool else Bool else if false then Bool else Bool
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x379 -> ( ( Bool -> Bool ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( false ) ) ) ) $ ( if false then d231 else true )
        d381 : if true then if false then Bool else Bool else if false then Bool else Bool
        d381 = if if d143 then d21 else true then if true then false else true else if true then d230 else false
        d382 : if true then if true then Bool else Bool else if false then Bool else Bool
        d382 = if if false then d101 else false then if false then d364 else d231 else if d150 then false else d286
        d383 : ( ( Set -> Set ) ∋ ( ( λ x384 -> ( ( Set -> Set ) ∋ ( ( λ x385 -> x384 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d383 = if if d112 then true else d59 then if d248 then d370 else d15 else if false then d30 else d308
        d386 : ( ( Set -> Set ) ∋ ( ( λ x389 -> if true then Bool else x389 ) ) ) $ ( if false then Bool else Bool )
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x387 -> ( ( Bool -> Bool ) ∋ ( ( λ x388 -> false ) ) ) $ ( d338 ) ) ) ) $ ( if d216 then true else true )
        d390 : ( ( Set -> Set ) ∋ ( ( λ x391 -> ( ( Set -> Set ) ∋ ( ( λ x392 -> x391 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d390 = if if d137 then false else d227 then if d129 then d373 else false else if true then d170 else false
        d393 : if true then if true then Bool else Bool else if true then Bool else Bool
        d393 = if if true then false else d92 then if d156 then false else d210 else if false then d275 else d275
        d394 : ( ( Set -> Set ) ∋ ( ( λ x395 -> ( ( Set -> Set ) ∋ ( ( λ x396 -> x395 ) ) ) $ ( x395 ) ) ) ) $ ( if false then Bool else Bool )
        d394 = if if d224 then true else true then if d182 then d115 else d30 else if true then true else true
        d397 : if false then if true then Bool else Bool else if true then Bool else Bool
        d397 = if if true then true else false then if true then true else d11 else if false then true else true
        d398 : if true then if false then Bool else Bool else if false then Bool else Bool
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x399 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> d393 ) ) ) $ ( d87 ) ) ) ) $ ( if true then d278 else true )
        d401 : if true then if true then Bool else Bool else if true then Bool else Bool
        d401 = ( ( Bool -> Bool ) ∋ ( ( λ x402 -> if true then true else true ) ) ) $ ( if true then d151 else d332 )
        d403 : if true then if false then Bool else Bool else if true then Bool else Bool
        d403 = if if false then false else d368 then if d250 then false else d96 else if true then d290 else false
        d404 : ( ( Set -> Set ) ∋ ( ( λ x405 -> ( ( Set -> Set ) ∋ ( ( λ x406 -> x405 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d404 = if if false then d18 else true then if false then true else false else if false then false else false
        d407 : if false then if true then Bool else Bool else if false then Bool else Bool
        d407 = if if true then false else false then if d397 then d150 else true else if false then true else false
        d408 : ( ( Set -> Set ) ∋ ( ( λ x410 -> ( ( Set -> Set ) ∋ ( ( λ x411 -> Bool ) ) ) $ ( x410 ) ) ) ) $ ( if true then Bool else Bool )
        d408 = ( ( Bool -> Bool ) ∋ ( ( λ x409 -> if false then x409 else true ) ) ) $ ( if d354 then d354 else false )
        d412 : if false then if false then Bool else Bool else if false then Bool else Bool
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x413 -> if x413 then x413 else x413 ) ) ) $ ( if d373 then false else d310 )
        d414 : ( ( Set -> Set ) ∋ ( ( λ x415 -> ( ( Set -> Set ) ∋ ( ( λ x416 -> x415 ) ) ) $ ( x415 ) ) ) ) $ ( if true then Bool else Bool )
        d414 = if if d198 then d85 else false then if d124 then true else true else if d115 then d168 else false
        d417 : ( ( Set -> Set ) ∋ ( ( λ x419 -> if true then x419 else x419 ) ) ) $ ( if false then Bool else Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x418 -> if true then d310 else x418 ) ) ) $ ( if d30 then false else false )
        d420 : ( ( Set -> Set ) ∋ ( ( λ x421 -> if true then x421 else Bool ) ) ) $ ( if false then Bool else Bool )
        d420 = if if d151 then true else d5 then if true then d166 else d94 else if true then d332 else d299
        d422 : if true then if false then Bool else Bool else if false then Bool else Bool
        d422 = if if true then d189 else true then if d258 then false else true else if false then false else d218
        d423 : ( ( Set -> Set ) ∋ ( ( λ x426 -> ( ( Set -> Set ) ∋ ( ( λ x427 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d423 = ( ( Bool -> Bool ) ∋ ( ( λ x424 -> ( ( Bool -> Bool ) ∋ ( ( λ x425 -> d133 ) ) ) $ ( x424 ) ) ) ) $ ( if d211 then false else d50 )
        d428 : if false then if true then Bool else Bool else if true then Bool else Bool
        d428 = if if false then d267 else true then if false then d210 else d222 else if true then d407 else d150
        d429 : ( ( Set -> Set ) ∋ ( ( λ x431 -> ( ( Set -> Set ) ∋ ( ( λ x432 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d429 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if false then false else d397 ) ) ) $ ( if d310 then d352 else d254 )
        d433 : if true then if true then Bool else Bool else if true then Bool else Bool
        d433 = ( ( Bool -> Bool ) ∋ ( ( λ x434 -> if true then d239 else d244 ) ) ) $ ( if d369 then true else false )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x436 -> ( ( Set -> Set ) ∋ ( ( λ x437 -> Bool ) ) ) $ ( x436 ) ) ) ) $ ( if false then Bool else Bool )
        d435 = if if true then true else false then if d294 then d280 else d238 else if d330 then false else true
        d438 : ( ( Set -> Set ) ∋ ( ( λ x439 -> ( ( Set -> Set ) ∋ ( ( λ x440 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d438 = if if d101 then d310 else d245 then if d133 then false else d87 else if d267 then false else d161
        d441 : if true then if true then Bool else Bool else if true then Bool else Bool
        d441 = if if d200 then d48 else d115 then if false then true else false else if true then false else d349
        d442 : if false then if false then Bool else Bool else if true then Bool else Bool
        d442 = if if d310 then d30 else false then if d360 then d364 else true else if false then false else false
        d443 : if true then if true then Bool else Bool else if true then Bool else Bool
        d443 = if if true then d30 else d354 then if false then d161 else true else if true then d220 else false
        d444 : ( ( Set -> Set ) ∋ ( ( λ x445 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d444 = if if true then d143 else d18 then if d133 then true else false else if false then d120 else d56
        d446 : if true then if true then Bool else Bool else if true then Bool else Bool
        d446 = if if d245 then d21 else false then if d369 then true else d401 else if d254 then d414 else true
        d447 : if false then if true then Bool else Bool else if true then Bool else Bool
        d447 = if if false then false else d310 then if false then false else false else if false then d96 else false
        d448 : if false then if false then Bool else Bool else if false then Bool else Bool
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x449 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> d92 ) ) ) $ ( x449 ) ) ) ) $ ( if true then false else d182 )
        d451 : ( ( Set -> Set ) ∋ ( ( λ x454 -> ( ( Set -> Set ) ∋ ( ( λ x455 -> x454 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x452 -> ( ( Bool -> Bool ) ∋ ( ( λ x453 -> x452 ) ) ) $ ( x452 ) ) ) ) $ ( if d381 then d311 else false )
        d456 : ( ( Set -> Set ) ∋ ( ( λ x457 -> ( ( Set -> Set ) ∋ ( ( λ x458 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d456 = if if d72 then d360 else d394 then if false then true else d283 else if d321 then false else d179
        d459 : ( ( Set -> Set ) ∋ ( ( λ x461 -> ( ( Set -> Set ) ∋ ( ( λ x462 -> Bool ) ) ) $ ( x461 ) ) ) ) $ ( if false then Bool else Bool )
        d459 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if x460 then d390 else d151 ) ) ) $ ( if d92 then d382 else d222 )
        d463 : if false then if true then Bool else Bool else if false then Bool else Bool
        d463 = ( ( Bool -> Bool ) ∋ ( ( λ x464 -> ( ( Bool -> Bool ) ∋ ( ( λ x465 -> false ) ) ) $ ( x464 ) ) ) ) $ ( if true then false else true )
        d466 : if true then if true then Bool else Bool else if false then Bool else Bool
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x467 -> ( ( Bool -> Bool ) ∋ ( ( λ x468 -> d198 ) ) ) $ ( x467 ) ) ) ) $ ( if true then d127 else true )
        d469 : if false then if false then Bool else Bool else if true then Bool else Bool
        d469 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> if true then x470 else x470 ) ) ) $ ( if d407 then false else false )
        d471 : if false then if false then Bool else Bool else if false then Bool else Bool
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x472 -> ( ( Bool -> Bool ) ∋ ( ( λ x473 -> x472 ) ) ) $ ( x472 ) ) ) ) $ ( if true then false else d451 )
        d474 : if true then if true then Bool else Bool else if false then Bool else Bool
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x475 -> ( ( Bool -> Bool ) ∋ ( ( λ x476 -> x476 ) ) ) $ ( x475 ) ) ) ) $ ( if d290 then false else d327 )
        d477 : if true then if true then Bool else Bool else if true then Bool else Bool
        d477 = ( ( Bool -> Bool ) ∋ ( ( λ x478 -> if d59 then x478 else true ) ) ) $ ( if true then d313 else true )
        d479 : if false then if true then Bool else Bool else if false then Bool else Bool
        d479 = if if d233 then d382 else d127 then if d381 then true else false else if d364 then d107 else d423
        d480 : ( ( Set -> Set ) ∋ ( ( λ x482 -> if true then Bool else x482 ) ) ) $ ( if true then Bool else Bool )
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x481 -> if x481 then true else true ) ) ) $ ( if d354 then d10 else d360 )
        d483 : ( ( Set -> Set ) ∋ ( ( λ x485 -> if true then x485 else x485 ) ) ) $ ( if false then Bool else Bool )
        d483 = ( ( Bool -> Bool ) ∋ ( ( λ x484 -> if false then d41 else true ) ) ) $ ( if d163 then true else d140 )
        d486 : if true then if false then Bool else Bool else if false then Bool else Bool
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x487 -> ( ( Bool -> Bool ) ∋ ( ( λ x488 -> x487 ) ) ) $ ( d133 ) ) ) ) $ ( if true then d44 else d352 )
        d489 : if false then if false then Bool else Bool else if true then Bool else Bool
        d489 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if true then d349 else d14 ) ) ) $ ( if true then d294 else d28 )
        d491 : ( ( Set -> Set ) ∋ ( ( λ x494 -> if false then Bool else x494 ) ) ) $ ( if true then Bool else Bool )
        d491 = ( ( Bool -> Bool ) ∋ ( ( λ x492 -> ( ( Bool -> Bool ) ∋ ( ( λ x493 -> d302 ) ) ) $ ( d278 ) ) ) ) $ ( if d408 then true else false )
        d495 : if false then if false then Bool else Bool else if false then Bool else Bool
        d495 = ( ( Bool -> Bool ) ∋ ( ( λ x496 -> ( ( Bool -> Bool ) ∋ ( ( λ x497 -> d352 ) ) ) $ ( x496 ) ) ) ) $ ( if d124 then true else true )
        d498 : ( ( Set -> Set ) ∋ ( ( λ x499 -> ( ( Set -> Set ) ∋ ( ( λ x500 -> x499 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d498 = if if true then d21 else true then if false then d260 else d245 else if true then d260 else false
        d501 : ( ( Set -> Set ) ∋ ( ( λ x502 -> ( ( Set -> Set ) ∋ ( ( λ x503 -> x502 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d501 = if if false then true else d44 then if false then d220 else false else if false then true else d206
        d504 : if true then if false then Bool else Bool else if true then Bool else Bool
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x505 -> if x505 then false else x505 ) ) ) $ ( if d25 then false else d197 )
        d506 : if true then if false then Bool else Bool else if false then Bool else Bool
        d506 = ( ( Bool -> Bool ) ∋ ( ( λ x507 -> ( ( Bool -> Bool ) ∋ ( ( λ x508 -> false ) ) ) $ ( x507 ) ) ) ) $ ( if false then false else d81 )
        d509 : if true then if false then Bool else Bool else if true then Bool else Bool
        d509 = if if d370 then false else d469 then if d233 then d50 else false else if false then true else false
        d510 : ( ( Set -> Set ) ∋ ( ( λ x511 -> if true then Bool else x511 ) ) ) $ ( if false then Bool else Bool )
        d510 = if if true then d101 else d53 then if d489 then d210 else d107 else if d85 then d112 else false
        d512 : if false then if true then Bool else Bool else if true then Bool else Bool
        d512 = ( ( Bool -> Bool ) ∋ ( ( λ x513 -> if x513 then x513 else d294 ) ) ) $ ( if true then d417 else true )
        d514 : if false then if true then Bool else Bool else if true then Bool else Bool
        d514 = if if false then d81 else false then if false then d501 else d349 else if d275 then true else false
        d515 : ( ( Set -> Set ) ∋ ( ( λ x516 -> ( ( Set -> Set ) ∋ ( ( λ x517 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d515 = if if d435 then true else false then if d459 then d347 else d10 else if d145 then d97 else false
        d518 : if false then if false then Bool else Bool else if false then Bool else Bool
        d518 = ( ( Bool -> Bool ) ∋ ( ( λ x519 -> ( ( Bool -> Bool ) ∋ ( ( λ x520 -> d401 ) ) ) $ ( x519 ) ) ) ) $ ( if true then true else false )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x524 -> if true then x524 else Bool ) ) ) $ ( if true then Bool else Bool )
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x522 -> ( ( Bool -> Bool ) ∋ ( ( λ x523 -> d352 ) ) ) $ ( x522 ) ) ) ) $ ( if d163 then d191 else true )
        d525 : ( ( Set -> Set ) ∋ ( ( λ x526 -> if false then x526 else x526 ) ) ) $ ( if false then Bool else Bool )
        d525 = if if d44 then false else true then if false then false else false else if true then d447 else true
        d527 : ( ( Set -> Set ) ∋ ( ( λ x529 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> Bool ) ) ) $ ( x529 ) ) ) ) $ ( if false then Bool else Bool )
        d527 = ( ( Bool -> Bool ) ∋ ( ( λ x528 -> if d258 then d382 else x528 ) ) ) $ ( if d483 then false else false )
        d531 : if true then if false then Bool else Bool else if false then Bool else Bool
        d531 = if if true then false else d383 then if false then true else d249 else if true then d319 else d28
        d532 : if true then if true then Bool else Bool else if false then Bool else Bool
        d532 = ( ( Bool -> Bool ) ∋ ( ( λ x533 -> ( ( Bool -> Bool ) ∋ ( ( λ x534 -> x534 ) ) ) $ ( d443 ) ) ) ) $ ( if d161 then d510 else false )
        d535 : if false then if true then Bool else Bool else if false then Bool else Bool
        d535 = if if true then d121 else d469 then if true then d156 else true else if d233 then false else false
        d536 : ( ( Set -> Set ) ∋ ( ( λ x537 -> ( ( Set -> Set ) ∋ ( ( λ x538 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d536 = if if false then false else false then if d403 then d59 else false else if false then true else false
        d539 : ( ( Set -> Set ) ∋ ( ( λ x540 -> if false then x540 else Bool ) ) ) $ ( if true then Bool else Bool )
        d539 = if if true then false else true then if d443 then d314 else d121 else if true then d480 else false
        d541 : if true then if false then Bool else Bool else if false then Bool else Bool
        d541 = if if false then d486 else false then if false then true else d197 else if d504 then d321 else d321
        d542 : if false then if true then Bool else Bool else if false then Bool else Bool
        d542 = if if d504 then d313 else true then if false then false else true else if d197 then d115 else d310
        d543 : if false then if true then Bool else Bool else if true then Bool else Bool
        d543 = if if false then true else true then if d479 then d429 else d451 else if true then true else d230
        d544 : if true then if false then Bool else Bool else if true then Bool else Bool
        d544 = ( ( Bool -> Bool ) ∋ ( ( λ x545 -> if x545 then x545 else x545 ) ) ) $ ( if d2 then true else true )
        d546 : if false then if true then Bool else Bool else if false then Bool else Bool
        d546 = ( ( Bool -> Bool ) ∋ ( ( λ x547 -> ( ( Bool -> Bool ) ∋ ( ( λ x548 -> x548 ) ) ) $ ( d459 ) ) ) ) $ ( if true then d370 else d124 )
        d549 : ( ( Set -> Set ) ∋ ( ( λ x552 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x551 -> x550 ) ) ) $ ( true ) ) ) ) $ ( if d310 then false else d5 )
        d553 : ( ( Set -> Set ) ∋ ( ( λ x556 -> ( ( Set -> Set ) ∋ ( ( λ x557 -> x556 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d553 = ( ( Bool -> Bool ) ∋ ( ( λ x554 -> ( ( Bool -> Bool ) ∋ ( ( λ x555 -> d354 ) ) ) $ ( true ) ) ) ) $ ( if d216 then true else d308 )
        d558 : if false then if true then Bool else Bool else if true then Bool else Bool
        d558 = if if d240 then false else true then if false then false else d403 else if d469 then d230 else d174
        d559 : if true then if true then Bool else Bool else if false then Bool else Bool
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> ( ( Bool -> Bool ) ∋ ( ( λ x561 -> d446 ) ) ) $ ( x560 ) ) ) ) $ ( if true then true else d489 )
        d562 : ( ( Set -> Set ) ∋ ( ( λ x564 -> if false then x564 else Bool ) ) ) $ ( if true then Bool else Bool )
        d562 = ( ( Bool -> Bool ) ∋ ( ( λ x563 -> if true then d326 else x563 ) ) ) $ ( if true then d544 else true )
        d565 : ( ( Set -> Set ) ∋ ( ( λ x568 -> if true then Bool else x568 ) ) ) $ ( if true then Bool else Bool )
        d565 = ( ( Bool -> Bool ) ∋ ( ( λ x566 -> ( ( Bool -> Bool ) ∋ ( ( λ x567 -> x566 ) ) ) $ ( true ) ) ) ) $ ( if false then d308 else d435 )
        d569 : ( ( Set -> Set ) ∋ ( ( λ x572 -> if true then Bool else x572 ) ) ) $ ( if false then Bool else Bool )
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> ( ( Bool -> Bool ) ∋ ( ( λ x571 -> d72 ) ) ) $ ( d412 ) ) ) ) $ ( if d145 then d179 else d5 )
        d573 : if true then if true then Bool else Bool else if true then Bool else Bool
        d573 = ( ( Bool -> Bool ) ∋ ( ( λ x574 -> if d299 then x574 else x574 ) ) ) $ ( if true then d28 else d151 )
        d575 : if true then if false then Bool else Bool else if true then Bool else Bool
        d575 = if if true then d121 else d127 then if d474 then true else d433 else if false then d549 else d38
        d576 : ( ( Set -> Set ) ∋ ( ( λ x577 -> ( ( Set -> Set ) ∋ ( ( λ x578 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d576 = if if true then true else true then if d491 then d140 else d222 else if d525 then false else false
        d579 : ( ( Set -> Set ) ∋ ( ( λ x580 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d579 = if if true then false else true then if true then d133 else d486 else if true then d463 else d342
        d581 : ( ( Set -> Set ) ∋ ( ( λ x583 -> if true then Bool else x583 ) ) ) $ ( if true then Bool else Bool )
        d581 = ( ( Bool -> Bool ) ∋ ( ( λ x582 -> if x582 then true else x582 ) ) ) $ ( if true then true else true )
        d584 : ( ( Set -> Set ) ∋ ( ( λ x587 -> ( ( Set -> Set ) ∋ ( ( λ x588 -> x587 ) ) ) $ ( x587 ) ) ) ) $ ( if true then Bool else Bool )
        d584 = ( ( Bool -> Bool ) ∋ ( ( λ x585 -> ( ( Bool -> Bool ) ∋ ( ( λ x586 -> false ) ) ) $ ( true ) ) ) ) $ ( if d1 then d495 else false )
        d589 : ( ( Set -> Set ) ∋ ( ( λ x592 -> if false then Bool else x592 ) ) ) $ ( if false then Bool else Bool )
        d589 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> ( ( Bool -> Bool ) ∋ ( ( λ x591 -> x591 ) ) ) $ ( d326 ) ) ) ) $ ( if true then d1 else d10 )
        d593 : ( ( Set -> Set ) ∋ ( ( λ x596 -> ( ( Set -> Set ) ∋ ( ( λ x597 -> x597 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d593 = ( ( Bool -> Bool ) ∋ ( ( λ x594 -> ( ( Bool -> Bool ) ∋ ( ( λ x595 -> false ) ) ) $ ( d231 ) ) ) ) $ ( if false then d227 else d248 )
        d598 : if true then if false then Bool else Bool else if false then Bool else Bool
        d598 = ( ( Bool -> Bool ) ∋ ( ( λ x599 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> d155 ) ) ) $ ( x599 ) ) ) ) $ ( if true then true else d18 )
        d601 : if false then if false then Bool else Bool else if false then Bool else Bool
        d601 = ( ( Bool -> Bool ) ∋ ( ( λ x602 -> if d394 then false else x602 ) ) ) $ ( if d191 then d553 else true )
        d603 : if false then if false then Bool else Bool else if false then Bool else Bool
        d603 = if if d166 then d310 else d249 then if d383 then false else d150 else if d456 then true else d435
        d604 : if true then if false then Bool else Bool else if true then Bool else Bool
        d604 = if if false then d429 else false then if d278 then false else d435 else if d77 then d140 else d53
        d605 : if false then if false then Bool else Bool else if true then Bool else Bool
        d605 = if if true then d357 else true then if true then d68 else d170 else if true then false else false
        d606 : ( ( Set -> Set ) ∋ ( ( λ x608 -> ( ( Set -> Set ) ∋ ( ( λ x609 -> x609 ) ) ) $ ( x608 ) ) ) ) $ ( if true then Bool else Bool )
        d606 = ( ( Bool -> Bool ) ∋ ( ( λ x607 -> if d174 then d604 else true ) ) ) $ ( if false then true else true )
        d610 : ( ( Set -> Set ) ∋ ( ( λ x613 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d610 = ( ( Bool -> Bool ) ∋ ( ( λ x611 -> ( ( Bool -> Bool ) ∋ ( ( λ x612 -> d383 ) ) ) $ ( d428 ) ) ) ) $ ( if false then true else false )
        d614 : if true then if true then Bool else Bool else if true then Bool else Bool
        d614 = if if false then d149 else d145 then if false then false else d260 else if false then d610 else true
        d615 : if true then if true then Bool else Bool else if false then Bool else Bool
        d615 = ( ( Bool -> Bool ) ∋ ( ( λ x616 -> ( ( Bool -> Bool ) ∋ ( ( λ x617 -> false ) ) ) $ ( x616 ) ) ) ) $ ( if true then false else d342 )
        d618 : if false then if false then Bool else Bool else if true then Bool else Bool
        d618 = if if true then d347 else true then if d48 then d423 else d521 else if false then d504 else true
        d619 : if false then if false then Bool else Bool else if true then Bool else Bool
        d619 = if if true then true else false then if true then d161 else true else if d543 then d532 else false
        d620 : if true then if false then Bool else Bool else if false then Bool else Bool
        d620 = ( ( Bool -> Bool ) ∋ ( ( λ x621 -> if false then x621 else true ) ) ) $ ( if d495 then false else d211 )
        d622 : if false then if true then Bool else Bool else if true then Bool else Bool
        d622 = if if true then false else true then if d56 then true else false else if false then false else false
        d623 : ( ( Set -> Set ) ∋ ( ( λ x624 -> ( ( Set -> Set ) ∋ ( ( λ x625 -> x624 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d623 = if if false then d512 else d210 then if true then d120 else d29 else if d149 then d501 else d614
        d626 : if false then if true then Bool else Bool else if false then Bool else Bool
        d626 = if if d407 then true else false then if false then d220 else true else if true then d21 else d327
        d627 : ( ( Set -> Set ) ∋ ( ( λ x628 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d627 = if if d280 then false else false then if false then true else d330 else if d532 then d25 else d283
        d629 : ( ( Set -> Set ) ∋ ( ( λ x632 -> if true then x632 else Bool ) ) ) $ ( if false then Bool else Bool )
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x631 -> true ) ) ) $ ( x630 ) ) ) ) $ ( if d623 then true else d44 )
        d633 : ( ( Set -> Set ) ∋ ( ( λ x634 -> ( ( Set -> Set ) ∋ ( ( λ x635 -> x635 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d633 = if if d250 then true else true then if d575 then false else d189 else if false then false else false
        d636 : ( ( Set -> Set ) ∋ ( ( λ x638 -> ( ( Set -> Set ) ∋ ( ( λ x639 -> x638 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d636 = ( ( Bool -> Bool ) ∋ ( ( λ x637 -> if true then d397 else x637 ) ) ) $ ( if d357 then true else d135 )
        d640 : ( ( Set -> Set ) ∋ ( ( λ x641 -> if true then x641 else x641 ) ) ) $ ( if true then Bool else Bool )
        d640 = if if d615 then false else d321 then if d378 then d248 else true else if d115 then d46 else d423
        d642 : if false then if true then Bool else Bool else if false then Bool else Bool
        d642 = ( ( Bool -> Bool ) ∋ ( ( λ x643 -> if x643 then d623 else x643 ) ) ) $ ( if d208 then d174 else d386 )
        d644 : if false then if true then Bool else Bool else if false then Bool else Bool
        d644 = if if d342 then d443 else false then if true then false else d238 else if false then d606 else d370
        d645 : if false then if false then Bool else Bool else if true then Bool else Bool
        d645 = if if false then d601 else d204 then if false then true else true else if false then true else d258
        d646 : if false then if false then Bool else Bool else if false then Bool else Bool
        d646 = ( ( Bool -> Bool ) ∋ ( ( λ x647 -> ( ( Bool -> Bool ) ∋ ( ( λ x648 -> x647 ) ) ) $ ( true ) ) ) ) $ ( if d233 then false else false )
        d649 : if true then if false then Bool else Bool else if false then Bool else Bool
        d649 = if if d46 then d541 else d211 then if false then d495 else true else if d633 then d308 else true
        d650 : if true then if false then Bool else Bool else if false then Bool else Bool
        d650 = if if false then d222 else d59 then if d204 then d85 else true else if true then false else d539
        d651 : ( ( Set -> Set ) ∋ ( ( λ x653 -> ( ( Set -> Set ) ∋ ( ( λ x654 -> Bool ) ) ) $ ( x653 ) ) ) ) $ ( if false then Bool else Bool )
        d651 = ( ( Bool -> Bool ) ∋ ( ( λ x652 -> if d194 then d615 else true ) ) ) $ ( if d495 then false else false )
        d655 : ( ( Set -> Set ) ∋ ( ( λ x656 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d655 = if if d606 then d260 else true then if false then d644 else d373 else if d311 then false else true
        d657 : if true then if true then Bool else Bool else if false then Bool else Bool
        d657 = if if true then true else d569 then if d474 then false else d360 else if false then false else true
        d658 : if true then if false then Bool else Bool else if false then Bool else Bool
        d658 = ( ( Bool -> Bool ) ∋ ( ( λ x659 -> ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( d433 ) ) ) ) $ ( if false then false else d252 )
        d661 : ( ( Set -> Set ) ∋ ( ( λ x664 -> ( ( Set -> Set ) ∋ ( ( λ x665 -> x665 ) ) ) $ ( x664 ) ) ) ) $ ( if false then Bool else Bool )
        d661 = ( ( Bool -> Bool ) ∋ ( ( λ x662 -> ( ( Bool -> Bool ) ∋ ( ( λ x663 -> d658 ) ) ) $ ( x662 ) ) ) ) $ ( if d145 then true else false )
        d666 : if false then if true then Bool else Bool else if true then Bool else Bool
        d666 = if if d486 then false else true then if false then true else d444 else if true then true else d191
        d667 : ( ( Set -> Set ) ∋ ( ( λ x668 -> ( ( Set -> Set ) ∋ ( ( λ x669 -> Bool ) ) ) $ ( x668 ) ) ) ) $ ( if true then Bool else Bool )
        d667 = if if d429 then false else false then if true then false else false else if d575 then true else false
        d670 : if true then if false then Bool else Bool else if false then Bool else Bool
        d670 = if if d546 then false else false then if d248 then d650 else true else if true then true else d373
        d671 : ( ( Set -> Set ) ∋ ( ( λ x672 -> ( ( Set -> Set ) ∋ ( ( λ x673 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d671 = if if d254 then true else d657 then if d474 then false else false else if d491 then false else d459
        d674 : ( ( Set -> Set ) ∋ ( ( λ x675 -> if true then x675 else Bool ) ) ) $ ( if false then Bool else Bool )
        d674 = if if true then true else false then if true then true else false else if false then false else true
        d676 : if false then if true then Bool else Bool else if true then Bool else Bool
        d676 = ( ( Bool -> Bool ) ∋ ( ( λ x677 -> if x677 then x677 else true ) ) ) $ ( if d42 then true else true )
        d678 : if false then if false then Bool else Bool else if false then Bool else Bool
        d678 = if if d479 then false else false then if true then true else d104 else if d469 then true else d368
        d679 : ( ( Set -> Set ) ∋ ( ( λ x681 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d679 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if x680 then x680 else d509 ) ) ) $ ( if false then false else true )
        d682 : if true then if true then Bool else Bool else if true then Bool else Bool
        d682 = ( ( Bool -> Bool ) ∋ ( ( λ x683 -> ( ( Bool -> Bool ) ∋ ( ( λ x684 -> d605 ) ) ) $ ( d321 ) ) ) ) $ ( if d417 then true else false )
        d685 : if false then if false then Bool else Bool else if false then Bool else Bool
        d685 = ( ( Bool -> Bool ) ∋ ( ( λ x686 -> if d682 then d477 else true ) ) ) $ ( if d678 then d131 else true )
        d687 : ( ( Set -> Set ) ∋ ( ( λ x689 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> x689 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d687 = ( ( Bool -> Bool ) ∋ ( ( λ x688 -> if d627 then x688 else d368 ) ) ) $ ( if d559 then false else true )
        d691 : if true then if false then Bool else Bool else if false then Bool else Bool
        d691 = if if true then d101 else d18 then if d394 then d382 else d374 else if true then false else d91
        d692 : if true then if true then Bool else Bool else if true then Bool else Bool
        d692 = ( ( Bool -> Bool ) ∋ ( ( λ x693 -> if d381 then x693 else x693 ) ) ) $ ( if true then d321 else d271 )
        d694 : ( ( Set -> Set ) ∋ ( ( λ x695 -> ( ( Set -> Set ) ∋ ( ( λ x696 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d694 = if if d667 then false else false then if false then d420 else d553 else if true then true else false
        d697 : if false then if true then Bool else Bool else if false then Bool else Bool
        d697 = ( ( Bool -> Bool ) ∋ ( ( λ x698 -> ( ( Bool -> Bool ) ∋ ( ( λ x699 -> x698 ) ) ) $ ( false ) ) ) ) $ ( if d29 then true else false )
        d700 : ( ( Set -> Set ) ∋ ( ( λ x702 -> if true then x702 else Bool ) ) ) $ ( if false then Bool else Bool )
        d700 = ( ( Bool -> Bool ) ∋ ( ( λ x701 -> if d369 then d11 else d678 ) ) ) $ ( if d535 then true else d1 )
        d703 : ( ( Set -> Set ) ∋ ( ( λ x705 -> ( ( Set -> Set ) ∋ ( ( λ x706 -> x705 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d703 = ( ( Bool -> Bool ) ∋ ( ( λ x704 -> if d626 then true else x704 ) ) ) $ ( if true then d352 else d525 )
        d707 : if false then if false then Bool else Bool else if false then Bool else Bool
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x708 -> ( ( Bool -> Bool ) ∋ ( ( λ x709 -> d92 ) ) ) $ ( x708 ) ) ) ) $ ( if true then false else d562 )
        d710 : if true then if false then Bool else Bool else if false then Bool else Bool
        d710 = ( ( Bool -> Bool ) ∋ ( ( λ x711 -> if d260 then d589 else x711 ) ) ) $ ( if d381 then d87 else false )
        d712 : if true then if true then Bool else Bool else if true then Bool else Bool
        d712 = if if true then d135 else d44 then if d94 then d256 else false else if d618 then d311 else d250
        d713 : if true then if false then Bool else Bool else if false then Bool else Bool
        d713 = ( ( Bool -> Bool ) ∋ ( ( λ x714 -> ( ( Bool -> Bool ) ∋ ( ( λ x715 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d518 else d249 )
        d716 : if false then if true then Bool else Bool else if false then Bool else Bool
        d716 = if if d489 then d11 else false then if true then true else d35 else if true then d674 else d163
        d717 : if true then if true then Bool else Bool else if true then Bool else Bool
        d717 = if if d558 then true else false then if false then true else false else if true then true else d151
        d718 : ( ( Set -> Set ) ∋ ( ( λ x719 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> x719 ) ) ) $ ( x719 ) ) ) ) $ ( if false then Bool else Bool )
        d718 = if if true then true else d275 then if d408 then d168 else d627 else if false then false else false
        d721 : if false then if false then Bool else Bool else if true then Bool else Bool
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x722 -> if x722 then x722 else true ) ) ) $ ( if d373 then true else true )
        d723 : if true then if true then Bool else Bool else if true then Bool else Bool
        d723 = if if d310 then d604 else true then if d56 then d539 else false else if true then d716 else d218
        d724 : ( ( Set -> Set ) ∋ ( ( λ x726 -> ( ( Set -> Set ) ∋ ( ( λ x727 -> x726 ) ) ) $ ( x726 ) ) ) ) $ ( if false then Bool else Bool )
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x725 -> if true then d18 else d373 ) ) ) $ ( if true then d546 else false )
        d728 : if true then if false then Bool else Bool else if true then Bool else Bool
        d728 = if if d504 then d429 else d593 then if d230 then true else d498 else if d249 then false else true
        d729 : ( ( Set -> Set ) ∋ ( ( λ x730 -> if true then x730 else Bool ) ) ) $ ( if true then Bool else Bool )
        d729 = if if d459 then false else false then if d92 then d97 else false else if true then d258 else false
        d731 : ( ( Set -> Set ) ∋ ( ( λ x732 -> if true then x732 else Bool ) ) ) $ ( if true then Bool else Bool )
        d731 = if if d661 then false else d143 then if d334 then d92 else d135 else if d370 then false else true
        d733 : if true then if false then Bool else Bool else if false then Bool else Bool
        d733 = if if false then d429 else true then if d486 then false else d451 else if d32 then d72 else true
        d734 : if true then if true then Bool else Bool else if true then Bool else Bool
        d734 = ( ( Bool -> Bool ) ∋ ( ( λ x735 -> if d604 then true else false ) ) ) $ ( if d87 then d679 else d50 )
        d736 : if true then if false then Bool else Bool else if false then Bool else Bool
        d736 = if if false then true else false then if d161 then d687 else d679 else if d619 then true else d256
        d737 : ( ( Set -> Set ) ∋ ( ( λ x740 -> ( ( Set -> Set ) ∋ ( ( λ x741 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d737 = ( ( Bool -> Bool ) ∋ ( ( λ x738 -> ( ( Bool -> Bool ) ∋ ( ( λ x739 -> x738 ) ) ) $ ( x738 ) ) ) ) $ ( if d532 then false else d650 )
        d742 : ( ( Set -> Set ) ∋ ( ( λ x745 -> ( ( Set -> Set ) ∋ ( ( λ x746 -> Bool ) ) ) $ ( x745 ) ) ) ) $ ( if false then Bool else Bool )
        d742 = ( ( Bool -> Bool ) ∋ ( ( λ x743 -> ( ( Bool -> Bool ) ∋ ( ( λ x744 -> d558 ) ) ) $ ( x743 ) ) ) ) $ ( if true then d239 else true )
        d747 : ( ( Set -> Set ) ∋ ( ( λ x749 -> if true then Bool else x749 ) ) ) $ ( if true then Bool else Bool )
        d747 = ( ( Bool -> Bool ) ∋ ( ( λ x748 -> if false then x748 else x748 ) ) ) $ ( if d231 then d620 else false )
        d750 : if false then if true then Bool else Bool else if true then Bool else Bool
        d750 = ( ( Bool -> Bool ) ∋ ( ( λ x751 -> if x751 then d575 else true ) ) ) $ ( if d265 then d622 else false )
        d752 : if true then if true then Bool else Bool else if true then Bool else Bool
        d752 = ( ( Bool -> Bool ) ∋ ( ( λ x753 -> if false then d68 else x753 ) ) ) $ ( if d29 then d565 else true )
        d754 : if true then if false then Bool else Bool else if true then Bool else Bool
        d754 = ( ( Bool -> Bool ) ∋ ( ( λ x755 -> ( ( Bool -> Bool ) ∋ ( ( λ x756 -> true ) ) ) $ ( d525 ) ) ) ) $ ( if true then false else false )
        d757 : ( ( Set -> Set ) ∋ ( ( λ x758 -> ( ( Set -> Set ) ∋ ( ( λ x759 -> x758 ) ) ) $ ( x758 ) ) ) ) $ ( if true then Bool else Bool )
        d757 = if if d283 then d734 else d231 then if d311 then d248 else d448 else if d737 then true else true
        d760 : ( ( Set -> Set ) ∋ ( ( λ x763 -> ( ( Set -> Set ) ∋ ( ( λ x764 -> x764 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d760 = ( ( Bool -> Bool ) ∋ ( ( λ x761 -> ( ( Bool -> Bool ) ∋ ( ( λ x762 -> true ) ) ) $ ( d186 ) ) ) ) $ ( if d558 then d135 else true )
        d765 : if true then if true then Bool else Bool else if false then Bool else Bool
        d765 = if if true then true else d633 then if false then d661 else d403 else if d474 then d401 else true
        d766 : if false then if true then Bool else Bool else if false then Bool else Bool
        d766 = ( ( Bool -> Bool ) ∋ ( ( λ x767 -> ( ( Bool -> Bool ) ∋ ( ( λ x768 -> true ) ) ) $ ( x767 ) ) ) ) $ ( if false then d623 else true )
        d769 : if false then if true then Bool else Bool else if false then Bool else Bool
        d769 = if if d248 then d48 else d360 then if false then d189 else false else if true then false else d89
        d770 : if false then if true then Bool else Bool else if true then Bool else Bool
        d770 = ( ( Bool -> Bool ) ∋ ( ( λ x771 -> ( ( Bool -> Bool ) ∋ ( ( λ x772 -> true ) ) ) $ ( d327 ) ) ) ) $ ( if false then true else true )
        d773 : if false then if false then Bool else Bool else if false then Bool else Bool
        d773 = ( ( Bool -> Bool ) ∋ ( ( λ x774 -> if false then x774 else x774 ) ) ) $ ( if d368 then d536 else false )
        d775 : ( ( Set -> Set ) ∋ ( ( λ x776 -> if false then Bool else x776 ) ) ) $ ( if true then Bool else Bool )
        d775 = if if true then true else d121 then if false then false else d115 else if d459 then d231 else d41
        d777 : ( ( Set -> Set ) ∋ ( ( λ x778 -> ( ( Set -> Set ) ∋ ( ( λ x779 -> Bool ) ) ) $ ( x778 ) ) ) ) $ ( if false then Bool else Bool )
        d777 = if if d408 then false else true then if true then false else d754 else if false then d700 else false
        d780 : if true then if true then Bool else Bool else if false then Bool else Bool
        d780 = ( ( Bool -> Bool ) ∋ ( ( λ x781 -> ( ( Bool -> Bool ) ∋ ( ( λ x782 -> d319 ) ) ) $ ( x781 ) ) ) ) $ ( if true then d604 else d35 )
        d783 : if false then if true then Bool else Bool else if true then Bool else Bool
        d783 = ( ( Bool -> Bool ) ∋ ( ( λ x784 -> ( ( Bool -> Bool ) ∋ ( ( λ x785 -> x785 ) ) ) $ ( d480 ) ) ) ) $ ( if false then false else d466 )
        d786 : ( ( Set -> Set ) ∋ ( ( λ x789 -> ( ( Set -> Set ) ∋ ( ( λ x790 -> x789 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d786 = ( ( Bool -> Bool ) ∋ ( ( λ x787 -> ( ( Bool -> Bool ) ∋ ( ( λ x788 -> x787 ) ) ) $ ( x787 ) ) ) ) $ ( if false then d728 else d115 )
        d791 : ( ( Set -> Set ) ∋ ( ( λ x793 -> if true then x793 else Bool ) ) ) $ ( if true then Bool else Bool )
        d791 = ( ( Bool -> Bool ) ∋ ( ( λ x792 -> if true then false else false ) ) ) $ ( if d137 then false else d703 )
        d794 : ( ( Set -> Set ) ∋ ( ( λ x797 -> if true then x797 else Bool ) ) ) $ ( if true then Bool else Bool )
        d794 = ( ( Bool -> Bool ) ∋ ( ( λ x795 -> ( ( Bool -> Bool ) ∋ ( ( λ x796 -> true ) ) ) $ ( false ) ) ) ) $ ( if d682 then true else false )
        d798 : if true then if true then Bool else Bool else if true then Bool else Bool
        d798 = ( ( Bool -> Bool ) ∋ ( ( λ x799 -> if d115 then false else x799 ) ) ) $ ( if true then true else false )
        d800 : if true then if false then Bool else Bool else if false then Bool else Bool
        d800 = ( ( Bool -> Bool ) ∋ ( ( λ x801 -> ( ( Bool -> Bool ) ∋ ( ( λ x802 -> false ) ) ) $ ( d527 ) ) ) ) $ ( if d25 then d710 else true )
        d803 : if false then if true then Bool else Bool else if false then Bool else Bool
        d803 = ( ( Bool -> Bool ) ∋ ( ( λ x804 -> ( ( Bool -> Bool ) ∋ ( ( λ x805 -> d121 ) ) ) $ ( false ) ) ) ) $ ( if d477 then true else d593 )
        d806 : ( ( Set -> Set ) ∋ ( ( λ x808 -> ( ( Set -> Set ) ∋ ( ( λ x809 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d806 = ( ( Bool -> Bool ) ∋ ( ( λ x807 -> if d140 then d59 else x807 ) ) ) $ ( if true then d216 else true )
        d810 : ( ( Set -> Set ) ∋ ( ( λ x812 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d810 = ( ( Bool -> Bool ) ∋ ( ( λ x811 -> if d447 then d72 else d610 ) ) ) $ ( if d729 then false else true )
        d813 : ( ( Set -> Set ) ∋ ( ( λ x814 -> ( ( Set -> Set ) ∋ ( ( λ x815 -> x814 ) ) ) $ ( x814 ) ) ) ) $ ( if true then Bool else Bool )
        d813 = if if true then d204 else d752 then if false then true else d131 else if d182 then d248 else true
        d816 : if true then if true then Bool else Bool else if true then Bool else Bool
        d816 = ( ( Bool -> Bool ) ∋ ( ( λ x817 -> ( ( Bool -> Bool ) ∋ ( ( λ x818 -> false ) ) ) $ ( d407 ) ) ) ) $ ( if d85 then d404 else d717 )
        d819 : ( ( Set -> Set ) ∋ ( ( λ x820 -> if true then Bool else x820 ) ) ) $ ( if true then Bool else Bool )
        d819 = if if d584 then false else d398 then if true then d208 else false else if true then false else d512
        d821 : ( ( Set -> Set ) ∋ ( ( λ x823 -> ( ( Set -> Set ) ∋ ( ( λ x824 -> Bool ) ) ) $ ( x823 ) ) ) ) $ ( if true then Bool else Bool )
        d821 = ( ( Bool -> Bool ) ∋ ( ( λ x822 -> if true then false else false ) ) ) $ ( if true then true else false )
        d825 : if true then if false then Bool else Bool else if true then Bool else Bool
        d825 = if if d747 then d231 else d712 then if d72 then d622 else false else if d92 then false else false
        d826 : ( ( Set -> Set ) ∋ ( ( λ x828 -> ( ( Set -> Set ) ∋ ( ( λ x829 -> Bool ) ) ) $ ( x828 ) ) ) ) $ ( if true then Bool else Bool )
        d826 = ( ( Bool -> Bool ) ∋ ( ( λ x827 -> if false then d140 else x827 ) ) ) $ ( if false then true else d397 )
        d830 : if false then if false then Bool else Bool else if true then Bool else Bool
        d830 = if if true then false else false then if d813 then d41 else d310 else if false then true else d28
        d831 : if false then if false then Bool else Bool else if true then Bool else Bool
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x832 -> ( ( Bool -> Bool ) ∋ ( ( λ x833 -> x833 ) ) ) $ ( d238 ) ) ) ) $ ( if false then false else true )
        d834 : if true then if true then Bool else Bool else if true then Bool else Bool
        d834 = ( ( Bool -> Bool ) ∋ ( ( λ x835 -> ( ( Bool -> Bool ) ∋ ( ( λ x836 -> d527 ) ) ) $ ( false ) ) ) ) $ ( if true then d256 else d412 )
        d837 : if false then if false then Bool else Bool else if true then Bool else Bool
        d837 = ( ( Bool -> Bool ) ∋ ( ( λ x838 -> if x838 then d661 else true ) ) ) $ ( if false then false else false )
        d839 : ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x841 -> x841 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d839 = if if false then true else d258 then if d208 then true else false else if true then true else d428
        d842 : if false then if true then Bool else Bool else if true then Bool else Bool
        d842 = ( ( Bool -> Bool ) ∋ ( ( λ x843 -> if true then d615 else x843 ) ) ) $ ( if true then true else true )
        d844 : ( ( Set -> Set ) ∋ ( ( λ x846 -> ( ( Set -> Set ) ∋ ( ( λ x847 -> Bool ) ) ) $ ( x846 ) ) ) ) $ ( if true then Bool else Bool )
        d844 = ( ( Bool -> Bool ) ∋ ( ( λ x845 -> if d97 then d302 else d682 ) ) ) $ ( if true then true else false )
        d848 : if false then if false then Bool else Bool else if false then Bool else Bool
        d848 = if if true then d515 else d238 then if d729 then d163 else false else if d718 then true else d137
        d849 : if false then if false then Bool else Bool else if true then Bool else Bool
        d849 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if d15 then true else true ) ) ) $ ( if false then true else d514 )
        d851 : if false then if true then Bool else Bool else if true then Bool else Bool
        d851 = ( ( Bool -> Bool ) ∋ ( ( λ x852 -> if d657 then d527 else x852 ) ) ) $ ( if d491 then d1 else true )
        d853 : ( ( Set -> Set ) ∋ ( ( λ x854 -> ( ( Set -> Set ) ∋ ( ( λ x855 -> x855 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d853 = if if d28 then d155 else d728 then if true then true else true else if false then false else false
        d856 : if false then if false then Bool else Bool else if true then Bool else Bool
        d856 = if if d821 then d373 else true then if true then true else d32 else if true then d535 else d310
        d857 : if false then if true then Bool else Bool else if true then Bool else Bool
        d857 = if if false then d504 else false then if d382 then true else false else if d41 then false else false
        d858 : if true then if false then Bool else Bool else if true then Bool else Bool
        d858 = ( ( Bool -> Bool ) ∋ ( ( λ x859 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> d378 ) ) ) $ ( x859 ) ) ) ) $ ( if true then d378 else true )
        d861 : ( ( Set -> Set ) ∋ ( ( λ x863 -> if false then Bool else x863 ) ) ) $ ( if false then Bool else Bool )
        d861 = ( ( Bool -> Bool ) ∋ ( ( λ x862 -> if d848 then false else x862 ) ) ) $ ( if false then d606 else false )
        d864 : if true then if false then Bool else Bool else if false then Bool else Bool
        d864 = if if false then d386 else d240 then if true then d737 else d562 else if d407 then false else true
        d865 : if true then if true then Bool else Bool else if false then Bool else Bool
        d865 = if if d63 then d459 else true then if true then d112 else false else if true then true else true
        d866 : if false then if false then Bool else Bool else if true then Bool else Bool
        d866 = if if d59 then d21 else false then if false then false else true else if d220 then true else true
        d867 : ( ( Set -> Set ) ∋ ( ( λ x869 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> Bool ) ) ) $ ( x869 ) ) ) ) $ ( if true then Bool else Bool )
        d867 = ( ( Bool -> Bool ) ∋ ( ( λ x868 -> if false then true else false ) ) ) $ ( if false then false else d750 )
        d871 : ( ( Set -> Set ) ∋ ( ( λ x872 -> ( ( Set -> Set ) ∋ ( ( λ x873 -> Bool ) ) ) $ ( x872 ) ) ) ) $ ( if true then Bool else Bool )
        d871 = if if false then false else d543 then if d553 then false else d237 else if d766 then false else d536
        d874 : if true then if false then Bool else Bool else if false then Bool else Bool
        d874 = ( ( Bool -> Bool ) ∋ ( ( λ x875 -> if d477 then true else x875 ) ) ) $ ( if d240 then false else false )
        d876 : if false then if true then Bool else Bool else if false then Bool else Bool
        d876 = if if false then false else false then if d539 then d856 else d129 else if false then d491 else d645
        d877 : ( ( Set -> Set ) ∋ ( ( λ x880 -> if false then x880 else x880 ) ) ) $ ( if false then Bool else Bool )
        d877 = ( ( Bool -> Bool ) ∋ ( ( λ x878 -> ( ( Bool -> Bool ) ∋ ( ( λ x879 -> true ) ) ) $ ( d299 ) ) ) ) $ ( if d826 then d206 else d800 )
        d881 : ( ( Set -> Set ) ∋ ( ( λ x884 -> ( ( Set -> Set ) ∋ ( ( λ x885 -> Bool ) ) ) $ ( x884 ) ) ) ) $ ( if true then Bool else Bool )
        d881 = ( ( Bool -> Bool ) ∋ ( ( λ x882 -> ( ( Bool -> Bool ) ∋ ( ( λ x883 -> d707 ) ) ) $ ( x882 ) ) ) ) $ ( if true then true else d813 )
        d886 : if true then if true then Bool else Bool else if true then Bool else Bool
        d886 = if if d655 then d515 else false then if false then true else d360 else if true then true else d35
        d887 : if true then if false then Bool else Bool else if true then Bool else Bool
        d887 = if if d250 then false else d386 then if d250 then false else d463 else if d542 then false else true
        d888 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x891 -> Bool ) ) ) $ ( x890 ) ) ) ) $ ( if false then Bool else Bool )
        d888 = ( ( Bool -> Bool ) ∋ ( ( λ x889 -> if d752 then d615 else true ) ) ) $ ( if d770 then d240 else d623 )
        d892 : ( ( Set -> Set ) ∋ ( ( λ x894 -> ( ( Set -> Set ) ∋ ( ( λ x895 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d892 = ( ( Bool -> Bool ) ∋ ( ( λ x893 -> if d133 then true else d531 ) ) ) $ ( if d480 then d723 else false )
        d896 : ( ( Set -> Set ) ∋ ( ( λ x898 -> ( ( Set -> Set ) ∋ ( ( λ x899 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d896 = ( ( Bool -> Bool ) ∋ ( ( λ x897 -> if d374 then false else x897 ) ) ) $ ( if false then d29 else d38 )
        d900 : ( ( Set -> Set ) ∋ ( ( λ x901 -> if false then Bool else x901 ) ) ) $ ( if true then Bool else Bool )
        d900 = if if d168 then false else true then if false then true else true else if d382 then d224 else false
        d902 : if true then if false then Bool else Bool else if true then Bool else Bool
        d902 = if if d794 then d623 else true then if d573 then false else true else if false then d370 else true
        d903 : ( ( Set -> Set ) ∋ ( ( λ x906 -> if false then x906 else Bool ) ) ) $ ( if false then Bool else Bool )
        d903 = ( ( Bool -> Bool ) ∋ ( ( λ x904 -> ( ( Bool -> Bool ) ∋ ( ( λ x905 -> true ) ) ) $ ( x904 ) ) ) ) $ ( if d512 then true else false )
        d907 : if false then if false then Bool else Bool else if true then Bool else Bool
        d907 = ( ( Bool -> Bool ) ∋ ( ( λ x908 -> ( ( Bool -> Bool ) ∋ ( ( λ x909 -> true ) ) ) $ ( true ) ) ) ) $ ( if d166 then d858 else true )
        d910 : ( ( Set -> Set ) ∋ ( ( λ x911 -> ( ( Set -> Set ) ∋ ( ( λ x912 -> x912 ) ) ) $ ( x911 ) ) ) ) $ ( if false then Bool else Bool )
        d910 = if if d886 then true else d466 then if true then false else true else if true then true else d135
        d913 : ( ( Set -> Set ) ∋ ( ( λ x914 -> ( ( Set -> Set ) ∋ ( ( λ x915 -> x915 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d913 = if if true then true else true then if true then false else false else if d798 then true else true
        d916 : if true then if true then Bool else Bool else if false then Bool else Bool
        d916 = if if true then false else true then if d84 then false else true else if false then d535 else false
        d917 : ( ( Set -> Set ) ∋ ( ( λ x919 -> ( ( Set -> Set ) ∋ ( ( λ x920 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d917 = ( ( Bool -> Bool ) ∋ ( ( λ x918 -> if x918 then d539 else d97 ) ) ) $ ( if d237 then true else true )
        d921 : ( ( Set -> Set ) ∋ ( ( λ x923 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d921 = ( ( Bool -> Bool ) ∋ ( ( λ x922 -> if x922 then x922 else d518 ) ) ) $ ( if d260 then d25 else d867 )
        d924 : ( ( Set -> Set ) ∋ ( ( λ x925 -> ( ( Set -> Set ) ∋ ( ( λ x926 -> Bool ) ) ) $ ( x925 ) ) ) ) $ ( if true then Bool else Bool )
        d924 = if if d433 then true else d734 then if d140 then d308 else false else if false then true else d77
        d927 : ( ( Set -> Set ) ∋ ( ( λ x928 -> if false then x928 else x928 ) ) ) $ ( if false then Bool else Bool )
        d927 = if if d466 then true else d441 then if d605 then d856 else true else if d674 then false else d260
        d929 : if true then if false then Bool else Bool else if true then Bool else Bool
        d929 = if if false then false else true then if true then d593 else d512 else if true then d107 else true
        d930 : if false then if false then Bool else Bool else if true then Bool else Bool
        d930 = if if d539 then true else false then if d386 then true else d501 else if false then false else d626
        d931 : ( ( Set -> Set ) ∋ ( ( λ x932 -> ( ( Set -> Set ) ∋ ( ( λ x933 -> x933 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d931 = if if d25 then d549 else false then if false then false else true else if d723 then d559 else d864
        d934 : if false then if true then Bool else Bool else if false then Bool else Bool
        d934 = ( ( Bool -> Bool ) ∋ ( ( λ x935 -> ( ( Bool -> Bool ) ∋ ( ( λ x936 -> d521 ) ) ) $ ( true ) ) ) ) $ ( if d679 then true else d760 )
        d937 : ( ( Set -> Set ) ∋ ( ( λ x939 -> if false then Bool else x939 ) ) ) $ ( if false then Bool else Bool )
        d937 = ( ( Bool -> Bool ) ∋ ( ( λ x938 -> if d233 then true else false ) ) ) $ ( if true then false else d733 )
        d940 : ( ( Set -> Set ) ∋ ( ( λ x943 -> ( ( Set -> Set ) ∋ ( ( λ x944 -> Bool ) ) ) $ ( x943 ) ) ) ) $ ( if false then Bool else Bool )
        d940 = ( ( Bool -> Bool ) ∋ ( ( λ x941 -> ( ( Bool -> Bool ) ∋ ( ( λ x942 -> x942 ) ) ) $ ( d265 ) ) ) ) $ ( if d934 then true else false )
        d945 : ( ( Set -> Set ) ∋ ( ( λ x946 -> if false then Bool else x946 ) ) ) $ ( if false then Bool else Bool )
        d945 = if if false then d15 else true then if d837 then d881 else d678 else if d163 then d549 else true
        d947 : ( ( Set -> Set ) ∋ ( ( λ x948 -> ( ( Set -> Set ) ∋ ( ( λ x949 -> x948 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d947 = if if d806 then d601 else d137 then if d512 then d821 else false else if d77 then false else false
        d950 : ( ( Set -> Set ) ∋ ( ( λ x952 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d950 = ( ( Bool -> Bool ) ∋ ( ( λ x951 -> if true then false else x951 ) ) ) $ ( if d189 then true else d620 )
        d953 : if true then if true then Bool else Bool else if false then Bool else Bool
        d953 = ( ( Bool -> Bool ) ∋ ( ( λ x954 -> ( ( Bool -> Bool ) ∋ ( ( λ x955 -> x955 ) ) ) $ ( x954 ) ) ) ) $ ( if d96 then d104 else true )
        d956 : if true then if false then Bool else Bool else if true then Bool else Bool
        d956 = if if true then false else true then if true then false else true else if d428 then false else d204
        d957 : ( ( Set -> Set ) ∋ ( ( λ x960 -> ( ( Set -> Set ) ∋ ( ( λ x961 -> x961 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d957 = ( ( Bool -> Bool ) ∋ ( ( λ x958 -> ( ( Bool -> Bool ) ∋ ( ( λ x959 -> x958 ) ) ) $ ( x958 ) ) ) ) $ ( if d867 then false else false )
        d962 : if false then if false then Bool else Bool else if true then Bool else Bool
        d962 = ( ( Bool -> Bool ) ∋ ( ( λ x963 -> ( ( Bool -> Bool ) ∋ ( ( λ x964 -> true ) ) ) $ ( false ) ) ) ) $ ( if d536 then d527 else true )
        d965 : ( ( Set -> Set ) ∋ ( ( λ x966 -> ( ( Set -> Set ) ∋ ( ( λ x967 -> x967 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d965 = if if d256 then true else false then if false then d305 else true else if true then true else false
        d968 : ( ( Set -> Set ) ∋ ( ( λ x969 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d968 = if if false then true else d871 then if d381 then true else d373 else if true then false else d803
        d970 : ( ( Set -> Set ) ∋ ( ( λ x972 -> if false then x972 else Bool ) ) ) $ ( if false then Bool else Bool )
        d970 = ( ( Bool -> Bool ) ∋ ( ( λ x971 -> if d96 then true else true ) ) ) $ ( if false then d917 else d956 )
        d973 : ( ( Set -> Set ) ∋ ( ( λ x974 -> if false then Bool else x974 ) ) ) $ ( if true then Bool else Bool )
        d973 = if if d535 then false else false then if d541 then true else d525 else if d575 then true else true
        d975 : ( ( Set -> Set ) ∋ ( ( λ x976 -> if false then Bool else x976 ) ) ) $ ( if true then Bool else Bool )
        d975 = if if d703 then d489 else d393 then if false then d338 else false else if true then d334 else true
        d977 : if false then if true then Bool else Bool else if false then Bool else Bool
        d977 = if if true then true else d420 then if d265 then d230 else d15 else if d347 then true else d620
        d978 : ( ( Set -> Set ) ∋ ( ( λ x979 -> if false then x979 else Bool ) ) ) $ ( if true then Bool else Bool )
        d978 = if if true then d198 else d386 then if false then d810 else d757 else if d536 then d509 else d29
        d980 : ( ( Set -> Set ) ∋ ( ( λ x982 -> ( ( Set -> Set ) ∋ ( ( λ x983 -> x983 ) ) ) $ ( x982 ) ) ) ) $ ( if true then Bool else Bool )
        d980 = ( ( Bool -> Bool ) ∋ ( ( λ x981 -> if d734 then x981 else d866 ) ) ) $ ( if d728 then true else d364 )
        d984 : if false then if true then Bool else Bool else if false then Bool else Bool
        d984 = if if d861 then d278 else true then if d25 then true else d305 else if true then false else d650
        d985 : if true then if true then Bool else Bool else if true then Bool else Bool
        d985 = ( ( Bool -> Bool ) ∋ ( ( λ x986 -> if false then x986 else x986 ) ) ) $ ( if false then false else d35 )
        d987 : if false then if false then Bool else Bool else if true then Bool else Bool
        d987 = ( ( Bool -> Bool ) ∋ ( ( λ x988 -> ( ( Bool -> Bool ) ∋ ( ( λ x989 -> false ) ) ) $ ( x988 ) ) ) ) $ ( if true then false else false )
        d990 : ( ( Set -> Set ) ∋ ( ( λ x992 -> ( ( Set -> Set ) ∋ ( ( λ x993 -> x993 ) ) ) $ ( x992 ) ) ) ) $ ( if true then Bool else Bool )
        d990 = ( ( Bool -> Bool ) ∋ ( ( λ x991 -> if x991 then x991 else true ) ) ) $ ( if d85 then true else false )
        d994 : if true then if true then Bool else Bool else if false then Bool else Bool
        d994 = if if d830 then d349 else d311 then if true then false else false else if d569 then d531 else false
        d995 : ( ( Set -> Set ) ∋ ( ( λ x998 -> ( ( Set -> Set ) ∋ ( ( λ x999 -> x999 ) ) ) $ ( x998 ) ) ) ) $ ( if false then Bool else Bool )
        d995 = ( ( Bool -> Bool ) ∋ ( ( λ x996 -> ( ( Bool -> Bool ) ∋ ( ( λ x997 -> x996 ) ) ) $ ( d403 ) ) ) ) $ ( if false then d38 else false )
        d1000 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x1001 -> ( ( Bool -> Bool ) ∋ ( ( λ x1002 -> x1001 ) ) ) $ ( d471 ) ) ) ) $ ( if d11 then d670 else d46 )
        d1003 : ( ( Set -> Set ) ∋ ( ( λ x1005 -> if false then Bool else x1005 ) ) ) $ ( if true then Bool else Bool )
        d1003 = ( ( Bool -> Bool ) ∋ ( ( λ x1004 -> if x1004 then x1004 else false ) ) ) $ ( if d459 then false else d646 )
        d1006 : ( ( Set -> Set ) ∋ ( ( λ x1008 -> ( ( Set -> Set ) ∋ ( ( λ x1009 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1006 = ( ( Bool -> Bool ) ∋ ( ( λ x1007 -> if true then d338 else d703 ) ) ) $ ( if true then d299 else d687 )
        d1010 : ( ( Set -> Set ) ∋ ( ( λ x1013 -> ( ( Set -> Set ) ∋ ( ( λ x1014 -> x1014 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1010 = ( ( Bool -> Bool ) ∋ ( ( λ x1011 -> ( ( Bool -> Bool ) ∋ ( ( λ x1012 -> d531 ) ) ) $ ( false ) ) ) ) $ ( if d435 then false else d206 )
        d1015 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1015 = ( ( Bool -> Bool ) ∋ ( ( λ x1016 -> if d252 then true else false ) ) ) $ ( if true then d32 else false )
        d1017 : ( ( Set -> Set ) ∋ ( ( λ x1019 -> if true then x1019 else x1019 ) ) ) $ ( if true then Bool else Bool )
        d1017 = ( ( Bool -> Bool ) ∋ ( ( λ x1018 -> if d397 then d35 else x1018 ) ) ) $ ( if d984 then false else d145 )
        d1020 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1020 = if if d541 then true else d150 then if d584 then true else d393 else if d826 then d934 else false
        d1021 : ( ( Set -> Set ) ∋ ( ( λ x1023 -> ( ( Set -> Set ) ∋ ( ( λ x1024 -> Bool ) ) ) $ ( x1023 ) ) ) ) $ ( if false then Bool else Bool )
        d1021 = ( ( Bool -> Bool ) ∋ ( ( λ x1022 -> if d222 then x1022 else x1022 ) ) ) $ ( if true then false else d737 )
        d1025 : ( ( Set -> Set ) ∋ ( ( λ x1027 -> ( ( Set -> Set ) ∋ ( ( λ x1028 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1025 = ( ( Bool -> Bool ) ∋ ( ( λ x1026 -> if true then x1026 else true ) ) ) $ ( if true then true else true )
        d1029 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1029 = if if false then d861 else d839 then if d96 then true else d466 else if false then false else false
        d1030 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1030 = if if d414 then d661 else d509 then if d290 then d907 else d603 else if false then true else true
        d1031 : ( ( Set -> Set ) ∋ ( ( λ x1033 -> if false then Bool else x1033 ) ) ) $ ( if false then Bool else Bool )
        d1031 = ( ( Bool -> Bool ) ∋ ( ( λ x1032 -> if d231 then false else d441 ) ) ) $ ( if true then false else false )
        d1034 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1034 = ( ( Bool -> Bool ) ∋ ( ( λ x1035 -> if d803 then x1035 else x1035 ) ) ) $ ( if d250 then false else d539 )
        d1036 : ( ( Set -> Set ) ∋ ( ( λ x1038 -> ( ( Set -> Set ) ∋ ( ( λ x1039 -> Bool ) ) ) $ ( x1038 ) ) ) ) $ ( if false then Bool else Bool )
        d1036 = ( ( Bool -> Bool ) ∋ ( ( λ x1037 -> if false then x1037 else false ) ) ) $ ( if true then d543 else d718 )
        d1040 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1040 = if if true then false else false then if false then d373 else true else if false then false else false
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x1042 -> ( ( Set -> Set ) ∋ ( ( λ x1043 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1041 = if if d864 then false else false then if false then true else d310 else if d163 then d917 else false
        d1044 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1044 = if if d127 then false else d627 then if d916 then true else d562 else if d191 then true else false
        d1045 : ( ( Set -> Set ) ∋ ( ( λ x1047 -> if true then x1047 else x1047 ) ) ) $ ( if true then Bool else Bool )
        d1045 = ( ( Bool -> Bool ) ∋ ( ( λ x1046 -> if x1046 then d651 else true ) ) ) $ ( if d456 then true else false )
        d1048 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1048 = if if d710 then d579 else d286 then if d486 then d1029 else true else if false then d491 else d444
        d1049 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1049 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> ( ( Bool -> Bool ) ∋ ( ( λ x1051 -> true ) ) ) $ ( x1050 ) ) ) ) $ ( if d5 then d953 else d729 )
        d1052 : ( ( Set -> Set ) ∋ ( ( λ x1055 -> if true then x1055 else x1055 ) ) ) $ ( if false then Bool else Bool )
        d1052 = ( ( Bool -> Bool ) ∋ ( ( λ x1053 -> ( ( Bool -> Bool ) ∋ ( ( λ x1054 -> false ) ) ) $ ( x1053 ) ) ) ) $ ( if d589 then d770 else d798 )
        d1056 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1056 = ( ( Bool -> Bool ) ∋ ( ( λ x1057 -> if x1057 then x1057 else d248 ) ) ) $ ( if true then true else false )
        d1058 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1058 = if if d25 then d1000 else true then if d378 then d182 else false else if false then false else d170
        d1059 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1059 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> ( ( Bool -> Bool ) ∋ ( ( λ x1061 -> true ) ) ) $ ( x1060 ) ) ) ) $ ( if true then true else d977 )
        d1062 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1062 = if if false then false else d842 then if d584 then true else d383 else if false then true else true
        d1063 : ( ( Set -> Set ) ∋ ( ( λ x1064 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1063 = if if d733 then d532 else d208 then if d629 then false else true else if false then true else d930
        d1065 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1065 = if if true then false else false then if d593 then d332 else true else if false then true else true
        d1066 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1066 = if if d562 then d239 else true then if false then true else false else if true then false else true
        d1067 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1067 = ( ( Bool -> Bool ) ∋ ( ( λ x1068 -> ( ( Bool -> Bool ) ∋ ( ( λ x1069 -> d87 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d888 )
        d1070 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1070 = ( ( Bool -> Bool ) ∋ ( ( λ x1071 -> ( ( Bool -> Bool ) ∋ ( ( λ x1072 -> d786 ) ) ) $ ( d208 ) ) ) ) $ ( if d166 then true else d448 )
        d1073 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1073 = if if false then false else d486 then if d433 then d1015 else true else if false then false else d81
        d1074 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1074 = if if false then true else d149 then if d542 then d565 else true else if d72 then d844 else false
        d1075 : ( ( Set -> Set ) ∋ ( ( λ x1076 -> if true then Bool else x1076 ) ) ) $ ( if false then Bool else Bool )
        d1075 = if if true then false else d661 then if d442 then d260 else true else if true then false else d866
        d1077 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1077 = if if d995 then d1015 else true then if d112 then d934 else d501 else if true then true else false
        d1078 : ( ( Set -> Set ) ∋ ( ( λ x1079 -> ( ( Set -> Set ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1078 = if if d810 then false else d53 then if false then false else true else if d72 then true else d443
        d1081 : ( ( Set -> Set ) ∋ ( ( λ x1082 -> ( ( Set -> Set ) ∋ ( ( λ x1083 -> x1083 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1081 = if if d531 then d636 else d956 then if d198 then false else true else if d510 then false else d271
        d1084 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1084 = ( ( Bool -> Bool ) ∋ ( ( λ x1085 -> ( ( Bool -> Bool ) ∋ ( ( λ x1086 -> x1085 ) ) ) $ ( x1085 ) ) ) ) $ ( if true then false else false )
        d1087 : ( ( Set -> Set ) ∋ ( ( λ x1089 -> if true then x1089 else x1089 ) ) ) $ ( if false then Bool else Bool )
        d1087 = ( ( Bool -> Bool ) ∋ ( ( λ x1088 -> if d360 then false else d757 ) ) ) $ ( if d97 then true else true )
        d1090 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1090 = if if d252 then true else d104 then if d559 then d423 else d479 else if false then false else true
        d1091 : ( ( Set -> Set ) ∋ ( ( λ x1094 -> ( ( Set -> Set ) ∋ ( ( λ x1095 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1091 = ( ( Bool -> Bool ) ∋ ( ( λ x1092 -> ( ( Bool -> Bool ) ∋ ( ( λ x1093 -> d642 ) ) ) $ ( d798 ) ) ) ) $ ( if true then true else d352 )
        d1096 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1096 = if if true then d216 else false then if d1031 then d191 else false else if d94 then d364 else true
        d1097 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1097 = if if true then d422 else false then if true then false else true else if false then d886 else d189
        d1098 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1098 = ( ( Bool -> Bool ) ∋ ( ( λ x1099 -> if x1099 then d451 else true ) ) ) $ ( if d127 then d238 else d773 )
        d1100 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1100 = ( ( Bool -> Bool ) ∋ ( ( λ x1101 -> ( ( Bool -> Bool ) ∋ ( ( λ x1102 -> x1102 ) ) ) $ ( d334 ) ) ) ) $ ( if false then false else d573 )
        d1103 : ( ( Set -> Set ) ∋ ( ( λ x1106 -> ( ( Set -> Set ) ∋ ( ( λ x1107 -> x1107 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1103 = ( ( Bool -> Bool ) ∋ ( ( λ x1104 -> ( ( Bool -> Bool ) ∋ ( ( λ x1105 -> true ) ) ) $ ( d512 ) ) ) ) $ ( if d404 then d244 else false )
        d1108 : ( ( Set -> Set ) ∋ ( ( λ x1109 -> ( ( Set -> Set ) ∋ ( ( λ x1110 -> x1109 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1108 = if if d332 then true else d1052 then if d553 then false else d158 else if d294 then d390 else d240
        d1111 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1111 = if if d1067 then d378 else false then if true then false else d28 else if d887 then d38 else true
        d1112 : ( ( Set -> Set ) ∋ ( ( λ x1115 -> if true then x1115 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1112 = ( ( Bool -> Bool ) ∋ ( ( λ x1113 -> ( ( Bool -> Bool ) ∋ ( ( λ x1114 -> true ) ) ) $ ( x1113 ) ) ) ) $ ( if true then true else d438 )
        d1116 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1116 = ( ( Bool -> Bool ) ∋ ( ( λ x1117 -> ( ( Bool -> Bool ) ∋ ( ( λ x1118 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d1119 : ( ( Set -> Set ) ∋ ( ( λ x1122 -> ( ( Set -> Set ) ∋ ( ( λ x1123 -> x1122 ) ) ) $ ( x1122 ) ) ) ) $ ( if false then Bool else Bool )
        d1119 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1121 -> x1121 ) ) ) $ ( d314 ) ) ) ) $ ( if true then true else true )
        d1124 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1124 = ( ( Bool -> Bool ) ∋ ( ( λ x1125 -> ( ( Bool -> Bool ) ∋ ( ( λ x1126 -> d186 ) ) ) $ ( x1125 ) ) ) ) $ ( if true then false else true )
        d1127 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1127 = ( ( Bool -> Bool ) ∋ ( ( λ x1128 -> if d717 then false else d509 ) ) ) $ ( if d633 then true else true )
        d1129 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1129 = ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if d252 then d742 else d589 ) ) ) $ ( if d394 then true else false )
        d1131 : ( ( Set -> Set ) ∋ ( ( λ x1133 -> ( ( Set -> Set ) ∋ ( ( λ x1134 -> Bool ) ) ) $ ( x1133 ) ) ) ) $ ( if false then Bool else Bool )
        d1131 = ( ( Bool -> Bool ) ∋ ( ( λ x1132 -> if x1132 then false else false ) ) ) $ ( if d438 then d53 else d679 )