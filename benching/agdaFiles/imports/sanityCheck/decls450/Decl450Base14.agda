module Decl450Base14  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then Bool else x3 ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if true then x2 else true ) ) ) $ ( if false then false else false )
        d4 : if false then if true then Bool else Bool else if true then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if x5 then d1 else d1 ) ) ) $ ( if false then true else true )
        d6 : if true then if false then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> d4 ) ) ) $ ( x7 ) ) ) ) $ ( if true then d1 else d4 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x10 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d9 = if if d6 then true else false then if d1 then true else d1 else if true then false else true
        d12 : if false then if true then Bool else Bool else if true then Bool else Bool
        d12 = if if true then d1 else false then if false then d9 else true else if true then d1 else false
        d13 : if true then if false then Bool else Bool else if true then Bool else Bool
        d13 = if if true then d1 else d12 then if d4 then true else d9 else if false then true else d9
        d14 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if true then x17 else Bool ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> d12 ) ) ) $ ( x15 ) ) ) ) $ ( if d4 then true else true )
        d18 : if false then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> d12 ) ) ) $ ( x19 ) ) ) ) $ ( if true then d1 else true )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else x23 ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if d6 then x22 else x22 ) ) ) $ ( if false then d14 else false )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> true ) ) ) $ ( d18 ) ) ) ) $ ( if d21 then false else false )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( x31 ) ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> x29 ) ) ) $ ( x29 ) ) ) ) $ ( if false then false else d9 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x35 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if d4 then true else x34 ) ) ) $ ( if d12 then d4 else true )
        d37 : if false then if true then Bool else Bool else if true then Bool else Bool
        d37 = if if false then d28 else d4 then if d28 then d4 else d24 else if true then d12 else true
        d38 : if true then if true then Bool else Bool else if true then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if d33 then x39 else false ) ) ) $ ( if d13 then false else d12 )
        d40 : if true then if false then Bool else Bool else if false then Bool else Bool
        d40 = if if d6 then false else false then if true then true else d38 else if d24 then d13 else true
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d41 = if if d12 then true else true then if d38 then false else false else if false then true else d6
        d44 : if true then if false then Bool else Bool else if true then Bool else Bool
        d44 = if if true then true else true then if d40 then false else d6 else if false then true else false
        d45 : if true then if false then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if false then x46 else true ) ) ) $ ( if true then d13 else d28 )
        d47 : if true then if true then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> x48 ) ) ) $ ( false ) ) ) ) $ ( if true then d41 else d44 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then x51 else Bool ) ) ) $ ( if false then Bool else Bool )
        d50 = if if true then true else false then if false then d45 else d18 else if d6 then d21 else false
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = if if d40 then false else d33 then if false then d47 else true else if false then false else true
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> x55 ) ) ) $ ( x54 ) ) ) ) $ ( if false then false else d6 )
        d58 : if false then if true then Bool else Bool else if false then Bool else Bool
        d58 = if if d53 then true else d6 then if d24 then false else false else if d44 then d13 else d37
        d59 : if false then if true then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if true then x60 else false ) ) ) $ ( if false then d44 else false )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then Bool else x63 ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if true then true else true ) ) ) $ ( if d38 then d6 else d18 )
        d64 : if true then if true then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if x65 then d41 else x65 ) ) ) $ ( if true then false else true )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( x69 ) ) ) ) $ ( if true then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> d53 ) ) ) $ ( x67 ) ) ) ) $ ( if false then true else false )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then x74 else x74 ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> x73 ) ) ) $ ( x72 ) ) ) ) $ ( if d28 then false else d33 )
        d75 : if false then if false then Bool else Bool else if true then Bool else Bool
        d75 = if if d58 then d14 else true then if true then true else d71 else if false then d40 else d64
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then x77 else Bool ) ) ) $ ( if true then Bool else Bool )
        d76 = if if d18 then true else d41 then if d64 then d12 else false else if true then true else d21
        d78 : if false then if true then Bool else Bool else if false then Bool else Bool
        d78 = if if false then false else d40 then if false then d1 else true else if true then false else false
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if false then Bool else x82 ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d44 ) ) ) $ ( x80 ) ) ) ) $ ( if d76 then d53 else true )
        d83 : if true then if false then Bool else Bool else if true then Bool else Bool
        d83 = if if d75 then false else d14 then if d18 then true else d13 else if d50 then false else false
        d84 : if false then if false then Bool else Bool else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then d45 else true )
        d87 : if true then if true then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if d1 then true else d14 ) ) ) $ ( if true then d76 else d50 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( x90 ) ) ) ) $ ( if true then Bool else Bool )
        d89 = if if d83 then true else d45 then if d64 then false else true else if d40 then d38 else d53
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x93 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d92 = if if false then false else true then if true then d71 else false else if false then false else true
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = if if d87 then true else d50 then if d84 then true else d33 else if d58 then d14 else false
        d96 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then Bool else x98 ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if x97 then true else false ) ) ) $ ( if true then d4 else d61 )
        d99 : if false then if true then Bool else Bool else if true then Bool else Bool
        d99 = if if d37 then true else d40 then if false then d78 else d45 else if false then d1 else d87
        d100 : if false then if true then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if d13 then d33 else d45 ) ) ) $ ( if d40 then false else true )
        d102 : if false then if false then Bool else Bool else if false then Bool else Bool
        d102 = if if true then d58 else d76 then if true then d44 else d100 else if true then true else d4
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d103 = if if d1 then d78 else d84 then if true then false else d53 else if true then true else false
        d106 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if false then Bool else x108 ) ) ) $ ( if true then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if d50 then d38 else d89 ) ) ) $ ( if true then true else d13 )
        d109 : if true then if false then Bool else Bool else if true then Bool else Bool
        d109 = if if true then d47 else false then if false then true else false else if true then d33 else d106
        d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d110 = if if d33 then false else true then if false then d106 else false else if d13 then true else d47
        d113 : if false then if false then Bool else Bool else if true then Bool else Bool
        d113 = if if true then d6 else d4 then if d45 then true else true else if d78 then d100 else true
        d114 : if true then if true then Bool else Bool else if true then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> d53 ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then x118 else Bool ) ) ) $ ( if false then Bool else Bool )
        d117 = if if true then d47 else false then if true then false else d76 else if false then true else d9
        d119 : if true then if false then Bool else Bool else if false then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if d87 then false else x120 ) ) ) $ ( if d1 then false else d106 )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d121 = if if false then true else d58 then if d59 then d21 else false else if false then false else d109
        d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then x125 else Bool ) ) ) $ ( if false then Bool else Bool )
        d124 = if if false then d100 else false then if d37 then false else d71 else if true then d13 else true
        d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if true then x127 else x127 ) ) ) $ ( if true then Bool else Bool )
        d126 = if if false then d75 else d121 then if true then false else true else if d6 then true else d12
        d128 : if false then if false then Bool else Bool else if false then Bool else Bool
        d128 = if if d24 then d83 else true then if false then d126 else d99 else if d124 then d45 else true
        d129 : if true then if false then Bool else Bool else if true then Bool else Bool
        d129 = if if d119 then true else d110 then if d33 then d1 else true else if d89 then true else true
        d130 : if true then if false then Bool else Bool else if false then Bool else Bool
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if false then d128 else d33 ) ) ) $ ( if false then d38 else d84 )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d132 = if if false then d13 else d28 then if true then d96 else true else if d109 then d41 else true
        d135 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> Bool ) ) ) $ ( x136 ) ) ) ) $ ( if false then Bool else Bool )
        d135 = if if d53 then d126 else false then if d38 then d58 else true else if false then false else true
        d138 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then Bool else x140 ) ) ) $ ( if true then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> if d106 then d14 else x139 ) ) ) $ ( if true then false else d59 )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> x142 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d141 = if if d24 then true else false then if false then false else d47 else if false then true else d138
        d144 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> x147 ) ) ) $ ( x147 ) ) ) ) $ ( if true then Bool else Bool )
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x145 -> ( ( Bool -> Bool ) ∋ ( ( λ x146 -> d83 ) ) ) $ ( x145 ) ) ) ) $ ( if true then d4 else false )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then x150 else x150 ) ) ) $ ( if true then Bool else Bool )
        d149 = if if false then d38 else d130 then if true then d50 else false else if d128 then d114 else d13
        d151 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> Bool ) ) ) $ ( x153 ) ) ) ) $ ( if true then Bool else Bool )
        d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> if x152 then d14 else d117 ) ) ) $ ( if d58 then d21 else d1 )
        d155 : if true then if true then Bool else Bool else if false then Bool else Bool
        d155 = if if d130 then d24 else true then if d66 then d40 else false else if false then d84 else true
        d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d156 = if if true then d61 else false then if true then true else d117 else if false then false else d59
        d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> x159 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d158 = if if d155 then d59 else false then if d33 then d87 else d52 else if false then d126 else true
        d161 : if false then if false then Bool else Bool else if true then Bool else Bool
        d161 = if if d37 then true else true then if d135 then false else d28 else if d12 then d83 else false
        d162 : if true then if true then Bool else Bool else if true then Bool else Bool
        d162 = if if false then d1 else d130 then if false then d66 else false else if false then true else false
        d163 : if false then if true then Bool else Bool else if true then Bool else Bool
        d163 = if if true then d113 else false then if d110 then true else d61 else if true then true else d158
        d164 : ( ( Set -> Set ) ∋ ( ( λ x166 -> ( ( Set -> Set ) ∋ ( ( λ x167 -> Bool ) ) ) $ ( x166 ) ) ) ) $ ( if true then Bool else Bool )
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> if false then x165 else d28 ) ) ) $ ( if d38 then d117 else d84 )
        d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d168 = if if d124 then d47 else false then if d89 then true else false else if false then d6 else d78
        d171 : if false then if false then Bool else Bool else if false then Bool else Bool
        d171 = if if false then d149 else d1 then if false then false else true else if false then d158 else d114
        d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> Bool ) ) ) $ ( x173 ) ) ) ) $ ( if true then Bool else Bool )
        d172 = if if d113 then d12 else true then if false then false else d128 else if true then d24 else d129
        d175 : if false then if true then Bool else Bool else if true then Bool else Bool
        d175 = if if true then d71 else false then if true then d13 else true else if true then false else d78
        d176 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> x178 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> if x177 then d164 else x177 ) ) ) $ ( if d114 then false else d76 )
        d180 : if true then if true then Bool else Bool else if false then Bool else Bool
        d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> ( ( Bool -> Bool ) ∋ ( ( λ x182 -> true ) ) ) $ ( d158 ) ) ) ) $ ( if d126 then false else true )
        d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d183 = if if d121 then d126 else d79 then if d38 then d66 else true else if true then true else d172
        d185 : if true then if true then Bool else Bool else if false then Bool else Bool
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( Bool -> Bool ) ∋ ( ( λ x187 -> x187 ) ) ) $ ( true ) ) ) ) $ ( if true then d171 else d45 )
        d188 : if true then if false then Bool else Bool else if false then Bool else Bool
        d188 = if if false then d6 else d40 then if d14 then false else d130 else if d130 then false else d175
        d189 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d189 = if if d99 then d126 else true then if false then d124 else d28 else if d121 then d76 else d121
        d191 : if false then if true then Bool else Bool else if false then Bool else Bool
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x192 -> if true then x192 else false ) ) ) $ ( if true then d113 else d114 )
        d193 : if true then if false then Bool else Bool else if true then Bool else Bool
        d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> ( ( Bool -> Bool ) ∋ ( ( λ x195 -> d183 ) ) ) $ ( x194 ) ) ) ) $ ( if d144 then d79 else d44 )
        d196 : if true then if true then Bool else Bool else if false then Bool else Bool
        d196 = ( ( Bool -> Bool ) ∋ ( ( λ x197 -> if x197 then d47 else true ) ) ) $ ( if false then true else true )
        d198 : if false then if true then Bool else Bool else if true then Bool else Bool
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x199 -> ( ( Bool -> Bool ) ∋ ( ( λ x200 -> d24 ) ) ) $ ( x199 ) ) ) ) $ ( if d9 then true else d38 )
        d201 : ( ( Set -> Set ) ∋ ( ( λ x204 -> if true then x204 else x204 ) ) ) $ ( if true then Bool else Bool )
        d201 = ( ( Bool -> Bool ) ∋ ( ( λ x202 -> ( ( Bool -> Bool ) ∋ ( ( λ x203 -> d14 ) ) ) $ ( x202 ) ) ) ) $ ( if d100 then true else d92 )
        d205 : ( ( Set -> Set ) ∋ ( ( λ x207 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d205 = ( ( Bool -> Bool ) ∋ ( ( λ x206 -> if x206 then x206 else false ) ) ) $ ( if false then d44 else false )
        d208 : ( ( Set -> Set ) ∋ ( ( λ x210 -> if true then x210 else Bool ) ) ) $ ( if false then Bool else Bool )
        d208 = ( ( Bool -> Bool ) ∋ ( ( λ x209 -> if x209 then true else d76 ) ) ) $ ( if false then true else d53 )
        d211 : if true then if true then Bool else Bool else if true then Bool else Bool
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x212 -> if false then x212 else d135 ) ) ) $ ( if true then d114 else false )
        d213 : ( ( Set -> Set ) ∋ ( ( λ x215 -> ( ( Set -> Set ) ∋ ( ( λ x216 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x214 -> if true then true else true ) ) ) $ ( if false then d99 else d61 )
        d217 : if false then if false then Bool else Bool else if true then Bool else Bool
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x218 -> ( ( Bool -> Bool ) ∋ ( ( λ x219 -> false ) ) ) $ ( d44 ) ) ) ) $ ( if d18 then d138 else true )
        d220 : ( ( Set -> Set ) ∋ ( ( λ x222 -> ( ( Set -> Set ) ∋ ( ( λ x223 -> x223 ) ) ) $ ( x222 ) ) ) ) $ ( if false then Bool else Bool )
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x221 -> if d189 then x221 else false ) ) ) $ ( if d24 then d24 else d124 )
        d224 : ( ( Set -> Set ) ∋ ( ( λ x225 -> ( ( Set -> Set ) ∋ ( ( λ x226 -> Bool ) ) ) $ ( x225 ) ) ) ) $ ( if true then Bool else Bool )
        d224 = if if d64 then d64 else d183 then if false then false else true else if d196 then d58 else d38
        d227 : ( ( Set -> Set ) ∋ ( ( λ x228 -> if false then x228 else Bool ) ) ) $ ( if true then Bool else Bool )
        d227 = if if d66 then d47 else false then if false then false else d21 else if d66 then d79 else false
        d229 : if true then if false then Bool else Bool else if false then Bool else Bool
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x231 -> d144 ) ) ) $ ( x230 ) ) ) ) $ ( if d193 then false else false )
        d232 : ( ( Set -> Set ) ∋ ( ( λ x233 -> ( ( Set -> Set ) ∋ ( ( λ x234 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d232 = if if true then d129 else d161 then if false then true else false else if d59 then d59 else true
        d235 : ( ( Set -> Set ) ∋ ( ( λ x236 -> if true then x236 else x236 ) ) ) $ ( if true then Bool else Bool )
        d235 = if if true then false else d53 then if true then d121 else false else if false then true else false
        d237 : if false then if false then Bool else Bool else if false then Bool else Bool
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x238 -> ( ( Bool -> Bool ) ∋ ( ( λ x239 -> x239 ) ) ) $ ( d64 ) ) ) ) $ ( if d193 then d151 else d193 )
        d240 : ( ( Set -> Set ) ∋ ( ( λ x242 -> ( ( Set -> Set ) ∋ ( ( λ x243 -> x243 ) ) ) $ ( x242 ) ) ) ) $ ( if true then Bool else Bool )
        d240 = ( ( Bool -> Bool ) ∋ ( ( λ x241 -> if x241 then d176 else false ) ) ) $ ( if true then true else false )
        d244 : if true then if true then Bool else Bool else if false then Bool else Bool
        d244 = ( ( Bool -> Bool ) ∋ ( ( λ x245 -> if d89 then d119 else d76 ) ) ) $ ( if false then true else d47 )
        d246 : if false then if true then Bool else Bool else if true then Bool else Bool
        d246 = if if false then d12 else d229 then if true then false else true else if d124 then false else false
        d247 : ( ( Set -> Set ) ∋ ( ( λ x248 -> ( ( Set -> Set ) ∋ ( ( λ x249 -> x248 ) ) ) $ ( x248 ) ) ) ) $ ( if true then Bool else Bool )
        d247 = if if d53 then d1 else false then if true then d14 else d124 else if true then d96 else true
        d250 : if false then if true then Bool else Bool else if true then Bool else Bool
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x251 -> ( ( Bool -> Bool ) ∋ ( ( λ x252 -> x252 ) ) ) $ ( x251 ) ) ) ) $ ( if false then d87 else d84 )
        d253 : if false then if false then Bool else Bool else if true then Bool else Bool
        d253 = if if d119 then true else false then if false then d126 else true else if false then false else d37
        d254 : if true then if false then Bool else Bool else if false then Bool else Bool
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x255 -> if x255 then d155 else false ) ) ) $ ( if false then false else false )
        d256 : if true then if true then Bool else Bool else if true then Bool else Bool
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x257 -> ( ( Bool -> Bool ) ∋ ( ( λ x258 -> d4 ) ) ) $ ( true ) ) ) ) $ ( if true then d129 else d126 )
        d259 : ( ( Set -> Set ) ∋ ( ( λ x261 -> ( ( Set -> Set ) ∋ ( ( λ x262 -> Bool ) ) ) $ ( x261 ) ) ) ) $ ( if false then Bool else Bool )
        d259 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if false then x260 else false ) ) ) $ ( if false then false else d124 )
        d263 : if false then if true then Bool else Bool else if false then Bool else Bool
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x264 -> if false then false else false ) ) ) $ ( if true then false else true )
        d265 : if true then if true then Bool else Bool else if false then Bool else Bool
        d265 = ( ( Bool -> Bool ) ∋ ( ( λ x266 -> ( ( Bool -> Bool ) ∋ ( ( λ x267 -> d259 ) ) ) $ ( d256 ) ) ) ) $ ( if true then true else d102 )
        d268 : if true then if true then Bool else Bool else if true then Bool else Bool
        d268 = if if false then true else false then if true then d103 else false else if false then d117 else d12
        d269 : ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then x270 else x270 ) ) ) $ ( if true then Bool else Bool )
        d269 = if if false then false else d155 then if false then true else false else if d40 then false else d196
        d271 : ( ( Set -> Set ) ∋ ( ( λ x272 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d271 = if if d141 then d205 else true then if true then d71 else false else if d132 then false else true
        d273 : ( ( Set -> Set ) ∋ ( ( λ x274 -> if true then x274 else x274 ) ) ) $ ( if false then Bool else Bool )
        d273 = if if false then d71 else d78 then if d117 then d79 else true else if false then true else false
        d275 : ( ( Set -> Set ) ∋ ( ( λ x276 -> if true then Bool else x276 ) ) ) $ ( if false then Bool else Bool )
        d275 = if if true then true else false then if d229 then false else true else if false then true else d244
        d277 : ( ( Set -> Set ) ∋ ( ( λ x279 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d277 = ( ( Bool -> Bool ) ∋ ( ( λ x278 -> if false then x278 else d130 ) ) ) $ ( if true then true else false )
        d281 : if false then if true then Bool else Bool else if false then Bool else Bool
        d281 = if if d277 then true else true then if false then d213 else true else if d235 then false else d196
        d282 : if false then if false then Bool else Bool else if false then Bool else Bool
        d282 = if if d250 then d38 else d106 then if false then true else d128 else if false then true else false
        d283 : if true then if false then Bool else Bool else if true then Bool else Bool
        d283 = ( ( Bool -> Bool ) ∋ ( ( λ x284 -> ( ( Bool -> Bool ) ∋ ( ( λ x285 -> d40 ) ) ) $ ( true ) ) ) ) $ ( if d158 then false else d130 )
        d286 : ( ( Set -> Set ) ∋ ( ( λ x287 -> ( ( Set -> Set ) ∋ ( ( λ x288 -> x287 ) ) ) $ ( x287 ) ) ) ) $ ( if false then Bool else Bool )
        d286 = if if d141 then d156 else d217 then if true then d83 else false else if false then true else true
        d289 : ( ( Set -> Set ) ∋ ( ( λ x290 -> if false then x290 else Bool ) ) ) $ ( if true then Bool else Bool )
        d289 = if if d250 then true else d33 then if d114 then d149 else d227 else if d99 then d89 else d246
        d291 : ( ( Set -> Set ) ∋ ( ( λ x293 -> if false then Bool else x293 ) ) ) $ ( if false then Bool else Bool )
        d291 = ( ( Bool -> Bool ) ∋ ( ( λ x292 -> if x292 then d128 else d103 ) ) ) $ ( if false then d9 else d41 )
        d294 : ( ( Set -> Set ) ∋ ( ( λ x295 -> ( ( Set -> Set ) ∋ ( ( λ x296 -> x295 ) ) ) $ ( x295 ) ) ) ) $ ( if false then Bool else Bool )
        d294 = if if false then false else true then if d52 then true else d52 else if d271 then false else d33
        d297 : if true then if false then Bool else Bool else if true then Bool else Bool
        d297 = if if d277 then d106 else true then if true then d66 else d64 else if d294 then false else d254
        d298 : ( ( Set -> Set ) ∋ ( ( λ x300 -> ( ( Set -> Set ) ∋ ( ( λ x301 -> x301 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x299 -> if d171 then x299 else x299 ) ) ) $ ( if false then true else d151 )
        d302 : ( ( Set -> Set ) ∋ ( ( λ x303 -> ( ( Set -> Set ) ∋ ( ( λ x304 -> x303 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d302 = if if true then d180 else d41 then if false then d113 else d171 else if d144 then d281 else d99
        d305 : if true then if true then Bool else Bool else if true then Bool else Bool
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x306 -> if false then x306 else x306 ) ) ) $ ( if d102 then d47 else true )
        d307 : if false then if false then Bool else Bool else if true then Bool else Bool
        d307 = ( ( Bool -> Bool ) ∋ ( ( λ x308 -> if d95 then x308 else x308 ) ) ) $ ( if d205 then d83 else true )
        d309 : if true then if true then Bool else Bool else if false then Bool else Bool
        d309 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> ( ( Bool -> Bool ) ∋ ( ( λ x311 -> x310 ) ) ) $ ( false ) ) ) ) $ ( if d302 then false else d102 )
        d312 : ( ( Set -> Set ) ∋ ( ( λ x315 -> if false then x315 else x315 ) ) ) $ ( if false then Bool else Bool )
        d312 = ( ( Bool -> Bool ) ∋ ( ( λ x313 -> ( ( Bool -> Bool ) ∋ ( ( λ x314 -> false ) ) ) $ ( d12 ) ) ) ) $ ( if true then d40 else d237 )
        d316 : if false then if false then Bool else Bool else if true then Bool else Bool
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x317 -> ( ( Bool -> Bool ) ∋ ( ( λ x318 -> true ) ) ) $ ( d100 ) ) ) ) $ ( if true then true else false )
        d319 : if true then if true then Bool else Bool else if true then Bool else Bool
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if x320 then d246 else true ) ) ) $ ( if false then true else false )
        d321 : if false then if false then Bool else Bool else if false then Bool else Bool
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x322 -> if d130 then d183 else false ) ) ) $ ( if true then d275 else false )
        d323 : if false then if false then Bool else Bool else if false then Bool else Bool
        d323 = ( ( Bool -> Bool ) ∋ ( ( λ x324 -> ( ( Bool -> Bool ) ∋ ( ( λ x325 -> d250 ) ) ) $ ( d294 ) ) ) ) $ ( if d162 then false else false )
        d326 : if false then if true then Bool else Bool else if true then Bool else Bool
        d326 = ( ( Bool -> Bool ) ∋ ( ( λ x327 -> ( ( Bool -> Bool ) ∋ ( ( λ x328 -> d61 ) ) ) $ ( d232 ) ) ) ) $ ( if true then false else d213 )
        d329 : if true then if false then Bool else Bool else if true then Bool else Bool
        d329 = if if false then d151 else false then if false then true else d224 else if true then d193 else d128
        d330 : if true then if false then Bool else Bool else if true then Bool else Bool
        d330 = if if true then false else true then if false then d201 else d158 else if d193 then d183 else d144
        d331 : if false then if true then Bool else Bool else if true then Bool else Bool
        d331 = if if true then d256 else true then if true then false else true else if d271 then d58 else d1
        d332 : if true then if true then Bool else Bool else if false then Bool else Bool
        d332 = ( ( Bool -> Bool ) ∋ ( ( λ x333 -> if true then false else d40 ) ) ) $ ( if d201 then d6 else true )
        d334 : ( ( Set -> Set ) ∋ ( ( λ x336 -> if true then x336 else x336 ) ) ) $ ( if false then Bool else Bool )
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x335 -> if d12 then x335 else d113 ) ) ) $ ( if false then false else false )
        d337 : if true then if true then Bool else Bool else if true then Bool else Bool
        d337 = ( ( Bool -> Bool ) ∋ ( ( λ x338 -> if true then true else false ) ) ) $ ( if d265 then false else d87 )
        d339 : ( ( Set -> Set ) ∋ ( ( λ x342 -> if true then x342 else Bool ) ) ) $ ( if true then Bool else Bool )
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x341 -> x341 ) ) ) $ ( d269 ) ) ) ) $ ( if d326 then d193 else d24 )
        d343 : ( ( Set -> Set ) ∋ ( ( λ x344 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d343 = if if false then false else true then if false then false else d269 else if d24 then d12 else d156
        d345 : if true then if false then Bool else Bool else if true then Bool else Bool
        d345 = ( ( Bool -> Bool ) ∋ ( ( λ x346 -> ( ( Bool -> Bool ) ∋ ( ( λ x347 -> d196 ) ) ) $ ( d289 ) ) ) ) $ ( if d156 then d21 else true )
        d348 : ( ( Set -> Set ) ∋ ( ( λ x349 -> if false then x349 else Bool ) ) ) $ ( if true then Bool else Bool )
        d348 = if if false then d110 else false then if false then true else d64 else if d41 then d302 else false
        d350 : ( ( Set -> Set ) ∋ ( ( λ x351 -> if true then x351 else x351 ) ) ) $ ( if true then Bool else Bool )
        d350 = if if false then d40 else d286 then if d78 then true else false else if false then d323 else false
        d352 : ( ( Set -> Set ) ∋ ( ( λ x353 -> if false then x353 else x353 ) ) ) $ ( if false then Bool else Bool )
        d352 = if if d185 then d130 else false then if true then d1 else false else if d79 then d24 else true
        d354 : if true then if true then Bool else Bool else if true then Bool else Bool
        d354 = ( ( Bool -> Bool ) ∋ ( ( λ x355 -> ( ( Bool -> Bool ) ∋ ( ( λ x356 -> false ) ) ) $ ( x355 ) ) ) ) $ ( if d119 then true else d109 )
        d357 : if true then if false then Bool else Bool else if false then Bool else Bool
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x358 -> if false then d172 else x358 ) ) ) $ ( if d254 then d89 else d114 )
        d359 : ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then x360 else x360 ) ) ) $ ( if true then Bool else Bool )
        d359 = if if false then d298 else false then if true then true else true else if true then true else true
        d361 : if false then if false then Bool else Bool else if true then Bool else Bool
        d361 = ( ( Bool -> Bool ) ∋ ( ( λ x362 -> ( ( Bool -> Bool ) ∋ ( ( λ x363 -> d312 ) ) ) $ ( d180 ) ) ) ) $ ( if d259 then true else true )
        d364 : if true then if true then Bool else Bool else if true then Bool else Bool
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x365 -> ( ( Bool -> Bool ) ∋ ( ( λ x366 -> true ) ) ) $ ( x365 ) ) ) ) $ ( if true then d1 else true )
        d367 : ( ( Set -> Set ) ∋ ( ( λ x368 -> if true then x368 else Bool ) ) ) $ ( if true then Bool else Bool )
        d367 = if if true then d326 else false then if false then true else d110 else if d76 then false else d352
        d369 : if false then if false then Bool else Bool else if false then Bool else Bool
        d369 = if if true then false else false then if false then true else d286 else if d253 then false else d217
        d370 : ( ( Set -> Set ) ∋ ( ( λ x371 -> if true then Bool else x371 ) ) ) $ ( if false then Bool else Bool )
        d370 = if if true then false else false then if d339 then true else false else if d100 then d268 else true
        d372 : if true then if true then Bool else Bool else if false then Bool else Bool
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x373 -> ( ( Bool -> Bool ) ∋ ( ( λ x374 -> true ) ) ) $ ( x373 ) ) ) ) $ ( if d191 then d343 else d79 )
        d375 : ( ( Set -> Set ) ∋ ( ( λ x377 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x376 -> if d124 then d282 else d263 ) ) ) $ ( if true then d110 else d89 )
        d378 : if false then if false then Bool else Bool else if true then Bool else Bool
        d378 = if if true then d59 else false then if d265 then d79 else true else if true then d102 else d110
        d379 : if false then if false then Bool else Bool else if true then Bool else Bool
        d379 = if if false then d44 else true then if d124 then true else d309 else if true then true else d100
        d380 : ( ( Set -> Set ) ∋ ( ( λ x381 -> ( ( Set -> Set ) ∋ ( ( λ x382 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d380 = if if d129 then false else d237 then if d84 then d75 else d201 else if d163 then d95 else false
        d383 : ( ( Set -> Set ) ∋ ( ( λ x386 -> ( ( Set -> Set ) ∋ ( ( λ x387 -> x387 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d383 = ( ( Bool -> Bool ) ∋ ( ( λ x384 -> ( ( Bool -> Bool ) ∋ ( ( λ x385 -> x385 ) ) ) $ ( true ) ) ) ) $ ( if d367 then true else false )
        d388 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if true then Bool else x390 ) ) ) $ ( if true then Bool else Bool )
        d388 = ( ( Bool -> Bool ) ∋ ( ( λ x389 -> if x389 then x389 else x389 ) ) ) $ ( if d205 then d180 else false )
        d391 : if true then if false then Bool else Bool else if false then Bool else Bool
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x392 -> ( ( Bool -> Bool ) ∋ ( ( λ x393 -> x393 ) ) ) $ ( x392 ) ) ) ) $ ( if d312 then true else d217 )
        d394 : ( ( Set -> Set ) ∋ ( ( λ x396 -> if true then Bool else x396 ) ) ) $ ( if true then Bool else Bool )
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x395 -> if d52 then true else d273 ) ) ) $ ( if d350 then d113 else d41 )
        d397 : if true then if false then Bool else Bool else if true then Bool else Bool
        d397 = if if false then d268 else d237 then if true then false else d21 else if d119 then false else true
        d398 : if true then if true then Bool else Bool else if false then Bool else Bool
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x399 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> false ) ) ) $ ( d99 ) ) ) ) $ ( if false then true else true )
        d401 : ( ( Set -> Set ) ∋ ( ( λ x403 -> ( ( Set -> Set ) ∋ ( ( λ x404 -> x403 ) ) ) $ ( x403 ) ) ) ) $ ( if false then Bool else Bool )
        d401 = ( ( Bool -> Bool ) ∋ ( ( λ x402 -> if true then x402 else x402 ) ) ) $ ( if true then d220 else d6 )
        d405 : if true then if true then Bool else Bool else if false then Bool else Bool
        d405 = if if d282 then d102 else d323 then if true then true else d401 else if d398 then false else false
        d406 : if true then if false then Bool else Bool else if false then Bool else Bool
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x407 -> ( ( Bool -> Bool ) ∋ ( ( λ x408 -> x408 ) ) ) $ ( d110 ) ) ) ) $ ( if false then d196 else true )
        d409 : if true then if false then Bool else Bool else if false then Bool else Bool
        d409 = if if d180 then true else true then if false then d394 else d350 else if true then d50 else d84
        d410 : ( ( Set -> Set ) ∋ ( ( λ x411 -> if false then x411 else x411 ) ) ) $ ( if false then Bool else Bool )
        d410 = if if true then true else d312 then if d291 then d237 else d109 else if true then d316 else d9
        d412 : if false then if false then Bool else Bool else if false then Bool else Bool
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x413 -> if x413 then true else d383 ) ) ) $ ( if d158 then false else false )
        d414 : if true then if false then Bool else Bool else if false then Bool else Bool
        d414 = if if d406 then d96 else d388 then if false then d103 else false else if true then d283 else true
        d415 : ( ( Set -> Set ) ∋ ( ( λ x418 -> if false then x418 else Bool ) ) ) $ ( if false then Bool else Bool )
        d415 = ( ( Bool -> Bool ) ∋ ( ( λ x416 -> ( ( Bool -> Bool ) ∋ ( ( λ x417 -> d76 ) ) ) $ ( x416 ) ) ) ) $ ( if d196 then false else d414 )
        d419 : ( ( Set -> Set ) ∋ ( ( λ x422 -> ( ( Set -> Set ) ∋ ( ( λ x423 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d419 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> ( ( Bool -> Bool ) ∋ ( ( λ x421 -> true ) ) ) $ ( d79 ) ) ) ) $ ( if true then false else d309 )
        d424 : ( ( Set -> Set ) ∋ ( ( λ x427 -> ( ( Set -> Set ) ∋ ( ( λ x428 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x425 -> ( ( Bool -> Bool ) ∋ ( ( λ x426 -> x425 ) ) ) $ ( d232 ) ) ) ) $ ( if d76 then d405 else d9 )
        d429 : if false then if false then Bool else Bool else if true then Bool else Bool
        d429 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x431 -> x430 ) ) ) $ ( d383 ) ) ) ) $ ( if d176 then d213 else true )
        d432 : ( ( Set -> Set ) ∋ ( ( λ x435 -> ( ( Set -> Set ) ∋ ( ( λ x436 -> x435 ) ) ) $ ( x435 ) ) ) ) $ ( if false then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x433 -> ( ( Bool -> Bool ) ∋ ( ( λ x434 -> x433 ) ) ) $ ( x433 ) ) ) ) $ ( if true then d13 else true )
        d437 : if true then if true then Bool else Bool else if true then Bool else Bool
        d437 = if if false then d259 else false then if d379 then false else false else if d59 then d232 else d250
        d438 : if true then if false then Bool else Bool else if false then Bool else Bool
        d438 = ( ( Bool -> Bool ) ∋ ( ( λ x439 -> if x439 then true else d96 ) ) ) $ ( if d161 then false else d109 )
        d440 : ( ( Set -> Set ) ∋ ( ( λ x442 -> if true then x442 else Bool ) ) ) $ ( if false then Bool else Bool )
        d440 = ( ( Bool -> Bool ) ∋ ( ( λ x441 -> if false then x441 else false ) ) ) $ ( if d50 then d189 else d103 )
        d443 : ( ( Set -> Set ) ∋ ( ( λ x445 -> ( ( Set -> Set ) ∋ ( ( λ x446 -> Bool ) ) ) $ ( x445 ) ) ) ) $ ( if true then Bool else Bool )
        d443 = ( ( Bool -> Bool ) ∋ ( ( λ x444 -> if true then false else false ) ) ) $ ( if d217 then true else d275 )
        d447 : if true then if false then Bool else Bool else if false then Bool else Bool
        d447 = ( ( Bool -> Bool ) ∋ ( ( λ x448 -> if x448 then x448 else x448 ) ) ) $ ( if false then true else d348 )
        d449 : ( ( Set -> Set ) ∋ ( ( λ x452 -> if false then Bool else x452 ) ) ) $ ( if true then Bool else Bool )
        d449 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> ( ( Bool -> Bool ) ∋ ( ( λ x451 -> false ) ) ) $ ( d117 ) ) ) ) $ ( if d345 then d297 else false )
        d453 : if true then if true then Bool else Bool else if true then Bool else Bool
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x454 -> if true then false else false ) ) ) $ ( if false then false else d348 )
        d455 : if false then if true then Bool else Bool else if false then Bool else Bool
        d455 = if if d305 then d229 else false then if d155 then d64 else true else if true then d289 else true
        d456 : if false then if false then Bool else Bool else if false then Bool else Bool
        d456 = ( ( Bool -> Bool ) ∋ ( ( λ x457 -> if x457 then d89 else false ) ) ) $ ( if true then true else true )
        d458 : ( ( Set -> Set ) ∋ ( ( λ x461 -> if true then x461 else x461 ) ) ) $ ( if true then Bool else Bool )
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x459 -> ( ( Bool -> Bool ) ∋ ( ( λ x460 -> x459 ) ) ) $ ( x459 ) ) ) ) $ ( if d96 then d343 else d354 )
        d462 : if true then if true then Bool else Bool else if true then Bool else Bool
        d462 = if if d388 then d205 else d135 then if d375 then d453 else d432 else if d162 then d99 else true
        d463 : if true then if true then Bool else Bool else if false then Bool else Bool
        d463 = if if d149 then d438 else false then if true then d291 else true else if d388 then true else d378
        d464 : ( ( Set -> Set ) ∋ ( ( λ x467 -> ( ( Set -> Set ) ∋ ( ( λ x468 -> x467 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d464 = ( ( Bool -> Bool ) ∋ ( ( λ x465 -> ( ( Bool -> Bool ) ∋ ( ( λ x466 -> false ) ) ) $ ( d121 ) ) ) ) $ ( if true then d378 else d332 )
        d469 : ( ( Set -> Set ) ∋ ( ( λ x471 -> ( ( Set -> Set ) ∋ ( ( λ x472 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d469 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> if d273 then d372 else true ) ) ) $ ( if d37 then d254 else false )
        d473 : ( ( Set -> Set ) ∋ ( ( λ x476 -> if false then x476 else Bool ) ) ) $ ( if false then Bool else Bool )
        d473 = ( ( Bool -> Bool ) ∋ ( ( λ x474 -> ( ( Bool -> Bool ) ∋ ( ( λ x475 -> true ) ) ) $ ( x474 ) ) ) ) $ ( if d189 then d155 else false )
        d477 : ( ( Set -> Set ) ∋ ( ( λ x478 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d477 = if if d83 then d469 else false then if d447 then true else true else if true then false else false
        d479 : ( ( Set -> Set ) ∋ ( ( λ x480 -> if false then x480 else x480 ) ) ) $ ( if false then Bool else Bool )
        d479 = if if d359 then d269 else d350 then if d75 then true else false else if d437 then false else d196
        d481 : if false then if false then Bool else Bool else if false then Bool else Bool
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x482 -> if x482 then d263 else x482 ) ) ) $ ( if false then true else true )
        d483 : if true then if true then Bool else Bool else if false then Bool else Bool
        d483 = ( ( Bool -> Bool ) ∋ ( ( λ x484 -> ( ( Bool -> Bool ) ∋ ( ( λ x485 -> x484 ) ) ) $ ( d354 ) ) ) ) $ ( if false then d397 else d59 )
        d486 : ( ( Set -> Set ) ∋ ( ( λ x487 -> ( ( Set -> Set ) ∋ ( ( λ x488 -> Bool ) ) ) $ ( x487 ) ) ) ) $ ( if true then Bool else Bool )
        d486 = if if true then d232 else false then if d350 then d135 else d141 else if d64 then d464 else d158
        d489 : ( ( Set -> Set ) ∋ ( ( λ x490 -> ( ( Set -> Set ) ∋ ( ( λ x491 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d489 = if if true then d268 else d432 then if false then d330 else d176 else if d352 then false else false
        d492 : ( ( Set -> Set ) ∋ ( ( λ x494 -> ( ( Set -> Set ) ∋ ( ( λ x495 -> Bool ) ) ) $ ( x494 ) ) ) ) $ ( if true then Bool else Bool )
        d492 = ( ( Bool -> Bool ) ∋ ( ( λ x493 -> if true then x493 else false ) ) ) $ ( if d343 then d211 else d109 )
        d496 : if true then if true then Bool else Bool else if false then Bool else Bool
        d496 = if if d175 then true else false then if false then d71 else d281 else if d83 then false else false
        d497 : if true then if false then Bool else Bool else if true then Bool else Bool
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x498 -> ( ( Bool -> Bool ) ∋ ( ( λ x499 -> d119 ) ) ) $ ( x498 ) ) ) ) $ ( if d149 then true else d443 )
        d500 : ( ( Set -> Set ) ∋ ( ( λ x501 -> if false then x501 else x501 ) ) ) $ ( if false then Bool else Bool )
        d500 = if if false then d95 else d78 then if false then d277 else d9 else if true then true else d183
        d502 : ( ( Set -> Set ) ∋ ( ( λ x505 -> ( ( Set -> Set ) ∋ ( ( λ x506 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d502 = ( ( Bool -> Bool ) ∋ ( ( λ x503 -> ( ( Bool -> Bool ) ∋ ( ( λ x504 -> x504 ) ) ) $ ( false ) ) ) ) $ ( if d161 then d188 else false )
        d507 : ( ( Set -> Set ) ∋ ( ( λ x508 -> ( ( Set -> Set ) ∋ ( ( λ x509 -> x509 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d507 = if if true then false else true then if d40 then d394 else d161 else if false then d211 else d254
        d510 : if false then if false then Bool else Bool else if false then Bool else Bool
        d510 = if if d163 then d64 else true then if false then false else d492 else if d294 then false else false
        d511 : ( ( Set -> Set ) ∋ ( ( λ x512 -> if true then Bool else x512 ) ) ) $ ( if false then Bool else Bool )
        d511 = if if d332 then d447 else d168 then if false then false else true else if true then false else false
        d513 : if false then if true then Bool else Bool else if true then Bool else Bool
        d513 = ( ( Bool -> Bool ) ∋ ( ( λ x514 -> if x514 then true else x514 ) ) ) $ ( if d253 then d463 else d367 )
        d515 : ( ( Set -> Set ) ∋ ( ( λ x516 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d515 = if if false then false else d277 then if d205 then d388 else d388 else if d511 then d316 else false
        d517 : if true then if true then Bool else Bool else if true then Bool else Bool
        d517 = if if false then false else d24 then if d429 then d106 else d208 else if false then d75 else true
        d518 : ( ( Set -> Set ) ∋ ( ( λ x519 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d518 = if if false then true else false then if d510 then false else true else if d298 then d220 else d410
        d520 : if false then if false then Bool else Bool else if true then Bool else Bool
        d520 = if if true then d464 else true then if true then true else d458 else if d33 then d361 else false
        d521 : if false then if true then Bool else Bool else if false then Bool else Bool
        d521 = if if d369 then d254 else d334 then if false then d244 else true else if false then false else true
        d522 : if false then if false then Bool else Bool else if false then Bool else Bool
        d522 = ( ( Bool -> Bool ) ∋ ( ( λ x523 -> if x523 then true else x523 ) ) ) $ ( if true then false else d269 )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x525 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d524 = if if d486 then true else d268 then if false then d319 else true else if d164 then false else false
        d526 : ( ( Set -> Set ) ∋ ( ( λ x529 -> if true then x529 else Bool ) ) ) $ ( if false then Bool else Bool )
        d526 = ( ( Bool -> Bool ) ∋ ( ( λ x527 -> ( ( Bool -> Bool ) ∋ ( ( λ x528 -> d205 ) ) ) $ ( d95 ) ) ) ) $ ( if d520 then false else false )
        d530 : if false then if true then Bool else Bool else if true then Bool else Bool
        d530 = if if true then false else d71 then if d383 then d138 else d424 else if d6 then d510 else d424
        d531 : if false then if false then Bool else Bool else if false then Bool else Bool
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x532 -> ( ( Bool -> Bool ) ∋ ( ( λ x533 -> d312 ) ) ) $ ( x532 ) ) ) ) $ ( if false then true else true )
        d534 : ( ( Set -> Set ) ∋ ( ( λ x535 -> ( ( Set -> Set ) ∋ ( ( λ x536 -> x536 ) ) ) $ ( x535 ) ) ) ) $ ( if false then Bool else Bool )
        d534 = if if d83 then true else d100 then if true then false else false else if false then d507 else d208
        d537 : ( ( Set -> Set ) ∋ ( ( λ x539 -> ( ( Set -> Set ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( x539 ) ) ) ) $ ( if true then Bool else Bool )
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x538 -> if true then d302 else x538 ) ) ) $ ( if d518 then true else false )
        d541 : ( ( Set -> Set ) ∋ ( ( λ x544 -> if true then x544 else Bool ) ) ) $ ( if false then Bool else Bool )
        d541 = ( ( Bool -> Bool ) ∋ ( ( λ x542 -> ( ( Bool -> Bool ) ∋ ( ( λ x543 -> d58 ) ) ) $ ( x542 ) ) ) ) $ ( if d305 then false else true )
        d545 : ( ( Set -> Set ) ∋ ( ( λ x546 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d545 = if if true then false else d275 then if d513 then false else true else if false then false else d217
        d547 : if false then if true then Bool else Bool else if false then Bool else Bool
        d547 = if if false then false else false then if d394 then true else d259 else if false then false else d500
        d548 : if false then if true then Bool else Bool else if false then Bool else Bool
        d548 = if if false then false else true then if true then false else true else if d319 then d489 else d114
        d549 : if false then if true then Bool else Bool else if true then Bool else Bool
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x551 -> d391 ) ) ) $ ( d537 ) ) ) ) $ ( if true then true else true )
        d552 : ( ( Set -> Set ) ∋ ( ( λ x555 -> ( ( Set -> Set ) ∋ ( ( λ x556 -> Bool ) ) ) $ ( x555 ) ) ) ) $ ( if false then Bool else Bool )
        d552 = ( ( Bool -> Bool ) ∋ ( ( λ x553 -> ( ( Bool -> Bool ) ∋ ( ( λ x554 -> x554 ) ) ) $ ( d302 ) ) ) ) $ ( if true then false else d135 )
        d557 : if true then if true then Bool else Bool else if true then Bool else Bool
        d557 = ( ( Bool -> Bool ) ∋ ( ( λ x558 -> if x558 then x558 else x558 ) ) ) $ ( if false then d432 else false )
        d559 : ( ( Set -> Set ) ∋ ( ( λ x561 -> if true then x561 else x561 ) ) ) $ ( if false then Bool else Bool )
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if x560 then x560 else d401 ) ) ) $ ( if d237 then true else d473 )
        d562 : if false then if true then Bool else Bool else if true then Bool else Bool
        d562 = if if d298 then d50 else true then if d119 then false else false else if true then d217 else d283
        d563 : ( ( Set -> Set ) ∋ ( ( λ x565 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d563 = ( ( Bool -> Bool ) ∋ ( ( λ x564 -> if x564 then d289 else false ) ) ) $ ( if true then true else d259 )
        d566 : ( ( Set -> Set ) ∋ ( ( λ x568 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d566 = ( ( Bool -> Bool ) ∋ ( ( λ x567 -> if d193 then x567 else d24 ) ) ) $ ( if d552 then d265 else false )
        d569 : ( ( Set -> Set ) ∋ ( ( λ x570 -> ( ( Set -> Set ) ∋ ( ( λ x571 -> x570 ) ) ) $ ( x570 ) ) ) ) $ ( if true then Bool else Bool )
        d569 = if if false then d213 else false then if d102 then false else false else if true then d414 else d419
        d572 : if false then if true then Bool else Bool else if false then Bool else Bool
        d572 = ( ( Bool -> Bool ) ∋ ( ( λ x573 -> ( ( Bool -> Bool ) ∋ ( ( λ x574 -> false ) ) ) $ ( x573 ) ) ) ) $ ( if false then d513 else false )
        d575 : if true then if false then Bool else Bool else if true then Bool else Bool
        d575 = if if d364 then d372 else d6 then if true then d265 else d61 else if d352 then true else d345
        d576 : if true then if true then Bool else Bool else if true then Bool else Bool
        d576 = ( ( Bool -> Bool ) ∋ ( ( λ x577 -> if d569 then d415 else x577 ) ) ) $ ( if d253 then false else false )
        d578 : if false then if false then Bool else Bool else if false then Bool else Bool
        d578 = ( ( Bool -> Bool ) ∋ ( ( λ x579 -> if false then d297 else d176 ) ) ) $ ( if false then false else false )
        d580 : if false then if false then Bool else Bool else if true then Bool else Bool
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x581 -> if d388 then x581 else d500 ) ) ) $ ( if d552 then false else true )
        d582 : if true then if true then Bool else Bool else if true then Bool else Bool
        d582 = ( ( Bool -> Bool ) ∋ ( ( λ x583 -> if true then d268 else true ) ) ) $ ( if false then false else true )
        d584 : ( ( Set -> Set ) ∋ ( ( λ x585 -> ( ( Set -> Set ) ∋ ( ( λ x586 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d584 = if if true then d47 else true then if false then d14 else false else if false then false else true
        d587 : ( ( Set -> Set ) ∋ ( ( λ x590 -> ( ( Set -> Set ) ∋ ( ( λ x591 -> x591 ) ) ) $ ( x590 ) ) ) ) $ ( if true then Bool else Bool )
        d587 = ( ( Bool -> Bool ) ∋ ( ( λ x588 -> ( ( Bool -> Bool ) ∋ ( ( λ x589 -> false ) ) ) $ ( d37 ) ) ) ) $ ( if d489 then false else d96 )
        d592 : ( ( Set -> Set ) ∋ ( ( λ x593 -> if true then x593 else x593 ) ) ) $ ( if true then Bool else Bool )
        d592 = if if false then d429 else false then if d211 then false else d483 else if d58 then d163 else d21
        d594 : ( ( Set -> Set ) ∋ ( ( λ x597 -> ( ( Set -> Set ) ∋ ( ( λ x598 -> x597 ) ) ) $ ( x597 ) ) ) ) $ ( if false then Bool else Bool )
        d594 = ( ( Bool -> Bool ) ∋ ( ( λ x595 -> ( ( Bool -> Bool ) ∋ ( ( λ x596 -> d114 ) ) ) $ ( false ) ) ) ) $ ( if d246 then false else false )
        d599 : if true then if false then Bool else Bool else if false then Bool else Bool
        d599 = if if false then d277 else true then if d575 then d412 else false else if d113 then false else false
        d600 : ( ( Set -> Set ) ∋ ( ( λ x603 -> if true then x603 else Bool ) ) ) $ ( if false then Bool else Bool )
        d600 = ( ( Bool -> Bool ) ∋ ( ( λ x601 -> ( ( Bool -> Bool ) ∋ ( ( λ x602 -> true ) ) ) $ ( x601 ) ) ) ) $ ( if d38 then false else d275 )
        d604 : ( ( Set -> Set ) ∋ ( ( λ x607 -> ( ( Set -> Set ) ∋ ( ( λ x608 -> x608 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d604 = ( ( Bool -> Bool ) ∋ ( ( λ x605 -> ( ( Bool -> Bool ) ∋ ( ( λ x606 -> x606 ) ) ) $ ( x605 ) ) ) ) $ ( if false then false else false )
        d609 : ( ( Set -> Set ) ∋ ( ( λ x612 -> if true then x612 else Bool ) ) ) $ ( if true then Bool else Bool )
        d609 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> ( ( Bool -> Bool ) ∋ ( ( λ x611 -> true ) ) ) $ ( d271 ) ) ) ) $ ( if false then d61 else false )
        d613 : ( ( Set -> Set ) ∋ ( ( λ x615 -> if false then Bool else x615 ) ) ) $ ( if false then Bool else Bool )
        d613 = ( ( Bool -> Bool ) ∋ ( ( λ x614 -> if d183 then d168 else d106 ) ) ) $ ( if d337 then d254 else false )
        d616 : ( ( Set -> Set ) ∋ ( ( λ x617 -> if true then x617 else x617 ) ) ) $ ( if false then Bool else Bool )
        d616 = if if d164 then true else false then if d331 then true else d398 else if d486 then false else false
        d618 : ( ( Set -> Set ) ∋ ( ( λ x620 -> ( ( Set -> Set ) ∋ ( ( λ x621 -> x621 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d618 = ( ( Bool -> Bool ) ∋ ( ( λ x619 -> if d79 then x619 else x619 ) ) ) $ ( if d132 then true else d309 )
        d622 : if true then if true then Bool else Bool else if false then Bool else Bool
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x623 -> ( ( Bool -> Bool ) ∋ ( ( λ x624 -> true ) ) ) $ ( true ) ) ) ) $ ( if d307 then d545 else d492 )
        d625 : if false then if true then Bool else Bool else if false then Bool else Bool
        d625 = if if false then false else d205 then if true then d526 else d126 else if d138 then d449 else d345
        d626 : ( ( Set -> Set ) ∋ ( ( λ x627 -> ( ( Set -> Set ) ∋ ( ( λ x628 -> x628 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d626 = if if false then false else d283 then if false then d370 else d622 else if d121 then d58 else d515
        d629 : if true then if false then Bool else Bool else if true then Bool else Bool
        d629 = if if d329 then d469 else false then if d92 then false else true else if true then true else false
        d630 : if true then if true then Bool else Bool else if true then Bool else Bool
        d630 = ( ( Bool -> Bool ) ∋ ( ( λ x631 -> if x631 then d6 else d443 ) ) ) $ ( if d149 then false else false )
        d632 : if true then if true then Bool else Bool else if false then Bool else Bool
        d632 = ( ( Bool -> Bool ) ∋ ( ( λ x633 -> if true then x633 else d545 ) ) ) $ ( if d244 then d473 else true )
        d634 : if false then if true then Bool else Bool else if true then Bool else Bool
        d634 = if if d592 then d502 else true then if false then d350 else d604 else if false then true else d330
        d635 : if true then if true then Bool else Bool else if true then Bool else Bool
        d635 = if if true then d592 else false then if true then d294 else false else if true then false else d185
        d636 : if false then if true then Bool else Bool else if false then Bool else Bool
        d636 = if if d53 then d58 else d562 then if d500 then false else d53 else if false then false else false
        d637 : ( ( Set -> Set ) ∋ ( ( λ x639 -> if false then x639 else Bool ) ) ) $ ( if false then Bool else Bool )
        d637 = ( ( Bool -> Bool ) ∋ ( ( λ x638 -> if x638 then true else d227 ) ) ) $ ( if d511 then false else d130 )
        d640 : if true then if true then Bool else Bool else if true then Bool else Bool
        d640 = if if true then false else false then if true then true else true else if false then d401 else d247
        d641 : ( ( Set -> Set ) ∋ ( ( λ x643 -> ( ( Set -> Set ) ∋ ( ( λ x644 -> x644 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d641 = ( ( Bool -> Bool ) ∋ ( ( λ x642 -> if d198 then true else d99 ) ) ) $ ( if d161 then d613 else false )
        d645 : ( ( Set -> Set ) ∋ ( ( λ x647 -> if false then Bool else x647 ) ) ) $ ( if true then Bool else Bool )
        d645 = ( ( Bool -> Bool ) ∋ ( ( λ x646 -> if false then x646 else true ) ) ) $ ( if true then false else false )
        d648 : if false then if true then Bool else Bool else if true then Bool else Bool
        d648 = if if d50 then true else true then if true then true else d265 else if d117 then true else d119
        d649 : ( ( Set -> Set ) ∋ ( ( λ x651 -> if false then x651 else x651 ) ) ) $ ( if false then Bool else Bool )
        d649 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> if d534 then x650 else d572 ) ) ) $ ( if d321 then true else false )
        d652 : ( ( Set -> Set ) ∋ ( ( λ x653 -> ( ( Set -> Set ) ∋ ( ( λ x654 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d652 = if if d151 then d141 else d388 then if false then false else d208 else if d294 then d348 else false
        d655 : if false then if true then Bool else Bool else if true then Bool else Bool
        d655 = if if false then false else false then if d609 then true else false else if d464 then false else true
        d656 : ( ( Set -> Set ) ∋ ( ( λ x657 -> if true then x657 else Bool ) ) ) $ ( if true then Bool else Bool )
        d656 = if if true then d113 else false then if d156 then false else d124 else if false then d253 else false
        d658 : if false then if true then Bool else Bool else if false then Bool else Bool
        d658 = ( ( Bool -> Bool ) ∋ ( ( λ x659 -> ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d661 : if true then if false then Bool else Bool else if false then Bool else Bool
        d661 = if if d21 then d406 else d156 then if true then true else d38 else if true then false else false
        d662 : if true then if true then Bool else Bool else if true then Bool else Bool
        d662 = ( ( Bool -> Bool ) ∋ ( ( λ x663 -> ( ( Bool -> Bool ) ∋ ( ( λ x664 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then true else d117 )
        d665 : ( ( Set -> Set ) ∋ ( ( λ x668 -> if true then Bool else x668 ) ) ) $ ( if true then Bool else Bool )
        d665 = ( ( Bool -> Bool ) ∋ ( ( λ x666 -> ( ( Bool -> Bool ) ∋ ( ( λ x667 -> d298 ) ) ) $ ( d661 ) ) ) ) $ ( if d511 then true else false )
        d669 : ( ( Set -> Set ) ∋ ( ( λ x670 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d669 = if if d247 then d456 else d496 then if d429 then d319 else false else if d45 then false else d339
        d671 : ( ( Set -> Set ) ∋ ( ( λ x672 -> ( ( Set -> Set ) ∋ ( ( λ x673 -> x672 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d671 = if if true then d359 else true then if false then d161 else true else if true then d277 else false
        d674 : if false then if false then Bool else Bool else if false then Bool else Bool
        d674 = ( ( Bool -> Bool ) ∋ ( ( λ x675 -> ( ( Bool -> Bool ) ∋ ( ( λ x676 -> x676 ) ) ) $ ( true ) ) ) ) $ ( if true then d534 else true )
        d677 : if true then if false then Bool else Bool else if false then Bool else Bool
        d677 = if if true then false else false then if d437 then false else d158 else if true then true else d53
        d678 : ( ( Set -> Set ) ∋ ( ( λ x679 -> if true then Bool else x679 ) ) ) $ ( if false then Bool else Bool )
        d678 = if if false then d463 else true then if d13 then d557 else true else if d326 then d38 else false
        d680 : if false then if false then Bool else Bool else if true then Bool else Bool
        d680 = ( ( Bool -> Bool ) ∋ ( ( λ x681 -> ( ( Bool -> Bool ) ∋ ( ( λ x682 -> x682 ) ) ) $ ( d405 ) ) ) ) $ ( if d312 then false else false )
        d683 : ( ( Set -> Set ) ∋ ( ( λ x686 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d683 = ( ( Bool -> Bool ) ∋ ( ( λ x684 -> ( ( Bool -> Bool ) ∋ ( ( λ x685 -> x685 ) ) ) $ ( x684 ) ) ) ) $ ( if true then false else false )
        d687 : if false then if false then Bool else Bool else if true then Bool else Bool
        d687 = if if d158 then d96 else true then if d59 then true else false else if true then true else d587
        d688 : if false then if false then Bool else Bool else if false then Bool else Bool
        d688 = ( ( Bool -> Bool ) ∋ ( ( λ x689 -> if true then d217 else false ) ) ) $ ( if false then true else true )
        d690 : ( ( Set -> Set ) ∋ ( ( λ x691 -> ( ( Set -> Set ) ∋ ( ( λ x692 -> x691 ) ) ) $ ( x691 ) ) ) ) $ ( if true then Bool else Bool )
        d690 = if if d321 then true else false then if true then false else false else if false then d246 else d175
        d693 : ( ( Set -> Set ) ∋ ( ( λ x696 -> ( ( Set -> Set ) ∋ ( ( λ x697 -> x697 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d693 = ( ( Bool -> Bool ) ∋ ( ( λ x694 -> ( ( Bool -> Bool ) ∋ ( ( λ x695 -> x694 ) ) ) $ ( d329 ) ) ) ) $ ( if false then true else d680 )
        d698 : ( ( Set -> Set ) ∋ ( ( λ x701 -> ( ( Set -> Set ) ∋ ( ( λ x702 -> x702 ) ) ) $ ( x701 ) ) ) ) $ ( if false then Bool else Bool )
        d698 = ( ( Bool -> Bool ) ∋ ( ( λ x699 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( false ) ) ) ) $ ( if d669 then d348 else d329 )
        d703 : ( ( Set -> Set ) ∋ ( ( λ x706 -> if false then Bool else x706 ) ) ) $ ( if true then Bool else Bool )
        d703 = ( ( Bool -> Bool ) ∋ ( ( λ x704 -> ( ( Bool -> Bool ) ∋ ( ( λ x705 -> d326 ) ) ) $ ( true ) ) ) ) $ ( if true then d397 else false )
        d707 : if false then if true then Bool else Bool else if true then Bool else Bool
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x708 -> ( ( Bool -> Bool ) ∋ ( ( λ x709 -> x708 ) ) ) $ ( false ) ) ) ) $ ( if d656 then false else d517 )
        d710 : if true then if false then Bool else Bool else if true then Bool else Bool
        d710 = if if d510 then d259 else d463 then if true then d634 else false else if d401 then true else d18
        d711 : ( ( Set -> Set ) ∋ ( ( λ x712 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d711 = if if false then d486 else true then if d600 then d119 else true else if d569 then d188 else d117
        d713 : if true then if false then Bool else Bool else if true then Bool else Bool
        d713 = if if d188 then d496 else d124 then if false then true else true else if false then true else d286
        d714 : ( ( Set -> Set ) ∋ ( ( λ x715 -> ( ( Set -> Set ) ∋ ( ( λ x716 -> x716 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d714 = if if d321 then false else d21 then if true then false else true else if d637 then false else d307
        d717 : if true then if false then Bool else Bool else if false then Bool else Bool
        d717 = if if false then d713 else d149 then if false then false else d298 else if d321 then d78 else d534
        d718 : ( ( Set -> Set ) ∋ ( ( λ x721 -> ( ( Set -> Set ) ∋ ( ( λ x722 -> x721 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d718 = ( ( Bool -> Bool ) ∋ ( ( λ x719 -> ( ( Bool -> Bool ) ∋ ( ( λ x720 -> x719 ) ) ) $ ( true ) ) ) ) $ ( if true then d513 else true )
        d723 : if false then if true then Bool else Bool else if true then Bool else Bool
        d723 = if if d559 then d562 else d524 then if false then d281 else d412 else if true then d665 else d24
        d724 : if true then if true then Bool else Bool else if true then Bool else Bool
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x725 -> if true then false else d432 ) ) ) $ ( if true then true else false )
        d726 : if true then if false then Bool else Bool else if true then Bool else Bool
        d726 = if if true then true else true then if d297 then false else true else if d126 then d87 else false
        d727 : ( ( Set -> Set ) ∋ ( ( λ x729 -> if false then Bool else x729 ) ) ) $ ( if false then Bool else Bool )
        d727 = ( ( Bool -> Bool ) ∋ ( ( λ x728 -> if false then x728 else true ) ) ) $ ( if d66 then false else d655 )
        d730 : if true then if true then Bool else Bool else if true then Bool else Bool
        d730 = ( ( Bool -> Bool ) ∋ ( ( λ x731 -> if true then true else true ) ) ) $ ( if false then d655 else true )
        d732 : ( ( Set -> Set ) ∋ ( ( λ x734 -> ( ( Set -> Set ) ∋ ( ( λ x735 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d732 = ( ( Bool -> Bool ) ∋ ( ( λ x733 -> if false then true else true ) ) ) $ ( if true then false else true )
        d736 : if false then if true then Bool else Bool else if true then Bool else Bool
        d736 = ( ( Bool -> Bool ) ∋ ( ( λ x737 -> if true then x737 else x737 ) ) ) $ ( if true then d59 else d294 )
        d738 : if true then if true then Bool else Bool else if false then Bool else Bool
        d738 = if if d569 then d582 else d680 then if d707 then false else false else if false then d189 else false
        d739 : ( ( Set -> Set ) ∋ ( ( λ x740 -> ( ( Set -> Set ) ∋ ( ( λ x741 -> x741 ) ) ) $ ( x740 ) ) ) ) $ ( if true then Bool else Bool )
        d739 = if if d103 then true else true then if true then true else d429 else if d339 then d117 else d151
        d742 : ( ( Set -> Set ) ∋ ( ( λ x743 -> ( ( Set -> Set ) ∋ ( ( λ x744 -> Bool ) ) ) $ ( x743 ) ) ) ) $ ( if false then Bool else Bool )
        d742 = if if d14 then d53 else false then if false then d394 else false else if false then d388 else d37
        d745 : if true then if false then Bool else Bool else if false then Bool else Bool
        d745 = ( ( Bool -> Bool ) ∋ ( ( λ x746 -> ( ( Bool -> Bool ) ∋ ( ( λ x747 -> x747 ) ) ) $ ( x746 ) ) ) ) $ ( if false then d718 else false )
        d748 : if false then if true then Bool else Bool else if false then Bool else Bool
        d748 = if if d58 then true else false then if false then true else false else if false then d630 else false
        d749 : if false then if true then Bool else Bool else if true then Bool else Bool
        d749 = if if d481 then true else false then if d537 then d500 else true else if d406 then true else true
        d750 : if false then if true then Bool else Bool else if true then Bool else Bool
        d750 = ( ( Bool -> Bool ) ∋ ( ( λ x751 -> ( ( Bool -> Bool ) ∋ ( ( λ x752 -> d110 ) ) ) $ ( true ) ) ) ) $ ( if true then d732 else d224 )
        d753 : ( ( Set -> Set ) ∋ ( ( λ x756 -> ( ( Set -> Set ) ∋ ( ( λ x757 -> Bool ) ) ) $ ( x756 ) ) ) ) $ ( if true then Bool else Bool )
        d753 = ( ( Bool -> Bool ) ∋ ( ( λ x754 -> ( ( Bool -> Bool ) ∋ ( ( λ x755 -> false ) ) ) $ ( x754 ) ) ) ) $ ( if true then d337 else d114 )
        d758 : if false then if true then Bool else Bool else if false then Bool else Bool
        d758 = if if false then d92 else false then if d37 then d106 else true else if true then false else d511
        d759 : ( ( Set -> Set ) ∋ ( ( λ x762 -> ( ( Set -> Set ) ∋ ( ( λ x763 -> x762 ) ) ) $ ( x762 ) ) ) ) $ ( if false then Bool else Bool )
        d759 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> ( ( Bool -> Bool ) ∋ ( ( λ x761 -> d661 ) ) ) $ ( true ) ) ) ) $ ( if false then d635 else true )
        d764 : ( ( Set -> Set ) ∋ ( ( λ x767 -> ( ( Set -> Set ) ∋ ( ( λ x768 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d764 = ( ( Bool -> Bool ) ∋ ( ( λ x765 -> ( ( Bool -> Bool ) ∋ ( ( λ x766 -> x765 ) ) ) $ ( x765 ) ) ) ) $ ( if d58 then d537 else false )
        d769 : ( ( Set -> Set ) ∋ ( ( λ x772 -> if true then Bool else x772 ) ) ) $ ( if true then Bool else Bool )
        d769 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( Bool -> Bool ) ∋ ( ( λ x771 -> true ) ) ) $ ( true ) ) ) ) $ ( if d690 then false else false )
        d773 : if false then if true then Bool else Bool else if false then Bool else Bool
        d773 = ( ( Bool -> Bool ) ∋ ( ( λ x774 -> if false then x774 else x774 ) ) ) $ ( if true then true else true )
        d775 : if false then if false then Bool else Bool else if true then Bool else Bool
        d775 = if if d361 then false else true then if true then d350 else true else if d727 then false else true
        d776 : ( ( Set -> Set ) ∋ ( ( λ x777 -> ( ( Set -> Set ) ∋ ( ( λ x778 -> x777 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d776 = if if d191 then d281 else false then if false then true else false else if true then false else true
        d779 : if false then if false then Bool else Bool else if true then Bool else Bool
        d779 = if if true then true else true then if d75 then d557 else true else if false then true else d724
        d780 : if false then if true then Bool else Bool else if true then Bool else Bool
        d780 = ( ( Bool -> Bool ) ∋ ( ( λ x781 -> if x781 then x781 else false ) ) ) $ ( if false then d618 else true )
        d782 : ( ( Set -> Set ) ∋ ( ( λ x784 -> ( ( Set -> Set ) ∋ ( ( λ x785 -> x784 ) ) ) $ ( x784 ) ) ) ) $ ( if true then Bool else Bool )
        d782 = ( ( Bool -> Bool ) ∋ ( ( λ x783 -> if x783 then x783 else false ) ) ) $ ( if false then false else true )
        d786 : ( ( Set -> Set ) ∋ ( ( λ x788 -> if true then x788 else Bool ) ) ) $ ( if false then Bool else Bool )
        d786 = ( ( Bool -> Bool ) ∋ ( ( λ x787 -> if d102 then x787 else d121 ) ) ) $ ( if d83 then d473 else d40 )
        d789 : if false then if true then Bool else Bool else if true then Bool else Bool
        d789 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if x790 then true else x790 ) ) ) $ ( if true then true else d572 )
        d791 : if true then if true then Bool else Bool else if true then Bool else Bool
        d791 = if if true then false else false then if false then true else d71 else if d18 then true else d635
        d792 : ( ( Set -> Set ) ∋ ( ( λ x794 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d792 = ( ( Bool -> Bool ) ∋ ( ( λ x793 -> if true then false else true ) ) ) $ ( if true then false else d618 )
        d795 : ( ( Set -> Set ) ∋ ( ( λ x798 -> if true then x798 else x798 ) ) ) $ ( if false then Bool else Bool )
        d795 = ( ( Bool -> Bool ) ∋ ( ( λ x796 -> ( ( Bool -> Bool ) ∋ ( ( λ x797 -> d578 ) ) ) $ ( d117 ) ) ) ) $ ( if true then false else d649 )
        d799 : ( ( Set -> Set ) ∋ ( ( λ x802 -> ( ( Set -> Set ) ∋ ( ( λ x803 -> x803 ) ) ) $ ( x802 ) ) ) ) $ ( if false then Bool else Bool )
        d799 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( Bool -> Bool ) ∋ ( ( λ x801 -> x801 ) ) ) $ ( x800 ) ) ) ) $ ( if d198 then false else d578 )
        d804 : ( ( Set -> Set ) ∋ ( ( λ x806 -> if true then x806 else Bool ) ) ) $ ( if false then Bool else Bool )
        d804 = ( ( Bool -> Bool ) ∋ ( ( λ x805 -> if true then d156 else d738 ) ) ) $ ( if d155 then d229 else true )
        d807 : if false then if false then Bool else Bool else if true then Bool else Bool
        d807 = if if false then d83 else d13 then if false then d496 else d727 else if d711 then true else d52
        d808 : if true then if true then Bool else Bool else if true then Bool else Bool
        d808 = ( ( Bool -> Bool ) ∋ ( ( λ x809 -> if x809 then x809 else x809 ) ) ) $ ( if false then d161 else d369 )
        d810 : ( ( Set -> Set ) ∋ ( ( λ x812 -> if false then x812 else x812 ) ) ) $ ( if true then Bool else Bool )
        d810 = ( ( Bool -> Bool ) ∋ ( ( λ x811 -> if false then d265 else true ) ) ) $ ( if false then true else false )
        d813 : ( ( Set -> Set ) ∋ ( ( λ x814 -> if false then x814 else Bool ) ) ) $ ( if false then Bool else Bool )
        d813 = if if d726 then d117 else true then if false then false else d119 else if d176 then d432 else false
        d815 : if true then if false then Bool else Bool else if true then Bool else Bool
        d815 = ( ( Bool -> Bool ) ∋ ( ( λ x816 -> if false then x816 else x816 ) ) ) $ ( if d298 then d489 else d117 )
        d817 : if true then if false then Bool else Bool else if false then Bool else Bool
        d817 = if if true then d361 else d4 then if false then d117 else d463 else if d520 then true else true
        d818 : ( ( Set -> Set ) ∋ ( ( λ x819 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d818 = if if false then true else false then if d156 then false else false else if d557 then false else d713
        d821 : if true then if true then Bool else Bool else if false then Bool else Bool
        d821 = if if true then d473 else d383 then if d469 then d496 else true else if true then true else true
        d822 : ( ( Set -> Set ) ∋ ( ( λ x824 -> if false then x824 else Bool ) ) ) $ ( if false then Bool else Bool )
        d822 = ( ( Bool -> Bool ) ∋ ( ( λ x823 -> if x823 then true else d626 ) ) ) $ ( if false then d235 else false )
        d825 : if true then if false then Bool else Bool else if true then Bool else Bool
        d825 = ( ( Bool -> Bool ) ∋ ( ( λ x826 -> ( ( Bool -> Bool ) ∋ ( ( λ x827 -> d323 ) ) ) $ ( x826 ) ) ) ) $ ( if false then true else d758 )
        d828 : ( ( Set -> Set ) ∋ ( ( λ x829 -> if true then x829 else x829 ) ) ) $ ( if false then Bool else Bool )
        d828 = if if d604 then d677 else false then if false then d807 else true else if d656 then true else false
        d830 : ( ( Set -> Set ) ∋ ( ( λ x833 -> ( ( Set -> Set ) ∋ ( ( λ x834 -> Bool ) ) ) $ ( x833 ) ) ) ) $ ( if true then Bool else Bool )
        d830 = ( ( Bool -> Bool ) ∋ ( ( λ x831 -> ( ( Bool -> Bool ) ∋ ( ( λ x832 -> false ) ) ) $ ( x831 ) ) ) ) $ ( if false then d656 else true )
        d835 : if true then if false then Bool else Bool else if false then Bool else Bool
        d835 = if if d383 then d388 else d521 then if d739 then true else d135 else if true then false else d563
        d836 : if true then if false then Bool else Bool else if false then Bool else Bool
        d836 = if if false then true else true then if d357 then d128 else d635 else if false then false else true
        d837 : if false then if true then Bool else Bool else if true then Bool else Bool
        d837 = if if false then d323 else d496 then if d254 then d253 else true else if d83 then d828 else d232
        d838 : if true then if true then Bool else Bool else if false then Bool else Bool
        d838 = if if d89 then d359 else d736 then if false then false else d782 else if false then true else d196
        d839 : if true then if false then Bool else Bool else if true then Bool else Bool
        d839 = if if false then d517 else true then if true then d106 else false else if true then d33 else false
        d840 : if true then if false then Bool else Bool else if true then Bool else Bool
        d840 = ( ( Bool -> Bool ) ∋ ( ( λ x841 -> if false then x841 else d578 ) ) ) $ ( if true then d828 else d632 )
        d842 : ( ( Set -> Set ) ∋ ( ( λ x843 -> ( ( Set -> Set ) ∋ ( ( λ x844 -> Bool ) ) ) $ ( x843 ) ) ) ) $ ( if true then Bool else Bool )
        d842 = if if false then true else false then if false then d429 else true else if d151 then d394 else d269
        d845 : if true then if false then Bool else Bool else if false then Bool else Bool
        d845 = ( ( Bool -> Bool ) ∋ ( ( λ x846 -> if x846 then x846 else d661 ) ) ) $ ( if d462 then false else true )
        d847 : ( ( Set -> Set ) ∋ ( ( λ x848 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d847 = if if d789 then d201 else true then if d463 then true else d250 else if true then d329 else d618
        d849 : ( ( Set -> Set ) ∋ ( ( λ x851 -> if true then Bool else x851 ) ) ) $ ( if false then Bool else Bool )
        d849 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if d339 then x850 else true ) ) ) $ ( if d247 then true else d727 )
        d852 : if false then if true then Bool else Bool else if true then Bool else Bool
        d852 = ( ( Bool -> Bool ) ∋ ( ( λ x853 -> if false then d410 else true ) ) ) $ ( if d749 then true else true )
        d854 : if false then if true then Bool else Bool else if false then Bool else Bool
        d854 = if if d522 then d517 else d83 then if false then true else d138 else if d500 then d79 else d683
        d855 : ( ( Set -> Set ) ∋ ( ( λ x856 -> ( ( Set -> Set ) ∋ ( ( λ x857 -> x856 ) ) ) $ ( x856 ) ) ) ) $ ( if false then Bool else Bool )
        d855 = if if true then false else true then if true then true else d164 else if d840 then true else false
        d858 : ( ( Set -> Set ) ∋ ( ( λ x861 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d858 = ( ( Bool -> Bool ) ∋ ( ( λ x859 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> d839 ) ) ) $ ( d714 ) ) ) ) $ ( if d799 then d401 else d84 )
        d862 : if false then if false then Bool else Bool else if true then Bool else Bool
        d862 = if if false then d662 else true then if false then true else d835 else if d599 then d537 else d665
        d863 : ( ( Set -> Set ) ∋ ( ( λ x864 -> ( ( Set -> Set ) ∋ ( ( λ x865 -> x864 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d863 = if if true then d191 else false then if true then d773 else true else if true then true else false
        d866 : if false then if true then Bool else Bool else if false then Bool else Bool
        d866 = ( ( Bool -> Bool ) ∋ ( ( λ x867 -> ( ( Bool -> Bool ) ∋ ( ( λ x868 -> d455 ) ) ) $ ( x867 ) ) ) ) $ ( if d294 then d205 else false )
        d869 : if false then if true then Bool else Bool else if true then Bool else Bool
        d869 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if d634 then x870 else d795 ) ) ) $ ( if d552 then d224 else true )
        d871 : ( ( Set -> Set ) ∋ ( ( λ x874 -> ( ( Set -> Set ) ∋ ( ( λ x875 -> Bool ) ) ) $ ( x874 ) ) ) ) $ ( if false then Bool else Bool )
        d871 = ( ( Bool -> Bool ) ∋ ( ( λ x872 -> ( ( Bool -> Bool ) ∋ ( ( λ x873 -> false ) ) ) $ ( false ) ) ) ) $ ( if d455 then d759 else d473 )
        d876 : ( ( Set -> Set ) ∋ ( ( λ x877 -> if true then x877 else Bool ) ) ) $ ( if true then Bool else Bool )
        d876 = if if d329 then d4 else d201 then if d96 then false else d117 else if d405 then d599 else d584
        d878 : ( ( Set -> Set ) ∋ ( ( λ x879 -> if true then x879 else Bool ) ) ) $ ( if true then Bool else Bool )
        d878 = if if d126 then d637 else false then if true then d156 else false else if d309 then false else d742
        d880 : ( ( Set -> Set ) ∋ ( ( λ x883 -> if false then x883 else x883 ) ) ) $ ( if false then Bool else Bool )
        d880 = ( ( Bool -> Bool ) ∋ ( ( λ x881 -> ( ( Bool -> Bool ) ∋ ( ( λ x882 -> x881 ) ) ) $ ( true ) ) ) ) $ ( if d354 then d748 else true )
        d884 : ( ( Set -> Set ) ∋ ( ( λ x887 -> ( ( Set -> Set ) ∋ ( ( λ x888 -> x887 ) ) ) $ ( x887 ) ) ) ) $ ( if true then Bool else Bool )
        d884 = ( ( Bool -> Bool ) ∋ ( ( λ x885 -> ( ( Bool -> Bool ) ∋ ( ( λ x886 -> d321 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d889 : ( ( Set -> Set ) ∋ ( ( λ x891 -> ( ( Set -> Set ) ∋ ( ( λ x892 -> Bool ) ) ) $ ( x891 ) ) ) ) $ ( if true then Bool else Bool )
        d889 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if x890 then d724 else d319 ) ) ) $ ( if false then true else d24 )
        d893 : if true then if true then Bool else Bool else if false then Bool else Bool
        d893 = ( ( Bool -> Bool ) ∋ ( ( λ x894 -> ( ( Bool -> Bool ) ∋ ( ( λ x895 -> false ) ) ) $ ( d237 ) ) ) ) $ ( if true then false else true )
        d896 : if false then if true then Bool else Bool else if true then Bool else Bool
        d896 = ( ( Bool -> Bool ) ∋ ( ( λ x897 -> if d648 then x897 else false ) ) ) $ ( if false then d189 else d28 )
        d898 : if false then if true then Bool else Bool else if false then Bool else Bool
        d898 = ( ( Bool -> Bool ) ∋ ( ( λ x899 -> ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d649 ) ) ) $ ( false ) ) ) ) $ ( if d45 then false else d497 )
        d901 : ( ( Set -> Set ) ∋ ( ( λ x904 -> if true then Bool else x904 ) ) ) $ ( if true then Bool else Bool )
        d901 = ( ( Bool -> Bool ) ∋ ( ( λ x902 -> ( ( Bool -> Bool ) ∋ ( ( λ x903 -> false ) ) ) $ ( x902 ) ) ) ) $ ( if false then true else true )
        d905 : if false then if false then Bool else Bool else if true then Bool else Bool
        d905 = if if false then true else d782 then if d13 then d440 else false else if false then false else d500
        d906 : if false then if true then Bool else Bool else if true then Bool else Bool
        d906 = if if d286 then d121 else d552 then if false then true else d714 else if false then false else d582
        d907 : ( ( Set -> Set ) ∋ ( ( λ x909 -> ( ( Set -> Set ) ∋ ( ( λ x910 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d907 = ( ( Bool -> Bool ) ∋ ( ( λ x908 -> if x908 then x908 else true ) ) ) $ ( if true then d576 else false )
        d911 : ( ( Set -> Set ) ∋ ( ( λ x914 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d911 = ( ( Bool -> Bool ) ∋ ( ( λ x912 -> ( ( Bool -> Bool ) ∋ ( ( λ x913 -> x913 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d121 )
        d915 : if true then if true then Bool else Bool else if true then Bool else Bool
        d915 = ( ( Bool -> Bool ) ∋ ( ( λ x916 -> if false then x916 else x916 ) ) ) $ ( if false then true else d629 )
        d917 : if false then if false then Bool else Bool else if false then Bool else Bool
        d917 = if if d130 then true else d813 then if true then false else d669 else if d678 then d369 else d548
        d918 : ( ( Set -> Set ) ∋ ( ( λ x919 -> if true then Bool else x919 ) ) ) $ ( if true then Bool else Bool )
        d918 = if if d398 then false else true then if d162 then d211 else true else if d79 then true else d271
        d920 : ( ( Set -> Set ) ∋ ( ( λ x921 -> ( ( Set -> Set ) ∋ ( ( λ x922 -> Bool ) ) ) $ ( x921 ) ) ) ) $ ( if true then Bool else Bool )
        d920 = if if d119 then false else false then if true then d717 else d378 else if true then false else false
        d923 : if false then if false then Bool else Bool else if false then Bool else Bool
        d923 = if if false then d211 else d502 then if d836 then false else true else if d158 then true else true
        d924 : if true then if true then Bool else Bool else if true then Bool else Bool
        d924 = ( ( Bool -> Bool ) ∋ ( ( λ x925 -> ( ( Bool -> Bool ) ∋ ( ( λ x926 -> x926 ) ) ) $ ( true ) ) ) ) $ ( if false then d379 else false )
        d927 : ( ( Set -> Set ) ∋ ( ( λ x928 -> ( ( Set -> Set ) ∋ ( ( λ x929 -> x928 ) ) ) $ ( x928 ) ) ) ) $ ( if true then Bool else Bool )
        d927 = if if d372 then d319 else d440 then if d76 then d510 else d753 else if true then d524 else false
        d930 : if false then if true then Bool else Bool else if false then Bool else Bool
        d930 = ( ( Bool -> Bool ) ∋ ( ( λ x931 -> ( ( Bool -> Bool ) ∋ ( ( λ x932 -> x931 ) ) ) $ ( x931 ) ) ) ) $ ( if d370 then d28 else d854 )
        d933 : if false then if false then Bool else Bool else if true then Bool else Bool
        d933 = if if false then true else false then if d359 then d380 else false else if true then true else true
        d934 : ( ( Set -> Set ) ∋ ( ( λ x935 -> if true then Bool else x935 ) ) ) $ ( if true then Bool else Bool )
        d934 = if if d379 then d201 else false then if true then d401 else true else if true then d456 else d462
        d936 : if false then if false then Bool else Bool else if true then Bool else Bool
        d936 = ( ( Bool -> Bool ) ∋ ( ( λ x937 -> if x937 then x937 else true ) ) ) $ ( if d792 then d845 else d227 )
        d938 : ( ( Set -> Set ) ∋ ( ( λ x941 -> ( ( Set -> Set ) ∋ ( ( λ x942 -> Bool ) ) ) $ ( x941 ) ) ) ) $ ( if false then Bool else Bool )
        d938 = ( ( Bool -> Bool ) ∋ ( ( λ x939 -> ( ( Bool -> Bool ) ∋ ( ( λ x940 -> d789 ) ) ) $ ( d312 ) ) ) ) $ ( if d753 then d268 else true )
        d943 : ( ( Set -> Set ) ∋ ( ( λ x944 -> if false then x944 else Bool ) ) ) $ ( if true then Bool else Bool )
        d943 = if if d920 then d40 else true then if d572 then d109 else d447 else if d357 then false else false
        d945 : ( ( Set -> Set ) ∋ ( ( λ x946 -> ( ( Set -> Set ) ∋ ( ( λ x947 -> Bool ) ) ) $ ( x946 ) ) ) ) $ ( if true then Bool else Bool )
        d945 = if if false then false else true then if d414 then d291 else false else if true then d185 else true
        d948 : if true then if false then Bool else Bool else if true then Bool else Bool
        d948 = ( ( Bool -> Bool ) ∋ ( ( λ x949 -> if true then x949 else x949 ) ) ) $ ( if true then d334 else d357 )
        d950 : ( ( Set -> Set ) ∋ ( ( λ x951 -> if false then x951 else x951 ) ) ) $ ( if false then Bool else Bool )
        d950 = if if d732 then d724 else d687 then if d649 then true else true else if true then d896 else d517
        d952 : if true then if false then Bool else Bool else if false then Bool else Bool
        d952 = ( ( Bool -> Bool ) ∋ ( ( λ x953 -> ( ( Bool -> Bool ) ∋ ( ( λ x954 -> true ) ) ) $ ( x953 ) ) ) ) $ ( if d21 then d481 else d616 )
        d955 : if false then if true then Bool else Bool else if false then Bool else Bool
        d955 = ( ( Bool -> Bool ) ∋ ( ( λ x956 -> if d680 then true else true ) ) ) $ ( if false then d414 else false )
        d957 : ( ( Set -> Set ) ∋ ( ( λ x958 -> ( ( Set -> Set ) ∋ ( ( λ x959 -> x958 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d957 = if if d289 then d281 else d52 then if true then d836 else d943 else if false then d113 else d776
        d960 : ( ( Set -> Set ) ∋ ( ( λ x963 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d960 = ( ( Bool -> Bool ) ∋ ( ( λ x961 -> ( ( Bool -> Bool ) ∋ ( ( λ x962 -> x962 ) ) ) $ ( d649 ) ) ) ) $ ( if d37 then d352 else false )
        d964 : ( ( Set -> Set ) ∋ ( ( λ x966 -> ( ( Set -> Set ) ∋ ( ( λ x967 -> Bool ) ) ) $ ( x966 ) ) ) ) $ ( if true then Bool else Bool )
        d964 = ( ( Bool -> Bool ) ∋ ( ( λ x965 -> if d557 then true else x965 ) ) ) $ ( if d600 then d486 else d604 )
        d968 : if false then if false then Bool else Bool else if true then Bool else Bool
        d968 = if if d14 then d918 else d714 then if d163 then false else true else if true then d479 else d871
        d969 : if true then if true then Bool else Bool else if false then Bool else Bool
        d969 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if d933 then d4 else true ) ) ) $ ( if d265 then d526 else d934 )
        d971 : ( ( Set -> Set ) ∋ ( ( λ x973 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d971 = ( ( Bool -> Bool ) ∋ ( ( λ x972 -> if d58 then x972 else true ) ) ) $ ( if d337 then true else d683 )
        d974 : ( ( Set -> Set ) ∋ ( ( λ x975 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d974 = if if false then false else d943 then if true then false else true else if d795 then true else true
        d976 : ( ( Set -> Set ) ∋ ( ( λ x979 -> ( ( Set -> Set ) ∋ ( ( λ x980 -> x979 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d976 = ( ( Bool -> Bool ) ∋ ( ( λ x977 -> ( ( Bool -> Bool ) ∋ ( ( λ x978 -> d636 ) ) ) $ ( x977 ) ) ) ) $ ( if d291 then d515 else d375 )
        d981 : if true then if true then Bool else Bool else if true then Bool else Bool
        d981 = ( ( Bool -> Bool ) ∋ ( ( λ x982 -> ( ( Bool -> Bool ) ∋ ( ( λ x983 -> d600 ) ) ) $ ( x982 ) ) ) ) $ ( if true then true else d96 )
        d984 : if true then if true then Bool else Bool else if true then Bool else Bool
        d984 = ( ( Bool -> Bool ) ∋ ( ( λ x985 -> ( ( Bool -> Bool ) ∋ ( ( λ x986 -> true ) ) ) $ ( false ) ) ) ) $ ( if d898 then false else d321 )
        d987 : ( ( Set -> Set ) ∋ ( ( λ x988 -> ( ( Set -> Set ) ∋ ( ( λ x989 -> Bool ) ) ) $ ( x988 ) ) ) ) $ ( if false then Bool else Bool )
        d987 = if if true then true else true then if false then d117 else d286 else if false then false else d948
        d990 : if true then if true then Bool else Bool else if true then Bool else Bool
        d990 = if if true then false else false then if d100 then d124 else false else if true then d397 else d151
        d991 : if false then if true then Bool else Bool else if true then Bool else Bool
        d991 = if if true then d268 else false then if false then false else d263 else if d489 then d578 else false
        d992 : if false then if true then Bool else Bool else if true then Bool else Bool
        d992 = ( ( Bool -> Bool ) ∋ ( ( λ x993 -> if x993 then d79 else x993 ) ) ) $ ( if false then false else true )
        d994 : if true then if false then Bool else Bool else if true then Bool else Bool
        d994 = if if d247 then d52 else d984 then if true then d405 else d838 else if true then true else true
        d995 : if false then if true then Bool else Bool else if false then Bool else Bool
        d995 = ( ( Bool -> Bool ) ∋ ( ( λ x996 -> if x996 then x996 else d893 ) ) ) $ ( if d50 then d224 else d334 )
        d997 : ( ( Set -> Set ) ∋ ( ( λ x999 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d997 = ( ( Bool -> Bool ) ∋ ( ( λ x998 -> if d613 then x998 else true ) ) ) $ ( if d799 then d305 else true )
        d1001 : ( ( Set -> Set ) ∋ ( ( λ x1004 -> ( ( Set -> Set ) ∋ ( ( λ x1005 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1001 = ( ( Bool -> Bool ) ∋ ( ( λ x1002 -> ( ( Bool -> Bool ) ∋ ( ( λ x1003 -> d259 ) ) ) $ ( d135 ) ) ) ) $ ( if false then d839 else d511 )
        d1006 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1006 = ( ( Bool -> Bool ) ∋ ( ( λ x1007 -> ( ( Bool -> Bool ) ∋ ( ( λ x1008 -> x1007 ) ) ) $ ( x1007 ) ) ) ) $ ( if false then d259 else d227 )
        d1009 : ( ( Set -> Set ) ∋ ( ( λ x1011 -> ( ( Set -> Set ) ∋ ( ( λ x1012 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1009 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if d518 then true else x1010 ) ) ) $ ( if true then d634 else true )
        d1013 : ( ( Set -> Set ) ∋ ( ( λ x1014 -> ( ( Set -> Set ) ∋ ( ( λ x1015 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1013 = if if d587 then d775 else d641 then if true then false else d835 else if true then d379 else d548
        d1016 : ( ( Set -> Set ) ∋ ( ( λ x1017 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1016 = if if d114 then d776 else false then if d1013 then d674 else d984 else if d294 then false else true
        d1018 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1018 = if if true then d520 else d45 then if false then d815 else d718 else if false then true else d227
        d1019 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1019 = if if false then true else true then if d521 then d690 else false else if d995 then d394 else true
        d1020 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1020 = ( ( Bool -> Bool ) ∋ ( ( λ x1021 -> if d723 then d331 else x1021 ) ) ) $ ( if true then false else d196 )
        d1022 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1022 = ( ( Bool -> Bool ) ∋ ( ( λ x1023 -> if d47 then true else d855 ) ) ) $ ( if true then d713 else false )
        d1024 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1024 = if if false then d481 else false then if true then false else true else if false then d799 else d463
        d1025 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1025 = ( ( Bool -> Bool ) ∋ ( ( λ x1026 -> if true then true else d388 ) ) ) $ ( if d518 then d232 else d375 )
        d1027 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1027 = ( ( Bool -> Bool ) ∋ ( ( λ x1028 -> ( ( Bool -> Bool ) ∋ ( ( λ x1029 -> false ) ) ) $ ( x1028 ) ) ) ) $ ( if d171 then d79 else false )
        d1030 : ( ( Set -> Set ) ∋ ( ( λ x1033 -> if true then x1033 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> ( ( Bool -> Bool ) ∋ ( ( λ x1032 -> x1032 ) ) ) $ ( false ) ) ) ) $ ( if true then d572 else d229 )
        d1034 : ( ( Set -> Set ) ∋ ( ( λ x1036 -> ( ( Set -> Set ) ∋ ( ( λ x1037 -> x1037 ) ) ) $ ( x1036 ) ) ) ) $ ( if true then Bool else Bool )
        d1034 = ( ( Bool -> Bool ) ∋ ( ( λ x1035 -> if x1035 then x1035 else d37 ) ) ) $ ( if false then d18 else d575 )
        d1038 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> if false then Bool else x1040 ) ) ) $ ( if true then Bool else Bool )
        d1038 = ( ( Bool -> Bool ) ∋ ( ( λ x1039 -> if false then x1039 else x1039 ) ) ) $ ( if false then false else d1030 )
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x1042 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1041 = if if d481 then true else d44 then if false then d943 else d244 else if false then false else d1018
        d1043 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1043 = if if d83 then false else false then if true then true else true else if false then true else true
        d1044 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1044 = if if d566 then d307 else d119 then if d496 then d616 else d6 else if false then true else d635
        d1045 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1045 = if if d748 then true else false then if false then d858 else d587 else if true then true else d269
        d1046 : ( ( Set -> Set ) ∋ ( ( λ x1048 -> ( ( Set -> Set ) ∋ ( ( λ x1049 -> x1048 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1046 = ( ( Bool -> Bool ) ∋ ( ( λ x1047 -> if false then false else true ) ) ) $ ( if false then d898 else d449 )
        d1050 : ( ( Set -> Set ) ∋ ( ( λ x1052 -> ( ( Set -> Set ) ∋ ( ( λ x1053 -> x1053 ) ) ) $ ( x1052 ) ) ) ) $ ( if false then Bool else Bool )
        d1050 = ( ( Bool -> Bool ) ∋ ( ( λ x1051 -> if true then x1051 else d924 ) ) ) $ ( if d1044 then d502 else d250 )
        d1054 : ( ( Set -> Set ) ∋ ( ( λ x1055 -> if true then x1055 else x1055 ) ) ) $ ( if true then Bool else Bool )
        d1054 = if if d151 then false else d1034 then if false then d878 else false else if true then true else d483
        d1056 : ( ( Set -> Set ) ∋ ( ( λ x1059 -> if false then Bool else x1059 ) ) ) $ ( if true then Bool else Bool )
        d1056 = ( ( Bool -> Bool ) ∋ ( ( λ x1057 -> ( ( Bool -> Bool ) ∋ ( ( λ x1058 -> false ) ) ) $ ( d604 ) ) ) ) $ ( if d566 then true else false )
        d1060 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1060 = ( ( Bool -> Bool ) ∋ ( ( λ x1061 -> ( ( Bool -> Bool ) ∋ ( ( λ x1062 -> true ) ) ) $ ( d957 ) ) ) ) $ ( if true then d437 else true )
        d1063 : ( ( Set -> Set ) ∋ ( ( λ x1065 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1063 = ( ( Bool -> Bool ) ∋ ( ( λ x1064 -> if false then false else false ) ) ) $ ( if true then false else false )
        d1066 : ( ( Set -> Set ) ∋ ( ( λ x1069 -> if false then Bool else x1069 ) ) ) $ ( if true then Bool else Bool )
        d1066 = ( ( Bool -> Bool ) ∋ ( ( λ x1067 -> ( ( Bool -> Bool ) ∋ ( ( λ x1068 -> false ) ) ) $ ( d786 ) ) ) ) $ ( if d776 then d789 else false )
        d1070 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1070 = if if false then true else d927 then if d893 then d1 else false else if d369 then false else d1066
        d1071 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1071 = ( ( Bool -> Bool ) ∋ ( ( λ x1072 -> if true then false else true ) ) ) $ ( if true then true else true )
        d1073 : ( ( Set -> Set ) ∋ ( ( λ x1075 -> if false then Bool else x1075 ) ) ) $ ( if false then Bool else Bool )
        d1073 = ( ( Bool -> Bool ) ∋ ( ( λ x1074 -> if x1074 then d464 else x1074 ) ) ) $ ( if d21 then true else true )
        d1076 : ( ( Set -> Set ) ∋ ( ( λ x1077 -> ( ( Set -> Set ) ∋ ( ( λ x1078 -> x1078 ) ) ) $ ( x1077 ) ) ) ) $ ( if false then Bool else Bool )
        d1076 = if if false then d693 else false then if d677 then false else false else if false then false else false
        d1079 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1079 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( Bool -> Bool ) ∋ ( ( λ x1081 -> false ) ) ) $ ( x1080 ) ) ) ) $ ( if d566 then d163 else d730 )
        d1082 : ( ( Set -> Set ) ∋ ( ( λ x1083 -> ( ( Set -> Set ) ∋ ( ( λ x1084 -> x1084 ) ) ) $ ( x1083 ) ) ) ) $ ( if false then Bool else Bool )
        d1082 = if if d38 then false else d866 then if d641 then d61 else false else if d486 then d211 else true
        d1085 : ( ( Set -> Set ) ∋ ( ( λ x1086 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1085 = if if d289 then false else d884 then if d124 then d89 else d191 else if d193 then d414 else d447
        d1087 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1087 = ( ( Bool -> Bool ) ∋ ( ( λ x1088 -> if true then d1020 else d613 ) ) ) $ ( if true then false else d780 )
        d1089 : ( ( Set -> Set ) ∋ ( ( λ x1090 -> if false then x1090 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1089 = if if true then true else true then if d1071 then d759 else d1038 else if true then false else false
        d1091 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1091 = if if d773 then false else d71 then if d185 then d24 else true else if false then true else d201
        d1092 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1092 = ( ( Bool -> Bool ) ∋ ( ( λ x1093 -> if d302 then false else true ) ) ) $ ( if true then d674 else d1043 )
        d1094 : ( ( Set -> Set ) ∋ ( ( λ x1095 -> if true then x1095 else x1095 ) ) ) $ ( if true then Bool else Bool )
        d1094 = if if d815 then true else d662 then if false then d635 else d438 else if d364 then false else false
        d1096 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1096 = if if d933 then d915 else d810 then if true then false else true else if d515 then true else d326
        d1097 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1097 = if if d817 then d319 else d144 then if d100 then true else d835 else if false then d648 else d515
        d1098 : ( ( Set -> Set ) ∋ ( ( λ x1101 -> ( ( Set -> Set ) ∋ ( ( λ x1102 -> x1102 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1098 = ( ( Bool -> Bool ) ∋ ( ( λ x1099 -> ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( x1099 ) ) ) ) $ ( if d156 then d1024 else d235 )
        d1103 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1103 = ( ( Bool -> Bool ) ∋ ( ( λ x1104 -> if true then d1024 else x1104 ) ) ) $ ( if true then false else true )
        d1105 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1105 = ( ( Bool -> Bool ) ∋ ( ( λ x1106 -> ( ( Bool -> Bool ) ∋ ( ( λ x1107 -> d237 ) ) ) $ ( d37 ) ) ) ) $ ( if d1089 then d502 else false )
        d1108 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1108 = ( ( Bool -> Bool ) ∋ ( ( λ x1109 -> ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( false ) ) ) ) $ ( if d128 then d648 else d6 )
        d1111 : ( ( Set -> Set ) ∋ ( ( λ x1114 -> if true then Bool else x1114 ) ) ) $ ( if false then Bool else Bool )
        d1111 = ( ( Bool -> Bool ) ∋ ( ( λ x1112 -> ( ( Bool -> Bool ) ∋ ( ( λ x1113 -> true ) ) ) $ ( d502 ) ) ) ) $ ( if d191 then true else d510 )
        d1115 : ( ( Set -> Set ) ∋ ( ( λ x1117 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1115 = ( ( Bool -> Bool ) ∋ ( ( λ x1116 -> if d79 then false else d463 ) ) ) $ ( if true then d575 else false )
        d1118 : ( ( Set -> Set ) ∋ ( ( λ x1120 -> ( ( Set -> Set ) ∋ ( ( λ x1121 -> x1121 ) ) ) $ ( x1120 ) ) ) ) $ ( if false then Bool else Bool )
        d1118 = ( ( Bool -> Bool ) ∋ ( ( λ x1119 -> if false then true else x1119 ) ) ) $ ( if false then d748 else d114 )
        d1122 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1122 = if if true then d18 else d1006 then if d830 then d769 else d658 else if true then true else true
        d1123 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1123 = if if false then false else d95 then if true then d1038 else d1118 else if d984 then d563 else true
        d1124 : ( ( Set -> Set ) ∋ ( ( λ x1126 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1124 = ( ( Bool -> Bool ) ∋ ( ( λ x1125 -> if x1125 then x1125 else true ) ) ) $ ( if d726 then d405 else false )