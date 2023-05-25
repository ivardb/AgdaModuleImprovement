module Decl450Base5  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then x4 else x4 ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x2 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> x6 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d5 = if if true then d1 else d1 then if false then d1 else d1 else if false then true else false
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d8 = if if d5 then true else true then if d1 then d1 else false else if true then d5 else d5
        d10 : if false then if true then Bool else Bool else if true then Bool else Bool
        d10 = if if false then true else false then if d5 then true else false else if d8 then d5 else false
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then x12 else x12 ) ) ) $ ( if false then Bool else Bool )
        d11 = if if d8 then false else d1 then if d1 then d10 else d8 else if d8 then false else true
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then x15 else x15 ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if false then d11 else d11 ) ) ) $ ( if true then d1 else d5 )
        d16 : if false then if true then Bool else Bool else if true then Bool else Bool
        d16 = if if d11 then false else true then if d8 then d11 else d5 else if d1 then d11 else d11
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x21 ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> x18 ) ) ) $ ( x18 ) ) ) ) $ ( if d11 then d8 else true )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then x24 else x24 ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if x23 then d13 else x23 ) ) ) $ ( if true then false else true )
        d25 : if false then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if d5 then false else d22 ) ) ) $ ( if true then false else d8 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> x29 ) ) ) $ ( d5 ) ) ) ) $ ( if false then d10 else d1 )
        d31 : if false then if true then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if d13 then x32 else false ) ) ) $ ( if d13 then d10 else false )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then x35 else x35 ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if d13 then true else d17 ) ) ) $ ( if false then true else d16 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d36 = if if d5 then true else d16 then if false then d31 else d27 else if false then d22 else true
        d39 : if true then if false then Bool else Bool else if false then Bool else Bool
        d39 = if if true then d17 else d33 then if d8 then d25 else d33 else if d22 then false else true
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then Bool else x43 ) ) ) $ ( if false then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> x42 ) ) ) $ ( false ) ) ) ) $ ( if d25 then false else d1 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> Bool ) ) ) $ ( x46 ) ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if true then x45 else d25 ) ) ) $ ( if d33 then true else d39 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x50 else x50 ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if true then d10 else x49 ) ) ) $ ( if false then d17 else true )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if true then x52 else x52 ) ) ) $ ( if false then Bool else Bool )
        d51 = if if d8 then d33 else false then if false then false else true else if false then d13 else d39
        d53 : if true then if false then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> true ) ) ) $ ( d5 ) ) ) ) $ ( if d13 then false else d51 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then x59 else x59 ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> d36 ) ) ) $ ( d51 ) ) ) ) $ ( if true then false else true )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x61 ) ) ) $ ( x61 ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if if d44 then d1 else true then if d22 then false else d10 else if true then true else false
        d63 : if false then if false then Bool else Bool else if true then Bool else Bool
        d63 = if if d27 then true else d25 then if false then false else false else if d56 then d17 else false
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( x66 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if d25 then d10 else x65 ) ) ) $ ( if d56 then d22 else false )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d68 = if if d5 then d25 else d16 then if d25 then d5 else d48 else if true then d36 else false
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then x74 else x74 ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> false ) ) ) $ ( d44 ) ) ) ) $ ( if true then false else true )
        d75 : if false then if false then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if d16 then d8 else x76 ) ) ) $ ( if d53 then false else d60 )
        d77 : if true then if true then Bool else Bool else if true then Bool else Bool
        d77 = if if d16 then false else false then if d75 then d44 else d8 else if true then false else false
        d78 : if false then if false then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if d63 then d75 else d40 ) ) ) $ ( if d68 then false else true )
        d80 : if false then if true then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if d5 then x81 else d33 ) ) ) $ ( if true then true else d60 )
        d82 : if true then if false then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if false then d31 else true ) ) ) $ ( if d11 then d75 else true )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if true then Bool else x86 ) ) ) $ ( if true then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if x85 then x85 else d13 ) ) ) $ ( if d48 then true else false )
        d87 : if false then if false then Bool else Bool else if true then Bool else Bool
        d87 = if if false then false else d8 then if true then false else true else if d8 then false else d5
        d88 : if true then if true then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if x89 then x89 else d1 ) ) ) $ ( if d64 then d22 else d5 )
        d90 : if true then if false then Bool else Bool else if false then Bool else Bool
        d90 = if if d87 then true else d77 then if true then d16 else d77 else if d53 then false else true
        d91 : if true then if true then Bool else Bool else if true then Bool else Bool
        d91 = if if d68 then d68 else false then if d11 then true else true else if true then true else true
        d92 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then Bool else x94 ) ) ) $ ( if true then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if d78 then d75 else x93 ) ) ) $ ( if true then d84 else true )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if false then Bool else x96 ) ) ) $ ( if true then Bool else Bool )
        d95 = if if true then d40 else false then if false then d80 else d36 else if true then d75 else d27
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d97 = if if d56 then true else d91 then if d40 then d44 else d88 else if d95 then d80 else d92
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> Bool ) ) ) $ ( x101 ) ) ) ) $ ( if false then Bool else Bool )
        d100 = if if d92 then d53 else true then if d36 then false else false else if d48 then false else d95
        d103 : if false then if true then Bool else Bool else if true then Bool else Bool
        d103 = if if d8 then d22 else d16 then if d97 then false else d88 else if d33 then d8 else false
        d104 : if false then if false then Bool else Bool else if false then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> d8 ) ) ) $ ( false ) ) ) ) $ ( if d75 then false else d95 )
        d107 : if true then if false then Bool else Bool else if true then Bool else Bool
        d107 = if if false then d25 else d60 then if true then d60 else false else if false then d97 else d48
        d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x111 ) ) ) $ ( x110 ) ) ) ) $ ( if true then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if d10 then d27 else x109 ) ) ) $ ( if true then true else d10 )
        d112 : if false then if false then Bool else Bool else if true then Bool else Bool
        d112 = if if d33 then true else d90 then if d5 then true else false else if true then true else d82
        d113 : if true then if true then Bool else Bool else if true then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if false then false else true ) ) ) $ ( if false then d22 else false )
        d115 : if true then if true then Bool else Bool else if true then Bool else Bool
        d115 = if if false then d60 else false then if d36 then true else false else if false then d71 else true
        d116 : if true then if true then Bool else Bool else if false then Bool else Bool
        d116 = if if d107 then d92 else false then if false then d64 else d78 else if false then d16 else d5
        d117 : if false then if false then Bool else Bool else if true then Bool else Bool
        d117 = if if d16 then d100 else d48 then if true then false else d27 else if false then false else true
        d118 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( x121 ) ) ) ) $ ( if true then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> true ) ) ) $ ( true ) ) ) ) $ ( if d77 then true else d87 )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x125 ) ) ) $ ( x124 ) ) ) ) $ ( if true then Bool else Bool )
        d123 = if if d87 then d107 else d17 then if true then false else d90 else if true then d116 else d115
        d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if true then x128 else Bool ) ) ) $ ( if true then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if true then x127 else x127 ) ) ) $ ( if true then d31 else d31 )
        d129 : if true then if false then Bool else Bool else if false then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then d84 else false )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> x133 ) ) ) $ ( x133 ) ) ) ) $ ( if true then Bool else Bool )
        d132 = if if d97 then false else false then if d108 then d71 else false else if d92 then false else d75
        d135 : if true then if true then Bool else Bool else if true then Bool else Bool
        d135 = if if d51 then d25 else false then if false then d8 else d56 else if true then d25 else true
        d136 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( Bool -> Bool ) ∋ ( ( λ x138 -> x137 ) ) ) $ ( d51 ) ) ) ) $ ( if true then true else true )
        d140 : if false then if false then Bool else Bool else if true then Bool else Bool
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> ( ( Bool -> Bool ) ∋ ( ( λ x142 -> true ) ) ) $ ( x141 ) ) ) ) $ ( if false then false else d48 )
        d143 : if false then if true then Bool else Bool else if false then Bool else Bool
        d143 = if if false then false else true then if true then d100 else false else if true then d63 else false
        d144 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if false then Bool else x145 ) ) ) $ ( if false then Bool else Bool )
        d144 = if if true then false else true then if d116 then false else d60 else if false then false else false
        d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if true then x147 else x147 ) ) ) $ ( if false then Bool else Bool )
        d146 = if if d104 then d123 else d140 then if d103 then true else true else if d136 then d22 else false
        d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d148 = if if true then true else d87 then if false then true else true else if d129 then true else d84
        d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> x151 ) ) ) $ ( x151 ) ) ) ) $ ( if false then Bool else Bool )
        d150 = if if d39 then false else d108 then if d77 then true else d95 else if d60 then false else d90
        d153 : ( ( Set -> Set ) ∋ ( ( λ x155 -> ( ( Set -> Set ) ∋ ( ( λ x156 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> if x154 then true else d136 ) ) ) $ ( if true then true else false )
        d157 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> x161 ) ) ) $ ( x160 ) ) ) ) $ ( if false then Bool else Bool )
        d157 = ( ( Bool -> Bool ) ∋ ( ( λ x158 -> ( ( Bool -> Bool ) ∋ ( ( λ x159 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d143 else true )
        d162 : if false then if true then Bool else Bool else if false then Bool else Bool
        d162 = if if d5 then true else d31 then if d33 then true else d140 else if d157 then d31 else true
        d163 : ( ( Set -> Set ) ∋ ( ( λ x164 -> if true then x164 else Bool ) ) ) $ ( if true then Bool else Bool )
        d163 = if if d80 then d13 else true then if true then d88 else true else if true then false else d136
        d165 : ( ( Set -> Set ) ∋ ( ( λ x166 -> ( ( Set -> Set ) ∋ ( ( λ x167 -> x166 ) ) ) $ ( x166 ) ) ) ) $ ( if true then Bool else Bool )
        d165 = if if d104 then true else true then if false then d135 else d5 else if d117 then false else d40
        d168 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> if x169 then false else true ) ) ) $ ( if d1 then true else true )
        d171 : ( ( Set -> Set ) ∋ ( ( λ x172 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d171 = if if true then d10 else d5 then if true then d82 else false else if true then d80 else true
        d173 : if false then if true then Bool else Bool else if false then Bool else Bool
        d173 = if if true then false else false then if false then true else true else if d82 then d165 else false
        d174 : if false then if false then Bool else Bool else if true then Bool else Bool
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> if d11 then d75 else d33 ) ) ) $ ( if d60 then true else d132 )
        d176 : if false then if true then Bool else Bool else if false then Bool else Bool
        d176 = if if true then true else d88 then if false then false else d75 else if false then false else true
        d177 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> Bool ) ) ) $ ( x178 ) ) ) ) $ ( if true then Bool else Bool )
        d177 = if if true then d1 else true then if d117 then false else d113 else if true then false else false
        d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if false then x181 else x181 ) ) ) $ ( if false then Bool else Bool )
        d180 = if if true then false else true then if true then d95 else true else if d25 then false else d135
        d182 : if false then if true then Bool else Bool else if true then Bool else Bool
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( Bool -> Bool ) ∋ ( ( λ x184 -> x183 ) ) ) $ ( d84 ) ) ) ) $ ( if true then true else true )
        d185 : if true then if false then Bool else Bool else if false then Bool else Bool
        d185 = if if true then true else true then if true then false else d136 else if true then d53 else false
        d186 : ( ( Set -> Set ) ∋ ( ( λ x188 -> ( ( Set -> Set ) ∋ ( ( λ x189 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> if true then x187 else x187 ) ) ) $ ( if true then false else true )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x192 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d190 = ( ( Bool -> Bool ) ∋ ( ( λ x191 -> if true then false else false ) ) ) $ ( if d163 then false else true )
        d193 : ( ( Set -> Set ) ∋ ( ( λ x194 -> ( ( Set -> Set ) ∋ ( ( λ x195 -> x195 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d193 = if if d63 then false else false then if d136 then true else d40 else if false then d90 else d16
        d196 : ( ( Set -> Set ) ∋ ( ( λ x197 -> if true then x197 else Bool ) ) ) $ ( if false then Bool else Bool )
        d196 = if if false then true else d16 then if d143 then d115 else true else if d90 then false else d95
        d198 : ( ( Set -> Set ) ∋ ( ( λ x201 -> ( ( Set -> Set ) ∋ ( ( λ x202 -> Bool ) ) ) $ ( x201 ) ) ) ) $ ( if true then Bool else Bool )
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x199 -> ( ( Bool -> Bool ) ∋ ( ( λ x200 -> true ) ) ) $ ( d97 ) ) ) ) $ ( if d112 then d157 else d126 )
        d203 : ( ( Set -> Set ) ∋ ( ( λ x206 -> ( ( Set -> Set ) ∋ ( ( λ x207 -> x207 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d203 = ( ( Bool -> Bool ) ∋ ( ( λ x204 -> ( ( Bool -> Bool ) ∋ ( ( λ x205 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d208 : ( ( Set -> Set ) ∋ ( ( λ x211 -> if true then x211 else Bool ) ) ) $ ( if false then Bool else Bool )
        d208 = ( ( Bool -> Bool ) ∋ ( ( λ x209 -> ( ( Bool -> Bool ) ∋ ( ( λ x210 -> d190 ) ) ) $ ( x209 ) ) ) ) $ ( if false then true else d104 )
        d212 : ( ( Set -> Set ) ∋ ( ( λ x215 -> ( ( Set -> Set ) ∋ ( ( λ x216 -> x215 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x213 -> ( ( Bool -> Bool ) ∋ ( ( λ x214 -> d97 ) ) ) $ ( d78 ) ) ) ) $ ( if false then true else d196 )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x218 -> if true then x218 else Bool ) ) ) $ ( if true then Bool else Bool )
        d217 = if if false then d63 else d150 then if true then false else false else if d84 then d40 else true
        d219 : ( ( Set -> Set ) ∋ ( ( λ x220 -> ( ( Set -> Set ) ∋ ( ( λ x221 -> x221 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d219 = if if true then true else d91 then if true then d185 else true else if false then d171 else true
        d222 : if true then if false then Bool else Bool else if true then Bool else Bool
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x223 -> if x223 then false else d112 ) ) ) $ ( if d143 then true else d1 )
        d224 : ( ( Set -> Set ) ∋ ( ( λ x227 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d224 = ( ( Bool -> Bool ) ∋ ( ( λ x225 -> ( ( Bool -> Bool ) ∋ ( ( λ x226 -> false ) ) ) $ ( x225 ) ) ) ) $ ( if false then d176 else false )
        d228 : if false then if false then Bool else Bool else if false then Bool else Bool
        d228 = if if d63 then false else d56 then if d33 then false else d148 else if d219 then d10 else d25
        d229 : if true then if false then Bool else Bool else if true then Bool else Bool
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> if x230 then d95 else d11 ) ) ) $ ( if d174 then false else d196 )
        d231 : ( ( Set -> Set ) ∋ ( ( λ x232 -> if true then x232 else x232 ) ) ) $ ( if false then Bool else Bool )
        d231 = if if false then d51 else false then if false then d56 else true else if true then true else d44
        d233 : if true then if true then Bool else Bool else if false then Bool else Bool
        d233 = if if true then true else d80 then if d39 then true else d13 else if d104 then d118 else false
        d234 : if true then if false then Bool else Bool else if false then Bool else Bool
        d234 = if if false then false else true then if d97 then d68 else false else if d146 then d95 else d39
        d235 : ( ( Set -> Set ) ∋ ( ( λ x237 -> ( ( Set -> Set ) ∋ ( ( λ x238 -> x237 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d235 = ( ( Bool -> Bool ) ∋ ( ( λ x236 -> if d116 then d146 else x236 ) ) ) $ ( if true then d173 else true )
        d239 : if false then if true then Bool else Bool else if false then Bool else Bool
        d239 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> ( ( Bool -> Bool ) ∋ ( ( λ x241 -> true ) ) ) $ ( d224 ) ) ) ) $ ( if false then d143 else d60 )
        d242 : ( ( Set -> Set ) ∋ ( ( λ x243 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d242 = if if false then d88 else false then if d203 then d11 else d176 else if d33 then true else false
        d244 : if false then if true then Bool else Bool else if true then Bool else Bool
        d244 = if if false then d11 else d100 then if false then false else true else if d91 then true else true
        d245 : ( ( Set -> Set ) ∋ ( ( λ x247 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x246 -> if d115 then d64 else d97 ) ) ) $ ( if d51 then true else true )
        d248 : if true then if false then Bool else Bool else if false then Bool else Bool
        d248 = ( ( Bool -> Bool ) ∋ ( ( λ x249 -> ( ( Bool -> Bool ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( true ) ) ) ) $ ( if true then d10 else d162 )
        d251 : ( ( Set -> Set ) ∋ ( ( λ x254 -> ( ( Set -> Set ) ∋ ( ( λ x255 -> x254 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x252 -> ( ( Bool -> Bool ) ∋ ( ( λ x253 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d256 : ( ( Set -> Set ) ∋ ( ( λ x258 -> ( ( Set -> Set ) ∋ ( ( λ x259 -> x259 ) ) ) $ ( x258 ) ) ) ) $ ( if true then Bool else Bool )
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x257 -> if true then x257 else false ) ) ) $ ( if d196 then false else true )
        d260 : ( ( Set -> Set ) ∋ ( ( λ x261 -> if false then x261 else x261 ) ) ) $ ( if false then Bool else Bool )
        d260 = if if d11 then d1 else d168 then if d196 then false else d91 else if d239 then d108 else false
        d262 : ( ( Set -> Set ) ∋ ( ( λ x265 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d262 = ( ( Bool -> Bool ) ∋ ( ( λ x263 -> ( ( Bool -> Bool ) ∋ ( ( λ x264 -> true ) ) ) $ ( x263 ) ) ) ) $ ( if false then d222 else false )
        d266 : if false then if true then Bool else Bool else if true then Bool else Bool
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x267 -> if x267 then d82 else x267 ) ) ) $ ( if d36 then d27 else true )
        d268 : if false then if true then Bool else Bool else if false then Bool else Bool
        d268 = if if d168 then d68 else d132 then if d245 then d87 else true else if true then d248 else d53
        d269 : ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x271 -> Bool ) ) ) $ ( x270 ) ) ) ) $ ( if false then Bool else Bool )
        d269 = if if d100 then d36 else d39 then if d17 then true else d198 else if false then false else d39
        d272 : ( ( Set -> Set ) ∋ ( ( λ x273 -> if false then x273 else x273 ) ) ) $ ( if false then Bool else Bool )
        d272 = if if d180 then true else true then if false then false else d17 else if d208 then true else true
        d274 : if false then if false then Bool else Bool else if true then Bool else Bool
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x275 -> ( ( Bool -> Bool ) ∋ ( ( λ x276 -> x276 ) ) ) $ ( x275 ) ) ) ) $ ( if false then true else d51 )
        d277 : ( ( Set -> Set ) ∋ ( ( λ x278 -> ( ( Set -> Set ) ∋ ( ( λ x279 -> x279 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d277 = if if d39 then d63 else d91 then if d51 then d266 else true else if d136 then d212 else d229
        d280 : if true then if false then Bool else Bool else if true then Bool else Bool
        d280 = if if d157 then d176 else true then if d36 then d262 else d123 else if true then true else d84
        d281 : ( ( Set -> Set ) ∋ ( ( λ x282 -> ( ( Set -> Set ) ∋ ( ( λ x283 -> x283 ) ) ) $ ( x282 ) ) ) ) $ ( if false then Bool else Bool )
        d281 = if if true then true else true then if false then d231 else false else if d171 then d136 else d168
        d284 : if true then if true then Bool else Bool else if true then Bool else Bool
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x285 -> ( ( Bool -> Bool ) ∋ ( ( λ x286 -> d115 ) ) ) $ ( true ) ) ) ) $ ( if d56 then false else true )
        d287 : ( ( Set -> Set ) ∋ ( ( λ x289 -> ( ( Set -> Set ) ∋ ( ( λ x290 -> x290 ) ) ) $ ( x289 ) ) ) ) $ ( if false then Bool else Bool )
        d287 = ( ( Bool -> Bool ) ∋ ( ( λ x288 -> if d132 then x288 else true ) ) ) $ ( if true then true else true )
        d291 : ( ( Set -> Set ) ∋ ( ( λ x294 -> ( ( Set -> Set ) ∋ ( ( λ x295 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d291 = ( ( Bool -> Bool ) ∋ ( ( λ x292 -> ( ( Bool -> Bool ) ∋ ( ( λ x293 -> x292 ) ) ) $ ( x292 ) ) ) ) $ ( if false then false else d280 )
        d296 : ( ( Set -> Set ) ∋ ( ( λ x299 -> ( ( Set -> Set ) ∋ ( ( λ x300 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x297 -> ( ( Bool -> Bool ) ∋ ( ( λ x298 -> x297 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d301 : if false then if true then Bool else Bool else if false then Bool else Bool
        d301 = if if d123 then d108 else true then if d140 then d51 else d143 else if d116 then d17 else d103
        d302 : ( ( Set -> Set ) ∋ ( ( λ x303 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d302 = if if d112 then true else d82 then if true then d135 else true else if d136 then d235 else d146
        d304 : if true then if false then Bool else Bool else if false then Bool else Bool
        d304 = ( ( Bool -> Bool ) ∋ ( ( λ x305 -> ( ( Bool -> Bool ) ∋ ( ( λ x306 -> d75 ) ) ) $ ( d33 ) ) ) ) $ ( if d10 then d203 else d140 )
        d307 : if true then if true then Bool else Bool else if true then Bool else Bool
        d307 = if if d231 then d13 else true then if true then d193 else false else if d244 then d75 else false
        d308 : ( ( Set -> Set ) ∋ ( ( λ x311 -> ( ( Set -> Set ) ∋ ( ( λ x312 -> x311 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d308 = ( ( Bool -> Bool ) ∋ ( ( λ x309 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then true else d108 )
        d313 : if false then if false then Bool else Bool else if true then Bool else Bool
        d313 = if if true then d60 else d117 then if d90 then d135 else d212 else if false then d91 else d116
        d314 : ( ( Set -> Set ) ∋ ( ( λ x315 -> ( ( Set -> Set ) ∋ ( ( λ x316 -> x316 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d314 = if if d229 then d224 else d36 then if d304 then true else false else if true then true else d87
        d317 : ( ( Set -> Set ) ∋ ( ( λ x318 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d317 = if if d13 then true else false then if true then d233 else false else if true then d150 else true
        d319 : if true then if false then Bool else Bool else if true then Bool else Bool
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x321 -> d302 ) ) ) $ ( d235 ) ) ) ) $ ( if d129 then d140 else d117 )
        d322 : if true then if false then Bool else Bool else if false then Bool else Bool
        d322 = if if true then d262 else true then if d284 then d17 else d56 else if false then d281 else d304
        d323 : ( ( Set -> Set ) ∋ ( ( λ x325 -> ( ( Set -> Set ) ∋ ( ( λ x326 -> Bool ) ) ) $ ( x325 ) ) ) ) $ ( if true then Bool else Bool )
        d323 = ( ( Bool -> Bool ) ∋ ( ( λ x324 -> if x324 then x324 else d140 ) ) ) $ ( if true then d322 else d229 )
        d327 : if false then if true then Bool else Bool else if false then Bool else Bool
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x328 -> if false then d233 else x328 ) ) ) $ ( if true then true else false )
        d329 : ( ( Set -> Set ) ∋ ( ( λ x330 -> ( ( Set -> Set ) ∋ ( ( λ x331 -> x330 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d329 = if if d222 then true else d17 then if true then true else false else if true then d115 else d11
        d332 : if true then if true then Bool else Bool else if false then Bool else Bool
        d332 = ( ( Bool -> Bool ) ∋ ( ( λ x333 -> ( ( Bool -> Bool ) ∋ ( ( λ x334 -> d182 ) ) ) $ ( x333 ) ) ) ) $ ( if false then true else false )
        d335 : if false then if true then Bool else Bool else if false then Bool else Bool
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x336 -> ( ( Bool -> Bool ) ∋ ( ( λ x337 -> x337 ) ) ) $ ( true ) ) ) ) $ ( if d135 then d256 else false )
        d338 : if true then if false then Bool else Bool else if true then Bool else Bool
        d338 = if if d13 then d77 else d217 then if false then d332 else d5 else if true then true else d182
        d339 : ( ( Set -> Set ) ∋ ( ( λ x340 -> ( ( Set -> Set ) ∋ ( ( λ x341 -> Bool ) ) ) $ ( x340 ) ) ) ) $ ( if false then Bool else Bool )
        d339 = if if d234 then d239 else d129 then if false then d97 else true else if true then false else d44
        d342 : if false then if true then Bool else Bool else if true then Bool else Bool
        d342 = if if d75 then false else d90 then if true then false else true else if true then true else false
        d343 : if false then if true then Bool else Bool else if false then Bool else Bool
        d343 = if if false then true else d180 then if d171 then d118 else false else if d63 then true else true
        d344 : ( ( Set -> Set ) ∋ ( ( λ x347 -> ( ( Set -> Set ) ∋ ( ( λ x348 -> x347 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x345 -> ( ( Bool -> Bool ) ∋ ( ( λ x346 -> d11 ) ) ) $ ( x345 ) ) ) ) $ ( if true then false else d132 )
        d349 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x351 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d349 = if if d75 then false else false then if false then true else d307 else if d103 then true else d332
        d352 : ( ( Set -> Set ) ∋ ( ( λ x353 -> ( ( Set -> Set ) ∋ ( ( λ x354 -> x354 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d352 = if if d284 then false else d287 then if d242 then false else d327 else if true then true else d25
        d355 : ( ( Set -> Set ) ∋ ( ( λ x356 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d355 = if if d239 then false else false then if d63 then true else false else if false then d251 else true
        d357 : if true then if true then Bool else Bool else if false then Bool else Bool
        d357 = if if d17 then false else false then if d245 then true else d53 else if false then true else d13
        d358 : ( ( Set -> Set ) ∋ ( ( λ x360 -> if true then x360 else x360 ) ) ) $ ( if true then Bool else Bool )
        d358 = ( ( Bool -> Bool ) ∋ ( ( λ x359 -> if x359 then d260 else true ) ) ) $ ( if false then d40 else false )
        d361 : ( ( Set -> Set ) ∋ ( ( λ x363 -> if false then Bool else x363 ) ) ) $ ( if false then Bool else Bool )
        d361 = ( ( Bool -> Bool ) ∋ ( ( λ x362 -> if x362 then true else x362 ) ) ) $ ( if d11 then d143 else d118 )
        d364 : if true then if false then Bool else Bool else if true then Bool else Bool
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x365 -> ( ( Bool -> Bool ) ∋ ( ( λ x366 -> d280 ) ) ) $ ( d108 ) ) ) ) $ ( if false then d274 else d165 )
        d367 : if true then if false then Bool else Bool else if true then Bool else Bool
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x368 -> if d39 then x368 else true ) ) ) $ ( if d117 then false else d63 )
        d369 : ( ( Set -> Set ) ∋ ( ( λ x372 -> ( ( Set -> Set ) ∋ ( ( λ x373 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d369 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> ( ( Bool -> Bool ) ∋ ( ( λ x371 -> d150 ) ) ) $ ( false ) ) ) ) $ ( if d268 then d338 else d135 )
        d374 : ( ( Set -> Set ) ∋ ( ( λ x375 -> ( ( Set -> Set ) ∋ ( ( λ x376 -> Bool ) ) ) $ ( x375 ) ) ) ) $ ( if false then Bool else Bool )
        d374 = if if false then d107 else d25 then if d82 then d277 else true else if d148 then false else d91
        d377 : ( ( Set -> Set ) ∋ ( ( λ x380 -> ( ( Set -> Set ) ∋ ( ( λ x381 -> x380 ) ) ) $ ( x380 ) ) ) ) $ ( if false then Bool else Bool )
        d377 = ( ( Bool -> Bool ) ∋ ( ( λ x378 -> ( ( Bool -> Bool ) ∋ ( ( λ x379 -> d268 ) ) ) $ ( d329 ) ) ) ) $ ( if d118 then false else false )
        d382 : ( ( Set -> Set ) ∋ ( ( λ x383 -> if true then x383 else x383 ) ) ) $ ( if true then Bool else Bool )
        d382 = if if d198 then d364 else d374 then if false then d8 else d112 else if d31 then d196 else false
        d384 : ( ( Set -> Set ) ∋ ( ( λ x387 -> if false then x387 else Bool ) ) ) $ ( if false then Bool else Bool )
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x385 -> ( ( Bool -> Bool ) ∋ ( ( λ x386 -> x385 ) ) ) $ ( x385 ) ) ) ) $ ( if false then true else false )
        d388 : if true then if false then Bool else Bool else if true then Bool else Bool
        d388 = if if true then d17 else d146 then if d343 then d80 else true else if false then d144 else false
        d389 : if true then if false then Bool else Bool else if false then Bool else Bool
        d389 = if if d53 then d51 else false then if false then false else true else if d56 then true else d239
        d390 : if true then if false then Bool else Bool else if false then Bool else Bool
        d390 = if if d323 then d361 else d185 then if false then d291 else d95 else if d384 then d313 else false
        d391 : if true then if false then Bool else Bool else if false then Bool else Bool
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x392 -> if d1 then false else true ) ) ) $ ( if d208 then true else false )
        d393 : if false then if true then Bool else Bool else if true then Bool else Bool
        d393 = if if true then d281 else d262 then if d92 then false else d390 else if false then d173 else true
        d394 : if true then if false then Bool else Bool else if false then Bool else Bool
        d394 = if if d51 then d343 else d291 then if d339 then d358 else true else if false then false else d108
        d395 : ( ( Set -> Set ) ∋ ( ( λ x397 -> ( ( Set -> Set ) ∋ ( ( λ x398 -> Bool ) ) ) $ ( x397 ) ) ) ) $ ( if false then Bool else Bool )
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x396 -> if d277 then d384 else d162 ) ) ) $ ( if true then false else d235 )
        d399 : if false then if false then Bool else Bool else if false then Bool else Bool
        d399 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x401 -> x400 ) ) ) $ ( x400 ) ) ) ) $ ( if d235 then d13 else d112 )
        d402 : if false then if true then Bool else Bool else if true then Bool else Bool
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x403 -> ( ( Bool -> Bool ) ∋ ( ( λ x404 -> false ) ) ) $ ( x403 ) ) ) ) $ ( if true then d135 else true )
        d405 : if true then if true then Bool else Bool else if false then Bool else Bool
        d405 = if if false then true else d90 then if d182 then d332 else true else if false then false else d17
        d406 : ( ( Set -> Set ) ∋ ( ( λ x407 -> ( ( Set -> Set ) ∋ ( ( λ x408 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d406 = if if false then true else d235 then if false then d104 else false else if true then d342 else d68
        d409 : if false then if false then Bool else Bool else if true then Bool else Bool
        d409 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if d301 then true else d338 ) ) ) $ ( if false then d395 else true )
        d411 : if false then if false then Bool else Bool else if true then Bool else Bool
        d411 = ( ( Bool -> Bool ) ∋ ( ( λ x412 -> if d132 then x412 else x412 ) ) ) $ ( if d90 then d143 else true )
        d413 : if true then if false then Bool else Bool else if false then Bool else Bool
        d413 = ( ( Bool -> Bool ) ∋ ( ( λ x414 -> ( ( Bool -> Bool ) ∋ ( ( λ x415 -> x414 ) ) ) $ ( d117 ) ) ) ) $ ( if d103 then d117 else true )
        d416 : if false then if false then Bool else Bool else if true then Bool else Bool
        d416 = if if d5 then false else d135 then if d313 then false else false else if d97 then true else d82
        d417 : if true then if true then Bool else Bool else if false then Bool else Bool
        d417 = if if d168 then true else d217 then if false then false else d242 else if true then d374 else d71
        d418 : ( ( Set -> Set ) ∋ ( ( λ x420 -> ( ( Set -> Set ) ∋ ( ( λ x421 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d418 = ( ( Bool -> Bool ) ∋ ( ( λ x419 -> if d78 then x419 else x419 ) ) ) $ ( if false then true else d123 )
        d422 : if true then if false then Bool else Bool else if true then Bool else Bool
        d422 = if if false then d163 else true then if false then true else true else if d56 then true else true
        d423 : if false then if false then Bool else Bool else if false then Bool else Bool
        d423 = ( ( Bool -> Bool ) ∋ ( ( λ x424 -> ( ( Bool -> Bool ) ∋ ( ( λ x425 -> x424 ) ) ) $ ( true ) ) ) ) $ ( if d44 then d95 else d272 )
        d426 : ( ( Set -> Set ) ∋ ( ( λ x427 -> ( ( Set -> Set ) ∋ ( ( λ x428 -> Bool ) ) ) $ ( x427 ) ) ) ) $ ( if false then Bool else Bool )
        d426 = if if d409 then d281 else false then if true then true else d339 else if true then d352 else d277
        d429 : ( ( Set -> Set ) ∋ ( ( λ x430 -> ( ( Set -> Set ) ∋ ( ( λ x431 -> Bool ) ) ) $ ( x430 ) ) ) ) $ ( if false then Bool else Bool )
        d429 = if if false then d268 else d301 then if d36 then false else d157 else if d357 then false else true
        d432 : if false then if true then Bool else Bool else if true then Bool else Bool
        d432 = if if false then false else false then if false then d319 else true else if true then false else false
        d433 : ( ( Set -> Set ) ∋ ( ( λ x434 -> ( ( Set -> Set ) ∋ ( ( λ x435 -> x434 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d433 = if if d287 then true else false then if d393 then d71 else d406 else if true then d107 else true
        d436 : if true then if false then Bool else Bool else if true then Bool else Bool
        d436 = ( ( Bool -> Bool ) ∋ ( ( λ x437 -> ( ( Bool -> Bool ) ∋ ( ( λ x438 -> true ) ) ) $ ( d132 ) ) ) ) $ ( if true then d150 else true )
        d439 : if false then if true then Bool else Bool else if false then Bool else Bool
        d439 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x441 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d118 else d291 )
        d442 : if false then if true then Bool else Bool else if true then Bool else Bool
        d442 = if if d40 then d108 else true then if d88 then false else d242 else if true then d422 else true
        d443 : if true then if true then Bool else Bool else if false then Bool else Bool
        d443 = if if d268 then true else false then if false then true else d136 else if false then d144 else d406
        d444 : if false then if false then Bool else Bool else if true then Bool else Bool
        d444 = if if d406 then d322 else true then if d182 then true else d104 else if false then d319 else d327
        d445 : ( ( Set -> Set ) ∋ ( ( λ x446 -> ( ( Set -> Set ) ∋ ( ( λ x447 -> x447 ) ) ) $ ( x446 ) ) ) ) $ ( if false then Bool else Bool )
        d445 = if if false then false else false then if d314 then true else false else if d140 then false else true
        d448 : if true then if true then Bool else Bool else if true then Bool else Bool
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x449 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> true ) ) ) $ ( d439 ) ) ) ) $ ( if true then true else d357 )
        d451 : if false then if true then Bool else Bool else if true then Bool else Bool
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x452 -> if d314 then x452 else d144 ) ) ) $ ( if false then d394 else d260 )
        d453 : if true then if false then Bool else Bool else if true then Bool else Bool
        d453 = if if false then d332 else false then if d432 then true else false else if d445 then d335 else d104
        d454 : ( ( Set -> Set ) ∋ ( ( λ x455 -> if false then x455 else Bool ) ) ) $ ( if false then Bool else Bool )
        d454 = if if true then false else d443 then if d190 then d358 else d126 else if true then true else d196
        d456 : if true then if false then Bool else Bool else if false then Bool else Bool
        d456 = ( ( Bool -> Bool ) ∋ ( ( λ x457 -> ( ( Bool -> Bool ) ∋ ( ( λ x458 -> d157 ) ) ) $ ( x457 ) ) ) ) $ ( if d153 then false else false )
        d459 : ( ( Set -> Set ) ∋ ( ( λ x460 -> if false then x460 else x460 ) ) ) $ ( if true then Bool else Bool )
        d459 = if if d327 then d268 else d95 then if false then d132 else true else if d71 then true else d173
        d461 : ( ( Set -> Set ) ∋ ( ( λ x463 -> ( ( Set -> Set ) ∋ ( ( λ x464 -> x463 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x462 -> if d112 then d413 else false ) ) ) $ ( if d40 then false else true )
        d465 : if false then if true then Bool else Bool else if true then Bool else Bool
        d465 = if if d163 then true else d177 then if d339 then d5 else d235 else if true then false else false
        d466 : ( ( Set -> Set ) ∋ ( ( λ x469 -> ( ( Set -> Set ) ∋ ( ( λ x470 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x467 -> ( ( Bool -> Bool ) ∋ ( ( λ x468 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d198 else false )
        d471 : if false then if false then Bool else Bool else if true then Bool else Bool
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x472 -> if d417 then true else false ) ) ) $ ( if false then d165 else d84 )
        d473 : if false then if true then Bool else Bool else if true then Bool else Bool
        d473 = if if true then false else d361 then if d439 then true else false else if false then d308 else d374
        d474 : ( ( Set -> Set ) ∋ ( ( λ x476 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x475 -> if false then x475 else x475 ) ) ) $ ( if d287 then d451 else d1 )
        d477 : if true then if false then Bool else Bool else if true then Bool else Bool
        d477 = if if false then d190 else d116 then if true then d95 else d115 else if false then d118 else d244
        d478 : if false then if true then Bool else Bool else if false then Bool else Bool
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x479 -> if d274 then false else x479 ) ) ) $ ( if false then true else d418 )
        d480 : if true then if false then Bool else Bool else if false then Bool else Bool
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x481 -> ( ( Bool -> Bool ) ∋ ( ( λ x482 -> x481 ) ) ) $ ( d442 ) ) ) ) $ ( if true then true else true )
        d483 : if true then if true then Bool else Bool else if false then Bool else Bool
        d483 = ( ( Bool -> Bool ) ∋ ( ( λ x484 -> if d411 then true else x484 ) ) ) $ ( if true then d364 else d100 )
        d485 : ( ( Set -> Set ) ∋ ( ( λ x486 -> ( ( Set -> Set ) ∋ ( ( λ x487 -> x486 ) ) ) $ ( x486 ) ) ) ) $ ( if false then Bool else Bool )
        d485 = if if d234 then false else d358 then if d60 then true else true else if d358 then true else true
        d488 : if false then if true then Bool else Bool else if false then Bool else Bool
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x489 -> if x489 then false else x489 ) ) ) $ ( if d374 then false else false )
        d490 : ( ( Set -> Set ) ∋ ( ( λ x491 -> if true then Bool else x491 ) ) ) $ ( if false then Bool else Bool )
        d490 = if if true then true else d31 then if false then d291 else d22 else if true then d231 else d355
        d492 : if false then if false then Bool else Bool else if true then Bool else Bool
        d492 = if if false then d22 else true then if true then d163 else true else if true then d203 else true
        d493 : if false then if true then Bool else Bool else if true then Bool else Bool
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x494 -> if true then d174 else d118 ) ) ) $ ( if false then d193 else false )
        d495 : if false then if false then Bool else Bool else if true then Bool else Bool
        d495 = ( ( Bool -> Bool ) ∋ ( ( λ x496 -> if x496 then x496 else x496 ) ) ) $ ( if d117 then false else false )
        d497 : if false then if true then Bool else Bool else if false then Bool else Bool
        d497 = if if true then true else d291 then if false then d477 else d71 else if d406 then true else false
        d498 : ( ( Set -> Set ) ∋ ( ( λ x500 -> if false then x500 else Bool ) ) ) $ ( if false then Bool else Bool )
        d498 = ( ( Bool -> Bool ) ∋ ( ( λ x499 -> if d217 then false else d75 ) ) ) $ ( if d248 then true else true )
        d501 : ( ( Set -> Set ) ∋ ( ( λ x503 -> ( ( Set -> Set ) ∋ ( ( λ x504 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d501 = ( ( Bool -> Bool ) ∋ ( ( λ x502 -> if true then x502 else x502 ) ) ) $ ( if true then d377 else d473 )
        d505 : ( ( Set -> Set ) ∋ ( ( λ x506 -> if false then Bool else x506 ) ) ) $ ( if true then Bool else Bool )
        d505 = if if false then d436 else d108 then if false then false else d143 else if false then d68 else d165
        d507 : if false then if false then Bool else Bool else if true then Bool else Bool
        d507 = if if true then d51 else false then if false then false else d39 else if false then true else true
        d508 : if true then if true then Bool else Bool else if true then Bool else Bool
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x509 -> ( ( Bool -> Bool ) ∋ ( ( λ x510 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
        d511 : if false then if true then Bool else Bool else if true then Bool else Bool
        d511 = ( ( Bool -> Bool ) ∋ ( ( λ x512 -> if x512 then d234 else d277 ) ) ) $ ( if false then d116 else d439 )
        d513 : if true then if false then Bool else Bool else if true then Bool else Bool
        d513 = if if true then d217 else true then if false then d180 else false else if d186 then false else d11
        d514 : ( ( Set -> Set ) ∋ ( ( λ x515 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d514 = if if d143 then d196 else true then if d490 then true else false else if d212 then d382 else true
        d516 : if false then if false then Bool else Bool else if false then Bool else Bool
        d516 = if if d173 then d90 else true then if d505 then false else d112 else if d132 then false else true
        d517 : if true then if false then Bool else Bool else if true then Bool else Bool
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x518 -> ( ( Bool -> Bool ) ∋ ( ( λ x519 -> x519 ) ) ) $ ( x518 ) ) ) ) $ ( if true then false else d182 )
        d520 : ( ( Set -> Set ) ∋ ( ( λ x522 -> ( ( Set -> Set ) ∋ ( ( λ x523 -> x522 ) ) ) $ ( x522 ) ) ) ) $ ( if true then Bool else Bool )
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x521 -> if x521 then x521 else true ) ) ) $ ( if d391 then d399 else true )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x527 -> ( ( Set -> Set ) ∋ ( ( λ x528 -> x528 ) ) ) $ ( x527 ) ) ) ) $ ( if true then Bool else Bool )
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x525 -> ( ( Bool -> Bool ) ∋ ( ( λ x526 -> d319 ) ) ) $ ( d355 ) ) ) ) $ ( if true then d100 else true )
        d529 : if true then if true then Bool else Bool else if true then Bool else Bool
        d529 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if true then x530 else x530 ) ) ) $ ( if false then false else false )
        d531 : ( ( Set -> Set ) ∋ ( ( λ x532 -> ( ( Set -> Set ) ∋ ( ( λ x533 -> x533 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d531 = if if d136 then true else false then if true then false else false else if false then false else d511
        d534 : if false then if true then Bool else Bool else if false then Bool else Bool
        d534 = ( ( Bool -> Bool ) ∋ ( ( λ x535 -> ( ( Bool -> Bool ) ∋ ( ( λ x536 -> d432 ) ) ) $ ( d180 ) ) ) ) $ ( if d48 then false else true )
        d537 : ( ( Set -> Set ) ∋ ( ( λ x540 -> if true then x540 else x540 ) ) ) $ ( if false then Bool else Bool )
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x538 -> ( ( Bool -> Bool ) ∋ ( ( λ x539 -> true ) ) ) $ ( d186 ) ) ) ) $ ( if d498 then true else false )
        d541 : ( ( Set -> Set ) ∋ ( ( λ x542 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d541 = if if d11 then d182 else true then if d332 then false else false else if true then d517 else d513
        d543 : if true then if true then Bool else Bool else if true then Bool else Bool
        d543 = if if true then true else true then if true then d513 else d508 else if d112 then d409 else false
        d544 : ( ( Set -> Set ) ∋ ( ( λ x546 -> if false then x546 else Bool ) ) ) $ ( if false then Bool else Bool )
        d544 = ( ( Bool -> Bool ) ∋ ( ( λ x545 -> if x545 then d10 else x545 ) ) ) $ ( if d453 then true else true )
        d547 : ( ( Set -> Set ) ∋ ( ( λ x548 -> ( ( Set -> Set ) ∋ ( ( λ x549 -> x548 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d547 = if if d118 then true else d459 then if d244 then false else d77 else if true then d256 else d90
        d550 : if true then if true then Bool else Bool else if false then Bool else Bool
        d550 = ( ( Bool -> Bool ) ∋ ( ( λ x551 -> ( ( Bool -> Bool ) ∋ ( ( λ x552 -> x551 ) ) ) $ ( x551 ) ) ) ) $ ( if false then d304 else d304 )
        d553 : if false then if false then Bool else Bool else if true then Bool else Bool
        d553 = ( ( Bool -> Bool ) ∋ ( ( λ x554 -> ( ( Bool -> Bool ) ∋ ( ( λ x555 -> true ) ) ) $ ( x554 ) ) ) ) $ ( if true then true else d51 )
        d556 : if true then if true then Bool else Bool else if false then Bool else Bool
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x557 -> ( ( Bool -> Bool ) ∋ ( ( λ x558 -> x558 ) ) ) $ ( d90 ) ) ) ) $ ( if true then false else d453 )
        d559 : if false then if false then Bool else Bool else if true then Bool else Bool
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> ( ( Bool -> Bool ) ∋ ( ( λ x561 -> x560 ) ) ) $ ( x560 ) ) ) ) $ ( if false then d485 else true )
        d562 : if true then if true then Bool else Bool else if false then Bool else Bool
        d562 = ( ( Bool -> Bool ) ∋ ( ( λ x563 -> if true then d268 else d68 ) ) ) $ ( if d393 then d544 else false )
        d564 : ( ( Set -> Set ) ∋ ( ( λ x566 -> if true then x566 else Bool ) ) ) $ ( if true then Bool else Bool )
        d564 = ( ( Bool -> Bool ) ∋ ( ( λ x565 -> if d244 then d335 else false ) ) ) $ ( if true then true else d323 )
        d567 : ( ( Set -> Set ) ∋ ( ( λ x568 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d567 = if if true then false else false then if true then d234 else d190 else if d439 then false else false
        d569 : if true then if true then Bool else Bool else if true then Bool else Bool
        d569 = if if false then true else true then if d459 then d100 else false else if false then true else true
        d570 : if false then if true then Bool else Bool else if false then Bool else Bool
        d570 = if if d473 then false else true then if d534 then d5 else d369 else if false then true else d497
        d571 : if false then if false then Bool else Bool else if false then Bool else Bool
        d571 = if if d394 then d51 else d242 then if false then false else d432 else if true then d251 else false
        d572 : ( ( Set -> Set ) ∋ ( ( λ x573 -> if false then x573 else x573 ) ) ) $ ( if true then Bool else Bool )
        d572 = if if false then false else d327 then if false then d474 else d190 else if false then d177 else d60
        d574 : ( ( Set -> Set ) ∋ ( ( λ x575 -> if true then x575 else x575 ) ) ) $ ( if true then Bool else Bool )
        d574 = if if false then d63 else d198 then if d177 then true else d8 else if d501 then d534 else d16
        d576 : if false then if false then Bool else Bool else if false then Bool else Bool
        d576 = ( ( Bool -> Bool ) ∋ ( ( λ x577 -> ( ( Bool -> Bool ) ∋ ( ( λ x578 -> d118 ) ) ) $ ( x577 ) ) ) ) $ ( if false then false else false )
        d579 : if false then if true then Bool else Bool else if false then Bool else Bool
        d579 = if if false then d173 else d459 then if true then d574 else true else if d339 then true else false
        d580 : if true then if true then Bool else Bool else if false then Bool else Bool
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x581 -> ( ( Bool -> Bool ) ∋ ( ( λ x582 -> false ) ) ) $ ( x581 ) ) ) ) $ ( if d242 then true else false )
        d583 : if true then if true then Bool else Bool else if false then Bool else Bool
        d583 = if if d280 then true else d384 then if d417 then true else d355 else if d135 then false else d569
        d584 : ( ( Set -> Set ) ∋ ( ( λ x587 -> ( ( Set -> Set ) ∋ ( ( λ x588 -> x588 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d584 = ( ( Bool -> Bool ) ∋ ( ( λ x585 -> ( ( Bool -> Bool ) ∋ ( ( λ x586 -> d367 ) ) ) $ ( x585 ) ) ) ) $ ( if false then d91 else true )
        d589 : ( ( Set -> Set ) ∋ ( ( λ x590 -> ( ( Set -> Set ) ∋ ( ( λ x591 -> Bool ) ) ) $ ( x590 ) ) ) ) $ ( if false then Bool else Bool )
        d589 = if if d11 then false else false then if d77 then false else false else if true then d11 else d284
        d592 : if false then if true then Bool else Bool else if false then Bool else Bool
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x593 -> ( ( Bool -> Bool ) ∋ ( ( λ x594 -> d480 ) ) ) $ ( x593 ) ) ) ) $ ( if true then false else true )
        d595 : ( ( Set -> Set ) ∋ ( ( λ x596 -> if false then x596 else Bool ) ) ) $ ( if true then Bool else Bool )
        d595 = if if d277 then false else d239 then if d513 then false else false else if false then true else true
        d597 : if true then if false then Bool else Bool else if false then Bool else Bool
        d597 = ( ( Bool -> Bool ) ∋ ( ( λ x598 -> ( ( Bool -> Bool ) ∋ ( ( λ x599 -> x599 ) ) ) $ ( d335 ) ) ) ) $ ( if d579 then d140 else d150 )
        d600 : if true then if true then Bool else Bool else if true then Bool else Bool
        d600 = if if d349 then false else false then if true then true else d308 else if d477 then d541 else false
        d601 : if true then if true then Bool else Bool else if false then Bool else Bool
        d601 = ( ( Bool -> Bool ) ∋ ( ( λ x602 -> ( ( Bool -> Bool ) ∋ ( ( λ x603 -> false ) ) ) $ ( false ) ) ) ) $ ( if d44 then true else false )
        d604 : ( ( Set -> Set ) ∋ ( ( λ x605 -> if true then x605 else x605 ) ) ) $ ( if false then Bool else Bool )
        d604 = if if d429 then false else false then if d342 then d235 else d224 else if d339 then d570 else d163
        d606 : if false then if false then Bool else Bool else if true then Bool else Bool
        d606 = if if true then d531 else false then if false then false else true else if false then d266 else true
        d607 : if false then if true then Bool else Bool else if true then Bool else Bool
        d607 = if if d287 then d461 else true then if false then false else false else if true then false else d203
        d608 : if false then if false then Bool else Bool else if false then Bool else Bool
        d608 = ( ( Bool -> Bool ) ∋ ( ( λ x609 -> if d480 then x609 else true ) ) ) $ ( if d339 then d88 else d556 )
        d610 : ( ( Set -> Set ) ∋ ( ( λ x612 -> if true then x612 else Bool ) ) ) $ ( if true then Bool else Bool )
        d610 = ( ( Bool -> Bool ) ∋ ( ( λ x611 -> if x611 then d592 else x611 ) ) ) $ ( if d174 then d413 else d219 )
        d613 : if false then if false then Bool else Bool else if true then Bool else Bool
        d613 = ( ( Bool -> Bool ) ∋ ( ( λ x614 -> ( ( Bool -> Bool ) ∋ ( ( λ x615 -> true ) ) ) $ ( d607 ) ) ) ) $ ( if false then d465 else d222 )
        d616 : if true then if false then Bool else Bool else if false then Bool else Bool
        d616 = ( ( Bool -> Bool ) ∋ ( ( λ x617 -> ( ( Bool -> Bool ) ∋ ( ( λ x618 -> x618 ) ) ) $ ( d269 ) ) ) ) $ ( if false then true else d429 )
        d619 : if true then if true then Bool else Bool else if true then Bool else Bool
        d619 = if if d488 then true else d597 then if true then false else d168 else if false then false else d451
        d620 : if true then if true then Bool else Bool else if false then Bool else Bool
        d620 = ( ( Bool -> Bool ) ∋ ( ( λ x621 -> if d335 then x621 else d517 ) ) ) $ ( if false then d382 else d112 )
        d622 : if false then if false then Bool else Bool else if true then Bool else Bool
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x623 -> ( ( Bool -> Bool ) ∋ ( ( λ x624 -> x623 ) ) ) $ ( x623 ) ) ) ) $ ( if false then true else d193 )
        d625 : ( ( Set -> Set ) ∋ ( ( λ x628 -> if false then x628 else Bool ) ) ) $ ( if false then Bool else Bool )
        d625 = ( ( Bool -> Bool ) ∋ ( ( λ x626 -> ( ( Bool -> Bool ) ∋ ( ( λ x627 -> d461 ) ) ) $ ( x626 ) ) ) ) $ ( if false then false else false )
        d629 : if true then if true then Bool else Bool else if false then Bool else Bool
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if d329 then d600 else true ) ) ) $ ( if d317 then d168 else false )
        d631 : if true then if true then Bool else Bool else if true then Bool else Bool
        d631 = ( ( Bool -> Bool ) ∋ ( ( λ x632 -> if d118 then d451 else false ) ) ) $ ( if false then true else d82 )
        d633 : ( ( Set -> Set ) ∋ ( ( λ x636 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d633 = ( ( Bool -> Bool ) ∋ ( ( λ x634 -> ( ( Bool -> Bool ) ∋ ( ( λ x635 -> false ) ) ) $ ( d153 ) ) ) ) $ ( if d174 then false else true )
        d637 : if false then if true then Bool else Bool else if false then Bool else Bool
        d637 = ( ( Bool -> Bool ) ∋ ( ( λ x638 -> if x638 then x638 else x638 ) ) ) $ ( if d595 then d399 else false )
        d639 : if false then if false then Bool else Bool else if false then Bool else Bool
        d639 = if if false then false else false then if d272 then true else false else if true then d90 else true
        d640 : ( ( Set -> Set ) ∋ ( ( λ x643 -> if false then x643 else Bool ) ) ) $ ( if true then Bool else Bool )
        d640 = ( ( Bool -> Bool ) ∋ ( ( λ x641 -> ( ( Bool -> Bool ) ∋ ( ( λ x642 -> false ) ) ) $ ( x641 ) ) ) ) $ ( if d150 then false else false )
        d644 : if false then if true then Bool else Bool else if false then Bool else Bool
        d644 = ( ( Bool -> Bool ) ∋ ( ( λ x645 -> ( ( Bool -> Bool ) ∋ ( ( λ x646 -> true ) ) ) $ ( false ) ) ) ) $ ( if d607 then true else false )
        d647 : ( ( Set -> Set ) ∋ ( ( λ x648 -> ( ( Set -> Set ) ∋ ( ( λ x649 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d647 = if if false then d78 else d140 then if false then d409 else d508 else if d239 then d357 else d429
        d650 : if true then if true then Bool else Bool else if false then Bool else Bool
        d650 = if if d56 then d607 else d607 then if false then d56 else d53 else if false then true else false
        d651 : if true then if false then Bool else Bool else if false then Bool else Bool
        d651 = ( ( Bool -> Bool ) ∋ ( ( λ x652 -> ( ( Bool -> Bool ) ∋ ( ( λ x653 -> d466 ) ) ) $ ( x652 ) ) ) ) $ ( if d524 then true else false )
        d654 : ( ( Set -> Set ) ∋ ( ( λ x655 -> ( ( Set -> Set ) ∋ ( ( λ x656 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d654 = if if true then d418 else true then if d84 then false else false else if d352 then d77 else d480
        d657 : ( ( Set -> Set ) ∋ ( ( λ x658 -> ( ( Set -> Set ) ∋ ( ( λ x659 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d657 = if if false then d304 else false then if false then false else false else if d193 then d647 else true
        d660 : if true then if true then Bool else Bool else if false then Bool else Bool
        d660 = if if d389 then d589 else true then if true then d68 else d584 else if d507 then true else true
        d661 : ( ( Set -> Set ) ∋ ( ( λ x663 -> ( ( Set -> Set ) ∋ ( ( λ x664 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d661 = ( ( Bool -> Bool ) ∋ ( ( λ x662 -> if d388 then true else d322 ) ) ) $ ( if d190 then d314 else d229 )
        d665 : ( ( Set -> Set ) ∋ ( ( λ x667 -> ( ( Set -> Set ) ∋ ( ( λ x668 -> x668 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d665 = ( ( Bool -> Bool ) ∋ ( ( λ x666 -> if false then true else x666 ) ) ) $ ( if d107 then false else true )
        d669 : ( ( Set -> Set ) ∋ ( ( λ x672 -> ( ( Set -> Set ) ∋ ( ( λ x673 -> Bool ) ) ) $ ( x672 ) ) ) ) $ ( if true then Bool else Bool )
        d669 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x671 -> x671 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d217 )
        d674 : if false then if false then Bool else Bool else if true then Bool else Bool
        d674 = if if true then d71 else d589 then if d616 then false else d622 else if d22 then true else d322
        d675 : if true then if true then Bool else Bool else if true then Bool else Bool
        d675 = ( ( Bool -> Bool ) ∋ ( ( λ x676 -> ( ( Bool -> Bool ) ∋ ( ( λ x677 -> x677 ) ) ) $ ( true ) ) ) ) $ ( if d150 then d454 else d13 )
        d678 : if true then if true then Bool else Bool else if false then Bool else Bool
        d678 = ( ( Bool -> Bool ) ∋ ( ( λ x679 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> true ) ) ) $ ( x679 ) ) ) ) $ ( if d669 then d180 else d40 )
        d681 : if false then if true then Bool else Bool else if true then Bool else Bool
        d681 = if if d367 then d543 else d115 then if false then false else false else if d629 then d451 else d505
        d682 : if true then if false then Bool else Bool else if false then Bool else Bool
        d682 = if if true then false else true then if d269 then false else false else if false then false else true
        d683 : ( ( Set -> Set ) ∋ ( ( λ x684 -> if false then x684 else x684 ) ) ) $ ( if true then Bool else Bool )
        d683 = if if false then true else d426 then if true then d260 else d277 else if true then d513 else d406
        d685 : if true then if false then Bool else Bool else if false then Bool else Bool
        d685 = ( ( Bool -> Bool ) ∋ ( ( λ x686 -> if x686 then d277 else d165 ) ) ) $ ( if d95 then d417 else d416 )
        d687 : if true then if true then Bool else Bool else if true then Bool else Bool
        d687 = ( ( Bool -> Bool ) ∋ ( ( λ x688 -> if false then d501 else x688 ) ) ) $ ( if d135 then d395 else d483 )
        d689 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x691 -> x690 ) ) ) $ ( x690 ) ) ) ) $ ( if false then Bool else Bool )
        d689 = if if d224 then d445 else false then if true then true else false else if true then false else false
        d692 : if false then if false then Bool else Bool else if false then Bool else Bool
        d692 = ( ( Bool -> Bool ) ∋ ( ( λ x693 -> ( ( Bool -> Bool ) ∋ ( ( λ x694 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d695 : ( ( Set -> Set ) ∋ ( ( λ x698 -> if true then x698 else Bool ) ) ) $ ( if true then Bool else Bool )
        d695 = ( ( Bool -> Bool ) ∋ ( ( λ x696 -> ( ( Bool -> Bool ) ∋ ( ( λ x697 -> d405 ) ) ) $ ( x696 ) ) ) ) $ ( if false then false else d13 )
        d699 : ( ( Set -> Set ) ∋ ( ( λ x700 -> if true then Bool else x700 ) ) ) $ ( if false then Bool else Bool )
        d699 = if if false then true else d514 then if false then false else true else if d168 then false else d27
        d701 : if true then if false then Bool else Bool else if false then Bool else Bool
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x702 -> if x702 then true else x702 ) ) ) $ ( if d31 then true else d608 )
        d703 : if false then if false then Bool else Bool else if true then Bool else Bool
        d703 = ( ( Bool -> Bool ) ∋ ( ( λ x704 -> if true then x704 else d669 ) ) ) $ ( if d451 then d513 else true )
        d705 : ( ( Set -> Set ) ∋ ( ( λ x706 -> if false then x706 else x706 ) ) ) $ ( if true then Bool else Bool )
        d705 = if if d432 then d495 else true then if d483 then d629 else false else if d228 then d91 else d5
        d707 : ( ( Set -> Set ) ∋ ( ( λ x708 -> if false then x708 else Bool ) ) ) $ ( if true then Bool else Bool )
        d707 = if if d64 then true else true then if d358 then d5 else true else if d514 then true else true
        d709 : ( ( Set -> Set ) ∋ ( ( λ x712 -> if true then x712 else Bool ) ) ) $ ( if true then Bool else Bool )
        d709 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( ( Bool -> Bool ) ∋ ( ( λ x711 -> x711 ) ) ) $ ( false ) ) ) ) $ ( if d607 then d367 else false )
        d713 : ( ( Set -> Set ) ∋ ( ( λ x716 -> if false then Bool else x716 ) ) ) $ ( if true then Bool else Bool )
        d713 = ( ( Bool -> Bool ) ∋ ( ( λ x714 -> ( ( Bool -> Bool ) ∋ ( ( λ x715 -> d374 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d717 : if false then if false then Bool else Bool else if true then Bool else Bool
        d717 = if if true then false else false then if false then true else d516 else if true then false else false
        d718 : if true then if true then Bool else Bool else if false then Bool else Bool
        d718 = ( ( Bool -> Bool ) ∋ ( ( λ x719 -> if true then x719 else true ) ) ) $ ( if false then d107 else false )
        d720 : if false then if false then Bool else Bool else if false then Bool else Bool
        d720 = if if true then d433 else false then if d163 then d488 else d228 else if d669 then d584 else d537
        d721 : if false then if false then Bool else Bool else if false then Bool else Bool
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x722 -> if x722 then x722 else false ) ) ) $ ( if false then false else true )
        d723 : ( ( Set -> Set ) ∋ ( ( λ x724 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d723 = if if d631 then d429 else d234 then if false then d405 else true else if d95 then true else d107
        d725 : ( ( Set -> Set ) ∋ ( ( λ x727 -> if false then x727 else x727 ) ) ) $ ( if true then Bool else Bool )
        d725 = ( ( Bool -> Bool ) ∋ ( ( λ x726 -> if x726 then x726 else x726 ) ) ) $ ( if false then false else true )
        d728 : ( ( Set -> Set ) ∋ ( ( λ x730 -> ( ( Set -> Set ) ∋ ( ( λ x731 -> x730 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d728 = ( ( Bool -> Bool ) ∋ ( ( λ x729 -> if d413 then false else x729 ) ) ) $ ( if d317 then true else true )
        d732 : ( ( Set -> Set ) ∋ ( ( λ x733 -> ( ( Set -> Set ) ∋ ( ( λ x734 -> x734 ) ) ) $ ( x733 ) ) ) ) $ ( if true then Bool else Bool )
        d732 = if if d339 then false else false then if d478 then false else true else if d48 then d529 else d277
        d735 : if true then if false then Bool else Bool else if false then Bool else Bool
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x736 -> ( ( Bool -> Bool ) ∋ ( ( λ x737 -> x736 ) ) ) $ ( x736 ) ) ) ) $ ( if true then false else false )
        d738 : ( ( Set -> Set ) ∋ ( ( λ x739 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> x740 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d738 = if if true then false else d319 then if true then false else false else if false then false else d713
        d741 : if true then if false then Bool else Bool else if false then Bool else Bool
        d741 = if if d153 then d541 else false then if false then true else false else if d44 then d180 else d90
        d742 : if false then if true then Bool else Bool else if false then Bool else Bool
        d742 = if if d699 then false else d692 then if false then d429 else d418 else if true then false else true
        d743 : ( ( Set -> Set ) ∋ ( ( λ x744 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d743 = if if true then d657 else true then if false then true else true else if d291 then true else false
        d745 : ( ( Set -> Set ) ∋ ( ( λ x746 -> ( ( Set -> Set ) ∋ ( ( λ x747 -> x746 ) ) ) $ ( x746 ) ) ) ) $ ( if false then Bool else Bool )
        d745 = if if d743 then false else false then if false then d256 else false else if d374 then false else true
        d748 : if true then if true then Bool else Bool else if true then Bool else Bool
        d748 = ( ( Bool -> Bool ) ∋ ( ( λ x749 -> ( ( Bool -> Bool ) ∋ ( ( λ x750 -> x749 ) ) ) $ ( d1 ) ) ) ) $ ( if d198 then d592 else d735 )
        d751 : if false then if true then Bool else Bool else if true then Bool else Bool
        d751 = if if true then d113 else d88 then if true then true else d284 else if d11 then true else d416
        d752 : ( ( Set -> Set ) ∋ ( ( λ x754 -> ( ( Set -> Set ) ∋ ( ( λ x755 -> Bool ) ) ) $ ( x754 ) ) ) ) $ ( if true then Bool else Bool )
        d752 = ( ( Bool -> Bool ) ∋ ( ( λ x753 -> if x753 then true else x753 ) ) ) $ ( if true then true else d433 )
        d756 : if false then if false then Bool else Bool else if false then Bool else Bool
        d756 = ( ( Bool -> Bool ) ∋ ( ( λ x757 -> ( ( Bool -> Bool ) ∋ ( ( λ x758 -> d701 ) ) ) $ ( x757 ) ) ) ) $ ( if d196 then d343 else d11 )
        d759 : if true then if false then Bool else Bool else if false then Bool else Bool
        d759 = if if false then true else true then if false then true else false else if d647 then true else true
        d760 : if false then if true then Bool else Bool else if false then Bool else Bool
        d760 = ( ( Bool -> Bool ) ∋ ( ( λ x761 -> if d163 then true else d393 ) ) ) $ ( if d497 then true else false )
        d762 : ( ( Set -> Set ) ∋ ( ( λ x764 -> ( ( Set -> Set ) ∋ ( ( λ x765 -> x765 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d762 = ( ( Bool -> Bool ) ∋ ( ( λ x763 -> if x763 then true else x763 ) ) ) $ ( if d534 then true else d198 )
        d766 : ( ( Set -> Set ) ∋ ( ( λ x767 -> ( ( Set -> Set ) ∋ ( ( λ x768 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d766 = if if true then true else false then if false then true else false else if d433 then false else true
        d769 : ( ( Set -> Set ) ∋ ( ( λ x770 -> if true then x770 else Bool ) ) ) $ ( if true then Bool else Bool )
        d769 = if if d584 then true else d592 then if true then d402 else false else if false then false else false
        d771 : if true then if false then Bool else Bool else if false then Bool else Bool
        d771 = if if false then d640 else d71 then if false then true else d769 else if true then d610 else d287
        d772 : ( ( Set -> Set ) ∋ ( ( λ x773 -> if true then x773 else Bool ) ) ) $ ( if true then Bool else Bool )
        d772 = if if true then d349 else true then if false then true else d682 else if false then false else d113
        d774 : ( ( Set -> Set ) ∋ ( ( λ x775 -> ( ( Set -> Set ) ∋ ( ( λ x776 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d774 = if if false then false else true then if d576 then false else false else if true then d699 else d513
        d777 : if false then if false then Bool else Bool else if false then Bool else Bool
        d777 = ( ( Bool -> Bool ) ∋ ( ( λ x778 -> ( ( Bool -> Bool ) ∋ ( ( λ x779 -> x779 ) ) ) $ ( x778 ) ) ) ) $ ( if d395 then true else true )
        d780 : if true then if false then Bool else Bool else if false then Bool else Bool
        d780 = ( ( Bool -> Bool ) ∋ ( ( λ x781 -> ( ( Bool -> Bool ) ∋ ( ( λ x782 -> d485 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d741 )
        d783 : ( ( Set -> Set ) ∋ ( ( λ x786 -> ( ( Set -> Set ) ∋ ( ( λ x787 -> x787 ) ) ) $ ( x786 ) ) ) ) $ ( if false then Bool else Bool )
        d783 = ( ( Bool -> Bool ) ∋ ( ( λ x784 -> ( ( Bool -> Bool ) ∋ ( ( λ x785 -> x785 ) ) ) $ ( false ) ) ) ) $ ( if d186 then d163 else false )
        d788 : ( ( Set -> Set ) ∋ ( ( λ x791 -> if true then x791 else x791 ) ) ) $ ( if true then Bool else Bool )
        d788 = ( ( Bool -> Bool ) ∋ ( ( λ x789 -> ( ( Bool -> Bool ) ∋ ( ( λ x790 -> d445 ) ) ) $ ( false ) ) ) ) $ ( if false then d284 else true )
        d792 : if false then if false then Bool else Bool else if false then Bool else Bool
        d792 = if if false then true else true then if d606 then d16 else false else if false then d766 else true
        d793 : ( ( Set -> Set ) ∋ ( ( λ x796 -> ( ( Set -> Set ) ∋ ( ( λ x797 -> x797 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d793 = ( ( Bool -> Bool ) ∋ ( ( λ x794 -> ( ( Bool -> Bool ) ∋ ( ( λ x795 -> x794 ) ) ) $ ( d163 ) ) ) ) $ ( if d445 then false else d395 )
        d798 : if true then if false then Bool else Bool else if false then Bool else Bool
        d798 = if if d745 then d788 else d762 then if true then d669 else false else if d63 then true else d780
        d799 : ( ( Set -> Set ) ∋ ( ( λ x800 -> if true then Bool else x800 ) ) ) $ ( if true then Bool else Bool )
        d799 = if if true then d569 else d432 then if d405 then d88 else d256 else if false then true else d87
        d801 : ( ( Set -> Set ) ∋ ( ( λ x803 -> ( ( Set -> Set ) ∋ ( ( λ x804 -> x803 ) ) ) $ ( x803 ) ) ) ) $ ( if true then Bool else Bool )
        d801 = ( ( Bool -> Bool ) ∋ ( ( λ x802 -> if x802 then d322 else d685 ) ) ) $ ( if true then true else d87 )
        d805 : ( ( Set -> Set ) ∋ ( ( λ x807 -> ( ( Set -> Set ) ∋ ( ( λ x808 -> x807 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x806 -> if d567 then x806 else d393 ) ) ) $ ( if d783 then d150 else d374 )
        d809 : if true then if true then Bool else Bool else if false then Bool else Bool
        d809 = if if true then d454 else d71 then if false then false else true else if false then d248 else false
        d810 : if true then if false then Bool else Bool else if true then Bool else Bool
        d810 = ( ( Bool -> Bool ) ∋ ( ( λ x811 -> if x811 then x811 else d274 ) ) ) $ ( if d601 then true else false )
        d812 : ( ( Set -> Set ) ∋ ( ( λ x813 -> ( ( Set -> Set ) ∋ ( ( λ x814 -> Bool ) ) ) $ ( x813 ) ) ) ) $ ( if false then Bool else Bool )
        d812 = if if true then true else d531 then if false then true else true else if d570 then true else false
        d815 : ( ( Set -> Set ) ∋ ( ( λ x817 -> ( ( Set -> Set ) ∋ ( ( λ x818 -> x818 ) ) ) $ ( x817 ) ) ) ) $ ( if true then Bool else Bool )
        d815 = ( ( Bool -> Bool ) ∋ ( ( λ x816 -> if x816 then false else d461 ) ) ) $ ( if d307 then false else true )
        d819 : if true then if true then Bool else Bool else if false then Bool else Bool
        d819 = if if true then false else d357 then if d529 then true else d95 else if true then d203 else true
        d820 : if false then if true then Bool else Bool else if false then Bool else Bool
        d820 = ( ( Bool -> Bool ) ∋ ( ( λ x821 -> if x821 then x821 else x821 ) ) ) $ ( if d395 then false else true )
        d822 : ( ( Set -> Set ) ∋ ( ( λ x825 -> if false then x825 else Bool ) ) ) $ ( if true then Bool else Bool )
        d822 = ( ( Bool -> Bool ) ∋ ( ( λ x823 -> ( ( Bool -> Bool ) ∋ ( ( λ x824 -> d388 ) ) ) $ ( false ) ) ) ) $ ( if d477 then true else false )
        d826 : ( ( Set -> Set ) ∋ ( ( λ x827 -> ( ( Set -> Set ) ∋ ( ( λ x828 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d826 = if if true then d327 else d572 then if d774 then d262 else true else if false then d488 else d531
        d829 : if false then if true then Bool else Bool else if false then Bool else Bool
        d829 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if true then d377 else false ) ) ) $ ( if d113 then false else true )
        d831 : if false then if true then Bool else Bool else if false then Bool else Bool
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x832 -> if true then true else d117 ) ) ) $ ( if d68 then true else true )
        d833 : ( ( Set -> Set ) ∋ ( ( λ x834 -> if true then Bool else x834 ) ) ) $ ( if true then Bool else Bool )
        d833 = if if d108 then d517 else false then if d685 then d352 else true else if d63 then d231 else true
        d835 : ( ( Set -> Set ) ∋ ( ( λ x837 -> ( ( Set -> Set ) ∋ ( ( λ x838 -> x837 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d835 = ( ( Bool -> Bool ) ∋ ( ( λ x836 -> if true then true else false ) ) ) $ ( if true then d245 else d488 )
        d839 : if true then if false then Bool else Bool else if true then Bool else Bool
        d839 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x841 -> true ) ) ) $ ( x840 ) ) ) ) $ ( if d22 then d163 else d374 )
        d842 : ( ( Set -> Set ) ∋ ( ( λ x843 -> if true then x843 else x843 ) ) ) $ ( if false then Bool else Bool )
        d842 = if if false then true else true then if d304 then d117 else true else if d606 then d495 else d391
        d844 : ( ( Set -> Set ) ∋ ( ( λ x846 -> ( ( Set -> Set ) ∋ ( ( λ x847 -> x847 ) ) ) $ ( x846 ) ) ) ) $ ( if false then Bool else Bool )
        d844 = ( ( Bool -> Bool ) ∋ ( ( λ x845 -> if d490 then d801 else false ) ) ) $ ( if true then d474 else d307 )
        d848 : ( ( Set -> Set ) ∋ ( ( λ x851 -> ( ( Set -> Set ) ∋ ( ( λ x852 -> Bool ) ) ) $ ( x851 ) ) ) ) $ ( if false then Bool else Bool )
        d848 = ( ( Bool -> Bool ) ∋ ( ( λ x849 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> d745 ) ) ) $ ( true ) ) ) ) $ ( if false then d544 else false )
        d853 : if true then if true then Bool else Bool else if true then Bool else Bool
        d853 = if if d571 then d815 else d550 then if d342 then true else d844 else if d505 then true else false
        d854 : if false then if false then Bool else Bool else if true then Bool else Bool
        d854 = ( ( Bool -> Bool ) ∋ ( ( λ x855 -> ( ( Bool -> Bool ) ∋ ( ( λ x856 -> x855 ) ) ) $ ( true ) ) ) ) $ ( if d135 then false else false )
        d857 : ( ( Set -> Set ) ∋ ( ( λ x859 -> if false then x859 else x859 ) ) ) $ ( if false then Bool else Bool )
        d857 = ( ( Bool -> Bool ) ∋ ( ( λ x858 -> if x858 then false else x858 ) ) ) $ ( if d40 then d783 else d445 )
        d860 : if true then if false then Bool else Bool else if false then Bool else Bool
        d860 = if if d798 then d732 else false then if true then d606 else true else if true then false else d107
        d861 : ( ( Set -> Set ) ∋ ( ( λ x862 -> ( ( Set -> Set ) ∋ ( ( λ x863 -> x863 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d861 = if if d516 then true else d176 then if d493 then d272 else d399 else if true then false else d367
        d864 : ( ( Set -> Set ) ∋ ( ( λ x867 -> if true then x867 else Bool ) ) ) $ ( if false then Bool else Bool )
        d864 = ( ( Bool -> Bool ) ∋ ( ( λ x865 -> ( ( Bool -> Bool ) ∋ ( ( λ x866 -> d738 ) ) ) $ ( true ) ) ) ) $ ( if true then d732 else d570 )
        d868 : ( ( Set -> Set ) ∋ ( ( λ x871 -> ( ( Set -> Set ) ∋ ( ( λ x872 -> x872 ) ) ) $ ( x871 ) ) ) ) $ ( if true then Bool else Bool )
        d868 = ( ( Bool -> Bool ) ∋ ( ( λ x869 -> ( ( Bool -> Bool ) ∋ ( ( λ x870 -> false ) ) ) $ ( x869 ) ) ) ) $ ( if false then d745 else d426 )
        d873 : if false then if true then Bool else Bool else if true then Bool else Bool
        d873 = if if true then d84 else d432 then if true then d490 else d651 else if false then d48 else true
        d874 : if true then if true then Bool else Bool else if false then Bool else Bool
        d874 = ( ( Bool -> Bool ) ∋ ( ( λ x875 -> ( ( Bool -> Bool ) ∋ ( ( λ x876 -> d343 ) ) ) $ ( d84 ) ) ) ) $ ( if false then false else d466 )
        d877 : if false then if true then Bool else Bool else if true then Bool else Bool
        d877 = if if true then false else d280 then if d595 then d607 else d490 else if d553 then true else true
        d878 : ( ( Set -> Set ) ∋ ( ( λ x881 -> ( ( Set -> Set ) ∋ ( ( λ x882 -> x882 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d878 = ( ( Bool -> Bool ) ∋ ( ( λ x879 -> ( ( Bool -> Bool ) ∋ ( ( λ x880 -> d660 ) ) ) $ ( x879 ) ) ) ) $ ( if d68 then true else true )
        d883 : if false then if false then Bool else Bool else if true then Bool else Bool
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x884 -> ( ( Bool -> Bool ) ∋ ( ( λ x885 -> d260 ) ) ) $ ( x884 ) ) ) ) $ ( if d317 then true else d231 )
        d886 : if false then if true then Bool else Bool else if true then Bool else Bool
        d886 = if if false then d743 else true then if d766 then false else d774 else if d113 then d308 else d229
        d887 : if false then if false then Bool else Bool else if true then Bool else Bool
        d887 = if if d610 then false else false then if d580 then true else d212 else if false then d382 else d456
        d888 : if false then if true then Bool else Bool else if false then Bool else Bool
        d888 = if if d860 then d1 else true then if d451 then false else false else if true then d511 else true
        d889 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x891 -> x890 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d889 = if if false then true else true then if true then true else d576 else if d100 then false else true
        d892 : ( ( Set -> Set ) ∋ ( ( λ x893 -> ( ( Set -> Set ) ∋ ( ( λ x894 -> x894 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d892 = if if d748 then true else true then if false then d27 else d33 else if false then false else true
        d895 : ( ( Set -> Set ) ∋ ( ( λ x897 -> ( ( Set -> Set ) ∋ ( ( λ x898 -> x898 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d895 = ( ( Bool -> Bool ) ∋ ( ( λ x896 -> if d228 then d71 else d695 ) ) ) $ ( if true then true else true )
        d899 : ( ( Set -> Set ) ∋ ( ( λ x902 -> ( ( Set -> Set ) ∋ ( ( λ x903 -> x902 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d899 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( Bool -> Bool ) ∋ ( ( λ x901 -> x901 ) ) ) $ ( d640 ) ) ) ) $ ( if false then d732 else d367 )
        d904 : if false then if true then Bool else Bool else if true then Bool else Bool
        d904 = ( ( Bool -> Bool ) ∋ ( ( λ x905 -> if x905 then x905 else false ) ) ) $ ( if false then d689 else d864 )
        d906 : if false then if false then Bool else Bool else if false then Bool else Bool
        d906 = if if false then d759 else true then if d654 then true else true else if d433 then d899 else false
        d907 : if true then if false then Bool else Bool else if true then Bool else Bool
        d907 = ( ( Bool -> Bool ) ∋ ( ( λ x908 -> ( ( Bool -> Bool ) ∋ ( ( λ x909 -> x908 ) ) ) $ ( x908 ) ) ) ) $ ( if true then false else false )
        d910 : ( ( Set -> Set ) ∋ ( ( λ x912 -> if false then x912 else Bool ) ) ) $ ( if false then Bool else Bool )
        d910 = ( ( Bool -> Bool ) ∋ ( ( λ x911 -> if x911 then x911 else x911 ) ) ) $ ( if d501 then d732 else false )
        d913 : ( ( Set -> Set ) ∋ ( ( λ x915 -> ( ( Set -> Set ) ∋ ( ( λ x916 -> x916 ) ) ) $ ( x915 ) ) ) ) $ ( if false then Bool else Bool )
        d913 = ( ( Bool -> Bool ) ∋ ( ( λ x914 -> if false then d738 else d720 ) ) ) $ ( if d422 then false else true )
        d917 : if false then if true then Bool else Bool else if true then Bool else Bool
        d917 = ( ( Bool -> Bool ) ∋ ( ( λ x918 -> ( ( Bool -> Bool ) ∋ ( ( λ x919 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d920 : ( ( Set -> Set ) ∋ ( ( λ x921 -> ( ( Set -> Set ) ∋ ( ( λ x922 -> x921 ) ) ) $ ( x921 ) ) ) ) $ ( if true then Bool else Bool )
        d920 = if if d367 then true else false then if d906 then false else false else if true then true else true
        d923 : if false then if false then Bool else Bool else if false then Bool else Bool
        d923 = ( ( Bool -> Bool ) ∋ ( ( λ x924 -> ( ( Bool -> Bool ) ∋ ( ( λ x925 -> false ) ) ) $ ( x924 ) ) ) ) $ ( if false then d853 else true )
        d926 : ( ( Set -> Set ) ∋ ( ( λ x928 -> ( ( Set -> Set ) ∋ ( ( λ x929 -> Bool ) ) ) $ ( x928 ) ) ) ) $ ( if true then Bool else Bool )
        d926 = ( ( Bool -> Bool ) ∋ ( ( λ x927 -> if d907 then true else x927 ) ) ) $ ( if d451 then d534 else d742 )
        d930 : if true then if false then Bool else Bool else if true then Bool else Bool
        d930 = ( ( Bool -> Bool ) ∋ ( ( λ x931 -> ( ( Bool -> Bool ) ∋ ( ( λ x932 -> x931 ) ) ) $ ( x931 ) ) ) ) $ ( if true then d304 else true )
        d933 : if true then if false then Bool else Bool else if true then Bool else Bool
        d933 = if if true then d608 else true then if d395 then false else d644 else if d148 then d132 else true
        d934 : ( ( Set -> Set ) ∋ ( ( λ x937 -> ( ( Set -> Set ) ∋ ( ( λ x938 -> x938 ) ) ) $ ( x937 ) ) ) ) $ ( if true then Bool else Bool )
        d934 = ( ( Bool -> Bool ) ∋ ( ( λ x935 -> ( ( Bool -> Bool ) ∋ ( ( λ x936 -> d116 ) ) ) $ ( false ) ) ) ) $ ( if d103 then false else d100 )
        d939 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x941 -> x941 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d939 = if if true then d280 else false then if d100 then false else false else if false then d193 else d488
        d942 : if false then if true then Bool else Bool else if true then Bool else Bool
        d942 = if if d571 then false else d64 then if false then true else d717 else if false then false else true
        d943 : ( ( Set -> Set ) ∋ ( ( λ x946 -> if false then Bool else x946 ) ) ) $ ( if false then Bool else Bool )
        d943 = ( ( Bool -> Bool ) ∋ ( ( λ x944 -> ( ( Bool -> Bool ) ∋ ( ( λ x945 -> x945 ) ) ) $ ( d433 ) ) ) ) $ ( if true then d208 else true )
        d947 : if false then if true then Bool else Bool else if true then Bool else Bool
        d947 = if if true then d77 else true then if true then true else d633 else if d511 then d395 else d174
        d948 : ( ( Set -> Set ) ∋ ( ( λ x951 -> if true then Bool else x951 ) ) ) $ ( if true then Bool else Bool )
        d948 = ( ( Bool -> Bool ) ∋ ( ( λ x949 -> ( ( Bool -> Bool ) ∋ ( ( λ x950 -> true ) ) ) $ ( d186 ) ) ) ) $ ( if d453 then d280 else true )
        d952 : if false then if false then Bool else Bool else if false then Bool else Bool
        d952 = if if true then d899 else d495 then if d335 then d231 else true else if true then d695 else d212
        d953 : ( ( Set -> Set ) ∋ ( ( λ x955 -> if false then Bool else x955 ) ) ) $ ( if true then Bool else Bool )
        d953 = ( ( Bool -> Bool ) ∋ ( ( λ x954 -> if true then false else x954 ) ) ) $ ( if d895 then d301 else d393 )
        d956 : if false then if false then Bool else Bool else if true then Bool else Bool
        d956 = if if d497 then false else d186 then if true then d339 else d90 else if d82 then d868 else true
        d957 : ( ( Set -> Set ) ∋ ( ( λ x959 -> ( ( Set -> Set ) ∋ ( ( λ x960 -> Bool ) ) ) $ ( x959 ) ) ) ) $ ( if false then Bool else Bool )
        d957 = ( ( Bool -> Bool ) ∋ ( ( λ x958 -> if true then true else d651 ) ) ) $ ( if d33 then false else true )
        d961 : ( ( Set -> Set ) ∋ ( ( λ x963 -> if true then x963 else x963 ) ) ) $ ( if false then Bool else Bool )
        d961 = ( ( Bool -> Bool ) ∋ ( ( λ x962 -> if d678 then true else x962 ) ) ) $ ( if d123 then true else true )
        d964 : ( ( Set -> Set ) ∋ ( ( λ x966 -> if false then x966 else Bool ) ) ) $ ( if true then Bool else Bool )
        d964 = ( ( Bool -> Bool ) ∋ ( ( λ x965 -> if d608 then true else d607 ) ) ) $ ( if false then false else d759 )
        d967 : if true then if false then Bool else Bool else if true then Bool else Bool
        d967 = ( ( Bool -> Bool ) ∋ ( ( λ x968 -> ( ( Bool -> Bool ) ∋ ( ( λ x969 -> x968 ) ) ) $ ( true ) ) ) ) $ ( if d11 then false else d268 )
        d970 : if false then if false then Bool else Bool else if true then Bool else Bool
        d970 = ( ( Bool -> Bool ) ∋ ( ( λ x971 -> if false then x971 else x971 ) ) ) $ ( if true then false else d274 )
        d972 : ( ( Set -> Set ) ∋ ( ( λ x974 -> ( ( Set -> Set ) ∋ ( ( λ x975 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d972 = ( ( Bool -> Bool ) ∋ ( ( λ x973 -> if d516 then true else true ) ) ) $ ( if false then d703 else false )
        d976 : ( ( Set -> Set ) ∋ ( ( λ x977 -> ( ( Set -> Set ) ∋ ( ( λ x978 -> x978 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d976 = if if true then d683 else d92 then if false then false else true else if true then true else d654
        d979 : if true then if false then Bool else Bool else if false then Bool else Bool
        d979 = if if true then d741 else true then if true then d465 else true else if false then d920 else d245
        d980 : ( ( Set -> Set ) ∋ ( ( λ x982 -> ( ( Set -> Set ) ∋ ( ( λ x983 -> x982 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d980 = ( ( Bool -> Bool ) ∋ ( ( λ x981 -> if true then x981 else d344 ) ) ) $ ( if false then true else d75 )
        d984 : if false then if false then Bool else Bool else if true then Bool else Bool
        d984 = ( ( Bool -> Bool ) ∋ ( ( λ x985 -> ( ( Bool -> Bool ) ∋ ( ( λ x986 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then d619 else d150 )
        d987 : ( ( Set -> Set ) ∋ ( ( λ x988 -> if false then Bool else x988 ) ) ) $ ( if false then Bool else Bool )
        d987 = if if d132 then d964 else false then if true then d132 else false else if d613 then true else false
        d989 : ( ( Set -> Set ) ∋ ( ( λ x990 -> ( ( Set -> Set ) ∋ ( ( λ x991 -> x990 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d989 = if if d193 then true else false then if d738 then false else true else if true then d815 else d601
        d992 : ( ( Set -> Set ) ∋ ( ( λ x993 -> if false then Bool else x993 ) ) ) $ ( if false then Bool else Bool )
        d992 = if if true then d682 else d231 then if true then true else d665 else if false then d622 else true
        d994 : if false then if false then Bool else Bool else if true then Bool else Bool
        d994 = ( ( Bool -> Bool ) ∋ ( ( λ x995 -> if true then true else d886 ) ) ) $ ( if d126 then false else d633 )
        d996 : ( ( Set -> Set ) ∋ ( ( λ x999 -> if true then x999 else x999 ) ) ) $ ( if false then Bool else Bool )
        d996 = ( ( Bool -> Bool ) ∋ ( ( λ x997 -> ( ( Bool -> Bool ) ∋ ( ( λ x998 -> d899 ) ) ) $ ( d622 ) ) ) ) $ ( if d987 then d374 else false )
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x1003 -> if false then x1003 else x1003 ) ) ) $ ( if false then Bool else Bool )
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x1001 -> ( ( Bool -> Bool ) ∋ ( ( λ x1002 -> d844 ) ) ) $ ( true ) ) ) ) $ ( if d176 then false else true )
        d1004 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1004 = if if d239 then false else true then if d979 then true else false else if true then false else false
        d1005 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1005 = if if d135 then d639 else false then if d63 then false else false else if d629 then d942 else true
        d1006 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1006 = if if d685 then d180 else true then if d31 then true else d132 else if d5 then false else false
        d1007 : ( ( Set -> Set ) ∋ ( ( λ x1008 -> if false then x1008 else x1008 ) ) ) $ ( if true then Bool else Bool )
        d1007 = if if d675 then d748 else d732 then if true then d229 else true else if true then true else d913
        d1009 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1009 = if if d280 then d390 else d497 then if true then d180 else true else if d327 then true else false
        d1010 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1010 = ( ( Bool -> Bool ) ∋ ( ( λ x1011 -> if x1011 then d514 else d112 ) ) ) $ ( if d208 then d439 else false )
        d1012 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1012 = if if false then d329 else true then if d516 then false else d780 else if d861 then d277 else d31
        d1013 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1013 = ( ( Bool -> Bool ) ∋ ( ( λ x1014 -> ( ( Bool -> Bool ) ∋ ( ( λ x1015 -> d260 ) ) ) $ ( false ) ) ) ) $ ( if d477 then d822 else false )
        d1016 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1016 = ( ( Bool -> Bool ) ∋ ( ( λ x1017 -> ( ( Bool -> Bool ) ∋ ( ( λ x1018 -> d639 ) ) ) $ ( d182 ) ) ) ) $ ( if true then d707 else true )
        d1019 : ( ( Set -> Set ) ∋ ( ( λ x1021 -> ( ( Set -> Set ) ∋ ( ( λ x1022 -> Bool ) ) ) $ ( x1021 ) ) ) ) $ ( if true then Bool else Bool )
        d1019 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if d456 then true else d417 ) ) ) $ ( if true then true else true )
        d1023 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1023 = ( ( Bool -> Bool ) ∋ ( ( λ x1024 -> if d745 then d760 else d873 ) ) ) $ ( if d115 then d461 else false )
        d1025 : ( ( Set -> Set ) ∋ ( ( λ x1026 -> ( ( Set -> Set ) ∋ ( ( λ x1027 -> Bool ) ) ) $ ( x1026 ) ) ) ) $ ( if true then Bool else Bool )
        d1025 = if if d150 then d313 else d244 then if false then false else d665 else if true then false else true
        d1028 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1028 = if if d92 then d1005 else true then if d947 then d186 else d113 else if d478 then false else d1009
        d1029 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1029 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> x1030 ) ) ) $ ( true ) ) ) ) $ ( if d681 then d774 else d171 )
        d1032 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1032 = if if true then d266 else false then if d683 then d835 else false else if false then false else true
        d1033 : ( ( Set -> Set ) ∋ ( ( λ x1034 -> if true then x1034 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1033 = if if true then d163 else d304 then if true then d917 else d498 else if true then false else d165
        d1035 : ( ( Set -> Set ) ∋ ( ( λ x1036 -> if true then x1036 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1035 = if if d769 then d497 else d857 then if d335 then d553 else true else if d498 then d597 else d143
        d1037 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1037 = ( ( Bool -> Bool ) ∋ ( ( λ x1038 -> ( ( Bool -> Bool ) ∋ ( ( λ x1039 -> d970 ) ) ) $ ( x1038 ) ) ) ) $ ( if false then d140 else d516 )
        d1040 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1040 = if if d343 then d212 else true then if d798 then false else true else if true then d335 else true
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x1043 -> ( ( Set -> Set ) ∋ ( ( λ x1044 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1041 = ( ( Bool -> Bool ) ∋ ( ( λ x1042 -> if true then false else d277 ) ) ) $ ( if d853 then d713 else d319 )
        d1045 : ( ( Set -> Set ) ∋ ( ( λ x1046 -> if false then Bool else x1046 ) ) ) $ ( if false then Bool else Bool )
        d1045 = if if true then true else d51 then if d580 then false else d104 else if d97 then false else false
        d1047 : ( ( Set -> Set ) ∋ ( ( λ x1048 -> if false then x1048 else x1048 ) ) ) $ ( if true then Bool else Bool )
        d1047 = if if d564 then false else d769 then if true then d235 else false else if d308 then d53 else true
        d1049 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1049 = if if d198 then true else false then if false then d883 else true else if d1047 then false else d572
        d1050 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1050 = if if d759 then true else true then if true then d793 else true else if false then true else true
        d1051 : ( ( Set -> Set ) ∋ ( ( λ x1053 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1051 = ( ( Bool -> Bool ) ∋ ( ( λ x1052 -> if false then x1052 else true ) ) ) $ ( if d406 then d148 else true )
        d1054 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1054 = ( ( Bool -> Bool ) ∋ ( ( λ x1055 -> ( ( Bool -> Bool ) ∋ ( ( λ x1056 -> false ) ) ) $ ( d703 ) ) ) ) $ ( if d474 then true else true )
        d1057 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1057 = ( ( Bool -> Bool ) ∋ ( ( λ x1058 -> ( ( Bool -> Bool ) ∋ ( ( λ x1059 -> true ) ) ) $ ( d1033 ) ) ) ) $ ( if d473 then false else true )
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x1061 -> ( ( Set -> Set ) ∋ ( ( λ x1062 -> x1061 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1060 = if if d567 then d77 else d1041 then if true then true else false else if false then d783 else false
        d1063 : ( ( Set -> Set ) ∋ ( ( λ x1064 -> ( ( Set -> Set ) ∋ ( ( λ x1065 -> x1065 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1063 = if if d793 then d732 else d576 then if d762 then d592 else d1040 else if d952 then d1033 else true
        d1066 : ( ( Set -> Set ) ∋ ( ( λ x1067 -> ( ( Set -> Set ) ∋ ( ( λ x1068 -> x1067 ) ) ) $ ( x1067 ) ) ) ) $ ( if true then Bool else Bool )
        d1066 = if if false then true else d1009 then if d833 then false else false else if d319 then d762 else d13
        d1069 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1069 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if d180 then false else false ) ) ) $ ( if true then d53 else true )
        d1071 : ( ( Set -> Set ) ∋ ( ( λ x1074 -> ( ( Set -> Set ) ∋ ( ( λ x1075 -> Bool ) ) ) $ ( x1074 ) ) ) ) $ ( if false then Bool else Bool )
        d1071 = ( ( Bool -> Bool ) ∋ ( ( λ x1072 -> ( ( Bool -> Bool ) ∋ ( ( λ x1073 -> x1073 ) ) ) $ ( true ) ) ) ) $ ( if d116 then d678 else true )
        d1076 : ( ( Set -> Set ) ∋ ( ( λ x1077 -> ( ( Set -> Set ) ∋ ( ( λ x1078 -> x1078 ) ) ) $ ( x1077 ) ) ) ) $ ( if false then Bool else Bool )
        d1076 = if if false then d610 else d829 then if true then true else false else if d190 then false else true
        d1079 : ( ( Set -> Set ) ∋ ( ( λ x1080 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1079 = if if d406 then d516 else d607 then if true then d150 else true else if d976 then false else d720
        d1081 : ( ( Set -> Set ) ∋ ( ( λ x1084 -> if true then x1084 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1081 = ( ( Bool -> Bool ) ∋ ( ( λ x1082 -> ( ( Bool -> Bool ) ∋ ( ( λ x1083 -> true ) ) ) $ ( true ) ) ) ) $ ( if d592 then d511 else d196 )
        d1085 : ( ( Set -> Set ) ∋ ( ( λ x1086 -> if false then Bool else x1086 ) ) ) $ ( if false then Bool else Bool )
        d1085 = if if d689 then false else d681 then if false then d597 else d810 else if d678 then d1005 else d1012
        d1087 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1087 = ( ( Bool -> Bool ) ∋ ( ( λ x1088 -> ( ( Bool -> Bool ) ∋ ( ( λ x1089 -> false ) ) ) $ ( d738 ) ) ) ) $ ( if d631 then true else d393 )
        d1090 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1090 = if if d994 then d745 else d433 then if d153 then d939 else false else if false then false else d610
        d1091 : ( ( Set -> Set ) ∋ ( ( λ x1092 -> ( ( Set -> Set ) ∋ ( ( λ x1093 -> x1093 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1091 = if if d760 then true else false then if d805 then d144 else true else if d1029 then true else d389
        d1094 : ( ( Set -> Set ) ∋ ( ( λ x1096 -> ( ( Set -> Set ) ∋ ( ( λ x1097 -> x1097 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1094 = ( ( Bool -> Bool ) ∋ ( ( λ x1095 -> if d970 then d864 else false ) ) ) $ ( if false then d1019 else d63 )
        d1098 : ( ( Set -> Set ) ∋ ( ( λ x1099 -> if false then x1099 else x1099 ) ) ) $ ( if true then Bool else Bool )
        d1098 = if if d198 then d1063 else false then if false then false else true else if true then true else d801
        d1100 : ( ( Set -> Set ) ∋ ( ( λ x1101 -> ( ( Set -> Set ) ∋ ( ( λ x1102 -> Bool ) ) ) $ ( x1101 ) ) ) ) $ ( if true then Bool else Bool )
        d1100 = if if d332 then false else true then if false then d576 else false else if true then d126 else true
        d1103 : ( ( Set -> Set ) ∋ ( ( λ x1106 -> ( ( Set -> Set ) ∋ ( ( λ x1107 -> x1106 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1103 = ( ( Bool -> Bool ) ∋ ( ( λ x1104 -> ( ( Bool -> Bool ) ∋ ( ( λ x1105 -> false ) ) ) $ ( d388 ) ) ) ) $ ( if d429 then true else false )
        d1108 : ( ( Set -> Set ) ∋ ( ( λ x1109 -> ( ( Set -> Set ) ∋ ( ( λ x1110 -> Bool ) ) ) $ ( x1109 ) ) ) ) $ ( if false then Bool else Bool )
        d1108 = if if false then false else d445 then if true then d687 else false else if d1050 then d952 else d53
        d1111 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1111 = ( ( Bool -> Bool ) ∋ ( ( λ x1112 -> if true then false else false ) ) ) $ ( if d185 then d129 else d531 )
        d1113 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1113 = if if true then false else d584 then if d162 then d459 else d108 else if false then false else true
        d1114 : ( ( Set -> Set ) ∋ ( ( λ x1117 -> ( ( Set -> Set ) ∋ ( ( λ x1118 -> Bool ) ) ) $ ( x1117 ) ) ) ) $ ( if true then Bool else Bool )
        d1114 = ( ( Bool -> Bool ) ∋ ( ( λ x1115 -> ( ( Bool -> Bool ) ∋ ( ( λ x1116 -> x1115 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d1119 : ( ( Set -> Set ) ∋ ( ( λ x1122 -> ( ( Set -> Set ) ∋ ( ( λ x1123 -> x1123 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1119 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1121 -> x1120 ) ) ) $ ( d738 ) ) ) ) $ ( if d874 then d48 else d239 )
        d1124 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1124 = if if d1100 then d1076 else d788 then if d323 then d364 else false else if false then true else false
        d1125 : ( ( Set -> Set ) ∋ ( ( λ x1126 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1125 = if if false then d1032 else d906 then if false then d895 else true else if d835 then d388 else false
        d1127 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1127 = if if true then d436 else d135 then if true then false else true else if d788 then true else true
        d1128 : ( ( Set -> Set ) ∋ ( ( λ x1129 -> if false then Bool else x1129 ) ) ) $ ( if true then Bool else Bool )
        d1128 = if if true then false else true then if d77 then false else true else if d835 then true else d805
        d1130 : ( ( Set -> Set ) ∋ ( ( λ x1131 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1130 = if if false then d75 else d112 then if false then false else false else if false then false else true
        d1132 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1132 = ( ( Bool -> Bool ) ∋ ( ( λ x1133 -> ( ( Bool -> Bool ) ∋ ( ( λ x1134 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d1135 : ( ( Set -> Set ) ∋ ( ( λ x1136 -> ( ( Set -> Set ) ∋ ( ( λ x1137 -> x1137 ) ) ) $ ( x1136 ) ) ) ) $ ( if true then Bool else Bool )
        d1135 = if if d907 then d647 else d654 then if d222 then d721 else false else if false then true else d520