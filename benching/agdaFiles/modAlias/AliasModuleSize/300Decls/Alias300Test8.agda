module Alias300Test8  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else x4 ) ) ) $ ( Bool ) )  where
        d5 : if true then if true then Bool else Bool else if true then Bool else Bool
        d5 = if if true then false else p1 then if p1 then false else p1 else if p1 then p1 else p1
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> Bool ) ) ) $ ( x8 ) ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if true then d5 else d5 ) ) ) $ ( if d5 then d5 else p3 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( x12 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if true then p3 else p3 ) ) ) $ ( if false then d5 else p3 )
        d14 : if false then if false then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> x15 ) ) ) $ ( p3 ) ) ) ) $ ( if true then d5 else d10 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then x18 else Bool ) ) ) $ ( if false then Bool else Bool )
        d17 = if if p1 then p3 else true then if d6 then p3 else d5 else if false then d6 else true
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = if if d6 then true else p3 then if p1 then true else p1 else if d6 then true else p3
        d20 : if false then if true then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if p3 then d10 else false ) ) ) $ ( if d19 then p3 else true )
        d22 : if false then if true then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if true then p3 else d6 ) ) ) $ ( if p3 then p3 else d19 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then x25 else Bool ) ) ) $ ( if true then Bool else Bool )
        d24 = if if p3 then p1 else p1 then if d14 then true else true else if false then true else false
        d26 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then x28 else Bool ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if x27 then true else x27 ) ) ) $ ( if p3 then d24 else p1 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if true then x32 else Bool ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> d5 ) ) ) $ ( false ) ) ) ) $ ( if p1 then true else p1 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> x34 ) ) ) $ ( x34 ) ) ) ) $ ( if true then Bool else Bool )
        d33 = if if d20 then d14 else p1 then if p1 then false else d22 else if d5 then d24 else d6
        d36 : if true then if false then Bool else Bool else if true then Bool else Bool
        d36 = if if p1 then d33 else d22 then if p1 then false else p3 else if p1 then d6 else p3
        d37 : if true then if false then Bool else Bool else if true then Bool else Bool
        d37 = if if d10 then d14 else false then if p1 then true else false else if d26 then d14 else false
        d38 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> x42 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> false ) ) ) $ ( false ) ) ) ) $ ( if d5 then d24 else p1 )
        d43 : if false then if false then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if d24 then d33 else false ) ) ) $ ( if p3 then d24 else p3 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if p1 then x46 else p3 ) ) ) $ ( if d17 then p1 else d29 )
        d49 : if false then if true then Bool else Bool else if false then Bool else Bool
        d49 = if if d5 then true else d19 then if d10 then d36 else false else if p1 then d24 else p3
        d50 : if false then if false then Bool else Bool else if false then Bool else Bool
        d50 = if if false then p3 else d20 then if d19 then d49 else d24 else if p3 then d6 else false
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x52 ) ) ) $ ( x52 ) ) ) ) $ ( if false then Bool else Bool )
        d51 = if if false then p1 else d20 then if true then d10 else d33 else if true then false else false
        d54 : if true then if true then Bool else Bool else if true then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if true then d6 else d24 ) ) ) $ ( if false then d43 else d51 )
        d56 : if false then if true then Bool else Bool else if false then Bool else Bool
        d56 = if if p1 then d36 else d45 then if p1 then d37 else p1 else if p3 then false else p3
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d57 = if if d56 then p1 else d26 then if p1 then p1 else d29 else if p3 then d56 else d19
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then Bool else x62 ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if p1 then p3 else true ) ) ) $ ( if d20 then d24 else d5 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x65 ) ) ) $ ( x64 ) ) ) ) $ ( if false then Bool else Bool )
        d63 = if if d10 then p3 else p3 then if d36 then false else p1 else if p3 then false else d17
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d66 = if if p3 then p3 else false then if d20 then p1 else d26 else if false then d33 else d6
        d69 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> true ) ) ) $ ( d14 ) ) ) ) $ ( if p1 then d56 else d51 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> Bool ) ) ) $ ( x76 ) ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> d57 ) ) ) $ ( d22 ) ) ) ) $ ( if p1 then d56 else true )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d78 = if if false then d19 else d33 then if p3 then false else p1 else if p1 then true else false
        d81 : if false then if false then Bool else Bool else if true then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> d45 ) ) ) $ ( d24 ) ) ) ) $ ( if d73 then true else true )
        d84 : if false then if false then Bool else Bool else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> false ) ) ) $ ( d49 ) ) ) ) $ ( if false then true else p3 )
        d87 : if false then if true then Bool else Bool else if true then Bool else Bool
        d87 = if if true then p1 else p1 then if true then d78 else false else if d81 then true else d29
        d88 : if true then if true then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> p1 ) ) ) $ ( x89 ) ) ) ) $ ( if d26 then p1 else false )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else x92 ) ) ) $ ( if false then Bool else Bool )
        d91 = if if p1 then d60 else p3 then if p1 then p1 else false else if d51 then d66 else false
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then x94 else Bool ) ) ) $ ( if true then Bool else Bool )
        d93 = if if p3 then true else true then if false then p3 else p3 else if d10 then d22 else p3
        d95 : if true then if false then Bool else Bool else if false then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if p3 then d66 else x96 ) ) ) $ ( if p1 then p3 else d38 )
        d97 : if false then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then false else p3 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then Bool else x101 ) ) ) $ ( if true then Bool else Bool )
        d100 = if if d22 then false else p3 then if p1 then d56 else false else if p3 then true else d36
        d102 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else Bool ) ) ) $ ( if true then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then p3 else d38 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> x108 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if true then x107 else d78 ) ) ) $ ( if true then d66 else true )
        d110 : if false then if true then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d43 ) ) ) $ ( p1 ) ) ) ) $ ( if false then true else d37 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if true then x114 else x114 ) ) ) $ ( if false then Bool else Bool )
        d113 = if if d10 then true else true then if p1 then p1 else p3 else if true then d106 else true
        d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> Bool ) ) ) $ ( x116 ) ) ) ) $ ( if true then Bool else Bool )
        d115 = if if p1 then d10 else d36 then if true then d106 else p1 else if d5 then p3 else d110
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( x119 ) ) ) ) $ ( if true then Bool else Bool )
        d118 = if if d22 then d17 else d17 then if d45 then p3 else true else if d43 then true else p1
        d121 : if false then if false then Bool else Bool else if false then Bool else Bool
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> d22 ) ) ) $ ( true ) ) ) ) $ ( if d106 then p1 else p1 )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then Bool else x125 ) ) ) $ ( if true then Bool else Bool )
        d124 = if if d69 then true else false then if p1 then false else p3 else if d63 then p1 else d115
        d126 : if false then if false then Bool else Bool else if false then Bool else Bool
        d126 = if if p1 then true else true then if p1 then d45 else true else if d36 then p1 else false
        d127 : if true then if false then Bool else Bool else if true then Bool else Bool
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if d51 then d19 else d51 ) ) ) $ ( if d57 then d100 else false )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if false then x132 else Bool ) ) ) $ ( if true then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> d20 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else p3 )
        d133 : if true then if false then Bool else Bool else if false then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> p1 ) ) ) $ ( x134 ) ) ) ) $ ( if true then p1 else d22 )
        d136 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> if p1 then p3 else false ) ) ) $ ( if d106 then false else false )
        d140 : if false then if true then Bool else Bool else if false then Bool else Bool
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> if x141 then true else d43 ) ) ) $ ( if d118 then d121 else true )
        d142 : if true then if false then Bool else Bool else if false then Bool else Bool
        d142 = if if d93 then d54 else p1 then if d54 then d17 else true else if d84 then p1 else p3
        d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> x145 ) ) ) $ ( x144 ) ) ) ) $ ( if true then Bool else Bool )
        d143 = if if d10 then true else false then if d37 then p1 else true else if d110 then true else false
        d146 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> if p3 then d110 else d56 ) ) ) $ ( if d129 then d26 else true )
        d149 : if false then if false then Bool else Bool else if false then Bool else Bool
        d149 = if if d140 then d124 else true then if d37 then p1 else p3 else if p3 then p1 else d124
        d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> x151 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d150 = if if p3 then p3 else p1 then if p1 then d22 else d43 else if d146 then d87 else d81
        d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d153 = if if d146 then p3 else d142 then if false then p3 else d127 else if d29 then p3 else true
        d155 : ( ( Set -> Set ) ∋ ( ( λ x156 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d155 = if if false then false else false then if d115 then d20 else d143 else if p3 then d124 else p1
        d157 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d157 = ( ( Bool -> Bool ) ∋ ( ( λ x158 -> ( ( Bool -> Bool ) ∋ ( ( λ x159 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if false then false else p3 )
        d161 : if true then if true then Bool else Bool else if true then Bool else Bool
        d161 = if if p1 then p1 else p3 then if true then false else d124 else if p3 then true else p1
        d162 : ( ( Set -> Set ) ∋ ( ( λ x165 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> ( ( Bool -> Bool ) ∋ ( ( λ x164 -> x164 ) ) ) $ ( false ) ) ) ) $ ( if p3 then true else d5 )
        d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if true then x167 else Bool ) ) ) $ ( if true then Bool else Bool )
        d166 = if if d17 then true else d146 then if p1 then false else true else if p1 then false else d10
        d168 : if false then if true then Bool else Bool else if true then Bool else Bool
        d168 = if if p3 then false else p3 then if d51 then true else d43 else if false then p1 else d73
        d169 : if true then if true then Bool else Bool else if true then Bool else Bool
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x171 -> x171 ) ) ) $ ( d129 ) ) ) ) $ ( if d54 then false else true )
        d172 : if false then if false then Bool else Bool else if true then Bool else Bool
        d172 = if if p1 then p1 else p3 then if p3 then d129 else p1 else if p1 then p3 else false
        d173 : ( ( Set -> Set ) ∋ ( ( λ x175 -> if false then x175 else x175 ) ) ) $ ( if false then Bool else Bool )
        d173 = ( ( Bool -> Bool ) ∋ ( ( λ x174 -> if d169 then p1 else p3 ) ) ) $ ( if false then p3 else d33 )
        d176 : if true then if true then Bool else Bool else if false then Bool else Bool
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( Bool -> Bool ) ∋ ( ( λ x178 -> d50 ) ) ) $ ( d155 ) ) ) ) $ ( if d115 then false else p1 )
        d179 : if false then if true then Bool else Bool else if false then Bool else Bool
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if d29 then d88 else false ) ) ) $ ( if p3 then true else p1 )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x182 -> if true then x182 else x182 ) ) ) $ ( if false then Bool else Bool )
        d181 = if if p3 then p3 else false then if d14 then p3 else d146 else if p3 then p1 else d78
        d183 : if false then if false then Bool else Bool else if false then Bool else Bool
        d183 = if if true then true else d51 then if p3 then true else p1 else if d157 then d87 else d50
        d184 : ( ( Set -> Set ) ∋ ( ( λ x186 -> if false then x186 else x186 ) ) ) $ ( if false then Bool else Bool )
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> if x185 then p1 else false ) ) ) $ ( if true then false else d153 )
        d187 : if true then if false then Bool else Bool else if true then Bool else Bool
        d187 = if if p3 then p1 else d43 then if true then p1 else d133 else if true then d181 else p3
        d188 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> x190 ) ) ) $ ( d153 ) ) ) ) $ ( if false then true else false )
        d192 : if true then if false then Bool else Bool else if false then Bool else Bool
        d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> if true then p3 else p1 ) ) ) $ ( if p1 then false else false )
        d194 : if false then if false then Bool else Bool else if true then Bool else Bool
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> ( ( Bool -> Bool ) ∋ ( ( λ x196 -> d51 ) ) ) $ ( x195 ) ) ) ) $ ( if d37 then d97 else d149 )
        d197 : ( ( Set -> Set ) ∋ ( ( λ x198 -> ( ( Set -> Set ) ∋ ( ( λ x199 -> Bool ) ) ) $ ( x198 ) ) ) ) $ ( if true then Bool else Bool )
        d197 = if if p1 then false else d78 then if d20 then d157 else p1 else if true then d161 else p1
        d200 : ( ( Set -> Set ) ∋ ( ( λ x203 -> if true then x203 else x203 ) ) ) $ ( if true then Bool else Bool )
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x201 -> ( ( Bool -> Bool ) ∋ ( ( λ x202 -> d22 ) ) ) $ ( x201 ) ) ) ) $ ( if true then d43 else p3 )
        d204 : if false then if true then Bool else Bool else if true then Bool else Bool
        d204 = ( ( Bool -> Bool ) ∋ ( ( λ x205 -> if d166 then true else p3 ) ) ) $ ( if true then d38 else d45 )
        d206 : ( ( Set -> Set ) ∋ ( ( λ x207 -> if true then x207 else x207 ) ) ) $ ( if false then Bool else Bool )
        d206 = if if d183 then p1 else p1 then if d97 then p3 else d187 else if p3 then d118 else d50
        d208 : if false then if true then Bool else Bool else if true then Bool else Bool
        d208 = ( ( Bool -> Bool ) ∋ ( ( λ x209 -> ( ( Bool -> Bool ) ∋ ( ( λ x210 -> d118 ) ) ) $ ( true ) ) ) ) $ ( if d45 then true else p1 )
        d211 : ( ( Set -> Set ) ∋ ( ( λ x212 -> ( ( Set -> Set ) ∋ ( ( λ x213 -> x212 ) ) ) $ ( x212 ) ) ) ) $ ( if false then Bool else Bool )
        d211 = if if p1 then true else true then if false then d73 else true else if false then d149 else d102
        d214 : if true then if false then Bool else Bool else if true then Bool else Bool
        d214 = ( ( Bool -> Bool ) ∋ ( ( λ x215 -> if d192 then true else d168 ) ) ) $ ( if true then p3 else p1 )
        d216 : if true then if true then Bool else Bool else if true then Bool else Bool
        d216 = if if true then false else p3 then if d51 then p1 else p1 else if d153 then d81 else true
        d217 : if false then if true then Bool else Bool else if true then Bool else Bool
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x218 -> ( ( Bool -> Bool ) ∋ ( ( λ x219 -> d56 ) ) ) $ ( d206 ) ) ) ) $ ( if d6 then false else false )
        d220 : if false then if false then Bool else Bool else if false then Bool else Bool
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x221 -> if d206 then false else d136 ) ) ) $ ( if d102 then true else p1 )
        d222 : ( ( Set -> Set ) ∋ ( ( λ x225 -> if false then Bool else x225 ) ) ) $ ( if false then Bool else Bool )
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x223 -> ( ( Bool -> Bool ) ∋ ( ( λ x224 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then false else d37 )
        d226 : ( ( Set -> Set ) ∋ ( ( λ x227 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d226 = if if true then p3 else false then if p1 then p3 else true else if true then p3 else p1
        d228 : if true then if true then Bool else Bool else if false then Bool else Bool
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x229 -> if p1 then p3 else x229 ) ) ) $ ( if d17 then p1 else d169 )
        d230 : if false then if false then Bool else Bool else if true then Bool else Bool
        d230 = if if d124 then d124 else true then if p3 then false else true else if d149 then p1 else p3
        d231 : ( ( Set -> Set ) ∋ ( ( λ x233 -> ( ( Set -> Set ) ∋ ( ( λ x234 -> x234 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x232 -> if x232 then p1 else x232 ) ) ) $ ( if p1 then p1 else d66 )
        d235 : if false then if false then Bool else Bool else if true then Bool else Bool
        d235 = if if p3 then d172 else p1 then if d176 then false else p1 else if false then d184 else d168
        d236 : ( ( Set -> Set ) ∋ ( ( λ x237 -> ( ( Set -> Set ) ∋ ( ( λ x238 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d236 = if if p3 then false else d127 then if p3 then d142 else p1 else if d200 then true else d222
        d239 : ( ( Set -> Set ) ∋ ( ( λ x240 -> ( ( Set -> Set ) ∋ ( ( λ x241 -> x241 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d239 = if if d22 then true else false then if d127 then d43 else false else if false then false else true
        d242 : ( ( Set -> Set ) ∋ ( ( λ x243 -> if false then Bool else x243 ) ) ) $ ( if true then Bool else Bool )
        d242 = if if d102 then d192 else true then if true then d217 else false else if d45 then false else false
        d244 : ( ( Set -> Set ) ∋ ( ( λ x247 -> ( ( Set -> Set ) ∋ ( ( λ x248 -> x248 ) ) ) $ ( x247 ) ) ) ) $ ( if true then Bool else Bool )
        d244 = ( ( Bool -> Bool ) ∋ ( ( λ x245 -> ( ( Bool -> Bool ) ∋ ( ( λ x246 -> p1 ) ) ) $ ( x245 ) ) ) ) $ ( if p3 then p1 else p3 )
        d249 : ( ( Set -> Set ) ∋ ( ( λ x251 -> if true then Bool else x251 ) ) ) $ ( if false then Bool else Bool )
        d249 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> if p3 then p1 else d17 ) ) ) $ ( if p3 then d37 else d43 )
        d252 : ( ( Set -> Set ) ∋ ( ( λ x254 -> if false then x254 else Bool ) ) ) $ ( if true then Bool else Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x253 -> if d166 then true else true ) ) ) $ ( if true then p1 else false )
        d255 : if true then if true then Bool else Bool else if false then Bool else Bool
        d255 = ( ( Bool -> Bool ) ∋ ( ( λ x256 -> if d36 then p1 else true ) ) ) $ ( if d20 then false else p3 )
        d257 : ( ( Set -> Set ) ∋ ( ( λ x258 -> ( ( Set -> Set ) ∋ ( ( λ x259 -> x258 ) ) ) $ ( x258 ) ) ) ) $ ( if true then Bool else Bool )
        d257 = if if false then d37 else false then if false then d208 else true else if d183 then d226 else p1
        d260 : ( ( Set -> Set ) ∋ ( ( λ x263 -> ( ( Set -> Set ) ∋ ( ( λ x264 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x261 -> ( ( Bool -> Bool ) ∋ ( ( λ x262 -> d162 ) ) ) $ ( true ) ) ) ) $ ( if d106 then p3 else false )
        d265 : if true then if false then Bool else Bool else if false then Bool else Bool
        d265 = if if p3 then p1 else p1 then if false then d211 else p3 else if d183 then d244 else p1
        d266 : if false then if true then Bool else Bool else if false then Bool else Bool
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x267 -> if d197 then false else d97 ) ) ) $ ( if true then p3 else d97 )
        d268 : if false then if true then Bool else Bool else if true then Bool else Bool
        d268 = ( ( Bool -> Bool ) ∋ ( ( λ x269 -> ( ( Bool -> Bool ) ∋ ( ( λ x270 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if d49 then d228 else d244 )
        d271 : if false then if false then Bool else Bool else if true then Bool else Bool
        d271 = if if true then false else d19 then if d188 then true else d162 else if d214 then p3 else d268
        d272 : if true then if true then Bool else Bool else if true then Bool else Bool
        d272 = ( ( Bool -> Bool ) ∋ ( ( λ x273 -> ( ( Bool -> Bool ) ∋ ( ( λ x274 -> d43 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p3 else d192 )
        d275 : if false then if false then Bool else Bool else if true then Bool else Bool
        d275 = if if p1 then p1 else d216 then if true then true else d187 else if p1 then false else p1
        d276 : if false then if true then Bool else Bool else if true then Bool else Bool
        d276 = if if p3 then p1 else true then if d192 then p1 else false else if d204 then d231 else p3
        d277 : if true then if false then Bool else Bool else if true then Bool else Bool
        d277 = if if false then false else d14 then if false then d257 else p1 else if true then d181 else false
        d278 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x281 -> x280 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d278 = ( ( Bool -> Bool ) ∋ ( ( λ x279 -> if x279 then x279 else true ) ) ) $ ( if p3 then d95 else p3 )
        d282 : ( ( Set -> Set ) ∋ ( ( λ x285 -> ( ( Set -> Set ) ∋ ( ( λ x286 -> x285 ) ) ) $ ( x285 ) ) ) ) $ ( if true then Bool else Bool )
        d282 = ( ( Bool -> Bool ) ∋ ( ( λ x283 -> ( ( Bool -> Bool ) ∋ ( ( λ x284 -> false ) ) ) $ ( d161 ) ) ) ) $ ( if d17 then d56 else d153 )
        d287 : ( ( Set -> Set ) ∋ ( ( λ x289 -> if true then Bool else x289 ) ) ) $ ( if true then Bool else Bool )
        d287 = ( ( Bool -> Bool ) ∋ ( ( λ x288 -> if p3 then d150 else x288 ) ) ) $ ( if d36 then d277 else false )
        d290 : if false then if false then Bool else Bool else if false then Bool else Bool
        d290 = ( ( Bool -> Bool ) ∋ ( ( λ x291 -> ( ( Bool -> Bool ) ∋ ( ( λ x292 -> d153 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then d166 else false )
        d293 : if true then if true then Bool else Bool else if false then Bool else Bool
        d293 = if if false then d95 else p3 then if p1 then p1 else p1 else if p3 then true else p1
        d294 : if false then if true then Bool else Bool else if true then Bool else Bool
        d294 = ( ( Bool -> Bool ) ∋ ( ( λ x295 -> ( ( Bool -> Bool ) ∋ ( ( λ x296 -> d239 ) ) ) $ ( x295 ) ) ) ) $ ( if d84 then p3 else false )
        d297 : ( ( Set -> Set ) ∋ ( ( λ x298 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d297 = if if p3 then p1 else d214 then if false then true else p1 else if d266 then d33 else d214
        d299 : ( ( Set -> Set ) ∋ ( ( λ x301 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if true then p1 else false ) ) ) $ ( if p1 then false else d268 )
        d302 : if false then if false then Bool else Bool else if false then Bool else Bool
        d302 = if if p1 then p3 else d24 then if true then d6 else p1 else if false then false else false
        d303 : ( ( Set -> Set ) ∋ ( ( λ x306 -> if false then Bool else x306 ) ) ) $ ( if false then Bool else Bool )
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x304 -> ( ( Bool -> Bool ) ∋ ( ( λ x305 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if p1 then p3 else d183 )
        d307 : ( ( Set -> Set ) ∋ ( ( λ x309 -> if true then x309 else x309 ) ) ) $ ( if true then Bool else Bool )
        d307 = ( ( Bool -> Bool ) ∋ ( ( λ x308 -> if false then d43 else false ) ) ) $ ( if d49 then d95 else p3 )
        d310 : if true then if false then Bool else Bool else if false then Bool else Bool
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x311 -> ( ( Bool -> Bool ) ∋ ( ( λ x312 -> d19 ) ) ) $ ( x311 ) ) ) ) $ ( if false then false else d63 )
        d313 : ( ( Set -> Set ) ∋ ( ( λ x314 -> if false then x314 else x314 ) ) ) $ ( if true then Bool else Bool )
        d313 = if if p3 then p3 else p1 then if d10 then false else d115 else if p3 then d33 else d197
        d315 : ( ( Set -> Set ) ∋ ( ( λ x317 -> if false then x317 else x317 ) ) ) $ ( if true then Bool else Bool )
        d315 = ( ( Bool -> Bool ) ∋ ( ( λ x316 -> if x316 then true else false ) ) ) $ ( if false then d266 else p1 )
        d318 : if true then if false then Bool else Bool else if false then Bool else Bool
        d318 = ( ( Bool -> Bool ) ∋ ( ( λ x319 -> ( ( Bool -> Bool ) ∋ ( ( λ x320 -> true ) ) ) $ ( d140 ) ) ) ) $ ( if d6 then true else d231 )
        d321 : if true then if false then Bool else Bool else if true then Bool else Bool
        d321 = if if false then p3 else true then if d54 then p3 else false else if p1 then d95 else d277
        d322 : if true then if false then Bool else Bool else if false then Bool else Bool
        d322 = if if d150 then d265 else p3 then if d249 then p3 else d6 else if p1 then p3 else p3
        d323 : if true then if false then Bool else Bool else if false then Bool else Bool
        d323 = ( ( Bool -> Bool ) ∋ ( ( λ x324 -> if true then d140 else p3 ) ) ) $ ( if p3 then true else d277 )
        d325 : if true then if false then Bool else Bool else if false then Bool else Bool
        d325 = if if true then p3 else p1 then if p3 then false else d10 else if p3 then d266 else p1
        d326 : if true then if false then Bool else Bool else if true then Bool else Bool
        d326 = ( ( Bool -> Bool ) ∋ ( ( λ x327 -> if true then p3 else false ) ) ) $ ( if true then true else p3 )
        d328 : if true then if true then Bool else Bool else if true then Bool else Bool
        d328 = if if true then p1 else true then if p3 then false else p1 else if p3 then p1 else p3
        d329 : ( ( Set -> Set ) ∋ ( ( λ x332 -> ( ( Set -> Set ) ∋ ( ( λ x333 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d329 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> ( ( Bool -> Bool ) ∋ ( ( λ x331 -> p1 ) ) ) $ ( d313 ) ) ) ) $ ( if true then p3 else false )
        d334 : if false then if true then Bool else Bool else if false then Bool else Bool
        d334 = if if false then p3 else p3 then if p3 then p1 else p1 else if d45 then p1 else true
        d335 : ( ( Set -> Set ) ∋ ( ( λ x337 -> if true then Bool else x337 ) ) ) $ ( if false then Bool else Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x336 -> if p3 then p3 else d60 ) ) ) $ ( if d328 then d228 else false )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x341 -> ( ( Set -> Set ) ∋ ( ( λ x342 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x339 -> ( ( Bool -> Bool ) ∋ ( ( λ x340 -> d244 ) ) ) $ ( d106 ) ) ) ) $ ( if false then p3 else p3 )
        d343 : ( ( Set -> Set ) ∋ ( ( λ x344 -> ( ( Set -> Set ) ∋ ( ( λ x345 -> x345 ) ) ) $ ( x344 ) ) ) ) $ ( if true then Bool else Bool )
        d343 = if if p1 then false else false then if d231 then p3 else d242 else if p1 then p3 else false
        d346 : ( ( Set -> Set ) ∋ ( ( λ x347 -> if true then x347 else x347 ) ) ) $ ( if true then Bool else Bool )
        d346 = if if d297 then p1 else p3 then if d43 then d133 else false else if true then true else true
        d348 : ( ( Set -> Set ) ∋ ( ( λ x351 -> ( ( Set -> Set ) ∋ ( ( λ x352 -> x351 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d348 = ( ( Bool -> Bool ) ∋ ( ( λ x349 -> ( ( Bool -> Bool ) ∋ ( ( λ x350 -> d26 ) ) ) $ ( d216 ) ) ) ) $ ( if d20 then p3 else true )
        d353 : if true then if false then Bool else Bool else if true then Bool else Bool
        d353 = ( ( Bool -> Bool ) ∋ ( ( λ x354 -> if false then true else false ) ) ) $ ( if d102 then d84 else d93 )
        d355 : ( ( Set -> Set ) ∋ ( ( λ x356 -> if true then x356 else Bool ) ) ) $ ( if false then Bool else Bool )
        d355 = if if true then true else p3 then if true then d220 else false else if d63 then d168 else true
        d357 : ( ( Set -> Set ) ∋ ( ( λ x360 -> ( ( Set -> Set ) ∋ ( ( λ x361 -> x361 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x358 -> ( ( Bool -> Bool ) ∋ ( ( λ x359 -> d315 ) ) ) $ ( d37 ) ) ) ) $ ( if p1 then p1 else p1 )
        d362 : ( ( Set -> Set ) ∋ ( ( λ x364 -> ( ( Set -> Set ) ∋ ( ( λ x365 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d362 = ( ( Bool -> Bool ) ∋ ( ( λ x363 -> if d49 then d290 else x363 ) ) ) $ ( if true then true else p3 )
        d366 : ( ( Set -> Set ) ∋ ( ( λ x368 -> ( ( Set -> Set ) ∋ ( ( λ x369 -> x369 ) ) ) $ ( x368 ) ) ) ) $ ( if false then Bool else Bool )
        d366 = ( ( Bool -> Bool ) ∋ ( ( λ x367 -> if p1 then d33 else p3 ) ) ) $ ( if p1 then p3 else p1 )
        d370 : ( ( Set -> Set ) ∋ ( ( λ x371 -> ( ( Set -> Set ) ∋ ( ( λ x372 -> x371 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d370 = if if p3 then true else false then if d118 then p3 else d239 else if p1 then false else p3
        d373 : if false then if true then Bool else Bool else if true then Bool else Bool
        d373 = ( ( Bool -> Bool ) ∋ ( ( λ x374 -> if x374 then d307 else false ) ) ) $ ( if p3 then d115 else d266 )
        d375 : if false then if true then Bool else Bool else if false then Bool else Bool
        d375 = if if p3 then d194 else true then if d155 then p3 else p1 else if d294 then d187 else d115
        d376 : if true then if true then Bool else Bool else if false then Bool else Bool
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x377 -> ( ( Bool -> Bool ) ∋ ( ( λ x378 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if true then true else d338 )
        d379 : ( ( Set -> Set ) ∋ ( ( λ x380 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d379 = if if true then d335 else p1 then if false then p3 else false else if true then true else p3
        d381 : if false then if true then Bool else Bool else if false then Bool else Bool
        d381 = ( ( Bool -> Bool ) ∋ ( ( λ x382 -> if false then true else d266 ) ) ) $ ( if p1 then false else p1 )
        d383 : ( ( Set -> Set ) ∋ ( ( λ x384 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d383 = if if p1 then d157 else false then if false then false else p3 else if p3 then true else d353
        d385 : if false then if true then Bool else Bool else if false then Bool else Bool
        d385 = if if d297 then false else p3 then if p3 then false else p1 else if p1 then d381 else true
        d386 : if false then if false then Bool else Bool else if true then Bool else Bool
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x387 -> if true then d113 else true ) ) ) $ ( if d143 then d14 else p3 )
        d388 : if false then if false then Bool else Bool else if true then Bool else Bool
        d388 = if if p3 then false else d242 then if false then true else p1 else if d54 then true else p3
        d389 : if false then if true then Bool else Bool else if true then Bool else Bool
        d389 = if if d230 then false else p3 then if true then p3 else d169 else if p3 then false else d335
        d390 : if false then if false then Bool else Bool else if true then Bool else Bool
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x391 -> ( ( Bool -> Bool ) ∋ ( ( λ x392 -> false ) ) ) $ ( false ) ) ) ) $ ( if d315 then d217 else true )
        d393 : ( ( Set -> Set ) ∋ ( ( λ x394 -> if true then x394 else Bool ) ) ) $ ( if false then Bool else Bool )
        d393 = if if true then p3 else d176 then if true then true else false else if false then false else d357
        d395 : ( ( Set -> Set ) ∋ ( ( λ x397 -> ( ( Set -> Set ) ∋ ( ( λ x398 -> Bool ) ) ) $ ( x397 ) ) ) ) $ ( if false then Bool else Bool )
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x396 -> if x396 then p3 else d17 ) ) ) $ ( if p3 then d172 else d338 )
        d399 : ( ( Set -> Set ) ∋ ( ( λ x400 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d399 = if if true then p3 else p1 then if p1 then p3 else d129 else if p3 then true else d313
        d401 : ( ( Set -> Set ) ∋ ( ( λ x402 -> ( ( Set -> Set ) ∋ ( ( λ x403 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d401 = if if true then false else d217 then if d69 then p3 else false else if p1 then d93 else true
        d404 : ( ( Set -> Set ) ∋ ( ( λ x405 -> if true then Bool else x405 ) ) ) $ ( if true then Bool else Bool )
        d404 = if if d346 then false else d100 then if p1 then p3 else true else if true then false else d183
        d406 : if true then if false then Bool else Bool else if true then Bool else Bool
        d406 = if if true then p3 else false then if p1 then true else d140 else if p3 then d168 else d136
        d407 : if true then if true then Bool else Bool else if false then Bool else Bool
        d407 = ( ( Bool -> Bool ) ∋ ( ( λ x408 -> ( ( Bool -> Bool ) ∋ ( ( λ x409 -> x409 ) ) ) $ ( true ) ) ) ) $ ( if p3 then true else true )
        d410 : if true then if false then Bool else Bool else if true then Bool else Bool
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x411 -> if x411 then p1 else d395 ) ) ) $ ( if p1 then d335 else true )
        d412 : if true then if true then Bool else Bool else if false then Bool else Bool
        d412 = if if true then false else p3 then if p1 then false else false else if p1 then d287 else false
        d413 : if false then if true then Bool else Bool else if true then Bool else Bool
        d413 = if if true then false else p3 then if p1 then true else p1 else if p1 then true else p1
        d414 : if false then if true then Bool else Bool else if true then Bool else Bool
        d414 = if if d63 then d401 else false then if true then p3 else d303 else if d318 then p1 else p1
        d415 : if false then if true then Bool else Bool else if false then Bool else Bool
        d415 = ( ( Bool -> Bool ) ∋ ( ( λ x416 -> if true then true else true ) ) ) $ ( if false then d242 else false )
        d417 : ( ( Set -> Set ) ∋ ( ( λ x420 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x418 -> ( ( Bool -> Bool ) ∋ ( ( λ x419 -> d260 ) ) ) $ ( true ) ) ) ) $ ( if true then d183 else false )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x423 -> if true then Bool else x423 ) ) ) $ ( if false then Bool else Bool )
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x422 -> if d357 then d136 else false ) ) ) $ ( if d334 then false else p1 )
        d424 : if true then if true then Bool else Bool else if false then Bool else Bool
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x425 -> if d244 then d17 else p3 ) ) ) $ ( if false then d226 else p3 )
        d426 : ( ( Set -> Set ) ∋ ( ( λ x427 -> ( ( Set -> Set ) ∋ ( ( λ x428 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d426 = if if p1 then p3 else false then if p1 then p3 else d56 else if d268 then p1 else d424
        d429 : if true then if false then Bool else Bool else if true then Bool else Bool
        d429 = if if d206 then true else d272 then if d326 then d386 else false else if p3 then d106 else false
        d430 : ( ( Set -> Set ) ∋ ( ( λ x433 -> ( ( Set -> Set ) ∋ ( ( λ x434 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d430 = ( ( Bool -> Bool ) ∋ ( ( λ x431 -> ( ( Bool -> Bool ) ∋ ( ( λ x432 -> x431 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d29 else p3 )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x437 -> if true then x437 else x437 ) ) ) $ ( if true then Bool else Bool )
        d435 = ( ( Bool -> Bool ) ∋ ( ( λ x436 -> if true then false else true ) ) ) $ ( if p3 then false else d307 )
        d438 : ( ( Set -> Set ) ∋ ( ( λ x439 -> ( ( Set -> Set ) ∋ ( ( λ x440 -> x439 ) ) ) $ ( x439 ) ) ) ) $ ( if true then Bool else Bool )
        d438 = if if p1 then d257 else true then if false then p1 else d121 else if true then p1 else false
        d441 : ( ( Set -> Set ) ∋ ( ( λ x442 -> ( ( Set -> Set ) ∋ ( ( λ x443 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d441 = if if p3 then d226 else d73 then if true then d100 else d50 else if d362 then false else false
        d444 : if false then if true then Bool else Bool else if true then Bool else Bool
        d444 = ( ( Bool -> Bool ) ∋ ( ( λ x445 -> ( ( Bool -> Bool ) ∋ ( ( λ x446 -> x446 ) ) ) $ ( x445 ) ) ) ) $ ( if p3 then true else p3 )
        d447 : ( ( Set -> Set ) ∋ ( ( λ x449 -> if true then x449 else Bool ) ) ) $ ( if false then Bool else Bool )
        d447 = ( ( Bool -> Bool ) ∋ ( ( λ x448 -> if false then true else false ) ) ) $ ( if d328 then p3 else false )
        d450 : ( ( Set -> Set ) ∋ ( ( λ x451 -> ( ( Set -> Set ) ∋ ( ( λ x452 -> x451 ) ) ) $ ( x451 ) ) ) ) $ ( if true then Bool else Bool )
        d450 = if if d244 then d129 else false then if p3 then d417 else p1 else if d81 then d310 else p3
        d453 : if true then if true then Bool else Bool else if false then Bool else Bool
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x454 -> if p1 then p3 else true ) ) ) $ ( if false then d355 else p1 )
        d455 : ( ( Set -> Set ) ∋ ( ( λ x456 -> ( ( Set -> Set ) ∋ ( ( λ x457 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d455 = if if d328 then p1 else d142 then if d126 then p1 else d302 else if d127 then p3 else p1
        d458 : if true then if false then Bool else Bool else if false then Bool else Bool
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x459 -> ( ( Bool -> Bool ) ∋ ( ( λ x460 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if d17 then false else d106 )
        d461 : if true then if true then Bool else Bool else if true then Bool else Bool
        d461 = if if d169 then true else false then if p3 then p1 else d106 else if p3 then d63 else true
        d462 : ( ( Set -> Set ) ∋ ( ( λ x465 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d462 = ( ( Bool -> Bool ) ∋ ( ( λ x463 -> ( ( Bool -> Bool ) ∋ ( ( λ x464 -> false ) ) ) $ ( x463 ) ) ) ) $ ( if p1 then true else d140 )
        d466 : if true then if true then Bool else Bool else if false then Bool else Bool
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x467 -> ( ( Bool -> Bool ) ∋ ( ( λ x468 -> d127 ) ) ) $ ( true ) ) ) ) $ ( if d172 then d266 else d226 )
        d469 : ( ( Set -> Set ) ∋ ( ( λ x470 -> if false then x470 else x470 ) ) ) $ ( if true then Bool else Bool )
        d469 = if if true then p3 else d375 then if d414 then true else d143 else if p3 then false else true
        d471 : ( ( Set -> Set ) ∋ ( ( λ x472 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d471 = if if p1 then p1 else p3 then if d338 then p1 else p1 else if p3 then p3 else false
        d473 : if false then if false then Bool else Bool else if true then Bool else Bool
        d473 = if if d282 then d276 else d395 then if true then false else p3 else if false then p1 else p1
        d474 : ( ( Set -> Set ) ∋ ( ( λ x475 -> if true then x475 else Bool ) ) ) $ ( if false then Bool else Bool )
        d474 = if if true then true else true then if d181 then p3 else false else if false then true else true
        d476 : ( ( Set -> Set ) ∋ ( ( λ x478 -> if false then Bool else x478 ) ) ) $ ( if false then Bool else Bool )
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x477 -> if false then d19 else p3 ) ) ) $ ( if d200 then d370 else true )
        d479 : if false then if false then Bool else Bool else if false then Bool else Bool
        d479 = if if d458 then d38 else p3 then if d236 then true else true else if false then true else false
        d480 : if true then if true then Bool else Bool else if false then Bool else Bool
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x481 -> ( ( Bool -> Bool ) ∋ ( ( λ x482 -> d244 ) ) ) $ ( x481 ) ) ) ) $ ( if false then true else p1 )
        d483 : ( ( Set -> Set ) ∋ ( ( λ x485 -> if false then x485 else x485 ) ) ) $ ( if false then Bool else Bool )
        d483 = ( ( Bool -> Bool ) ∋ ( ( λ x484 -> if x484 then x484 else d357 ) ) ) $ ( if false then p3 else d45 )
        d486 : if false then if false then Bool else Bool else if true then Bool else Bool
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x487 -> if false then x487 else d142 ) ) ) $ ( if p1 then p1 else d328 )
        d488 : ( ( Set -> Set ) ∋ ( ( λ x491 -> if true then x491 else x491 ) ) ) $ ( if true then Bool else Bool )
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x489 -> ( ( Bool -> Bool ) ∋ ( ( λ x490 -> d373 ) ) ) $ ( d161 ) ) ) ) $ ( if d407 then true else true )
        d492 : if false then if true then Bool else Bool else if true then Bool else Bool
        d492 = if if d476 then true else true then if p3 then p3 else false else if d462 then d37 else true
        d493 : if true then if false then Bool else Bool else if false then Bool else Bool
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x494 -> ( ( Bool -> Bool ) ∋ ( ( λ x495 -> false ) ) ) $ ( x494 ) ) ) ) $ ( if p1 then p1 else false )
        d496 : if true then if true then Bool else Bool else if false then Bool else Bool
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x497 -> ( ( Bool -> Bool ) ∋ ( ( λ x498 -> x497 ) ) ) $ ( d231 ) ) ) ) $ ( if true then p1 else true )
        d499 : if true then if true then Bool else Bool else if true then Bool else Bool
        d499 = if if false then p1 else d169 then if false then false else p3 else if d169 then p1 else p1
        d500 : ( ( Set -> Set ) ∋ ( ( λ x502 -> ( ( Set -> Set ) ∋ ( ( λ x503 -> x503 ) ) ) $ ( x502 ) ) ) ) $ ( if true then Bool else Bool )
        d500 = ( ( Bool -> Bool ) ∋ ( ( λ x501 -> if x501 then d249 else d5 ) ) ) $ ( if p1 then d157 else false )
        d504 : if false then if true then Bool else Bool else if false then Bool else Bool
        d504 = if if d328 then true else d362 then if true then true else d228 else if d153 then d444 else d401
        d505 : if false then if true then Bool else Bool else if false then Bool else Bool
        d505 = if if d49 then p3 else false then if true then p3 else d162 else if false then p3 else p3
        d506 : ( ( Set -> Set ) ∋ ( ( λ x507 -> ( ( Set -> Set ) ∋ ( ( λ x508 -> x507 ) ) ) $ ( x507 ) ) ) ) $ ( if true then Bool else Bool )
        d506 = if if d275 then p3 else d335 then if false then d129 else p3 else if true then p1 else p3
        d509 : ( ( Set -> Set ) ∋ ( ( λ x511 -> if false then Bool else x511 ) ) ) $ ( if true then Bool else Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if false then d322 else p1 ) ) ) $ ( if true then p1 else d444 )
        d512 : if true then if false then Bool else Bool else if true then Bool else Bool
        d512 = if if p3 then true else d162 then if true then p3 else false else if p3 then p1 else false
        d513 : if false then if true then Bool else Bool else if true then Bool else Bool
        d513 = if if d334 then false else false then if p1 then d455 else true else if true then true else p3
        d514 : if true then if true then Bool else Bool else if true then Bool else Bool
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x515 -> ( ( Bool -> Bool ) ∋ ( ( λ x516 -> d417 ) ) ) $ ( true ) ) ) ) $ ( if false then p1 else d194 )
        d517 : ( ( Set -> Set ) ∋ ( ( λ x519 -> ( ( Set -> Set ) ∋ ( ( λ x520 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x518 -> if false then p1 else x518 ) ) ) $ ( if false then false else d100 )
        d521 : if true then if false then Bool else Bool else if false then Bool else Bool
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x522 -> if false then true else false ) ) ) $ ( if p3 then d51 else d348 )
        d523 : ( ( Set -> Set ) ∋ ( ( λ x524 -> if false then x524 else Bool ) ) ) $ ( if true then Bool else Bool )
        d523 = if if p1 then d265 else d66 then if d323 then p3 else p1 else if p3 then p3 else p1
        d525 : ( ( Set -> Set ) ∋ ( ( λ x526 -> ( ( Set -> Set ) ∋ ( ( λ x527 -> Bool ) ) ) $ ( x526 ) ) ) ) $ ( if false then Bool else Bool )
        d525 = if if d106 then p3 else d197 then if p3 then p1 else true else if p3 then p3 else d168
        d528 : ( ( Set -> Set ) ∋ ( ( λ x530 -> if false then x530 else Bool ) ) ) $ ( if false then Bool else Bool )
        d528 = ( ( Bool -> Bool ) ∋ ( ( λ x529 -> if p1 then d216 else x529 ) ) ) $ ( if p3 then d388 else p1 )
        d531 : if false then if false then Bool else Bool else if false then Bool else Bool
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x532 -> if d214 then d512 else d228 ) ) ) $ ( if true then true else p3 )
        d533 : ( ( Set -> Set ) ∋ ( ( λ x535 -> if true then Bool else x535 ) ) ) $ ( if true then Bool else Bool )
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x534 -> if true then false else p3 ) ) ) $ ( if false then false else true )
        d536 : if true then if true then Bool else Bool else if true then Bool else Bool
        d536 = ( ( Bool -> Bool ) ∋ ( ( λ x537 -> ( ( Bool -> Bool ) ∋ ( ( λ x538 -> false ) ) ) $ ( d115 ) ) ) ) $ ( if p3 then false else d265 )
        d539 : ( ( Set -> Set ) ∋ ( ( λ x541 -> ( ( Set -> Set ) ∋ ( ( λ x542 -> x542 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d539 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> if x540 then d444 else p1 ) ) ) $ ( if d424 then p3 else true )
        d543 : if true then if false then Bool else Bool else if false then Bool else Bool
        d543 = if if true then p3 else d528 then if p3 then true else p3 else if p1 then p1 else p1
        d544 : if false then if false then Bool else Bool else if false then Bool else Bool
        d544 = if if d19 then true else p1 then if false then d113 else d406 else if p1 then d153 else false
        d545 : ( ( Set -> Set ) ∋ ( ( λ x546 -> if true then x546 else x546 ) ) ) $ ( if false then Bool else Bool )
        d545 = if if d278 then p3 else p1 then if true then p3 else p3 else if p3 then d401 else d441
        d547 : ( ( Set -> Set ) ∋ ( ( λ x549 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( x549 ) ) ) ) $ ( if false then Bool else Bool )
        d547 = ( ( Bool -> Bool ) ∋ ( ( λ x548 -> if d492 then p3 else d91 ) ) ) $ ( if d282 then d407 else p3 )
        d551 : ( ( Set -> Set ) ∋ ( ( λ x554 -> ( ( Set -> Set ) ∋ ( ( λ x555 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x552 -> ( ( Bool -> Bool ) ∋ ( ( λ x553 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if d260 then d307 else false )
        d556 : if true then if true then Bool else Bool else if true then Bool else Bool
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x557 -> if x557 then p1 else true ) ) ) $ ( if false then true else false )
        d558 : ( ( Set -> Set ) ∋ ( ( λ x559 -> ( ( Set -> Set ) ∋ ( ( λ x560 -> Bool ) ) ) $ ( x559 ) ) ) ) $ ( if false then Bool else Bool )
        d558 = if if p3 then true else true then if d450 then d521 else p3 else if false then d376 else d414
        d561 : ( ( Set -> Set ) ∋ ( ( λ x562 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d561 = if if true then d155 else true then if d226 then p3 else p3 else if p1 then d252 else false
        d563 : if true then if false then Bool else Bool else if false then Bool else Bool
        d563 = ( ( Bool -> Bool ) ∋ ( ( λ x564 -> if true then x564 else true ) ) ) $ ( if false then d558 else d17 )
        d565 : if true then if true then Bool else Bool else if true then Bool else Bool
        d565 = ( ( Bool -> Bool ) ∋ ( ( λ x566 -> if d126 then d373 else false ) ) ) $ ( if d407 then d474 else false )
        d567 : ( ( Set -> Set ) ∋ ( ( λ x569 -> if false then x569 else x569 ) ) ) $ ( if false then Bool else Bool )
        d567 = ( ( Bool -> Bool ) ∋ ( ( λ x568 -> if true then p1 else p1 ) ) ) $ ( if false then p1 else p1 )
        d570 : ( ( Set -> Set ) ∋ ( ( λ x573 -> if true then x573 else x573 ) ) ) $ ( if true then Bool else Bool )
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x571 -> ( ( Bool -> Bool ) ∋ ( ( λ x572 -> x571 ) ) ) $ ( true ) ) ) ) $ ( if p3 then p3 else d406 )
        d574 : if true then if true then Bool else Bool else if true then Bool else Bool
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x575 -> if p1 then x575 else p1 ) ) ) $ ( if false then false else p3 )
        d576 : if false then if false then Bool else Bool else if false then Bool else Bool
        d576 = if if p3 then p1 else d69 then if true then p3 else d441 else if d88 then p3 else d357
        d577 : if false then if false then Bool else Bool else if true then Bool else Bool
        d577 = if if d157 then d325 else d87 then if d348 then p3 else false else if p3 then false else p1
        d578 : if true then if true then Bool else Bool else if false then Bool else Bool
        d578 = if if p3 then d547 else p1 then if p1 then p3 else false else if d57 then p1 else false
        d579 : ( ( Set -> Set ) ∋ ( ( λ x582 -> if false then x582 else x582 ) ) ) $ ( if false then Bool else Bool )
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x581 -> p3 ) ) ) $ ( d303 ) ) ) ) $ ( if true then true else p3 )
        d583 : if true then if false then Bool else Bool else if false then Bool else Bool
        d583 = ( ( Bool -> Bool ) ∋ ( ( λ x584 -> ( ( Bool -> Bool ) ∋ ( ( λ x585 -> p1 ) ) ) $ ( d266 ) ) ) ) $ ( if false then p1 else d161 )
        d586 : ( ( Set -> Set ) ∋ ( ( λ x587 -> if true then Bool else x587 ) ) ) $ ( if false then Bool else Bool )
        d586 = if if p1 then p1 else d474 then if true then false else true else if d297 then false else true
        d588 : if true then if false then Bool else Bool else if true then Bool else Bool
        d588 = ( ( Bool -> Bool ) ∋ ( ( λ x589 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> true ) ) ) $ ( x589 ) ) ) ) $ ( if p1 then p1 else d435 )
        d591 : if true then if true then Bool else Bool else if true then Bool else Bool
        d591 = if if p1 then p1 else true then if d588 then p1 else p3 else if d313 then p3 else d214
        d592 : ( ( Set -> Set ) ∋ ( ( λ x593 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d592 = if if false then p1 else p1 then if p3 then p3 else true else if d504 then true else false
        d594 : ( ( Set -> Set ) ∋ ( ( λ x595 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d594 = if if p1 then p1 else p3 then if p1 then p3 else p1 else if d499 then true else p3
        d596 : if false then if false then Bool else Bool else if true then Bool else Bool
        d596 = ( ( Bool -> Bool ) ∋ ( ( λ x597 -> if x597 then d206 else false ) ) ) $ ( if d386 then false else d424 )
        d598 : ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x601 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d598 = ( ( Bool -> Bool ) ∋ ( ( λ x599 -> if true then d417 else x599 ) ) ) $ ( if p3 then d407 else d533 )
        d602 : ( ( Set -> Set ) ∋ ( ( λ x605 -> if true then x605 else Bool ) ) ) $ ( if true then Bool else Bool )
        d602 = ( ( Bool -> Bool ) ∋ ( ( λ x603 -> ( ( Bool -> Bool ) ∋ ( ( λ x604 -> false ) ) ) $ ( false ) ) ) ) $ ( if d438 then d379 else p1 )
        d606 : if true then if false then Bool else Bool else if true then Bool else Bool
        d606 = ( ( Bool -> Bool ) ∋ ( ( λ x607 -> ( ( Bool -> Bool ) ∋ ( ( λ x608 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then p3 else d574 )
        d609 : ( ( Set -> Set ) ∋ ( ( λ x612 -> ( ( Set -> Set ) ∋ ( ( λ x613 -> x612 ) ) ) $ ( x612 ) ) ) ) $ ( if true then Bool else Bool )
        d609 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> ( ( Bool -> Bool ) ∋ ( ( λ x611 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if p1 then false else d220 )
        d614 : ( ( Set -> Set ) ∋ ( ( λ x615 -> if false then x615 else Bool ) ) ) $ ( if false then Bool else Bool )
        d614 = if if p1 then d29 else d294 then if p1 then d383 else d598 else if p1 then d461 else p3
        d616 : ( ( Set -> Set ) ∋ ( ( λ x619 -> ( ( Set -> Set ) ∋ ( ( λ x620 -> Bool ) ) ) $ ( x619 ) ) ) ) $ ( if true then Bool else Bool )
        d616 = ( ( Bool -> Bool ) ∋ ( ( λ x617 -> ( ( Bool -> Bool ) ∋ ( ( λ x618 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if false then p1 else false )
        d621 : if true then if false then Bool else Bool else if false then Bool else Bool
        d621 = if if true then p3 else p3 then if p3 then p3 else d426 else if p1 then p1 else false
        d622 : ( ( Set -> Set ) ∋ ( ( λ x623 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d622 = if if p1 then false else false then if p1 then p1 else p3 else if false then d461 else d602
        d624 : ( ( Set -> Set ) ∋ ( ( λ x625 -> if false then x625 else Bool ) ) ) $ ( if true then Bool else Bool )
        d624 = if if p3 then d523 else false then if p1 then true else d315 else if p1 then true else p3
        d626 : if false then if false then Bool else Bool else if false then Bool else Bool
        d626 = if if true then p3 else true then if d592 then d115 else p3 else if d181 then d307 else p1
        d627 : ( ( Set -> Set ) ∋ ( ( λ x628 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d627 = if if p1 then d168 else p3 then if d143 then d24 else false else if true then p3 else p3
        d629 : ( ( Set -> Set ) ∋ ( ( λ x630 -> if false then Bool else x630 ) ) ) $ ( if false then Bool else Bool )
        d629 = if if d10 then p3 else p1 then if d505 then true else p3 else if false then p3 else false
        d631 : ( ( Set -> Set ) ∋ ( ( λ x633 -> ( ( Set -> Set ) ∋ ( ( λ x634 -> Bool ) ) ) $ ( x633 ) ) ) ) $ ( if false then Bool else Bool )
        d631 = ( ( Bool -> Bool ) ∋ ( ( λ x632 -> if d401 then p3 else d197 ) ) ) $ ( if false then d606 else d204 )
        d635 : ( ( Set -> Set ) ∋ ( ( λ x637 -> ( ( Set -> Set ) ∋ ( ( λ x638 -> x637 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d635 = ( ( Bool -> Bool ) ∋ ( ( λ x636 -> if p1 then false else d395 ) ) ) $ ( if false then d124 else true )
        d639 : if false then if false then Bool else Bool else if false then Bool else Bool
        d639 = if if false then p1 else true then if d594 then p1 else true else if false then false else false
        d640 : if false then if false then Bool else Bool else if true then Bool else Bool
        d640 = ( ( Bool -> Bool ) ∋ ( ( λ x641 -> ( ( Bool -> Bool ) ∋ ( ( λ x642 -> d255 ) ) ) $ ( true ) ) ) ) $ ( if p3 then true else p1 )
        d643 : ( ( Set -> Set ) ∋ ( ( λ x646 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d643 = ( ( Bool -> Bool ) ∋ ( ( λ x644 -> ( ( Bool -> Bool ) ∋ ( ( λ x645 -> false ) ) ) $ ( d6 ) ) ) ) $ ( if d514 then d45 else p3 )
        d647 : if true then if true then Bool else Bool else if false then Bool else Bool
        d647 = if if d57 then true else p3 then if d84 then true else d222 else if true then true else true
        d648 : if false then if true then Bool else Bool else if true then Bool else Bool
        d648 = if if false then d194 else true then if p3 then p3 else true else if true then d570 else d179
        d649 : if true then if true then Bool else Bool else if true then Bool else Bool
        d649 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> ( ( Bool -> Bool ) ∋ ( ( λ x651 -> true ) ) ) $ ( x650 ) ) ) ) $ ( if d509 then p1 else d268 )
        d652 : ( ( Set -> Set ) ∋ ( ( λ x653 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d652 = if if p1 then true else false then if true then p1 else false else if false then true else p1
        d654 : ( ( Set -> Set ) ∋ ( ( λ x657 -> if true then x657 else x657 ) ) ) $ ( if true then Bool else Bool )
        d654 = ( ( Bool -> Bool ) ∋ ( ( λ x655 -> ( ( Bool -> Bool ) ∋ ( ( λ x656 -> x655 ) ) ) $ ( d415 ) ) ) ) $ ( if true then d602 else d493 )
        d658 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then x660 else Bool ) ) ) $ ( if false then Bool else Bool )
        d658 = ( ( Bool -> Bool ) ∋ ( ( λ x659 -> if true then x659 else p3 ) ) ) $ ( if true then false else d639 )
        d661 : if true then if false then Bool else Bool else if true then Bool else Bool
        d661 = ( ( Bool -> Bool ) ∋ ( ( λ x662 -> ( ( Bool -> Bool ) ∋ ( ( λ x663 -> d297 ) ) ) $ ( p3 ) ) ) ) $ ( if d343 then false else d313 )
        d664 : if false then if false then Bool else Bool else if true then Bool else Bool
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x665 -> if d513 then x665 else d346 ) ) ) $ ( if d184 then d10 else p3 )
        d666 : ( ( Set -> Set ) ∋ ( ( λ x667 -> ( ( Set -> Set ) ∋ ( ( λ x668 -> Bool ) ) ) $ ( x667 ) ) ) ) $ ( if true then Bool else Bool )
        d666 = if if d513 then p3 else false then if d614 then d429 else p3 else if false then p3 else d129
        d669 : ( ( Set -> Set ) ∋ ( ( λ x672 -> if false then x672 else Bool ) ) ) $ ( if false then Bool else Bool )
        d669 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x671 -> d588 ) ) ) $ ( p1 ) ) ) ) $ ( if false then true else d513 )
        d673 : ( ( Set -> Set ) ∋ ( ( λ x676 -> ( ( Set -> Set ) ∋ ( ( λ x677 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d673 = ( ( Bool -> Bool ) ∋ ( ( λ x674 -> ( ( Bool -> Bool ) ∋ ( ( λ x675 -> false ) ) ) $ ( x674 ) ) ) ) $ ( if p1 then true else d321 )
        d678 : if true then if false then Bool else Bool else if false then Bool else Bool
        d678 = ( ( Bool -> Bool ) ∋ ( ( λ x679 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> x679 ) ) ) $ ( false ) ) ) ) $ ( if d528 then p1 else p1 )
        d681 : ( ( Set -> Set ) ∋ ( ( λ x682 -> ( ( Set -> Set ) ∋ ( ( λ x683 -> x682 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d681 = if if d444 then p3 else d179 then if d272 then true else d318 else if d216 then true else d136
        d684 : if true then if false then Bool else Bool else if false then Bool else Bool
        d684 = if if d474 then d45 else false then if p1 then p3 else p3 else if true then true else p1
        d685 : if false then if false then Bool else Bool else if true then Bool else Bool
        d685 = ( ( Bool -> Bool ) ∋ ( ( λ x686 -> if d140 then true else d338 ) ) ) $ ( if false then p3 else p3 )
        d687 : ( ( Set -> Set ) ∋ ( ( λ x689 -> if false then x689 else x689 ) ) ) $ ( if false then Bool else Bool )
        d687 = ( ( Bool -> Bool ) ∋ ( ( λ x688 -> if p3 then true else false ) ) ) $ ( if true then d222 else true )
        d690 : if false then if true then Bool else Bool else if false then Bool else Bool
        d690 = ( ( Bool -> Bool ) ∋ ( ( λ x691 -> ( ( Bool -> Bool ) ∋ ( ( λ x692 -> d176 ) ) ) $ ( x691 ) ) ) ) $ ( if d231 then p3 else d506 )
        d693 : if false then if true then Bool else Bool else if false then Bool else Bool
        d693 = ( ( Bool -> Bool ) ∋ ( ( λ x694 -> if true then d19 else d57 ) ) ) $ ( if p1 then p3 else p1 )
        d695 : ( ( Set -> Set ) ∋ ( ( λ x696 -> ( ( Set -> Set ) ∋ ( ( λ x697 -> Bool ) ) ) $ ( x696 ) ) ) ) $ ( if false then Bool else Bool )
        d695 = if if d276 then p3 else d505 then if true then p1 else d287 else if true then false else d323
        d698 : ( ( Set -> Set ) ∋ ( ( λ x701 -> ( ( Set -> Set ) ∋ ( ( λ x702 -> Bool ) ) ) $ ( x701 ) ) ) ) $ ( if true then Bool else Bool )
        d698 = ( ( Bool -> Bool ) ∋ ( ( λ x699 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d545 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then false else p1 )
        d703 : ( ( Set -> Set ) ∋ ( ( λ x705 -> ( ( Set -> Set ) ∋ ( ( λ x706 -> x705 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d703 = ( ( Bool -> Bool ) ∋ ( ( λ x704 -> if d335 then p1 else x704 ) ) ) $ ( if d211 then p3 else d471 )
        d707 : if true then if false then Bool else Bool else if false then Bool else Bool
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x708 -> if d307 then d303 else d500 ) ) ) $ ( if d609 then p1 else false )
        d709 : if false then if true then Bool else Bool else if true then Bool else Bool
        d709 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( ( Bool -> Bool ) ∋ ( ( λ x711 -> d142 ) ) ) $ ( p1 ) ) ) ) $ ( if false then d476 else true )
        d712 : if false then if true then Bool else Bool else if false then Bool else Bool
        d712 = ( ( Bool -> Bool ) ∋ ( ( λ x713 -> ( ( Bool -> Bool ) ∋ ( ( λ x714 -> p3 ) ) ) $ ( d5 ) ) ) ) $ ( if d282 then p1 else p1 )
        d715 : ( ( Set -> Set ) ∋ ( ( λ x717 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d715 = ( ( Bool -> Bool ) ∋ ( ( λ x716 -> if p3 then p1 else false ) ) ) $ ( if p1 then false else d474 )
        d718 : if true then if true then Bool else Bool else if false then Bool else Bool
        d718 = if if d56 then d626 else true then if p3 then true else p3 else if d681 then d303 else p1
        d719 : if true then if false then Bool else Bool else if false then Bool else Bool
        d719 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if false then x720 else false ) ) ) $ ( if d293 then p3 else false )
        d721 : if false then if true then Bool else Bool else if true then Bool else Bool
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x722 -> if d415 then true else false ) ) ) $ ( if p1 then false else d626 )
        d723 : ( ( Set -> Set ) ∋ ( ( λ x726 -> ( ( Set -> Set ) ∋ ( ( λ x727 -> x727 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d723 = ( ( Bool -> Bool ) ∋ ( ( λ x724 -> ( ( Bool -> Bool ) ∋ ( ( λ x725 -> p1 ) ) ) $ ( d556 ) ) ) ) $ ( if false then false else d383 )
        d728 : if true then if false then Bool else Bool else if false then Bool else Bool
        d728 = ( ( Bool -> Bool ) ∋ ( ( λ x729 -> ( ( Bool -> Bool ) ∋ ( ( λ x730 -> false ) ) ) $ ( false ) ) ) ) $ ( if p3 then false else p1 )
        d731 : if false then if true then Bool else Bool else if false then Bool else Bool
        d731 = if if d140 then false else d421 then if d531 then d49 else d183 else if false then true else false
        d732 : ( ( Set -> Set ) ∋ ( ( λ x734 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d732 = ( ( Bool -> Bool ) ∋ ( ( λ x733 -> if p3 then d438 else d323 ) ) ) $ ( if d183 then false else true )
        d735 : if true then if true then Bool else Bool else if true then Bool else Bool
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x736 -> ( ( Bool -> Bool ) ∋ ( ( λ x737 -> x737 ) ) ) $ ( p1 ) ) ) ) $ ( if true then d315 else d217 )
        d738 : ( ( Set -> Set ) ∋ ( ( λ x739 -> if false then x739 else Bool ) ) ) $ ( if true then Bool else Bool )
        d738 = if if d544 then p1 else p3 then if true then p1 else d435 else if d695 then p3 else p1
        d740 : if false then if true then Bool else Bool else if true then Bool else Bool
        d740 = ( ( Bool -> Bool ) ∋ ( ( λ x741 -> if false then x741 else p3 ) ) ) $ ( if d228 then p3 else true )
        d742 : ( ( Set -> Set ) ∋ ( ( λ x743 -> ( ( Set -> Set ) ∋ ( ( λ x744 -> Bool ) ) ) $ ( x743 ) ) ) ) $ ( if true then Bool else Bool )
        d742 = if if false then false else false then if p1 then d523 else p1 else if d647 then p3 else d33
        d745 : ( ( Set -> Set ) ∋ ( ( λ x748 -> if true then x748 else x748 ) ) ) $ ( if true then Bool else Bool )
        d745 = ( ( Bool -> Bool ) ∋ ( ( λ x746 -> ( ( Bool -> Bool ) ∋ ( ( λ x747 -> d461 ) ) ) $ ( x746 ) ) ) ) $ ( if false then p3 else p1 )
        d749 : ( ( Set -> Set ) ∋ ( ( λ x751 -> ( ( Set -> Set ) ∋ ( ( λ x752 -> Bool ) ) ) $ ( x751 ) ) ) ) $ ( if false then Bool else Bool )
        d749 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if p1 then p3 else d504 ) ) ) $ ( if d583 then d272 else true )
        d753 : if false then if true then Bool else Bool else if false then Bool else Bool
        d753 = ( ( Bool -> Bool ) ∋ ( ( λ x754 -> if x754 then d313 else d54 ) ) ) $ ( if true then p1 else d239 )
        d755 : if true then if true then Bool else Bool else if true then Bool else Bool
        d755 = if if p1 then true else p3 then if true then p3 else p3 else if p1 then true else p3
        d756 : if false then if false then Bool else Bool else if true then Bool else Bool
        d756 = if if d492 then true else d226 then if false then p3 else d565 else if d346 then false else true
        d757 : ( ( Set -> Set ) ∋ ( ( λ x760 -> ( ( Set -> Set ) ∋ ( ( λ x761 -> x760 ) ) ) $ ( x760 ) ) ) ) $ ( if false then Bool else Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x758 -> ( ( Bool -> Bool ) ∋ ( ( λ x759 -> false ) ) ) $ ( d404 ) ) ) ) $ ( if d480 then p3 else true )
        d762 : ( ( Set -> Set ) ∋ ( ( λ x763 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d762 = if if d480 then p3 else p1 then if true then d155 else d115 else if p3 then p1 else true
        d764 : ( ( Set -> Set ) ∋ ( ( λ x767 -> ( ( Set -> Set ) ∋ ( ( λ x768 -> x768 ) ) ) $ ( x767 ) ) ) ) $ ( if true then Bool else Bool )
        d764 = ( ( Bool -> Bool ) ∋ ( ( λ x765 -> ( ( Bool -> Bool ) ∋ ( ( λ x766 -> false ) ) ) $ ( d146 ) ) ) ) $ ( if false then d51 else d211 )
    module M'  = M ( false ) 
    d769 : if true then if true then Bool else Bool else if true then Bool else Bool
    d769 = ( ( M.d57 ) $ ( ( M'.d257 ) $ ( if false then false else true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( false ) )
    d771 : ( ( Set -> Set ) ∋ ( ( λ x772 -> if true then x772 else Bool ) ) ) $ ( if false then Bool else Bool )
    d771 = ( ( M.d183 ) $ ( ( M'.d222 ) $ ( if false then true else d769 ) ) ) $ ( ( M'.d447 ) $ ( if false then false else d769 ) )
    d773 : if false then if true then Bool else Bool else if false then Bool else Bool
    d773 = ( ( M.d544 ) $ ( if false then d769 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x774 -> true ) ) ) $ ( d771 ) )
    d775 : ( ( Set -> Set ) ∋ ( ( λ x778 -> ( ( Set -> Set ) ∋ ( ( λ x779 -> x779 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d775 = ( ( Bool -> Bool ) ∋ ( ( λ x776 -> ( ( Bool -> Bool ) ∋ ( ( λ x777 -> false ) ) ) $ ( x776 ) ) ) ) $ ( if true then false else d771 )
    d780 : ( ( Set -> Set ) ∋ ( ( λ x781 -> if false then x781 else x781 ) ) ) $ ( if true then Bool else Bool )
    d780 = if if true then false else false then if true then d773 else d775 else if d771 then true else true
    d782 : if true then if true then Bool else Bool else if true then Bool else Bool
    d782 = ( ( M.d87 ) $ ( ( M'.d643 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x783 -> false ) ) ) $ ( true ) ) ) ) $ ( if d775 then d773 else true )
    d784 : if false then if false then Bool else Bool else if true then Bool else Bool
    d784 = if if true then true else true then if d780 then true else d775 else if false then true else d773
    d785 : ( ( Set -> Set ) ∋ ( ( λ x787 -> if true then Bool else x787 ) ) ) $ ( if true then Bool else Bool )
    d785 = ( M'.d127 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x786 -> ( M'.d231 ) $ ( if x786 then x786 else d773 ) ) ) ) $ ( if d771 then d775 else true ) )
    d788 : ( ( Set -> Set ) ∋ ( ( λ x791 -> ( ( Set -> Set ) ∋ ( ( λ x792 -> x792 ) ) ) $ ( x791 ) ) ) ) $ ( if true then Bool else Bool )
    d788 = ( M'.d66 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x789 -> ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x789 ) ) ) $ ( x789 ) ) ) ) $ ( if d775 then d773 else d775 ) )
    d793 : if false then if false then Bool else Bool else if false then Bool else Bool
    d793 = ( ( M.d37 ) $ ( if d771 then true else false ) ) $ ( ( M'.d404 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x794 -> d771 ) ) ) $ ( d788 ) ) )
    d795 : ( ( Set -> Set ) ∋ ( ( λ x798 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d795 = ( M'.d33 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x796 -> ( ( Bool -> Bool ) ∋ ( ( λ x797 -> d769 ) ) ) $ ( x796 ) ) ) ) $ ( if true then d771 else false ) )
    d799 : if true then if false then Bool else Bool else if true then Bool else Bool
    d799 = if if false then d793 else d773 then if d788 then true else d785 else if false then d769 else d793
    d800 : ( ( Set -> Set ) ∋ ( ( λ x802 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d800 = ( ( Bool -> Bool ) ∋ ( ( λ x801 -> ( M'.d493 ) $ ( if true then true else d784 ) ) ) ) $ ( if d793 then d799 else d771 )
    d803 : if false then if true then Bool else Bool else if true then Bool else Bool
    d803 = ( M'.d565 ) $ ( ( ( M.d592 ) $ ( ( ( M.d551 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( M.d469 ) $ ( d773 ) ) $ ( d793 ) ) )
    d804 : ( ( Set -> Set ) ∋ ( ( λ x805 -> ( ( Set -> Set ) ∋ ( ( λ x806 -> Bool ) ) ) $ ( x805 ) ) ) ) $ ( if true then Bool else Bool )
    d804 = if if d793 then d788 else false then if d775 then d803 else false else if d771 then true else true
    d807 : if false then if true then Bool else Bool else if true then Bool else Bool
    d807 = ( M'.d323 ) $ ( ( ( M.d149 ) $ ( ( ( M.d140 ) $ ( d785 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x808 -> x808 ) ) ) $ ( d793 ) ) )
    d809 : ( ( Set -> Set ) ∋ ( ( λ x811 -> if false then x811 else Bool ) ) ) $ ( if true then Bool else Bool )
    d809 = ( ( M.d181 ) $ ( ( M'.d302 ) $ ( ( ( M.d222 ) $ ( false ) ) $ ( d775 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( true ) )
    d812 : ( ( Set -> Set ) ∋ ( ( λ x814 -> if true then x814 else x814 ) ) ) $ ( if false then Bool else Bool )
    d812 = ( M'.d606 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x813 -> ( M'.d479 ) $ ( if false then d804 else false ) ) ) ) $ ( if d788 then false else false ) )
    d815 : ( ( Set -> Set ) ∋ ( ( λ x817 -> if false then Bool else x817 ) ) ) $ ( if false then Bool else Bool )
    d815 = ( ( M.d54 ) $ ( ( M'.d278 ) $ ( ( M'.d389 ) $ ( ( M'.d33 ) $ ( ( M'.d200 ) $ ( ( M'.d654 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x816 -> false ) ) ) $ ( d784 ) ) ) ) ) ) ) ) $ ( if d773 then false else d799 )
    d818 : ( ( Set -> Set ) ∋ ( ( λ x819 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> x819 ) ) ) $ ( x819 ) ) ) ) $ ( if true then Bool else Bool )
    d818 = ( ( M.d626 ) $ ( ( ( M.d629 ) $ ( true ) ) $ ( d769 ) ) ) $ ( ( ( M.d421 ) $ ( false ) ) $ ( d788 ) )
    d821 : if true then if true then Bool else Bool else if false then Bool else Bool
    d821 = ( ( Bool -> Bool ) ∋ ( ( λ x822 -> ( M'.d322 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x823 -> x822 ) ) ) $ ( x822 ) ) ) ) ) $ ( if true then true else d788 )
    d824 : ( ( Set -> Set ) ∋ ( ( λ x826 -> if true then x826 else x826 ) ) ) $ ( if false then Bool else Bool )
    d824 = ( ( Bool -> Bool ) ∋ ( ( λ x825 -> ( M'.d370 ) $ ( ( M'.d206 ) $ ( ( ( M.d447 ) $ ( if true then true else d769 ) ) $ ( if false then x825 else d800 ) ) ) ) ) ) $ ( if false then d812 else true )
    d827 : if false then if false then Bool else Bool else if false then Bool else Bool
    d827 = if if true then d803 else false then if false then d788 else d809 else if d809 then true else true
    d828 : ( ( Set -> Set ) ∋ ( ( λ x829 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d828 = ( M'.d266 ) $ ( if if d815 then d788 else false then if d809 then d793 else d771 else if true then false else true )
    d830 : ( ( Set -> Set ) ∋ ( ( λ x831 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d830 = ( M'.d681 ) $ ( ( ( M.d43 ) $ ( ( M'.d480 ) $ ( ( M'.d385 ) $ ( if true then false else true ) ) ) ) $ ( ( M'.d252 ) $ ( ( M'.d483 ) $ ( ( ( M.d26 ) $ ( true ) ) $ ( false ) ) ) ) )
    d832 : ( ( Set -> Set ) ∋ ( ( λ x835 -> if true then x835 else Bool ) ) ) $ ( if false then Bool else Bool )
    d832 = ( ( Bool -> Bool ) ∋ ( ( λ x833 -> ( ( Bool -> Bool ) ∋ ( ( λ x834 -> true ) ) ) $ ( x833 ) ) ) ) $ ( if false then d800 else d769 )
    d836 : if true then if true then Bool else Bool else if true then Bool else Bool
    d836 = ( ( M.d235 ) $ ( ( M'.d277 ) $ ( ( M'.d36 ) $ ( ( M'.d303 ) $ ( ( ( M.d414 ) $ ( true ) ) $ ( d807 ) ) ) ) ) ) $ ( ( M'.d389 ) $ ( ( ( M.d509 ) $ ( true ) ) $ ( d827 ) ) )
    d837 : ( ( Set -> Set ) ∋ ( ( λ x839 -> if false then Bool else x839 ) ) ) $ ( if true then Bool else Bool )
    d837 = ( M'.d277 ) $ ( ( ( M.d577 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x838 -> d782 ) ) ) $ ( d818 ) ) ) $ ( ( M'.d483 ) $ ( if d828 then d827 else d830 ) ) )
    d840 : if true then if false then Bool else Bool else if true then Bool else Bool
    d840 = ( M'.d169 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x841 -> ( M'.d462 ) $ ( ( M'.d385 ) $ ( ( M'.d455 ) $ ( if d812 then d837 else x841 ) ) ) ) ) ) $ ( if d828 then true else d775 ) )
    d842 : ( ( Set -> Set ) ∋ ( ( λ x843 -> ( ( Set -> Set ) ∋ ( ( λ x844 -> x844 ) ) ) $ ( x843 ) ) ) ) $ ( if true then Bool else Bool )
    d842 = ( ( M.d738 ) $ ( ( ( M.d430 ) $ ( d824 ) ) $ ( false ) ) ) $ ( ( M'.d276 ) $ ( ( M'.d441 ) $ ( ( M'.d179 ) $ ( if false then d830 else false ) ) ) )
    d845 : ( ( Set -> Set ) ∋ ( ( λ x846 -> ( ( Set -> Set ) ∋ ( ( λ x847 -> Bool ) ) ) $ ( x846 ) ) ) ) $ ( if true then Bool else Bool )
    d845 = ( M'.d208 ) $ ( if if true then false else d807 then if d793 then d780 else d799 else if true then d821 else true )
    d848 : if false then if true then Bool else Bool else if true then Bool else Bool
    d848 = ( M'.d84 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x849 -> ( M'.d594 ) $ ( ( ( M.d278 ) $ ( if x849 then false else true ) ) $ ( if false then true else d799 ) ) ) ) ) $ ( if true then d780 else true ) )
    d850 : ( ( Set -> Set ) ∋ ( ( λ x851 -> ( ( Set -> Set ) ∋ ( ( λ x852 -> x851 ) ) ) $ ( x851 ) ) ) ) $ ( if false then Bool else Bool )
    d850 = ( M'.d211 ) $ ( ( M'.d735 ) $ ( ( M'.d115 ) $ ( ( M'.d326 ) $ ( ( ( M.d299 ) $ ( ( ( M.d51 ) $ ( d824 ) ) $ ( d793 ) ) ) $ ( ( M'.d685 ) $ ( ( M'.d740 ) $ ( ( M'.d272 ) $ ( ( M'.d169 ) $ ( if false then true else d782 ) ) ) ) ) ) ) ) )
    d853 : if false then if true then Bool else Bool else if false then Bool else Bool
    d853 = ( M'.d338 ) $ ( ( M'.d102 ) $ ( if if true then true else d803 then if true then false else false else if d821 then true else d824 ) )
    d854 : ( ( Set -> Set ) ∋ ( ( λ x855 -> if true then Bool else x855 ) ) ) $ ( if true then Bool else Bool )
    d854 = if if true then d780 else false then if d804 then d780 else d775 else if d773 then d793 else d803
    d856 : if false then if true then Bool else Bool else if true then Bool else Bool
    d856 = ( ( Bool -> Bool ) ∋ ( ( λ x857 -> ( ( M.d500 ) $ ( if true then x857 else d818 ) ) $ ( if x857 then true else x857 ) ) ) ) $ ( if false then d837 else d769 )
    d858 : if false then if false then Bool else Bool else if false then Bool else Bool
    d858 = ( ( M.d424 ) $ ( ( M'.d166 ) $ ( ( M'.d217 ) $ ( if d830 then d850 else d800 ) ) ) ) $ ( if d853 then false else false )
    d859 : if true then if true then Bool else Bool else if true then Bool else Bool
    d859 = if if false then d785 else true then if true then false else false else if d773 then d827 else d815
    d860 : if true then if true then Bool else Bool else if true then Bool else Bool
    d860 = if if d845 then true else true then if d836 then true else d858 else if true then false else false
    d861 : if true then if true then Bool else Bool else if false then Bool else Bool
    d861 = ( M'.d586 ) $ ( if if d828 then d788 else true then if d840 then true else d824 else if d853 then false else d800 )
    d862 : ( ( Set -> Set ) ∋ ( ( λ x864 -> ( ( Set -> Set ) ∋ ( ( λ x865 -> Bool ) ) ) $ ( x864 ) ) ) ) $ ( if false then Bool else Bool )
    d862 = ( M'.d407 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x863 -> ( M'.d373 ) $ ( if x863 then x863 else x863 ) ) ) ) $ ( if true then false else d859 ) )
    d866 : if true then if true then Bool else Bool else if false then Bool else Bool
    d866 = ( ( M.d173 ) $ ( if d836 then true else d853 ) ) $ ( ( M'.d115 ) $ ( ( ( M.d466 ) $ ( false ) ) $ ( true ) ) )
    d867 : if true then if false then Bool else Bool else if false then Bool else Bool
    d867 = if if true then d812 else d837 then if true then false else d836 else if d784 then d785 else d815
    d868 : ( ( Set -> Set ) ∋ ( ( λ x870 -> ( ( Set -> Set ) ∋ ( ( λ x871 -> Bool ) ) ) $ ( x870 ) ) ) ) $ ( if false then Bool else Bool )
    d868 = ( M'.d129 ) $ ( ( ( M.d430 ) $ ( if false then false else d784 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x869 -> d867 ) ) ) $ ( false ) ) )
    d872 : if false then if false then Bool else Bool else if true then Bool else Bool
    d872 = ( M'.d594 ) $ ( ( M'.d756 ) $ ( ( ( M.d531 ) $ ( ( ( M.d695 ) $ ( d860 ) ) $ ( true ) ) ) $ ( if true then false else d842 ) ) )
    d873 : ( ( Set -> Set ) ∋ ( ( λ x876 -> if true then Bool else x876 ) ) ) $ ( if false then Bool else Bool )
    d873 = ( ( Bool -> Bool ) ∋ ( ( λ x874 -> ( ( Bool -> Bool ) ∋ ( ( λ x875 -> true ) ) ) $ ( true ) ) ) ) $ ( if d845 then true else false )
    d877 : if true then if false then Bool else Bool else if true then Bool else Bool
    d877 = ( ( Bool -> Bool ) ∋ ( ( λ x878 -> ( ( Bool -> Bool ) ∋ ( ( λ x879 -> d818 ) ) ) $ ( true ) ) ) ) $ ( if true then d828 else d873 )
    d880 : ( ( Set -> Set ) ∋ ( ( λ x882 -> if false then x882 else Bool ) ) ) $ ( if false then Bool else Bool )
    d880 = ( ( Bool -> Bool ) ∋ ( ( λ x881 -> if x881 then d771 else false ) ) ) $ ( if d850 then false else d854 )
    d883 : ( ( Set -> Set ) ∋ ( ( λ x885 -> if true then x885 else x885 ) ) ) $ ( if true then Bool else Bool )
    d883 = ( M'.d388 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x884 -> if d845 then x884 else false ) ) ) $ ( if true then true else d769 ) )
    d886 : ( ( Set -> Set ) ∋ ( ( λ x889 -> if true then Bool else x889 ) ) ) $ ( if false then Bool else Bool )
    d886 = ( M'.d91 ) $ ( ( ( M.d252 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x887 -> d860 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x888 -> x888 ) ) ) $ ( d830 ) ) )