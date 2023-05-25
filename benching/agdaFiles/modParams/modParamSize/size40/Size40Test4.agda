module Size40Test4  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x5 ) ) ) $ ( x2 ) ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else x2 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> x7 ) ) ) $ ( x6 ) ) ) ) $ ( Bool ) ) ) ( p8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then if true then x9 else x9 else if false then Bool else x9 ) ) ) $ ( if true then Bool else Bool ) )  where
        d10 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if true then x13 else x13 ) ) ) $ ( if false then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then p1 else p1 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d14 = if if d10 then true else d10 then if d10 then false else d10 else if true then d10 else false
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then x18 else Bool ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if false then d14 else true ) ) ) $ ( if d10 then true else d10 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( x20 ) ) ) ) $ ( if false then Bool else Bool )
        d19 = if if false then p8 else p1 then if d10 then d14 else d16 else if p8 then d16 else p1
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> x24 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if if d19 then true else d19 then if p1 then d14 else true else if p8 then d19 else d19
        d25 : if false then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d22 else d19 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> x31 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if d25 then d25 else d10 ) ) ) $ ( if true then p1 else d19 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d32 = if if d28 then p1 else false then if p1 then false else true else if d28 then true else false
        d34 : if true then if false then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> d22 ) ) ) $ ( p1 ) ) ) ) $ ( if d32 then d16 else p1 )
        d37 : if true then if false then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if d28 then d22 else d19 ) ) ) $ ( if p1 then false else false )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> x41 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if false then d28 else p1 ) ) ) $ ( if p1 then p1 else d10 )
        d43 : if true then if false then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> p1 ) ) ) $ ( d34 ) ) ) ) $ ( if p1 then p1 else d32 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( x49 ) ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> true ) ) ) $ ( d16 ) ) ) ) $ ( if d37 then d34 else p1 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( x52 ) ) ) ) $ ( if true then Bool else Bool )
        d51 = if if p1 then d39 else p1 then if d39 then d39 else p1 else if p1 then d39 else true
        d54 : if false then if false then Bool else Bool else if false then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if true then false else x55 ) ) ) $ ( if p8 then p8 else p1 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if false then d28 else p1 then if false then p8 else p1 else if false then d46 else d10
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( x60 ) ) ) ) $ ( if true then Bool else Bool )
        d59 = if if p1 then p1 else false then if p8 then d14 else false else if p8 then true else d14
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then x64 else x64 ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if true then p1 else x63 ) ) ) $ ( if d14 then d25 else p8 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> Bool ) ) ) $ ( x68 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d59 ) ) ) $ ( false ) ) ) ) $ ( if d10 then false else false )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if false then Bool else x71 ) ) ) $ ( if false then Bool else Bool )
        d70 = if if true then true else p1 then if d37 then true else false else if p8 then true else false
        d72 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if true then Bool else x75 ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> false ) ) ) $ ( d34 ) ) ) ) $ ( if p1 then p1 else d19 )
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d70 then p8 else x77 ) ) ) $ ( if false then d54 else false )
        d78 : if false then if true then Bool else Bool else if true then Bool else Bool
        d78 = if if p1 then d70 else p1 then if false then true else p1 else if p1 then p1 else false
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d79 = if if d56 then true else p1 then if false then d32 else d65 else if p8 then true else false
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( x83 ) ) ) ) $ ( if true then Bool else Bool )
        d82 = if if false then d43 else d28 then if p1 then d34 else true else if d76 then p1 else p1
        d85 : if false then if false then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if d28 then p1 else d37 ) ) ) $ ( if d25 then d51 else false )
        d87 : if true then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> p8 ) ) ) $ ( false ) ) ) ) $ ( if p8 then d46 else p1 )
        d90 : if true then if false then Bool else Bool else if true then Bool else Bool
        d90 = if if p8 then d85 else p1 then if p1 then true else d54 else if d72 then p1 else p8
        d91 : if true then if true then Bool else Bool else if true then Bool else Bool
        d91 = if if true then p8 else true then if p8 then d90 else false else if d39 then d46 else p8
        d92 : if true then if true then Bool else Bool else if true then Bool else Bool
        d92 = if if p8 then false else p1 then if p1 then p8 else d43 else if d14 then p1 else p1
        d93 : if true then if false then Bool else Bool else if true then Bool else Bool
        d93 = if if false then true else d79 then if d22 then p8 else d79 else if p8 then p1 else p8
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if true then Bool else Bool )
        d94 = if if d32 then false else p8 then if false then d85 else d51 else if true then p1 else d91
        d97 : if true then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> d76 ) ) ) $ ( d34 ) ) ) ) $ ( if p8 then d51 else d65 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then x103 else x103 ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> d70 ) ) ) $ ( d87 ) ) ) ) $ ( if true then false else d91 )
        d104 : if true then if false then Bool else Bool else if false then Bool else Bool
        d104 = if if d25 then p1 else p8 then if p1 then p1 else true else if p1 then p8 else d78
        d105 : if false then if true then Bool else Bool else if false then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if d85 then p1 else d85 ) ) ) $ ( if p1 then p1 else false )
        d107 : if false then if true then Bool else Bool else if true then Bool else Bool
        d107 = if if false then d16 else false then if d65 then false else p1 else if d82 then true else d92
        d108 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if false then x111 else x111 ) ) ) $ ( if false then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> d25 ) ) ) $ ( d39 ) ) ) ) $ ( if false then true else p1 )
        d112 : if true then if false then Bool else Bool else if true then Bool else Bool
        d112 = if if d85 then false else d82 then if d28 then p1 else p1 else if true then d34 else d19
        d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> x117 ) ) ) $ ( x116 ) ) ) ) $ ( if true then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> p8 ) ) ) $ ( true ) ) ) ) $ ( if d22 then p1 else d104 )
    d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( x119 ) ) ) ) $ ( if false then Bool else Bool )
    d118 = ( ( M.d54 ) $ ( ( ( M.d76 ) $ ( false ) ) $ ( false ) ) ) $ ( if false then true else false )
    d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> Bool ) ) ) $ ( x122 ) ) ) ) $ ( if false then Bool else Bool )
    d121 = if if d118 then false else true then if d118 then false else false else if d118 then d118 else true
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d124 = if if false then false else d118 then if true then false else true else if d118 then d118 else true
    d126 : if true then if true then Bool else Bool else if false then Bool else Bool
    d126 = if if true then true else false then if d121 then false else false else if false then d121 else d118
    d127 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( x129 ) ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( M.d93 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x128 -> d118 ) ) ) $ ( d118 ) ) ) $ ( if d126 then d121 else false )
    d131 : if false then if true then Bool else Bool else if true then Bool else Bool
    d131 = ( ( M.d70 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x132 -> x132 ) ) ) $ ( true ) ) ) $ ( if true then false else false )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> x135 ) ) ) $ ( x134 ) ) ) ) $ ( if true then Bool else Bool )
    d133 = if if d121 then false else true then if true then false else true else if d118 then d121 else d118
    d136 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( Bool -> Bool ) ∋ ( ( λ x138 -> d124 ) ) ) $ ( false ) ) ) ) $ ( if d124 then false else false )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if false then x142 else x142 ) ) ) $ ( if false then Bool else Bool )
    d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> ( ( M.d22 ) $ ( if false then x141 else x141 ) ) $ ( if x141 then true else d133 ) ) ) ) $ ( if d131 then false else false )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if true then Bool else x144 ) ) ) $ ( if false then Bool else Bool )
    d143 = ( ( M.d105 ) $ ( if true then true else d136 ) ) $ ( if true then d127 else false )
    d145 : if false then if true then Bool else Bool else if true then Bool else Bool
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> if d121 then false else d136 ) ) ) $ ( if d127 then d121 else d140 )
    d147 : if false then if true then Bool else Bool else if false then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( M.d14 ) $ ( if d131 then d140 else x148 ) ) $ ( if d126 then x148 else x148 ) ) ) ) $ ( if d124 then false else true )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x152 -> ( ( Set -> Set ) ∋ ( ( λ x153 -> x153 ) ) ) $ ( x152 ) ) ) ) $ ( if true then Bool else Bool )
    d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x151 -> d145 ) ) ) $ ( x150 ) ) ) ) $ ( if d124 then d133 else false )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if false then x157 else x157 ) ) ) $ ( if true then Bool else Bool )
    d154 = ( ( Bool -> Bool ) ∋ ( ( λ x155 -> ( ( Bool -> Bool ) ∋ ( ( λ x156 -> true ) ) ) $ ( true ) ) ) ) $ ( if d140 then d118 else d149 )
    d158 : if true then if true then Bool else Bool else if true then Bool else Bool
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> ( ( Bool -> Bool ) ∋ ( ( λ x160 -> x159 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d133 )
    d161 : if true then if true then Bool else Bool else if true then Bool else Bool
    d161 = ( ( M.d104 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x162 -> x162 ) ) ) $ ( false ) ) ) $ ( if d124 then true else d136 )
    d163 : if true then if false then Bool else Bool else if true then Bool else Bool
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> if d133 then true else d127 ) ) ) $ ( if d124 then false else d140 )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> Bool ) ) ) $ ( x167 ) ) ) ) $ ( if true then Bool else Bool )
    d165 = ( ( M.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x166 -> false ) ) ) $ ( d127 ) ) ) $ ( if d147 then false else true )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x171 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if false then d147 else d154 ) ) ) $ ( if d121 then true else d118 )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> if false then x173 else x173 ) ) ) $ ( if false then Bool else Bool )
    d172 = if if d131 then d126 else d131 then if d165 then false else true else if d163 then d163 else true
    d174 : ( ( Set -> Set ) ∋ ( ( λ x175 -> ( ( Set -> Set ) ∋ ( ( λ x176 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d174 = if if d165 then d118 else d126 then if true then true else true else if d118 then true else true
    d177 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> ( ( Bool -> Bool ) ∋ ( ( λ x179 -> x178 ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
    d182 : if false then if false then Bool else Bool else if false then Bool else Bool
    d182 = if if d163 then true else true then if d140 then d145 else d158 else if false then d147 else false
    d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if true then Bool else x184 ) ) ) $ ( if false then Bool else Bool )
    d183 = if if d140 then d118 else d143 then if d124 then d163 else true else if d143 then d172 else d136
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> ( ( Set -> Set ) ∋ ( ( λ x187 -> Bool ) ) ) $ ( x186 ) ) ) ) $ ( if true then Bool else Bool )
    d185 = if if true then true else true then if d183 then true else false else if false then d182 else d177
    d188 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x191 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> if x189 then x189 else x189 ) ) ) $ ( if true then true else true )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x194 -> ( ( Set -> Set ) ∋ ( ( λ x195 -> x194 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d192 = ( ( M.d43 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x193 -> x193 ) ) ) $ ( false ) ) ) $ ( ( ( M.d65 ) $ ( d154 ) ) $ ( false ) )
    d196 : ( ( Set -> Set ) ∋ ( ( λ x198 -> ( ( Set -> Set ) ∋ ( ( λ x199 -> x199 ) ) ) $ ( x198 ) ) ) ) $ ( if false then Bool else Bool )
    d196 = ( ( M.d19 ) $ ( ( ( M.d72 ) $ ( false ) ) $ ( d182 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x197 -> false ) ) ) $ ( d182 ) )
    d200 : if false then if false then Bool else Bool else if false then Bool else Bool
    d200 = ( ( Bool -> Bool ) ∋ ( ( λ x201 -> ( ( Bool -> Bool ) ∋ ( ( λ x202 -> d182 ) ) ) $ ( x201 ) ) ) ) $ ( if d172 then true else d169 )
    d203 : if false then if false then Bool else Bool else if false then Bool else Bool
    d203 = if if true then d183 else true then if false then true else d140 else if true then d131 else d200
    d204 : ( ( Set -> Set ) ∋ ( ( λ x205 -> ( ( Set -> Set ) ∋ ( ( λ x206 -> x205 ) ) ) $ ( x205 ) ) ) ) $ ( if true then Bool else Bool )
    d204 = if if false then false else d131 then if false then d185 else false else if d165 then d182 else false
    d207 : if false then if false then Bool else Bool else if true then Bool else Bool
    d207 = ( ( M.d39 ) $ ( ( ( M.d46 ) $ ( d185 ) ) $ ( true ) ) ) $ ( ( ( M.d97 ) $ ( d172 ) ) $ ( true ) )
    d208 : if false then if false then Bool else Bool else if true then Bool else Bool
    d208 = ( ( Bool -> Bool ) ∋ ( ( λ x209 -> if false then x209 else x209 ) ) ) $ ( if d124 then d143 else false )
    d210 : ( ( Set -> Set ) ∋ ( ( λ x213 -> ( ( Set -> Set ) ∋ ( ( λ x214 -> x213 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d210 = ( ( M.d56 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x211 -> x211 ) ) ) $ ( d204 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x212 -> d158 ) ) ) $ ( false ) )
    d215 : if false then if false then Bool else Bool else if false then Bool else Bool
    d215 = if if true then d174 else d158 then if d124 then d140 else false else if d203 then true else d204
    d216 : ( ( Set -> Set ) ∋ ( ( λ x219 -> if true then Bool else x219 ) ) ) $ ( if false then Bool else Bool )
    d216 = ( ( Bool -> Bool ) ∋ ( ( λ x217 -> ( ( Bool -> Bool ) ∋ ( ( λ x218 -> d140 ) ) ) $ ( false ) ) ) ) $ ( if d196 then d185 else d154 )
    d220 : if true then if false then Bool else Bool else if true then Bool else Bool
    d220 = ( ( Bool -> Bool ) ∋ ( ( λ x221 -> ( ( M.d78 ) $ ( if false then false else x221 ) ) $ ( if false then false else false ) ) ) ) $ ( if false then true else false )
    d222 : ( ( Set -> Set ) ∋ ( ( λ x224 -> if true then x224 else Bool ) ) ) $ ( if false then Bool else Bool )
    d222 = ( ( Bool -> Bool ) ∋ ( ( λ x223 -> ( ( M.d76 ) $ ( if false then d154 else false ) ) $ ( if x223 then x223 else d208 ) ) ) ) $ ( if true then d133 else true )
    d225 : ( ( Set -> Set ) ∋ ( ( λ x228 -> if true then Bool else x228 ) ) ) $ ( if true then Bool else Bool )
    d225 = ( ( M.d100 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x226 -> d208 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x227 -> x227 ) ) ) $ ( d158 ) )
    d229 : if true then if true then Bool else Bool else if false then Bool else Bool
    d229 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( M.d72 ) $ ( if false then false else x230 ) ) $ ( if x230 then d207 else d131 ) ) ) ) $ ( if d183 then false else true )