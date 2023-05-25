module Decl450Base13  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1 = if if true then true else true then if false then false else true else if false then true else true
        d3 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then x5 else Bool ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if false then x4 else true ) ) ) $ ( if true then d1 else false )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then Bool else x8 ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if x7 then true else x7 ) ) ) $ ( if d1 then d1 else d1 )
        d9 : if false then if true then Bool else Bool else if true then Bool else Bool
        d9 = if if false then false else true then if d6 then d6 else d3 else if d3 then d1 else true
        d10 : if true then if true then Bool else Bool else if true then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if true then true else d9 ) ) ) $ ( if false then true else false )
        d12 : if true then if false then Bool else Bool else if true then Bool else Bool
        d12 = if if true then d1 else true then if d3 then d1 else false else if false then false else false
        d13 : if false then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if x14 then d10 else x14 ) ) ) $ ( if d1 then true else false )
        d15 : if true then if false then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if x16 then false else x16 ) ) ) $ ( if d12 then d10 else true )
        d17 : if false then if false then Bool else Bool else if false then Bool else Bool
        d17 = if if d1 then d6 else d3 then if d3 then d13 else d13 else if d13 then false else true
        d18 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> true ) ) ) $ ( d6 ) ) ) ) $ ( if d12 then true else d13 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> Bool ) ) ) $ ( x25 ) ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d3 ) ) ) $ ( d3 ) ) ) ) $ ( if d1 then d6 else d13 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if true then x28 else Bool ) ) ) $ ( if false then Bool else Bool )
        d27 = if if d12 then false else true then if true then d13 else d22 else if false then true else true
        d29 : if true then if false then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> x30 ) ) ) $ ( d18 ) ) ) ) $ ( if true then d1 else d1 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then Bool else x35 ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> d27 ) ) ) $ ( true ) ) ) ) $ ( if d10 then d15 else true )
        d36 : if true then if false then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if x37 then d17 else x37 ) ) ) $ ( if true then d32 else false )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if d15 then false else true ) ) ) $ ( if d15 then d36 else d17 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then x43 else x43 ) ) ) $ ( if false then Bool else Bool )
        d42 = if if false then false else d38 then if d3 then true else d22 else if d3 then d29 else false
        d44 : if true then if true then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if x45 then false else x45 ) ) ) $ ( if d38 then d22 else false )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if false then Bool else x49 ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> false ) ) ) $ ( x47 ) ) ) ) $ ( if false then true else d22 )
        d50 : if true then if false then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> d42 ) ) ) $ ( d12 ) ) ) ) $ ( if d15 then d42 else d38 )
        d53 : if true then if false then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if x54 then d6 else d32 ) ) ) $ ( if d12 then true else true )
        d55 : if false then if false then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> false ) ) ) $ ( false ) ) ) ) $ ( if d18 then false else d1 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( x60 ) ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if d29 then false else d13 ) ) ) $ ( if false then d17 else false )
        d62 : if true then if true then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if x63 then d12 else false ) ) ) $ ( if true then d10 else d9 )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if false then Bool else x65 ) ) ) $ ( if false then Bool else Bool )
        d64 = if if false then true else false then if false then true else false else if d53 then d36 else true
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if false then Bool else x67 ) ) ) $ ( if true then Bool else Bool )
        d66 = if if d6 then true else d9 then if d46 then d58 else false else if false then d17 else d64
        d68 : if true then if false then Bool else Bool else if true then Bool else Bool
        d68 = if if d32 then d36 else d1 then if true then d12 else false else if true then false else d38
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x71 ) ) ) $ ( x71 ) ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if true then false else x70 ) ) ) $ ( if true then true else false )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if d17 then false else true ) ) ) $ ( if true then d27 else true )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d76 = if if true then false else d18 then if d66 then d46 else d38 else if true then true else d32
        d79 : if true then if false then Bool else Bool else if true then Bool else Bool
        d79 = if if d15 then d50 else true then if d32 then d38 else true else if false then d27 else true
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> Bool ) ) ) $ ( x81 ) ) ) ) $ ( if false then Bool else Bool )
        d80 = if if d38 then d62 else d36 then if d62 then true else false else if false then false else true
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x84 ) ) ) $ ( x84 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = if if false then true else true then if true then false else d13 else if d3 then true else true
        d86 : if false then if true then Bool else Bool else if false then Bool else Bool
        d86 = if if false then d1 else d69 then if true then true else d64 else if d10 then true else false
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if false then Bool else x89 ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if x88 then x88 else x88 ) ) ) $ ( if true then false else true )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if true then Bool else x92 ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if x91 then d50 else x91 ) ) ) $ ( if d29 then false else d73 )
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = if if d1 then d3 else d87 then if d12 then d50 else true else if false then false else d64
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> Bool ) ) ) $ ( x96 ) ) ) ) $ ( if false then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if x95 then d55 else d87 ) ) ) $ ( if false then true else false )
        d98 : if true then if true then Bool else Bool else if false then Bool else Bool
        d98 = if if d18 then false else false then if d79 then true else true else if d12 then d44 else d27
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then Bool else x102 ) ) ) $ ( if false then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> x100 ) ) ) $ ( d58 ) ) ) ) $ ( if d80 then false else false )
        d103 : if true then if false then Bool else Bool else if false then Bool else Bool
        d103 = if if d38 then d9 else d36 then if false then d69 else false else if d99 then false else d29
        d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> x106 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if d69 then d6 else d42 ) ) ) $ ( if false then true else false )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( x110 ) ) ) ) $ ( if false then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if x109 then d94 else x109 ) ) ) $ ( if true then d76 else d12 )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then x113 else x113 ) ) ) $ ( if true then Bool else Bool )
        d112 = if if false then false else true then if false then d69 else d83 else if d58 then true else true
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d114 = if if d22 then false else false then if false then true else false else if d90 then false else true
        d116 : if false then if false then Bool else Bool else if true then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if x117 then x117 else false ) ) ) $ ( if true then d32 else false )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if x119 then x119 else x119 ) ) ) $ ( if false then false else true )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x125 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if false then x123 else true ) ) ) $ ( if d116 then true else d9 )
        d126 : if true then if false then Bool else Bool else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> false ) ) ) $ ( x127 ) ) ) ) $ ( if d1 then false else d29 )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then x130 else x130 ) ) ) $ ( if true then Bool else Bool )
        d129 = if if false then true else true then if d27 then d38 else d27 else if d112 then d9 else d73
        d131 : if true then if false then Bool else Bool else if true then Bool else Bool
        d131 = if if true then d112 else d12 then if d29 then d76 else true else if true then d104 else false
        d132 : if true then if false then Bool else Bool else if true then Bool else Bool
        d132 = if if d12 then d62 else d27 then if true then d99 else false else if d103 then false else false
        d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> if true then x134 else Bool ) ) ) $ ( if true then Bool else Bool )
        d133 = if if true then d99 else true then if true then d98 else false else if false then d64 else false
        d135 : if false then if false then Bool else Bool else if false then Bool else Bool
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( Bool -> Bool ) ∋ ( ( λ x137 -> x136 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d138 : if false then if false then Bool else Bool else if false then Bool else Bool
        d138 = if if false then d76 else false then if d80 then true else true else if d73 then false else d53
        d139 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then x140 else x140 ) ) ) $ ( if false then Bool else Bool )
        d139 = if if false then false else true then if d38 then false else true else if false then true else false
        d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> x143 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d141 = if if false then d132 else d12 then if true then d29 else false else if false then false else true
        d144 : if false then if false then Bool else Bool else if true then Bool else Bool
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x145 -> ( ( Bool -> Bool ) ∋ ( ( λ x146 -> false ) ) ) $ ( x145 ) ) ) ) $ ( if d22 then true else true )
        d147 : if true then if true then Bool else Bool else if true then Bool else Bool
        d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> if true then x148 else x148 ) ) ) $ ( if d118 then false else true )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if false then Bool else x152 ) ) ) $ ( if true then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x151 -> x151 ) ) ) $ ( d138 ) ) ) ) $ ( if false then false else false )
        d153 : if false then if false then Bool else Bool else if false then Bool else Bool
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> if x154 then x154 else d112 ) ) ) $ ( if d144 then false else true )
        d155 : if true then if true then Bool else Bool else if false then Bool else Bool
        d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> ( ( Bool -> Bool ) ∋ ( ( λ x157 -> x156 ) ) ) $ ( d62 ) ) ) ) $ ( if false then d116 else d86 )
        d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> x159 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d158 = if if true then d42 else true then if d15 then true else true else if false then false else d13
        d161 : ( ( Set -> Set ) ∋ ( ( λ x164 -> if true then x164 else x164 ) ) ) $ ( if true then Bool else Bool )
        d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( Bool -> Bool ) ∋ ( ( λ x163 -> d69 ) ) ) $ ( d79 ) ) ) ) $ ( if d99 then false else d112 )
        d165 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if true then x166 else Bool ) ) ) $ ( if true then Bool else Bool )
        d165 = if if true then d138 else false then if d32 then d29 else false else if d161 then true else d66
        d167 : ( ( Set -> Set ) ∋ ( ( λ x169 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> x169 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> if d139 then false else d90 ) ) ) $ ( if false then true else false )
        d171 : if false then if false then Bool else Bool else if false then Bool else Bool
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> false ) ) ) $ ( d149 ) ) ) ) $ ( if d158 then true else d44 )
        d174 : if false then if true then Bool else Bool else if false then Bool else Bool
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> if true then false else d58 ) ) ) $ ( if d53 then true else d131 )
        d176 : if false then if true then Bool else Bool else if true then Bool else Bool
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( Bool -> Bool ) ∋ ( ( λ x178 -> d104 ) ) ) $ ( true ) ) ) ) $ ( if d6 then d53 else d87 )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x182 -> if true then x182 else Bool ) ) ) $ ( if true then Bool else Bool )
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x181 -> true ) ) ) $ ( false ) ) ) ) $ ( if d167 then d174 else true )
        d183 : if false then if true then Bool else Bool else if true then Bool else Bool
        d183 = if if d27 then d141 else false then if d46 then d15 else false else if true then d86 else true
        d184 : if true then if false then Bool else Bool else if false then Bool else Bool
        d184 = if if false then d161 else true then if false then d38 else false else if d10 then true else d147
        d185 : if true then if true then Bool else Bool else if true then Bool else Bool
        d185 = if if true then d36 else d55 then if true then false else d141 else if false then false else false
        d186 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d186 = if if true then true else d184 then if true then true else d147 else if false then false else d15
        d188 : if false then if true then Bool else Bool else if false then Bool else Bool
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> if x189 then x189 else x189 ) ) ) $ ( if d129 then d129 else true )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> x192 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d190 = if if d29 then d15 else false then if true then d69 else true else if d55 then d185 else true
        d193 : if true then if false then Bool else Bool else if true then Bool else Bool
        d193 = if if false then d132 else false then if d112 then true else true else if d9 then d13 else d129
        d194 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> Bool ) ) ) $ ( x196 ) ) ) ) $ ( if false then Bool else Bool )
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> if false then true else x195 ) ) ) $ ( if true then false else true )
        d198 : ( ( Set -> Set ) ∋ ( ( λ x199 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> x200 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d198 = if if d188 then d118 else false then if d167 then false else d83 else if d98 then d108 else true
        d201 : ( ( Set -> Set ) ∋ ( ( λ x203 -> ( ( Set -> Set ) ∋ ( ( λ x204 -> x204 ) ) ) $ ( x203 ) ) ) ) $ ( if false then Bool else Bool )
        d201 = ( ( Bool -> Bool ) ∋ ( ( λ x202 -> if d104 then d93 else false ) ) ) $ ( if false then d53 else d80 )
        d205 : if true then if true then Bool else Bool else if true then Bool else Bool
        d205 = if if false then false else true then if true then d118 else true else if d80 then d103 else d6
        d206 : ( ( Set -> Set ) ∋ ( ( λ x209 -> if false then x209 else Bool ) ) ) $ ( if false then Bool else Bool )
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> ( ( Bool -> Bool ) ∋ ( ( λ x208 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d210 : if true then if false then Bool else Bool else if false then Bool else Bool
        d210 = if if false then false else false then if true then d126 else true else if false then d15 else true
        d211 : ( ( Set -> Set ) ∋ ( ( λ x213 -> ( ( Set -> Set ) ∋ ( ( λ x214 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x212 -> if false then true else true ) ) ) $ ( if false then true else d69 )
        d215 : ( ( Set -> Set ) ∋ ( ( λ x216 -> if true then x216 else Bool ) ) ) $ ( if true then Bool else Bool )
        d215 = if if d171 then false else d198 then if d53 then d68 else d10 else if false then d79 else d211
        d217 : ( ( Set -> Set ) ∋ ( ( λ x220 -> ( ( Set -> Set ) ∋ ( ( λ x221 -> x220 ) ) ) $ ( x220 ) ) ) ) $ ( if false then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x218 -> ( ( Bool -> Bool ) ∋ ( ( λ x219 -> x218 ) ) ) $ ( x218 ) ) ) ) $ ( if d118 then true else d147 )
        d222 : ( ( Set -> Set ) ∋ ( ( λ x224 -> ( ( Set -> Set ) ∋ ( ( λ x225 -> x225 ) ) ) $ ( x224 ) ) ) ) $ ( if true then Bool else Bool )
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x223 -> if x223 then x223 else false ) ) ) $ ( if true then false else d1 )
        d226 : ( ( Set -> Set ) ∋ ( ( λ x228 -> ( ( Set -> Set ) ∋ ( ( λ x229 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x227 -> if false then x227 else x227 ) ) ) $ ( if false then d211 else d132 )
        d230 : if false then if false then Bool else Bool else if true then Bool else Bool
        d230 = if if true then d149 else false then if d210 then d194 else true else if d185 then d79 else d27
        d231 : ( ( Set -> Set ) ∋ ( ( λ x234 -> ( ( Set -> Set ) ∋ ( ( λ x235 -> Bool ) ) ) $ ( x234 ) ) ) ) $ ( if false then Bool else Bool )
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x232 -> ( ( Bool -> Bool ) ∋ ( ( λ x233 -> x233 ) ) ) $ ( d217 ) ) ) ) $ ( if false then d80 else d201 )
        d236 : ( ( Set -> Set ) ∋ ( ( λ x237 -> ( ( Set -> Set ) ∋ ( ( λ x238 -> x238 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d236 = if if d87 then true else false then if d104 then false else d76 else if d1 then d32 else false
        d239 : if false then if true then Bool else Bool else if false then Bool else Bool
        d239 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> ( ( Bool -> Bool ) ∋ ( ( λ x241 -> true ) ) ) $ ( true ) ) ) ) $ ( if d93 then d17 else false )
        d242 : if false then if true then Bool else Bool else if true then Bool else Bool
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x243 -> if x243 then x243 else true ) ) ) $ ( if false then d176 else false )
        d244 : if false then if false then Bool else Bool else if false then Bool else Bool
        d244 = if if d58 then true else false then if d141 then d149 else d6 else if d132 then false else false
        d245 : if true then if false then Bool else Bool else if true then Bool else Bool
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x246 -> ( ( Bool -> Bool ) ∋ ( ( λ x247 -> false ) ) ) $ ( x246 ) ) ) ) $ ( if false then true else false )
        d248 : ( ( Set -> Set ) ∋ ( ( λ x249 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> x249 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d248 = if if d141 then d153 else true then if false then true else d210 else if false then d210 else d29
        d251 : ( ( Set -> Set ) ∋ ( ( λ x254 -> ( ( Set -> Set ) ∋ ( ( λ x255 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x252 -> ( ( Bool -> Bool ) ∋ ( ( λ x253 -> d179 ) ) ) $ ( x252 ) ) ) ) $ ( if d58 then true else false )
        d256 : if false then if false then Bool else Bool else if false then Bool else Bool
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x257 -> ( ( Bool -> Bool ) ∋ ( ( λ x258 -> false ) ) ) $ ( false ) ) ) ) $ ( if d118 then d133 else false )
        d259 : if true then if false then Bool else Bool else if false then Bool else Bool
        d259 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if d93 then d42 else d13 ) ) ) $ ( if false then true else d62 )
        d261 : ( ( Set -> Set ) ∋ ( ( λ x263 -> ( ( Set -> Set ) ∋ ( ( λ x264 -> x263 ) ) ) $ ( x263 ) ) ) ) $ ( if false then Bool else Bool )
        d261 = ( ( Bool -> Bool ) ∋ ( ( λ x262 -> if d112 then x262 else true ) ) ) $ ( if true then d188 else d171 )
        d265 : ( ( Set -> Set ) ∋ ( ( λ x268 -> if false then x268 else Bool ) ) ) $ ( if false then Bool else Bool )
        d265 = ( ( Bool -> Bool ) ∋ ( ( λ x266 -> ( ( Bool -> Bool ) ∋ ( ( λ x267 -> x267 ) ) ) $ ( false ) ) ) ) $ ( if d174 then true else false )
        d269 : if false then if false then Bool else Bool else if false then Bool else Bool
        d269 = if if false then true else d104 then if d147 then d15 else d118 else if d236 then true else false
        d270 : if true then if false then Bool else Bool else if false then Bool else Bool
        d270 = if if true then d149 else false then if true then d158 else d174 else if false then true else d179
        d271 : ( ( Set -> Set ) ∋ ( ( λ x272 -> ( ( Set -> Set ) ∋ ( ( λ x273 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d271 = if if d144 then false else false then if d12 then true else d66 else if true then true else d66
        d274 : if true then if false then Bool else Bool else if false then Bool else Bool
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x275 -> ( ( Bool -> Bool ) ∋ ( ( λ x276 -> false ) ) ) $ ( d76 ) ) ) ) $ ( if true then d176 else true )
        d277 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x281 -> x281 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d277 = ( ( Bool -> Bool ) ∋ ( ( λ x278 -> ( ( Bool -> Bool ) ∋ ( ( λ x279 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then d36 else d206 )
        d282 : if false then if false then Bool else Bool else if true then Bool else Bool
        d282 = ( ( Bool -> Bool ) ∋ ( ( λ x283 -> if d193 then d194 else true ) ) ) $ ( if false then true else d1 )
        d284 : ( ( Set -> Set ) ∋ ( ( λ x287 -> ( ( Set -> Set ) ∋ ( ( λ x288 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x285 -> ( ( Bool -> Bool ) ∋ ( ( λ x286 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then d149 else false )
        d289 : ( ( Set -> Set ) ∋ ( ( λ x292 -> ( ( Set -> Set ) ∋ ( ( λ x293 -> Bool ) ) ) $ ( x292 ) ) ) ) $ ( if true then Bool else Bool )
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x291 -> false ) ) ) $ ( false ) ) ) ) $ ( if d259 then d193 else true )
        d294 : ( ( Set -> Set ) ∋ ( ( λ x295 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d294 = if if true then d6 else d73 then if d76 then false else d93 else if false then true else d153
        d296 : if true then if false then Bool else Bool else if false then Bool else Bool
        d296 = if if d10 then d58 else d188 then if d38 then d6 else true else if d251 then d144 else d68
        d297 : ( ( Set -> Set ) ∋ ( ( λ x300 -> ( ( Set -> Set ) ∋ ( ( λ x301 -> x300 ) ) ) $ ( x300 ) ) ) ) $ ( if true then Bool else Bool )
        d297 = ( ( Bool -> Bool ) ∋ ( ( λ x298 -> ( ( Bool -> Bool ) ∋ ( ( λ x299 -> true ) ) ) $ ( x298 ) ) ) ) $ ( if d149 then d9 else d259 )
        d302 : if true then if true then Bool else Bool else if false then Bool else Bool
        d302 = ( ( Bool -> Bool ) ∋ ( ( λ x303 -> if false then false else true ) ) ) $ ( if d66 then true else d13 )
        d304 : if true then if false then Bool else Bool else if false then Bool else Bool
        d304 = if if true then false else true then if d62 then d104 else false else if false then false else true
        d305 : ( ( Set -> Set ) ∋ ( ( λ x306 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d305 = if if true then true else d83 then if d198 then d133 else d248 else if d76 then true else false
        d307 : if false then if false then Bool else Bool else if true then Bool else Bool
        d307 = ( ( Bool -> Bool ) ∋ ( ( λ x308 -> ( ( Bool -> Bool ) ∋ ( ( λ x309 -> d80 ) ) ) $ ( false ) ) ) ) $ ( if d194 then false else d15 )
        d310 : if true then if false then Bool else Bool else if true then Bool else Bool
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x311 -> if false then x311 else false ) ) ) $ ( if false then true else true )
        d312 : ( ( Set -> Set ) ∋ ( ( λ x315 -> ( ( Set -> Set ) ∋ ( ( λ x316 -> x315 ) ) ) $ ( x315 ) ) ) ) $ ( if true then Bool else Bool )
        d312 = ( ( Bool -> Bool ) ∋ ( ( λ x313 -> ( ( Bool -> Bool ) ∋ ( ( λ x314 -> true ) ) ) $ ( true ) ) ) ) $ ( if d139 then true else d174 )
        d317 : if false then if true then Bool else Bool else if true then Bool else Bool
        d317 = if if false then true else d93 then if d42 then true else true else if d307 then d55 else false
        d318 : ( ( Set -> Set ) ∋ ( ( λ x319 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> x319 ) ) ) $ ( x319 ) ) ) ) $ ( if false then Bool else Bool )
        d318 = if if true then false else true then if true then false else false else if false then false else d296
        d321 : if true then if true then Bool else Bool else if true then Bool else Bool
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x322 -> ( ( Bool -> Bool ) ∋ ( ( λ x323 -> x323 ) ) ) $ ( x322 ) ) ) ) $ ( if true then false else d3 )
        d324 : if false then if true then Bool else Bool else if true then Bool else Bool
        d324 = if if true then d116 else false then if d17 then false else d116 else if d242 then true else d206
        d325 : ( ( Set -> Set ) ∋ ( ( λ x326 -> if false then x326 else Bool ) ) ) $ ( if true then Bool else Bool )
        d325 = if if false then d32 else false then if true then true else d80 else if false then true else d132
        d327 : if false then if true then Bool else Bool else if true then Bool else Bool
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x328 -> if d126 then x328 else d261 ) ) ) $ ( if false then false else d9 )
        d329 : ( ( Set -> Set ) ∋ ( ( λ x330 -> ( ( Set -> Set ) ∋ ( ( λ x331 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d329 = if if false then d66 else true then if false then d69 else false else if d10 then d133 else d139
        d332 : ( ( Set -> Set ) ∋ ( ( λ x333 -> if true then x333 else x333 ) ) ) $ ( if false then Bool else Bool )
        d332 = if if d274 then false else d62 then if d269 then d112 else d305 else if d87 then true else false
        d334 : ( ( Set -> Set ) ∋ ( ( λ x337 -> if true then Bool else x337 ) ) ) $ ( if false then Bool else Bool )
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x335 -> ( ( Bool -> Bool ) ∋ ( ( λ x336 -> x335 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d185 )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x341 -> ( ( Set -> Set ) ∋ ( ( λ x342 -> x341 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x339 -> ( ( Bool -> Bool ) ∋ ( ( λ x340 -> d133 ) ) ) $ ( x339 ) ) ) ) $ ( if d118 then true else d289 )
        d343 : if false then if false then Bool else Bool else if true then Bool else Bool
        d343 = ( ( Bool -> Bool ) ∋ ( ( λ x344 -> if x344 then false else d289 ) ) ) $ ( if d112 then true else d230 )
        d345 : ( ( Set -> Set ) ∋ ( ( λ x348 -> if true then x348 else Bool ) ) ) $ ( if true then Bool else Bool )
        d345 = ( ( Bool -> Bool ) ∋ ( ( λ x346 -> ( ( Bool -> Bool ) ∋ ( ( λ x347 -> d231 ) ) ) $ ( x346 ) ) ) ) $ ( if true then d50 else d132 )
        d349 : if true then if true then Bool else Bool else if false then Bool else Bool
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if d79 then d345 else x350 ) ) ) $ ( if d230 then d329 else true )
        d351 : if false then if false then Bool else Bool else if true then Bool else Bool
        d351 = if if false then d256 else d15 then if d312 then true else true else if d251 then false else d50
        d352 : if true then if true then Bool else Bool else if false then Bool else Bool
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x353 -> ( ( Bool -> Bool ) ∋ ( ( λ x354 -> x354 ) ) ) $ ( x353 ) ) ) ) $ ( if false then d307 else d10 )
        d355 : ( ( Set -> Set ) ∋ ( ( λ x356 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d355 = if if true then d327 else true then if d103 then true else false else if false then d351 else d176
        d357 : if false then if false then Bool else Bool else if false then Bool else Bool
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x358 -> ( ( Bool -> Bool ) ∋ ( ( λ x359 -> false ) ) ) $ ( x358 ) ) ) ) $ ( if false then true else d304 )
        d360 : if true then if true then Bool else Bool else if false then Bool else Bool
        d360 = ( ( Bool -> Bool ) ∋ ( ( λ x361 -> if x361 then false else x361 ) ) ) $ ( if false then true else true )
        d362 : if true then if false then Bool else Bool else if false then Bool else Bool
        d362 = if if true then true else d86 then if d289 then d131 else d73 else if true then d79 else true
        d363 : ( ( Set -> Set ) ∋ ( ( λ x364 -> if true then Bool else x364 ) ) ) $ ( if false then Bool else Bool )
        d363 = if if d94 then d198 else true then if false then false else d302 else if d242 then d38 else true
        d365 : if true then if false then Bool else Bool else if false then Bool else Bool
        d365 = ( ( Bool -> Bool ) ∋ ( ( λ x366 -> if d144 then false else x366 ) ) ) $ ( if false then d329 else true )
        d367 : if false then if false then Bool else Bool else if false then Bool else Bool
        d367 = if if d198 then true else false then if false then false else d112 else if true then d282 else false
        d368 : if true then if true then Bool else Bool else if true then Bool else Bool
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x369 -> ( ( Bool -> Bool ) ∋ ( ( λ x370 -> x369 ) ) ) $ ( d179 ) ) ) ) $ ( if true then d215 else d324 )
        d371 : ( ( Set -> Set ) ∋ ( ( λ x372 -> if false then Bool else x372 ) ) ) $ ( if true then Bool else Bool )
        d371 = if if d108 then d271 else true then if false then d73 else false else if d188 then false else d256
        d373 : if true then if true then Bool else Bool else if false then Bool else Bool
        d373 = if if true then d98 else d129 then if d259 then false else d86 else if false then d79 else d103
        d374 : if true then if true then Bool else Bool else if false then Bool else Bool
        d374 = if if false then false else d104 then if false then d29 else d305 else if d325 then true else d324
        d375 : if true then if true then Bool else Bool else if false then Bool else Bool
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x376 -> if x376 then d118 else x376 ) ) ) $ ( if true then true else d327 )
        d377 : ( ( Set -> Set ) ∋ ( ( λ x378 -> ( ( Set -> Set ) ∋ ( ( λ x379 -> x378 ) ) ) $ ( x378 ) ) ) ) $ ( if true then Bool else Bool )
        d377 = if if d73 then d68 else true then if true then true else true else if false then false else d18
        d380 : ( ( Set -> Set ) ∋ ( ( λ x382 -> ( ( Set -> Set ) ∋ ( ( λ x383 -> x382 ) ) ) $ ( x382 ) ) ) ) $ ( if true then Bool else Bool )
        d380 = ( ( Bool -> Bool ) ∋ ( ( λ x381 -> if x381 then d12 else x381 ) ) ) $ ( if false then false else false )
        d384 : if false then if true then Bool else Bool else if true then Bool else Bool
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x385 -> if x385 then d139 else false ) ) ) $ ( if d186 then true else d222 )
        d386 : ( ( Set -> Set ) ∋ ( ( λ x388 -> ( ( Set -> Set ) ∋ ( ( λ x389 -> Bool ) ) ) $ ( x388 ) ) ) ) $ ( if false then Bool else Bool )
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x387 -> if x387 then false else d15 ) ) ) $ ( if true then d248 else d343 )
        d390 : if true then if true then Bool else Bool else if false then Bool else Bool
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x391 -> ( ( Bool -> Bool ) ∋ ( ( λ x392 -> x391 ) ) ) $ ( x391 ) ) ) ) $ ( if true then d236 else d362 )
        d393 : if false then if false then Bool else Bool else if true then Bool else Bool
        d393 = if if d98 then d90 else d230 then if true then true else d188 else if true then true else true
        d394 : if false then if false then Bool else Bool else if true then Bool else Bool
        d394 = if if true then d384 else true then if false then d99 else false else if d360 then false else false
        d395 : if false then if true then Bool else Bool else if false then Bool else Bool
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x396 -> if x396 then d193 else false ) ) ) $ ( if true then d277 else d138 )
        d397 : ( ( Set -> Set ) ∋ ( ( λ x398 -> ( ( Set -> Set ) ∋ ( ( λ x399 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d397 = if if d32 then d256 else true then if false then d135 else false else if d36 then true else d176
        d400 : ( ( Set -> Set ) ∋ ( ( λ x403 -> ( ( Set -> Set ) ∋ ( ( λ x404 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x401 -> ( ( Bool -> Bool ) ∋ ( ( λ x402 -> d133 ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d405 : if false then if false then Bool else Bool else if false then Bool else Bool
        d405 = ( ( Bool -> Bool ) ∋ ( ( λ x406 -> if x406 then d55 else d277 ) ) ) $ ( if true then d265 else true )
        d407 : ( ( Set -> Set ) ∋ ( ( λ x410 -> if false then Bool else x410 ) ) ) $ ( if true then Bool else Bool )
        d407 = ( ( Bool -> Bool ) ∋ ( ( λ x408 -> ( ( Bool -> Bool ) ∋ ( ( λ x409 -> x408 ) ) ) $ ( d98 ) ) ) ) $ ( if d58 then false else true )
        d411 : ( ( Set -> Set ) ∋ ( ( λ x412 -> if false then x412 else Bool ) ) ) $ ( if false then Bool else Bool )
        d411 = if if false then d69 else false then if true then true else true else if d380 then false else true
        d413 : if false then if true then Bool else Bool else if false then Bool else Bool
        d413 = ( ( Bool -> Bool ) ∋ ( ( λ x414 -> ( ( Bool -> Bool ) ∋ ( ( λ x415 -> d158 ) ) ) $ ( true ) ) ) ) $ ( if false then d251 else d206 )
        d416 : if true then if false then Bool else Bool else if true then Bool else Bool
        d416 = if if true then true else d274 then if true then false else d251 else if false then true else d215
        d417 : ( ( Set -> Set ) ∋ ( ( λ x418 -> ( ( Set -> Set ) ∋ ( ( λ x419 -> x419 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d417 = if if d135 then false else d230 then if d393 then false else d153 else if true then d282 else false
        d420 : ( ( Set -> Set ) ∋ ( ( λ x423 -> ( ( Set -> Set ) ∋ ( ( λ x424 -> x423 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d420 = ( ( Bool -> Bool ) ∋ ( ( λ x421 -> ( ( Bool -> Bool ) ∋ ( ( λ x422 -> d318 ) ) ) $ ( d380 ) ) ) ) $ ( if d22 then d271 else true )
        d425 : if true then if true then Bool else Bool else if false then Bool else Bool
        d425 = if if true then true else d55 then if d186 then false else d112 else if false then true else d58
        d426 : ( ( Set -> Set ) ∋ ( ( λ x427 -> ( ( Set -> Set ) ∋ ( ( λ x428 -> x427 ) ) ) $ ( x427 ) ) ) ) $ ( if true then Bool else Bool )
        d426 = if if true then false else true then if true then d324 else d352 else if d417 then true else true
        d429 : ( ( Set -> Set ) ∋ ( ( λ x431 -> ( ( Set -> Set ) ∋ ( ( λ x432 -> Bool ) ) ) $ ( x431 ) ) ) ) $ ( if false then Bool else Bool )
        d429 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if false then d416 else true ) ) ) $ ( if d395 then d141 else false )
        d433 : if true then if false then Bool else Bool else if true then Bool else Bool
        d433 = ( ( Bool -> Bool ) ∋ ( ( λ x434 -> if d185 then true else d371 ) ) ) $ ( if d76 then false else true )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x438 -> if true then x438 else Bool ) ) ) $ ( if false then Bool else Bool )
        d435 = ( ( Bool -> Bool ) ∋ ( ( λ x436 -> ( ( Bool -> Bool ) ∋ ( ( λ x437 -> true ) ) ) $ ( x436 ) ) ) ) $ ( if true then false else true )
        d439 : if false then if true then Bool else Bool else if false then Bool else Bool
        d439 = if if d368 then d426 else d87 then if true then d27 else d329 else if false then d230 else d371
        d440 : ( ( Set -> Set ) ∋ ( ( λ x441 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d440 = if if true then d186 else false then if false then d58 else d44 else if d122 then false else false
        d442 : if false then if false then Bool else Bool else if false then Bool else Bool
        d442 = if if d261 then false else d29 then if true then false else false else if d231 then true else false
        d443 : ( ( Set -> Set ) ∋ ( ( λ x444 -> if true then Bool else x444 ) ) ) $ ( if false then Bool else Bool )
        d443 = if if d183 then true else false then if false then false else true else if d349 then false else d416
        d445 : if false then if true then Bool else Bool else if true then Bool else Bool
        d445 = ( ( Bool -> Bool ) ∋ ( ( λ x446 -> if true then x446 else d153 ) ) ) $ ( if true then d15 else true )
        d447 : if true then if false then Bool else Bool else if false then Bool else Bool
        d447 = if if d42 then d76 else false then if false then d365 else true else if false then d53 else true
        d448 : if false then if true then Bool else Bool else if true then Bool else Bool
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x449 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> d433 ) ) ) $ ( true ) ) ) ) $ ( if false then d135 else true )
        d451 : if true then if false then Bool else Bool else if false then Bool else Bool
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x452 -> ( ( Bool -> Bool ) ∋ ( ( λ x453 -> x452 ) ) ) $ ( d176 ) ) ) ) $ ( if false then true else false )
        d454 : ( ( Set -> Set ) ∋ ( ( λ x457 -> if true then x457 else x457 ) ) ) $ ( if false then Bool else Bool )
        d454 = ( ( Bool -> Bool ) ∋ ( ( λ x455 -> ( ( Bool -> Bool ) ∋ ( ( λ x456 -> x455 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d317 )
        d458 : if true then if true then Bool else Bool else if true then Bool else Bool
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x459 -> if true then d22 else x459 ) ) ) $ ( if false then false else true )
        d460 : if true then if true then Bool else Bool else if false then Bool else Bool
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x461 -> ( ( Bool -> Bool ) ∋ ( ( λ x462 -> true ) ) ) $ ( x461 ) ) ) ) $ ( if d312 then d80 else true )
        d463 : if true then if false then Bool else Bool else if true then Bool else Bool
        d463 = if if d363 then d373 else false then if d53 then d186 else d231 else if false then false else d420
        d464 : ( ( Set -> Set ) ∋ ( ( λ x465 -> ( ( Set -> Set ) ∋ ( ( λ x466 -> Bool ) ) ) $ ( x465 ) ) ) ) $ ( if false then Bool else Bool )
        d464 = if if true then true else d114 then if d411 then false else d393 else if d362 then true else d355
        d467 : if false then if false then Bool else Bool else if true then Bool else Bool
        d467 = if if d429 then false else true then if d131 then false else false else if true then false else true
        d468 : if true then if false then Bool else Bool else if true then Bool else Bool
        d468 = if if false then d118 else d171 then if d29 then d210 else true else if true then d147 else true
        d469 : if false then if false then Bool else Bool else if false then Bool else Bool
        d469 = if if false then d80 else d334 then if d1 then d367 else d13 else if d433 then false else d448
        d470 : if false then if true then Bool else Bool else if true then Bool else Bool
        d470 = if if d68 then true else true then if true then true else d147 else if d363 then d226 else d1
        d471 : if false then if true then Bool else Bool else if false then Bool else Bool
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x472 -> if d373 then d46 else x472 ) ) ) $ ( if false then false else d394 )
        d473 : ( ( Set -> Set ) ∋ ( ( λ x474 -> ( ( Set -> Set ) ∋ ( ( λ x475 -> x475 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d473 = if if d165 then d426 else d167 then if d50 then false else d194 else if false then true else d80
        d476 : ( ( Set -> Set ) ∋ ( ( λ x478 -> ( ( Set -> Set ) ∋ ( ( λ x479 -> x479 ) ) ) $ ( x478 ) ) ) ) $ ( if true then Bool else Bool )
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x477 -> if false then d103 else d282 ) ) ) $ ( if d69 then true else false )
        d480 : if true then if false then Bool else Bool else if false then Bool else Bool
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x481 -> if x481 then true else x481 ) ) ) $ ( if false then false else d395 )
        d482 : ( ( Set -> Set ) ∋ ( ( λ x485 -> if true then Bool else x485 ) ) ) $ ( if true then Bool else Bool )
        d482 = ( ( Bool -> Bool ) ∋ ( ( λ x483 -> ( ( Bool -> Bool ) ∋ ( ( λ x484 -> x484 ) ) ) $ ( x483 ) ) ) ) $ ( if d251 then d239 else false )
        d486 : ( ( Set -> Set ) ∋ ( ( λ x489 -> ( ( Set -> Set ) ∋ ( ( λ x490 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x487 -> ( ( Bool -> Bool ) ∋ ( ( λ x488 -> d94 ) ) ) $ ( x487 ) ) ) ) $ ( if d94 then true else false )
        d491 : ( ( Set -> Set ) ∋ ( ( λ x492 -> ( ( Set -> Set ) ∋ ( ( λ x493 -> x492 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d491 = if if d6 then false else d29 then if false then false else false else if true then d448 else true
        d494 : ( ( Set -> Set ) ∋ ( ( λ x495 -> ( ( Set -> Set ) ∋ ( ( λ x496 -> x496 ) ) ) $ ( x495 ) ) ) ) $ ( if false then Bool else Bool )
        d494 = if if true then false else d390 then if d458 then d244 else true else if false then false else d176
        d497 : ( ( Set -> Set ) ∋ ( ( λ x498 -> ( ( Set -> Set ) ∋ ( ( λ x499 -> x499 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d497 = if if d141 then true else true then if d114 then d22 else false else if true then true else false
        d500 : ( ( Set -> Set ) ∋ ( ( λ x501 -> if true then Bool else x501 ) ) ) $ ( if true then Bool else Bool )
        d500 = if if d87 then d448 else d133 then if true then d55 else true else if d460 then d185 else true
        d502 : ( ( Set -> Set ) ∋ ( ( λ x504 -> if true then Bool else x504 ) ) ) $ ( if false then Bool else Bool )
        d502 = ( ( Bool -> Bool ) ∋ ( ( λ x503 -> if false then x503 else d270 ) ) ) $ ( if d271 then d144 else true )
        d505 : ( ( Set -> Set ) ∋ ( ( λ x506 -> ( ( Set -> Set ) ∋ ( ( λ x507 -> Bool ) ) ) $ ( x506 ) ) ) ) $ ( if true then Bool else Bool )
        d505 = if if true then false else d135 then if d405 then d132 else true else if d27 then false else false
        d508 : if true then if true then Bool else Bool else if true then Bool else Bool
        d508 = if if d201 then true else d242 then if d307 then false else true else if d87 then true else d310
        d509 : ( ( Set -> Set ) ∋ ( ( λ x511 -> if false then x511 else Bool ) ) ) $ ( if false then Bool else Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if x510 then d349 else x510 ) ) ) $ ( if true then true else false )
        d512 : if true then if false then Bool else Bool else if true then Bool else Bool
        d512 = ( ( Bool -> Bool ) ∋ ( ( λ x513 -> if d139 then x513 else false ) ) ) $ ( if true then false else true )
        d514 : ( ( Set -> Set ) ∋ ( ( λ x515 -> ( ( Set -> Set ) ∋ ( ( λ x516 -> x516 ) ) ) $ ( x515 ) ) ) ) $ ( if false then Bool else Bool )
        d514 = if if false then d179 else true then if d365 then d321 else d13 else if false then d239 else true
        d517 : if true then if false then Bool else Bool else if true then Bool else Bool
        d517 = if if d167 then d349 else true then if false then true else false else if d284 then d362 else true
        d518 : if true then if true then Bool else Bool else if true then Bool else Bool
        d518 = ( ( Bool -> Bool ) ∋ ( ( λ x519 -> ( ( Bool -> Bool ) ∋ ( ( λ x520 -> d377 ) ) ) $ ( x519 ) ) ) ) $ ( if d184 then d135 else d482 )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x522 -> ( ( Set -> Set ) ∋ ( ( λ x523 -> Bool ) ) ) $ ( x522 ) ) ) ) $ ( if true then Bool else Bool )
        d521 = if if d251 then true else d460 then if d274 then d277 else true else if d242 then true else true
        d524 : ( ( Set -> Set ) ∋ ( ( λ x526 -> ( ( Set -> Set ) ∋ ( ( λ x527 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x525 -> if x525 then d76 else x525 ) ) ) $ ( if true then false else d201 )
        d528 : if false then if true then Bool else Bool else if true then Bool else Bool
        d528 = ( ( Bool -> Bool ) ∋ ( ( λ x529 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> false ) ) ) $ ( x529 ) ) ) ) $ ( if d318 then d42 else false )
        d531 : if false then if true then Bool else Bool else if false then Bool else Bool
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x532 -> ( ( Bool -> Bool ) ∋ ( ( λ x533 -> x532 ) ) ) $ ( d373 ) ) ) ) $ ( if d242 then true else true )
        d534 : ( ( Set -> Set ) ∋ ( ( λ x535 -> ( ( Set -> Set ) ∋ ( ( λ x536 -> x535 ) ) ) $ ( x535 ) ) ) ) $ ( if false then Bool else Bool )
        d534 = if if d149 then false else d368 then if false then d289 else d380 else if true then true else d190
        d537 : ( ( Set -> Set ) ∋ ( ( λ x538 -> if false then x538 else x538 ) ) ) $ ( if false then Bool else Bool )
        d537 = if if true then d297 else d517 then if true then d367 else false else if d397 then true else d149
        d539 : ( ( Set -> Set ) ∋ ( ( λ x541 -> ( ( Set -> Set ) ∋ ( ( λ x542 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d539 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> if d491 then false else false ) ) ) $ ( if true then d165 else false )
        d543 : if false then if true then Bool else Bool else if false then Bool else Bool
        d543 = ( ( Bool -> Bool ) ∋ ( ( λ x544 -> if d114 then true else d158 ) ) ) $ ( if true then false else d502 )
        d545 : if true then if false then Bool else Bool else if false then Bool else Bool
        d545 = ( ( Bool -> Bool ) ∋ ( ( λ x546 -> ( ( Bool -> Bool ) ∋ ( ( λ x547 -> x546 ) ) ) $ ( d242 ) ) ) ) $ ( if d265 then false else d226 )
        d548 : ( ( Set -> Set ) ∋ ( ( λ x551 -> ( ( Set -> Set ) ∋ ( ( λ x552 -> Bool ) ) ) $ ( x551 ) ) ) ) $ ( if true then Bool else Bool )
        d548 = ( ( Bool -> Bool ) ∋ ( ( λ x549 -> ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d46 ) ) ) $ ( false ) ) ) ) $ ( if d129 then true else true )
        d553 : ( ( Set -> Set ) ∋ ( ( λ x555 -> ( ( Set -> Set ) ∋ ( ( λ x556 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d553 = ( ( Bool -> Bool ) ∋ ( ( λ x554 -> if d139 then x554 else d463 ) ) ) $ ( if d93 then false else false )
        d557 : if false then if false then Bool else Bool else if false then Bool else Bool
        d557 = ( ( Bool -> Bool ) ∋ ( ( λ x558 -> ( ( Bool -> Bool ) ∋ ( ( λ x559 -> x559 ) ) ) $ ( x558 ) ) ) ) $ ( if d32 then d305 else d114 )
        d560 : if false then if true then Bool else Bool else if true then Bool else Bool
        d560 = if if true then d518 else true then if d183 then false else true else if d454 then true else true
        d561 : if true then if true then Bool else Bool else if false then Bool else Bool
        d561 = if if true then d386 else d305 then if true then true else false else if true then true else d183
        d562 : ( ( Set -> Set ) ∋ ( ( λ x565 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d562 = ( ( Bool -> Bool ) ∋ ( ( λ x563 -> ( ( Bool -> Bool ) ∋ ( ( λ x564 -> false ) ) ) $ ( d188 ) ) ) ) $ ( if true then d68 else d426 )
        d566 : if false then if true then Bool else Bool else if false then Bool else Bool
        d566 = if if d471 then false else true then if d138 then d206 else false else if d357 then d514 else d497
        d567 : if false then if true then Bool else Bool else if true then Bool else Bool
        d567 = ( ( Bool -> Bool ) ∋ ( ( λ x568 -> if d242 then x568 else x568 ) ) ) $ ( if d15 then true else false )
        d569 : ( ( Set -> Set ) ∋ ( ( λ x571 -> if true then Bool else x571 ) ) ) $ ( if true then Bool else Bool )
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if d380 then false else x570 ) ) ) $ ( if true then d524 else false )
        d572 : ( ( Set -> Set ) ∋ ( ( λ x573 -> if true then x573 else Bool ) ) ) $ ( if true then Bool else Bool )
        d572 = if if d176 then false else false then if d135 then false else d90 else if true then d463 else d269
        d574 : if true then if false then Bool else Bool else if false then Bool else Bool
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x575 -> ( ( Bool -> Bool ) ∋ ( ( λ x576 -> d108 ) ) ) $ ( d500 ) ) ) ) $ ( if d211 then false else d79 )
        d577 : ( ( Set -> Set ) ∋ ( ( λ x578 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d577 = if if true then d534 else d365 then if false then false else false else if d429 then true else d284
        d579 : if false then if false then Bool else Bool else if false then Bool else Bool
        d579 = if if true then d471 else d126 then if true then d135 else d539 else if d338 then true else false
        d580 : ( ( Set -> Set ) ∋ ( ( λ x583 -> if false then Bool else x583 ) ) ) $ ( if false then Bool else Bool )
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x581 -> ( ( Bool -> Bool ) ∋ ( ( λ x582 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d584 : if false then if true then Bool else Bool else if true then Bool else Bool
        d584 = ( ( Bool -> Bool ) ∋ ( ( λ x585 -> ( ( Bool -> Bool ) ∋ ( ( λ x586 -> x585 ) ) ) $ ( true ) ) ) ) $ ( if d307 then d304 else d76 )
        d587 : ( ( Set -> Set ) ∋ ( ( λ x588 -> ( ( Set -> Set ) ∋ ( ( λ x589 -> Bool ) ) ) $ ( x588 ) ) ) ) $ ( if true then Bool else Bool )
        d587 = if if d327 then false else true then if d464 then false else d566 else if false then false else d509
        d590 : ( ( Set -> Set ) ∋ ( ( λ x591 -> if false then x591 else x591 ) ) ) $ ( if false then Bool else Bool )
        d590 = if if true then true else false then if false then d400 else false else if false then false else false
        d592 : ( ( Set -> Set ) ∋ ( ( λ x595 -> ( ( Set -> Set ) ∋ ( ( λ x596 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x593 -> ( ( Bool -> Bool ) ∋ ( ( λ x594 -> x594 ) ) ) $ ( true ) ) ) ) $ ( if d524 then d99 else false )
        d597 : if false then if true then Bool else Bool else if true then Bool else Bool
        d597 = if if d543 then d112 else false then if true then d165 else true else if false then false else d245
        d598 : if false then if true then Bool else Bool else if false then Bool else Bool
        d598 = ( ( Bool -> Bool ) ∋ ( ( λ x599 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> d32 ) ) ) $ ( x599 ) ) ) ) $ ( if true then false else d9 )
        d601 : ( ( Set -> Set ) ∋ ( ( λ x602 -> if true then x602 else Bool ) ) ) $ ( if false then Bool else Bool )
        d601 = if if true then true else false then if true then d464 else d334 else if false then false else true
        d603 : ( ( Set -> Set ) ∋ ( ( λ x605 -> ( ( Set -> Set ) ∋ ( ( λ x606 -> x606 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d603 = ( ( Bool -> Bool ) ∋ ( ( λ x604 -> if true then false else x604 ) ) ) $ ( if true then d76 else d537 )
        d607 : if false then if false then Bool else Bool else if false then Bool else Bool
        d607 = ( ( Bool -> Bool ) ∋ ( ( λ x608 -> ( ( Bool -> Bool ) ∋ ( ( λ x609 -> true ) ) ) $ ( x608 ) ) ) ) $ ( if true then true else true )
        d610 : if false then if true then Bool else Bool else if true then Bool else Bool
        d610 = ( ( Bool -> Bool ) ∋ ( ( λ x611 -> ( ( Bool -> Bool ) ∋ ( ( λ x612 -> d131 ) ) ) $ ( x611 ) ) ) ) $ ( if true then true else d334 )
        d613 : ( ( Set -> Set ) ∋ ( ( λ x614 -> if true then x614 else x614 ) ) ) $ ( if false then Bool else Bool )
        d613 = if if false then false else d420 then if d514 then true else d343 else if d411 then true else false
        d615 : ( ( Set -> Set ) ∋ ( ( λ x616 -> if true then x616 else Bool ) ) ) $ ( if true then Bool else Bool )
        d615 = if if false then false else d108 then if false then d425 else true else if d98 then d184 else d179
        d617 : ( ( Set -> Set ) ∋ ( ( λ x618 -> if false then Bool else x618 ) ) ) $ ( if false then Bool else Bool )
        d617 = if if false then false else d528 then if d215 then true else d226 else if d463 then d321 else true
        d619 : if true then if false then Bool else Bool else if false then Bool else Bool
        d619 = if if d226 then true else true then if d508 then d94 else d139 else if d270 then d176 else d345
        d620 : ( ( Set -> Set ) ∋ ( ( λ x621 -> ( ( Set -> Set ) ∋ ( ( λ x622 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d620 = if if false then d577 else true then if false then false else false else if false then false else d179
        d623 : if true then if true then Bool else Bool else if true then Bool else Bool
        d623 = if if d171 then d259 else d471 then if false then d116 else d10 else if false then d153 else d534
        d624 : if false then if true then Bool else Bool else if true then Bool else Bool
        d624 = ( ( Bool -> Bool ) ∋ ( ( λ x625 -> ( ( Bool -> Bool ) ∋ ( ( λ x626 -> true ) ) ) $ ( x625 ) ) ) ) $ ( if d321 then false else d126 )
        d627 : ( ( Set -> Set ) ∋ ( ( λ x629 -> ( ( Set -> Set ) ∋ ( ( λ x630 -> Bool ) ) ) $ ( x629 ) ) ) ) $ ( if true then Bool else Bool )
        d627 = ( ( Bool -> Bool ) ∋ ( ( λ x628 -> if d98 then false else true ) ) ) $ ( if d165 then d338 else d312 )
        d631 : ( ( Set -> Set ) ∋ ( ( λ x633 -> ( ( Set -> Set ) ∋ ( ( λ x634 -> Bool ) ) ) $ ( x633 ) ) ) ) $ ( if false then Bool else Bool )
        d631 = ( ( Bool -> Bool ) ∋ ( ( λ x632 -> if x632 then x632 else false ) ) ) $ ( if true then d482 else true )
        d635 : ( ( Set -> Set ) ∋ ( ( λ x636 -> ( ( Set -> Set ) ∋ ( ( λ x637 -> x636 ) ) ) $ ( x636 ) ) ) ) $ ( if true then Bool else Bool )
        d635 = if if d274 then false else true then if true then false else true else if d307 then d572 else d435
        d638 : if true then if true then Bool else Bool else if false then Bool else Bool
        d638 = if if d217 then false else true then if d627 then d86 else true else if false then true else false
        d639 : if false then if false then Bool else Bool else if true then Bool else Bool
        d639 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if true then d539 else x640 ) ) ) $ ( if true then d357 else d345 )
        d641 : ( ( Set -> Set ) ∋ ( ( λ x644 -> ( ( Set -> Set ) ∋ ( ( λ x645 -> Bool ) ) ) $ ( x644 ) ) ) ) $ ( if true then Bool else Bool )
        d641 = ( ( Bool -> Bool ) ∋ ( ( λ x642 -> ( ( Bool -> Bool ) ∋ ( ( λ x643 -> d184 ) ) ) $ ( x642 ) ) ) ) $ ( if false then d289 else false )
        d646 : if true then if true then Bool else Bool else if true then Bool else Bool
        d646 = if if d327 then false else d193 then if d416 then true else d375 else if false then d413 else d116
        d647 : if false then if false then Bool else Bool else if false then Bool else Bool
        d647 = if if false then true else d104 then if d345 then false else d584 else if d580 then true else d518
        d648 : ( ( Set -> Set ) ∋ ( ( λ x649 -> if false then Bool else x649 ) ) ) $ ( if true then Bool else Bool )
        d648 = if if d400 then false else true then if d548 then true else d560 else if d153 then true else true
        d650 : ( ( Set -> Set ) ∋ ( ( λ x651 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d650 = if if true then d138 else true then if d334 then false else false else if d13 then d512 else false
        d652 : ( ( Set -> Set ) ∋ ( ( λ x654 -> if true then x654 else x654 ) ) ) $ ( if true then Bool else Bool )
        d652 = ( ( Bool -> Bool ) ∋ ( ( λ x653 -> if x653 then x653 else x653 ) ) ) $ ( if false then d324 else false )
        d655 : ( ( Set -> Set ) ∋ ( ( λ x658 -> if true then Bool else x658 ) ) ) $ ( if false then Bool else Bool )
        d655 = ( ( Bool -> Bool ) ∋ ( ( λ x656 -> ( ( Bool -> Bool ) ∋ ( ( λ x657 -> x656 ) ) ) $ ( x656 ) ) ) ) $ ( if false then false else d639 )
        d659 : ( ( Set -> Set ) ∋ ( ( λ x660 -> ( ( Set -> Set ) ∋ ( ( λ x661 -> Bool ) ) ) $ ( x660 ) ) ) ) $ ( if false then Bool else Bool )
        d659 = if if d351 then d650 else false then if d116 then d373 else d318 else if d411 then d248 else true
        d662 : ( ( Set -> Set ) ∋ ( ( λ x663 -> ( ( Set -> Set ) ∋ ( ( λ x664 -> x664 ) ) ) $ ( x663 ) ) ) ) $ ( if true then Bool else Bool )
        d662 = if if true then d574 else true then if d90 then false else false else if d206 then d122 else d405
        d665 : if true then if true then Bool else Bool else if true then Bool else Bool
        d665 = if if false then true else true then if d534 then false else true else if false then true else true
        d666 : ( ( Set -> Set ) ∋ ( ( λ x667 -> ( ( Set -> Set ) ∋ ( ( λ x668 -> x668 ) ) ) $ ( x667 ) ) ) ) $ ( if false then Bool else Bool )
        d666 = if if true then d357 else true then if true then true else d129 else if d619 then d494 else false
        d669 : if true then if false then Bool else Bool else if true then Bool else Bool
        d669 = if if true then d508 else false then if false then false else d188 else if false then false else false
        d670 : ( ( Set -> Set ) ∋ ( ( λ x673 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d670 = ( ( Bool -> Bool ) ∋ ( ( λ x671 -> ( ( Bool -> Bool ) ∋ ( ( λ x672 -> d384 ) ) ) $ ( d468 ) ) ) ) $ ( if false then d375 else d329 )
        d674 : ( ( Set -> Set ) ∋ ( ( λ x676 -> if true then Bool else x676 ) ) ) $ ( if true then Bool else Bool )
        d674 = ( ( Bool -> Bool ) ∋ ( ( λ x675 -> if d433 then x675 else true ) ) ) $ ( if d360 then true else d312 )
        d677 : if false then if false then Bool else Bool else if false then Bool else Bool
        d677 = ( ( Bool -> Bool ) ∋ ( ( λ x678 -> if d539 then true else d524 ) ) ) $ ( if false then true else false )
        d679 : ( ( Set -> Set ) ∋ ( ( λ x680 -> if false then Bool else x680 ) ) ) $ ( if true then Bool else Bool )
        d679 = if if d433 then false else false then if false then d312 else d357 else if false then false else d108
        d681 : if true then if true then Bool else Bool else if true then Bool else Bool
        d681 = ( ( Bool -> Bool ) ∋ ( ( λ x682 -> if false then x682 else true ) ) ) $ ( if d66 then d69 else d355 )
        d683 : ( ( Set -> Set ) ∋ ( ( λ x686 -> ( ( Set -> Set ) ∋ ( ( λ x687 -> x687 ) ) ) $ ( x686 ) ) ) ) $ ( if false then Bool else Bool )
        d683 = ( ( Bool -> Bool ) ∋ ( ( λ x684 -> ( ( Bool -> Bool ) ∋ ( ( λ x685 -> true ) ) ) $ ( false ) ) ) ) $ ( if d317 then true else true )
        d688 : if false then if true then Bool else Bool else if true then Bool else Bool
        d688 = if if true then d17 else d144 then if d27 then true else d480 else if true then d36 else d574
        d689 : if true then if true then Bool else Bool else if false then Bool else Bool
        d689 = if if false then d68 else d307 then if true then false else d394 else if true then true else true
        d690 : ( ( Set -> Set ) ∋ ( ( λ x691 -> ( ( Set -> Set ) ∋ ( ( λ x692 -> x692 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d690 = if if false then d597 else true then if d90 then true else false else if d118 then true else d362
        d693 : if true then if false then Bool else Bool else if false then Bool else Bool
        d693 = if if d683 then d518 else d517 then if d251 then d135 else d662 else if true then d482 else true
        d694 : if true then if false then Bool else Bool else if true then Bool else Bool
        d694 = if if false then d469 else d242 then if true then true else true else if d87 then d426 else false
        d695 : ( ( Set -> Set ) ∋ ( ( λ x697 -> ( ( Set -> Set ) ∋ ( ( λ x698 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d695 = ( ( Bool -> Bool ) ∋ ( ( λ x696 -> if x696 then true else x696 ) ) ) $ ( if d650 then d38 else true )
        d699 : if true then if true then Bool else Bool else if false then Bool else Bool
        d699 = if if false then true else d613 then if false then d610 else true else if d420 then false else true
        d700 : if true then if false then Bool else Bool else if false then Bool else Bool
        d700 = if if false then d188 else d638 then if d699 then true else true else if d129 then d112 else false
        d701 : if false then if false then Bool else Bool else if false then Bool else Bool
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x702 -> if false then true else d534 ) ) ) $ ( if false then d294 else d695 )
        d703 : if true then if false then Bool else Bool else if true then Bool else Bool
        d703 = ( ( Bool -> Bool ) ∋ ( ( λ x704 -> if false then d297 else x704 ) ) ) $ ( if false then d259 else d325 )
        d705 : if true then if false then Bool else Bool else if false then Bool else Bool
        d705 = if if false then true else false then if false then true else true else if d500 then d395 else false
        d706 : ( ( Set -> Set ) ∋ ( ( λ x707 -> ( ( Set -> Set ) ∋ ( ( λ x708 -> x708 ) ) ) $ ( x707 ) ) ) ) $ ( if false then Bool else Bool )
        d706 = if if true then d497 else false then if false then d569 else d114 else if d42 then d566 else true
        d709 : if false then if false then Bool else Bool else if false then Bool else Bool
        d709 = if if false then false else d497 then if false then false else d574 else if d620 then d500 else d639
        d710 : if false then if true then Bool else Bool else if true then Bool else Bool
        d710 = if if d517 then d405 else false then if d210 then true else d627 else if true then true else d185
        d711 : ( ( Set -> Set ) ∋ ( ( λ x713 -> ( ( Set -> Set ) ∋ ( ( λ x714 -> x714 ) ) ) $ ( x713 ) ) ) ) $ ( if true then Bool else Bool )
        d711 = ( ( Bool -> Bool ) ∋ ( ( λ x712 -> if d194 then x712 else x712 ) ) ) $ ( if d194 then false else d567 )
        d715 : if true then if true then Bool else Bool else if false then Bool else Bool
        d715 = ( ( Bool -> Bool ) ∋ ( ( λ x716 -> ( ( Bool -> Bool ) ∋ ( ( λ x717 -> d318 ) ) ) $ ( d66 ) ) ) ) $ ( if true then false else true )
        d718 : if true then if false then Bool else Bool else if true then Bool else Bool
        d718 = ( ( Bool -> Bool ) ∋ ( ( λ x719 -> ( ( Bool -> Bool ) ∋ ( ( λ x720 -> true ) ) ) $ ( true ) ) ) ) $ ( if d42 then true else d524 )
        d721 : if true then if false then Bool else Bool else if false then Bool else Bool
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x722 -> if true then false else d248 ) ) ) $ ( if d694 then d429 else true )
        d723 : ( ( Set -> Set ) ∋ ( ( λ x724 -> if true then x724 else Bool ) ) ) $ ( if false then Bool else Bool )
        d723 = if if true then false else true then if false then d469 else false else if true then d13 else d426
        d725 : ( ( Set -> Set ) ∋ ( ( λ x727 -> ( ( Set -> Set ) ∋ ( ( λ x728 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d725 = ( ( Bool -> Bool ) ∋ ( ( λ x726 -> if false then x726 else true ) ) ) $ ( if d3 then true else d66 )
        d729 : ( ( Set -> Set ) ∋ ( ( λ x730 -> if true then Bool else x730 ) ) ) $ ( if true then Bool else Bool )
        d729 = if if false then d245 else true then if d38 then false else d131 else if d193 then true else false
        d731 : ( ( Set -> Set ) ∋ ( ( λ x732 -> if false then x732 else x732 ) ) ) $ ( if true then Bool else Bool )
        d731 = if if false then true else d480 then if d86 then true else d445 else if d566 then false else d98
        d733 : ( ( Set -> Set ) ∋ ( ( λ x736 -> ( ( Set -> Set ) ∋ ( ( λ x737 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d733 = ( ( Bool -> Bool ) ∋ ( ( λ x734 -> ( ( Bool -> Bool ) ∋ ( ( λ x735 -> d58 ) ) ) $ ( d623 ) ) ) ) $ ( if true then d482 else false )
        d738 : if true then if true then Bool else Bool else if false then Bool else Bool
        d738 = if if d413 then false else false then if d22 then true else true else if d144 then d607 else true
        d739 : if false then if true then Bool else Bool else if false then Bool else Bool
        d739 = if if false then true else d205 then if false then d165 else d307 else if d171 then true else d562
        d740 : ( ( Set -> Set ) ∋ ( ( λ x741 -> ( ( Set -> Set ) ∋ ( ( λ x742 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d740 = if if false then false else true then if false then d718 else false else if d132 then d393 else true
        d743 : ( ( Set -> Set ) ∋ ( ( λ x746 -> ( ( Set -> Set ) ∋ ( ( λ x747 -> Bool ) ) ) $ ( x746 ) ) ) ) $ ( if false then Bool else Bool )
        d743 = ( ( Bool -> Bool ) ∋ ( ( λ x744 -> ( ( Bool -> Bool ) ∋ ( ( λ x745 -> d13 ) ) ) $ ( d601 ) ) ) ) $ ( if d94 then d598 else d480 )
        d748 : if true then if true then Bool else Bool else if true then Bool else Bool
        d748 = if if false then d62 else true then if d700 then d517 else false else if true then d655 else false
        d749 : ( ( Set -> Set ) ∋ ( ( λ x750 -> ( ( Set -> Set ) ∋ ( ( λ x751 -> x751 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d749 = if if d64 then d112 else false then if d338 then d429 else false else if false then false else d579
        d752 : ( ( Set -> Set ) ∋ ( ( λ x753 -> if false then x753 else Bool ) ) ) $ ( if true then Bool else Bool )
        d752 = if if true then true else d627 then if false then true else d365 else if true then true else d517
        d754 : ( ( Set -> Set ) ∋ ( ( λ x755 -> ( ( Set -> Set ) ∋ ( ( λ x756 -> Bool ) ) ) $ ( x755 ) ) ) ) $ ( if true then Bool else Bool )
        d754 = if if false then true else false then if d482 then d617 else d480 else if d93 then false else false
        d757 : ( ( Set -> Set ) ∋ ( ( λ x759 -> if false then x759 else x759 ) ) ) $ ( if false then Bool else Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x758 -> if x758 then false else d545 ) ) ) $ ( if true then true else d426 )
        d760 : ( ( Set -> Set ) ∋ ( ( λ x762 -> ( ( Set -> Set ) ∋ ( ( λ x763 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d760 = ( ( Bool -> Bool ) ∋ ( ( λ x761 -> if d397 then d13 else x761 ) ) ) $ ( if true then false else d108 )
        d764 : ( ( Set -> Set ) ∋ ( ( λ x767 -> if true then x767 else Bool ) ) ) $ ( if true then Bool else Bool )
        d764 = ( ( Bool -> Bool ) ∋ ( ( λ x765 -> ( ( Bool -> Bool ) ∋ ( ( λ x766 -> true ) ) ) $ ( d248 ) ) ) ) $ ( if true then false else true )
        d768 : if false then if true then Bool else Bool else if true then Bool else Bool
        d768 = ( ( Bool -> Bool ) ∋ ( ( λ x769 -> ( ( Bool -> Bool ) ∋ ( ( λ x770 -> d325 ) ) ) $ ( x769 ) ) ) ) $ ( if d371 then d377 else d352 )
        d771 : ( ( Set -> Set ) ∋ ( ( λ x772 -> ( ( Set -> Set ) ∋ ( ( λ x773 -> x773 ) ) ) $ ( x772 ) ) ) ) $ ( if true then Bool else Bool )
        d771 = if if d494 then d194 else d597 then if false then d138 else d183 else if true then true else d569
        d774 : if false then if false then Bool else Bool else if true then Bool else Bool
        d774 = ( ( Bool -> Bool ) ∋ ( ( λ x775 -> if false then x775 else x775 ) ) ) $ ( if true then d371 else true )
        d776 : ( ( Set -> Set ) ∋ ( ( λ x779 -> ( ( Set -> Set ) ∋ ( ( λ x780 -> x780 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d776 = ( ( Bool -> Bool ) ∋ ( ( λ x777 -> ( ( Bool -> Bool ) ∋ ( ( λ x778 -> true ) ) ) $ ( x777 ) ) ) ) $ ( if false then true else false )
        d781 : ( ( Set -> Set ) ∋ ( ( λ x783 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d781 = ( ( Bool -> Bool ) ∋ ( ( λ x782 -> if x782 then false else d569 ) ) ) $ ( if d10 then d440 else true )
        d784 : if false then if true then Bool else Bool else if true then Bool else Bool
        d784 = ( ( Bool -> Bool ) ∋ ( ( λ x785 -> if x785 then x785 else true ) ) ) $ ( if d469 then false else d771 )
        d786 : if false then if false then Bool else Bool else if false then Bool else Bool
        d786 = ( ( Bool -> Bool ) ∋ ( ( λ x787 -> ( ( Bool -> Bool ) ∋ ( ( λ x788 -> x787 ) ) ) $ ( x787 ) ) ) ) $ ( if d83 then d122 else true )
        d789 : ( ( Set -> Set ) ∋ ( ( λ x791 -> if true then x791 else x791 ) ) ) $ ( if false then Bool else Bool )
        d789 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if true then d155 else x790 ) ) ) $ ( if true then d62 else true )
        d792 : if true then if false then Bool else Bool else if true then Bool else Bool
        d792 = if if d553 then d749 else false then if d426 then d502 else d417 else if d259 then d161 else d239
        d793 : if false then if false then Bool else Bool else if true then Bool else Bool
        d793 = ( ( Bool -> Bool ) ∋ ( ( λ x794 -> if x794 then d259 else true ) ) ) $ ( if false then false else false )
        d795 : ( ( Set -> Set ) ∋ ( ( λ x796 -> ( ( Set -> Set ) ∋ ( ( λ x797 -> x796 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d795 = if if d531 then true else false then if d494 then d617 else d126 else if d557 then d592 else false
        d798 : if false then if true then Bool else Bool else if false then Bool else Bool
        d798 = if if false then false else false then if false then d590 else false else if false then false else d445
        d799 : if true then if false then Bool else Bool else if false then Bool else Bool
        d799 = if if true then true else d580 then if true then d688 else d451 else if d68 then true else d79
        d800 : if true then if true then Bool else Bool else if false then Bool else Bool
        d800 = ( ( Bool -> Bool ) ∋ ( ( λ x801 -> ( ( Bool -> Bool ) ∋ ( ( λ x802 -> d284 ) ) ) $ ( x801 ) ) ) ) $ ( if false then false else d321 )
        d803 : if false then if true then Bool else Bool else if true then Bool else Bool
        d803 = if if true then false else d394 then if d701 then d244 else false else if d458 then d131 else true
        d804 : ( ( Set -> Set ) ∋ ( ( λ x807 -> ( ( Set -> Set ) ∋ ( ( λ x808 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d804 = ( ( Bool -> Bool ) ∋ ( ( λ x805 -> ( ( Bool -> Bool ) ∋ ( ( λ x806 -> false ) ) ) $ ( d665 ) ) ) ) $ ( if d244 then d584 else d468 )
        d809 : if false then if false then Bool else Bool else if false then Bool else Bool
        d809 = if if false then d155 else true then if d365 then true else d118 else if d22 then true else d345
        d810 : if false then if false then Bool else Bool else if false then Bool else Bool
        d810 = ( ( Bool -> Bool ) ∋ ( ( λ x811 -> ( ( Bool -> Bool ) ∋ ( ( λ x812 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then d76 else d73 )
        d813 : ( ( Set -> Set ) ∋ ( ( λ x814 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d813 = if if d112 then true else true then if false then true else true else if false then true else d670
        d815 : if true then if false then Bool else Bool else if true then Bool else Bool
        d815 = if if d733 then d365 else d537 then if true then d184 else d367 else if d652 then d55 else d439
        d816 : if true then if true then Bool else Bool else if false then Bool else Bool
        d816 = if if true then d116 else false then if true then false else d367 else if true then d312 else false
        d817 : if true then if true then Bool else Bool else if false then Bool else Bool
        d817 = if if true then d531 else d15 then if d194 then d27 else true else if true then d147 else true
        d818 : if true then if false then Bool else Bool else if true then Bool else Bool
        d818 = if if d567 then false else false then if d548 then false else d3 else if false then false else d679
        d819 : ( ( Set -> Set ) ∋ ( ( λ x821 -> ( ( Set -> Set ) ∋ ( ( λ x822 -> Bool ) ) ) $ ( x821 ) ) ) ) $ ( if false then Bool else Bool )
        d819 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if true then x820 else d733 ) ) ) $ ( if d545 then d635 else false )
        d823 : if true then if true then Bool else Bool else if false then Bool else Bool
        d823 = if if false then false else d620 then if d603 then d126 else false else if d757 then d700 else d677
        d824 : if false then if false then Bool else Bool else if false then Bool else Bool
        d824 = if if true then true else false then if true then d517 else d442 else if d577 then d681 else d193
        d825 : ( ( Set -> Set ) ∋ ( ( λ x828 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d825 = ( ( Bool -> Bool ) ∋ ( ( λ x826 -> ( ( Bool -> Bool ) ∋ ( ( λ x827 -> true ) ) ) $ ( x826 ) ) ) ) $ ( if d641 then false else true )
        d829 : if false then if true then Bool else Bool else if true then Bool else Bool
        d829 = if if d222 then false else true then if true then d803 else d448 else if d86 then false else false
        d830 : ( ( Set -> Set ) ∋ ( ( λ x831 -> if true then x831 else Bool ) ) ) $ ( if true then Bool else Bool )
        d830 = if if d158 then true else false then if true then true else d635 else if true then true else d395
        d832 : ( ( Set -> Set ) ∋ ( ( λ x835 -> ( ( Set -> Set ) ∋ ( ( λ x836 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d832 = ( ( Bool -> Bool ) ∋ ( ( λ x833 -> ( ( Bool -> Bool ) ∋ ( ( λ x834 -> d440 ) ) ) $ ( false ) ) ) ) $ ( if d211 then true else d405 )
        d837 : ( ( Set -> Set ) ∋ ( ( λ x838 -> ( ( Set -> Set ) ∋ ( ( λ x839 -> x838 ) ) ) $ ( x838 ) ) ) ) $ ( if false then Bool else Bool )
        d837 = if if false then false else d1 then if d786 then false else true else if true then true else d126
        d840 : if false then if false then Bool else Bool else if true then Bool else Bool
        d840 = ( ( Bool -> Bool ) ∋ ( ( λ x841 -> ( ( Bool -> Bool ) ∋ ( ( λ x842 -> d694 ) ) ) $ ( false ) ) ) ) $ ( if false then d829 else d491 )
        d843 : if false then if false then Bool else Bool else if false then Bool else Bool
        d843 = ( ( Bool -> Bool ) ∋ ( ( λ x844 -> if x844 then x844 else false ) ) ) $ ( if true then true else d681 )
        d845 : if false then if false then Bool else Bool else if false then Bool else Bool
        d845 = ( ( Bool -> Bool ) ∋ ( ( λ x846 -> if false then d327 else x846 ) ) ) $ ( if true then d512 else true )
        d847 : ( ( Set -> Set ) ∋ ( ( λ x848 -> ( ( Set -> Set ) ∋ ( ( λ x849 -> x849 ) ) ) $ ( x848 ) ) ) ) $ ( if true then Bool else Bool )
        d847 = if if false then d373 else d674 then if d740 then false else false else if false then d334 else true
        d850 : if false then if false then Bool else Bool else if false then Bool else Bool
        d850 = ( ( Bool -> Bool ) ∋ ( ( λ x851 -> ( ( Bool -> Bool ) ∋ ( ( λ x852 -> true ) ) ) $ ( d338 ) ) ) ) $ ( if false then d447 else false )
        d853 : if true then if true then Bool else Bool else if false then Bool else Bool
        d853 = ( ( Bool -> Bool ) ∋ ( ( λ x854 -> ( ( Bool -> Bool ) ∋ ( ( λ x855 -> true ) ) ) $ ( d226 ) ) ) ) $ ( if d22 then false else d205 )
        d856 : ( ( Set -> Set ) ∋ ( ( λ x858 -> ( ( Set -> Set ) ∋ ( ( λ x859 -> x858 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d856 = ( ( Bool -> Bool ) ∋ ( ( λ x857 -> if d592 then x857 else true ) ) ) $ ( if d738 then d476 else d206 )
        d860 : ( ( Set -> Set ) ∋ ( ( λ x863 -> ( ( Set -> Set ) ∋ ( ( λ x864 -> x863 ) ) ) $ ( x863 ) ) ) ) $ ( if false then Bool else Bool )
        d860 = ( ( Bool -> Bool ) ∋ ( ( λ x861 -> ( ( Bool -> Bool ) ∋ ( ( λ x862 -> x862 ) ) ) $ ( x861 ) ) ) ) $ ( if d345 then d650 else d731 )
        d865 : ( ( Set -> Set ) ∋ ( ( λ x866 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d865 = if if d122 then d467 else false then if d733 then d580 else d217 else if true then true else d73
        d867 : if true then if true then Bool else Bool else if false then Bool else Bool
        d867 = if if d6 then false else d715 then if d429 then d655 else false else if d362 then d738 else d451
        d868 : if true then if false then Bool else Bool else if false then Bool else Bool
        d868 = if if false then false else false then if true then d377 else d613 else if d277 then true else true
        d869 : if true then if false then Bool else Bool else if true then Bool else Bool
        d869 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> ( ( Bool -> Bool ) ∋ ( ( λ x871 -> x871 ) ) ) $ ( true ) ) ) ) $ ( if d245 then d458 else true )
        d872 : ( ( Set -> Set ) ∋ ( ( λ x874 -> ( ( Set -> Set ) ∋ ( ( λ x875 -> Bool ) ) ) $ ( x874 ) ) ) ) $ ( if true then Bool else Bool )
        d872 = ( ( Bool -> Bool ) ∋ ( ( λ x873 -> if d386 then x873 else x873 ) ) ) $ ( if false then false else d771 )
        d876 : ( ( Set -> Set ) ∋ ( ( λ x877 -> ( ( Set -> Set ) ∋ ( ( λ x878 -> x878 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d876 = if if d62 then d167 else d79 then if d46 then true else true else if false then false else d86
        d879 : ( ( Set -> Set ) ∋ ( ( λ x880 -> if false then Bool else x880 ) ) ) $ ( if false then Bool else Bool )
        d879 = if if d619 then false else false then if d655 then false else d545 else if d757 then d1 else false
        d881 : ( ( Set -> Set ) ∋ ( ( λ x882 -> if false then Bool else x882 ) ) ) $ ( if false then Bool else Bool )
        d881 = if if d161 then d373 else true then if true then d66 else true else if d486 then true else true
        d883 : ( ( Set -> Set ) ∋ ( ( λ x884 -> if true then Bool else x884 ) ) ) $ ( if true then Bool else Bool )
        d883 = if if d248 then d324 else false then if true then d230 else false else if false then d617 else d338
        d885 : if true then if false then Bool else Bool else if false then Bool else Bool
        d885 = if if false then false else true then if false then true else true else if d62 then false else false
        d886 : if false then if true then Bool else Bool else if false then Bool else Bool
        d886 = if if true then false else d662 then if false then d380 else false else if d872 then true else d53
        d887 : if false then if false then Bool else Bool else if false then Bool else Bool
        d887 = if if d76 then false else d351 then if true then d188 else d194 else if d226 then true else d343
        d888 : if false then if true then Bool else Bool else if false then Bool else Bool
        d888 = ( ( Bool -> Bool ) ∋ ( ( λ x889 -> if x889 then d368 else true ) ) ) $ ( if d133 then d607 else d543 )
        d890 : if true then if true then Bool else Bool else if false then Bool else Bool
        d890 = ( ( Bool -> Bool ) ∋ ( ( λ x891 -> if d274 then d832 else x891 ) ) ) $ ( if true then d627 else true )
        d892 : if false then if true then Bool else Bool else if false then Bool else Bool
        d892 = if if d458 then true else d793 then if d135 then true else d706 else if false then false else false
        d893 : ( ( Set -> Set ) ∋ ( ( λ x896 -> ( ( Set -> Set ) ∋ ( ( λ x897 -> Bool ) ) ) $ ( x896 ) ) ) ) $ ( if false then Bool else Bool )
        d893 = ( ( Bool -> Bool ) ∋ ( ( λ x894 -> ( ( Bool -> Bool ) ∋ ( ( λ x895 -> d377 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d898 : if false then if true then Bool else Bool else if true then Bool else Bool
        d898 = if if d694 then d740 else d893 then if d463 then d304 else true else if false then false else true
        d899 : ( ( Set -> Set ) ∋ ( ( λ x901 -> if false then x901 else x901 ) ) ) $ ( if false then Bool else Bool )
        d899 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if true then true else x900 ) ) ) $ ( if d646 then d548 else true )
        d902 : ( ( Set -> Set ) ∋ ( ( λ x903 -> if true then Bool else x903 ) ) ) $ ( if false then Bool else Bool )
        d902 = if if d584 then d598 else d407 then if d231 then true else false else if d865 then true else d693
        d904 : ( ( Set -> Set ) ∋ ( ( λ x907 -> ( ( Set -> Set ) ∋ ( ( λ x908 -> Bool ) ) ) $ ( x907 ) ) ) ) $ ( if false then Bool else Bool )
        d904 = ( ( Bool -> Bool ) ∋ ( ( λ x905 -> ( ( Bool -> Bool ) ∋ ( ( λ x906 -> d50 ) ) ) $ ( d566 ) ) ) ) $ ( if d251 then d373 else d784 )
        d909 : if true then if true then Bool else Bool else if true then Bool else Bool
        d909 = if if false then d567 else d635 then if true then d473 else true else if true then true else true
        d910 : if false then if false then Bool else Bool else if false then Bool else Bool
        d910 = if if d98 then d433 else true then if false then false else true else if true then true else false
        d911 : ( ( Set -> Set ) ∋ ( ( λ x912 -> ( ( Set -> Set ) ∋ ( ( λ x913 -> Bool ) ) ) $ ( x912 ) ) ) ) $ ( if false then Bool else Bool )
        d911 = if if d512 then d659 else d183 then if d512 then d768 else true else if d879 then true else true
        d914 : if false then if true then Bool else Bool else if false then Bool else Bool
        d914 = ( ( Bool -> Bool ) ∋ ( ( λ x915 -> if d740 then false else d865 ) ) ) $ ( if d815 then true else d469 )
        d916 : ( ( Set -> Set ) ∋ ( ( λ x917 -> ( ( Set -> Set ) ∋ ( ( λ x918 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d916 = if if true then d46 else true then if false then d386 else d185 else if d211 then false else d420
        d919 : if false then if true then Bool else Bool else if false then Bool else Bool
        d919 = if if d627 then false else false then if false then true else true else if false then true else d909
        d920 : ( ( Set -> Set ) ∋ ( ( λ x923 -> ( ( Set -> Set ) ∋ ( ( λ x924 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d920 = ( ( Bool -> Bool ) ∋ ( ( λ x921 -> ( ( Bool -> Bool ) ∋ ( ( λ x922 -> x921 ) ) ) $ ( d332 ) ) ) ) $ ( if true then d79 else d284 )
        d925 : if false then if false then Bool else Bool else if true then Bool else Bool
        d925 = if if d679 then d269 else true then if d1 then false else false else if d579 then d269 else d537
        d926 : if true then if true then Bool else Bool else if false then Bool else Bool
        d926 = ( ( Bool -> Bool ) ∋ ( ( λ x927 -> if x927 then x927 else true ) ) ) $ ( if true then d883 else true )
        d928 : ( ( Set -> Set ) ∋ ( ( λ x931 -> if false then x931 else Bool ) ) ) $ ( if true then Bool else Bool )
        d928 = ( ( Bool -> Bool ) ∋ ( ( λ x929 -> ( ( Bool -> Bool ) ∋ ( ( λ x930 -> d868 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d872 )
        d932 : if true then if false then Bool else Bool else if false then Bool else Bool
        d932 = if if d867 then d662 else true then if true then d543 else d832 else if d211 then d646 else d531
        d933 : if true then if false then Bool else Bool else if false then Bool else Bool
        d933 = if if true then d893 else true then if true then d771 else true else if false then true else d55
        d934 : if false then if true then Bool else Bool else if false then Bool else Bool
        d934 = ( ( Bool -> Bool ) ∋ ( ( λ x935 -> if true then d743 else x935 ) ) ) $ ( if false then d898 else d517 )
        d936 : if true then if false then Bool else Bool else if true then Bool else Bool
        d936 = if if false then d351 else true then if true then d723 else d317 else if d733 then d393 else false
        d937 : ( ( Set -> Set ) ∋ ( ( λ x938 -> ( ( Set -> Set ) ∋ ( ( λ x939 -> x938 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d937 = if if d757 then true else false then if d718 then d539 else false else if d784 then d416 else true
        d940 : ( ( Set -> Set ) ∋ ( ( λ x943 -> if false then Bool else x943 ) ) ) $ ( if true then Bool else Bool )
        d940 = ( ( Bool -> Bool ) ∋ ( ( λ x941 -> ( ( Bool -> Bool ) ∋ ( ( λ x942 -> true ) ) ) $ ( true ) ) ) ) $ ( if d837 then d705 else true )
        d944 : ( ( Set -> Set ) ∋ ( ( λ x946 -> ( ( Set -> Set ) ∋ ( ( λ x947 -> x946 ) ) ) $ ( x946 ) ) ) ) $ ( if false then Bool else Bool )
        d944 = ( ( Bool -> Bool ) ∋ ( ( λ x945 -> if x945 then x945 else x945 ) ) ) $ ( if d190 then d79 else true )
        d948 : if false then if true then Bool else Bool else if false then Bool else Bool
        d948 = if if d674 then d815 else d153 then if d669 then d749 else true else if d480 then d899 else d80
        d949 : if false then if true then Bool else Bool else if false then Bool else Bool
        d949 = if if true then false else true then if d688 then false else false else if false then d13 else d830
        d950 : if false then if true then Bool else Bool else if false then Bool else Bool
        d950 = ( ( Bool -> Bool ) ∋ ( ( λ x951 -> if x951 then false else false ) ) ) $ ( if d674 then d332 else d832 )
        d952 : if true then if true then Bool else Bool else if true then Bool else Bool
        d952 = ( ( Bool -> Bool ) ∋ ( ( λ x953 -> if d789 then x953 else true ) ) ) $ ( if d914 then true else true )
        d954 : if true then if false then Bool else Bool else if false then Bool else Bool
        d954 = ( ( Bool -> Bool ) ∋ ( ( λ x955 -> if true then d318 else x955 ) ) ) $ ( if d902 then d64 else d823 )
        d956 : if true then if true then Bool else Bool else if false then Bool else Bool
        d956 = if if false then d1 else d537 then if false then true else d371 else if d677 then false else d709
        d957 : ( ( Set -> Set ) ∋ ( ( λ x959 -> ( ( Set -> Set ) ∋ ( ( λ x960 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d957 = ( ( Bool -> Bool ) ∋ ( ( λ x958 -> if false then d781 else x958 ) ) ) $ ( if d792 then false else false )
        d961 : ( ( Set -> Set ) ∋ ( ( λ x963 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d961 = ( ( Bool -> Bool ) ∋ ( ( λ x962 -> if d641 then x962 else true ) ) ) $ ( if d193 then d405 else d909 )
        d964 : ( ( Set -> Set ) ∋ ( ( λ x965 -> if true then x965 else Bool ) ) ) $ ( if true then Bool else Bool )
        d964 = if if true then d338 else true then if d12 then d307 else d445 else if false then false else d815
        d966 : if true then if true then Bool else Bool else if true then Bool else Bool
        d966 = if if false then false else d845 then if true then true else d384 else if d153 then true else true
        d967 : if false then if true then Bool else Bool else if true then Bool else Bool
        d967 = if if true then d650 else d32 then if false then d380 else true else if d940 then d706 else false
        d968 : if true then if false then Bool else Bool else if false then Bool else Bool
        d968 = ( ( Bool -> Bool ) ∋ ( ( λ x969 -> if false then d329 else d161 ) ) ) $ ( if false then d395 else true )
        d970 : if true then if false then Bool else Bool else if false then Bool else Bool
        d970 = ( ( Bool -> Bool ) ∋ ( ( λ x971 -> if x971 then false else d754 ) ) ) $ ( if d944 then d553 else d872 )
        d972 : if true then if false then Bool else Bool else if false then Bool else Bool
        d972 = ( ( Bool -> Bool ) ∋ ( ( λ x973 -> if d357 then x973 else true ) ) ) $ ( if false then d460 else true )
        d974 : if false then if false then Bool else Bool else if false then Bool else Bool
        d974 = if if false then false else true then if true then false else d329 else if d131 then true else false
        d975 : if false then if false then Bool else Bool else if true then Bool else Bool
        d975 = ( ( Bool -> Bool ) ∋ ( ( λ x976 -> if d393 then d360 else x976 ) ) ) $ ( if true then true else true )
        d977 : if true then if true then Bool else Bool else if false then Bool else Bool
        d977 = ( ( Bool -> Bool ) ∋ ( ( λ x978 -> ( ( Bool -> Bool ) ∋ ( ( λ x979 -> false ) ) ) $ ( true ) ) ) ) $ ( if d494 then false else d950 )
        d980 : if false then if false then Bool else Bool else if false then Bool else Bool
        d980 = ( ( Bool -> Bool ) ∋ ( ( λ x981 -> ( ( Bool -> Bool ) ∋ ( ( λ x982 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d983 : ( ( Set -> Set ) ∋ ( ( λ x984 -> ( ( Set -> Set ) ∋ ( ( λ x985 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d983 = if if d269 then false else false then if d79 then true else true else if d718 then d695 else d395
        d986 : ( ( Set -> Set ) ∋ ( ( λ x987 -> if true then x987 else x987 ) ) ) $ ( if false then Bool else Bool )
        d986 = if if d850 then false else d898 then if false then true else d433 else if d62 then d368 else true
        d988 : ( ( Set -> Set ) ∋ ( ( λ x989 -> ( ( Set -> Set ) ∋ ( ( λ x990 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d988 = if if true then d577 else d3 then if true then d269 else false else if d966 then d90 else false
        d991 : ( ( Set -> Set ) ∋ ( ( λ x992 -> ( ( Set -> Set ) ∋ ( ( λ x993 -> Bool ) ) ) $ ( x992 ) ) ) ) $ ( if true then Bool else Bool )
        d991 = if if true then true else d282 then if false then true else false else if true then d433 else false
        d994 : if true then if true then Bool else Bool else if true then Bool else Bool
        d994 = if if false then d764 else true then if false then false else true else if d886 then d296 else d42
        d995 : if false then if true then Bool else Bool else if true then Bool else Bool
        d995 = if if d816 then false else d776 then if d650 then d458 else true else if d429 then false else false
        d996 : if false then if true then Bool else Bool else if false then Bool else Bool
        d996 = ( ( Bool -> Bool ) ∋ ( ( λ x997 -> ( ( Bool -> Bool ) ∋ ( ( λ x998 -> x997 ) ) ) $ ( true ) ) ) ) $ ( if d776 then d733 else false )
        d999 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> ( ( Set -> Set ) ∋ ( ( λ x1001 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d999 = if if true then false else d517 then if d909 then false else d469 else if false then d58 else d36
        d1002 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1002 = if if d222 then d639 else d312 then if d153 then d561 else d425 else if true then false else true
        d1003 : ( ( Set -> Set ) ∋ ( ( λ x1006 -> if true then x1006 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1003 = ( ( Bool -> Bool ) ∋ ( ( λ x1004 -> ( ( Bool -> Bool ) ∋ ( ( λ x1005 -> x1004 ) ) ) $ ( d226 ) ) ) ) $ ( if d248 then d764 else d514 )
        d1007 : ( ( Set -> Set ) ∋ ( ( λ x1008 -> ( ( Set -> Set ) ∋ ( ( λ x1009 -> Bool ) ) ) $ ( x1008 ) ) ) ) $ ( if true then Bool else Bool )
        d1007 = if if false then d355 else d46 then if false then false else false else if false then d469 else d416
        d1010 : ( ( Set -> Set ) ∋ ( ( λ x1011 -> ( ( Set -> Set ) ∋ ( ( λ x1012 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1010 = if if true then true else d829 then if d451 then d514 else d781 else if d561 then true else false
        d1013 : ( ( Set -> Set ) ∋ ( ( λ x1016 -> ( ( Set -> Set ) ∋ ( ( λ x1017 -> Bool ) ) ) $ ( x1016 ) ) ) ) $ ( if true then Bool else Bool )
        d1013 = ( ( Bool -> Bool ) ∋ ( ( λ x1014 -> ( ( Bool -> Bool ) ∋ ( ( λ x1015 -> x1014 ) ) ) $ ( x1014 ) ) ) ) $ ( if false then d809 else d338 )
        d1018 : ( ( Set -> Set ) ∋ ( ( λ x1019 -> if false then x1019 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1018 = if if false then false else true then if d537 then d970 else false else if true then d44 else d289
        d1020 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1020 = ( ( Bool -> Bool ) ∋ ( ( λ x1021 -> ( ( Bool -> Bool ) ∋ ( ( λ x1022 -> false ) ) ) $ ( d669 ) ) ) ) $ ( if d690 then d296 else d325 )
        d1023 : ( ( Set -> Set ) ∋ ( ( λ x1026 -> if false then Bool else x1026 ) ) ) $ ( if false then Bool else Bool )
        d1023 = ( ( Bool -> Bool ) ∋ ( ( λ x1024 -> ( ( Bool -> Bool ) ∋ ( ( λ x1025 -> false ) ) ) $ ( false ) ) ) ) $ ( if d577 then d823 else true )
        d1027 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1027 = if if d297 then false else d776 then if d357 then true else d94 else if true then d650 else d393
        d1028 : ( ( Set -> Set ) ∋ ( ( λ x1029 -> if false then x1029 else x1029 ) ) ) $ ( if true then Bool else Bool )
        d1028 = if if false then d784 else true then if false then d226 else d810 else if d879 then true else d638
        d1030 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> ( ( Bool -> Bool ) ∋ ( ( λ x1032 -> d725 ) ) ) $ ( d377 ) ) ) ) $ ( if false then d784 else d669 )
        d1033 : ( ( Set -> Set ) ∋ ( ( λ x1035 -> ( ( Set -> Set ) ∋ ( ( λ x1036 -> x1036 ) ) ) $ ( x1035 ) ) ) ) $ ( if false then Bool else Bool )
        d1033 = ( ( Bool -> Bool ) ∋ ( ( λ x1034 -> if true then x1034 else d447 ) ) ) $ ( if true then true else true )
        d1037 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1037 = if if d840 then d528 else false then if d1007 then d17 else true else if false then d539 else d706
        d1038 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1038 = if if false then true else false then if d470 then false else true else if true then true else false
        d1039 : ( ( Set -> Set ) ∋ ( ( λ x1041 -> ( ( Set -> Set ) ∋ ( ( λ x1042 -> x1042 ) ) ) $ ( x1041 ) ) ) ) $ ( if false then Bool else Bool )
        d1039 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if true then d652 else false ) ) ) $ ( if d76 then false else false )
        d1043 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1043 = ( ( Bool -> Bool ) ∋ ( ( λ x1044 -> if d317 then x1044 else d1038 ) ) ) $ ( if d454 then d823 else false )
        d1045 : ( ( Set -> Set ) ∋ ( ( λ x1046 -> ( ( Set -> Set ) ∋ ( ( λ x1047 -> x1047 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1045 = if if d818 then d739 else d781 then if true then d153 else false else if true then d79 else true
        d1048 : ( ( Set -> Set ) ∋ ( ( λ x1051 -> ( ( Set -> Set ) ∋ ( ( λ x1052 -> Bool ) ) ) $ ( x1051 ) ) ) ) $ ( if true then Bool else Bool )
        d1048 = ( ( Bool -> Bool ) ∋ ( ( λ x1049 -> ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( d580 ) ) ) ) $ ( if true then true else true )
        d1053 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1053 = ( ( Bool -> Bool ) ∋ ( ( λ x1054 -> ( ( Bool -> Bool ) ∋ ( ( λ x1055 -> d98 ) ) ) $ ( d623 ) ) ) ) $ ( if true then d715 else d118 )
        d1056 : ( ( Set -> Set ) ∋ ( ( λ x1057 -> ( ( Set -> Set ) ∋ ( ( λ x1058 -> x1058 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1056 = if if d886 then d116 else d332 then if false then d277 else d186 else if d190 then false else d304
        d1059 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> if true then Bool else x1060 ) ) ) $ ( if true then Bool else Bool )
        d1059 = if if d108 then d32 else d296 then if true then d508 else d689 else if true then false else true
        d1061 : ( ( Set -> Set ) ∋ ( ( λ x1064 -> ( ( Set -> Set ) ∋ ( ( λ x1065 -> x1064 ) ) ) $ ( x1064 ) ) ) ) $ ( if true then Bool else Bool )
        d1061 = ( ( Bool -> Bool ) ∋ ( ( λ x1062 -> ( ( Bool -> Bool ) ∋ ( ( λ x1063 -> true ) ) ) $ ( d881 ) ) ) ) $ ( if true then false else d480 )
        d1066 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1066 = if if d6 then false else false then if d307 then false else true else if d957 then d1007 else false
        d1067 : ( ( Set -> Set ) ∋ ( ( λ x1069 -> if true then x1069 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1067 = ( ( Bool -> Bool ) ∋ ( ( λ x1068 -> if d265 then false else d261 ) ) ) $ ( if d904 then d185 else d566 )
        d1070 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1070 = if if true then true else d380 then if true then false else false else if d1067 then true else false
        d1071 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1071 = ( ( Bool -> Bool ) ∋ ( ( λ x1072 -> ( ( Bool -> Bool ) ∋ ( ( λ x1073 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d317 else d108 )
        d1074 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1074 = if if d1061 then true else true then if true then d705 else true else if d188 then d688 else false
        d1075 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1075 = if if false then true else true then if true then false else false else if true then false else false
        d1076 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1076 = ( ( Bool -> Bool ) ∋ ( ( λ x1077 -> ( ( Bool -> Bool ) ∋ ( ( λ x1078 -> d139 ) ) ) $ ( x1077 ) ) ) ) $ ( if d617 then d251 else d122 )
        d1079 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1079 = if if false then d786 else false then if d274 then false else true else if d995 then d270 else d723
        d1080 : ( ( Set -> Set ) ∋ ( ( λ x1081 -> if false then Bool else x1081 ) ) ) $ ( if false then Bool else Bool )
        d1080 = if if false then false else true then if false then d201 else true else if false then d776 else d1053
        d1082 : ( ( Set -> Set ) ∋ ( ( λ x1083 -> ( ( Set -> Set ) ∋ ( ( λ x1084 -> x1084 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1082 = if if d950 then d902 else false then if true then false else false else if d471 then d471 else true
        d1085 : ( ( Set -> Set ) ∋ ( ( λ x1086 -> if false then x1086 else x1086 ) ) ) $ ( if true then Bool else Bool )
        d1085 = if if false then d211 else false then if d397 then d312 else true else if d996 then true else d116
        d1087 : ( ( Set -> Set ) ∋ ( ( λ x1089 -> ( ( Set -> Set ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( x1089 ) ) ) ) $ ( if true then Bool else Bool )
        d1087 = ( ( Bool -> Bool ) ∋ ( ( λ x1088 -> if d566 then true else d18 ) ) ) $ ( if d343 then d321 else true )
        d1091 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1091 = if if d261 then false else true then if true then d282 else true else if d375 then d467 else true
        d1092 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1092 = ( ( Bool -> Bool ) ∋ ( ( λ x1093 -> ( ( Bool -> Bool ) ∋ ( ( λ x1094 -> false ) ) ) $ ( d804 ) ) ) ) $ ( if false then false else d377 )
        d1095 : ( ( Set -> Set ) ∋ ( ( λ x1096 -> if false then x1096 else x1096 ) ) ) $ ( if false then Bool else Bool )
        d1095 = if if d473 then d688 else d512 then if d108 then d977 else d374 else if d122 then false else true
        d1097 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1097 = if if d50 then true else false then if false then d1079 else d587 else if d974 then d837 else d355
        d1098 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1098 = if if d774 then d543 else true then if d373 then true else false else if d723 then d757 else false
        d1099 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1099 = ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> if x1100 then x1100 else x1100 ) ) ) $ ( if false then d205 else d518 )
        d1101 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1101 = ( ( Bool -> Bool ) ∋ ( ( λ x1102 -> if false then false else d867 ) ) ) $ ( if false then d721 else true )
        d1103 : ( ( Set -> Set ) ∋ ( ( λ x1104 -> if true then x1104 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1103 = if if true then false else true then if false then d1037 else false else if true then d126 else false
        d1105 : ( ( Set -> Set ) ∋ ( ( λ x1107 -> ( ( Set -> Set ) ∋ ( ( λ x1108 -> x1107 ) ) ) $ ( x1107 ) ) ) ) $ ( if false then Bool else Bool )
        d1105 = ( ( Bool -> Bool ) ∋ ( ( λ x1106 -> if false then d66 else d289 ) ) ) $ ( if d417 then d1075 else d650 )
        d1109 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1109 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> ( ( Bool -> Bool ) ∋ ( ( λ x1111 -> x1110 ) ) ) $ ( x1110 ) ) ) ) $ ( if d1075 then true else d265 )
        d1112 : ( ( Set -> Set ) ∋ ( ( λ x1113 -> ( ( Set -> Set ) ∋ ( ( λ x1114 -> x1114 ) ) ) $ ( x1113 ) ) ) ) $ ( if false then Bool else Bool )
        d1112 = if if false then false else true then if false then d405 else d729 else if false then true else false
        d1115 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1115 = if if d1038 then false else d1027 then if true then d528 else d184 else if d230 then true else true
        d1116 : ( ( Set -> Set ) ∋ ( ( λ x1119 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1116 = ( ( Bool -> Bool ) ∋ ( ( λ x1117 -> ( ( Bool -> Bool ) ∋ ( ( λ x1118 -> d690 ) ) ) $ ( x1117 ) ) ) ) $ ( if false then d652 else false )
        d1121 : ( ( Set -> Set ) ∋ ( ( λ x1122 -> ( ( Set -> Set ) ∋ ( ( λ x1123 -> Bool ) ) ) $ ( x1122 ) ) ) ) $ ( if false then Bool else Bool )
        d1121 = if if false then true else d823 then if d183 then d813 else d312 else if d531 then false else true
        d1124 : ( ( Set -> Set ) ∋ ( ( λ x1125 -> if true then x1125 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1124 = if if d725 then d910 else d920 then if false then d211 else true else if true then true else d1028