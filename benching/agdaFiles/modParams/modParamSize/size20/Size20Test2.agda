module Size20Test2  where
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

    module M ( p1 : if false then ( ( Set -> Set ) ∋ ( ( λ x2 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool ) ( p3 : if false then ( ( Set -> Set ) ∋ ( ( λ x4 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> x7 ) ) ) $ ( x6 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = if if true then p1 else true then if p3 then p1 else false else if false then p1 else p3
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then x9 else Bool ) ) ) $ ( if false then Bool else Bool )
        d8 = if if p3 then d5 else d5 then if false then false else p1 else if d5 then d5 else d5
        d10 : if true then if true then Bool else Bool else if true then Bool else Bool
        d10 = if if d5 then true else d5 then if false then p1 else true else if d8 then p1 else true
        d11 : if false then if false then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> d10 ) ) ) $ ( d10 ) ) ) ) $ ( if p3 then false else p1 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then Bool else x15 ) ) ) $ ( if false then Bool else Bool )
        d14 = if if p3 then d11 else p1 then if d11 then p1 else true else if d10 then p1 else true
        d16 : if false then if true then Bool else Bool else if false then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> d8 ) ) ) $ ( p3 ) ) ) ) $ ( if d10 then p1 else p3 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then x22 else x22 ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> d14 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then false else p3 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> Bool ) ) ) $ ( x25 ) ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if x24 then d16 else x24 ) ) ) $ ( if p1 then true else true )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x28 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if if p3 then d16 else d23 then if d8 then d8 else p3 else if true then p1 else d16
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d30 = if if d23 then false else false then if true then p3 else d27 else if true then false else d8
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> Bool ) ) ) $ ( x34 ) ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if d27 then true else true ) ) ) $ ( if true then true else d16 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d36 = if if p3 then true else p1 then if true then d14 else true else if true then p3 else false
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( x40 ) ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if p3 then d14 else x39 ) ) ) $ ( if p3 then d36 else true )
        d42 : if true then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if p3 then x43 else false ) ) ) $ ( if d10 then d16 else d10 )
        d44 : if true then if true then Bool else Bool else if true then Bool else Bool
        d44 = if if p1 then false else true then if p3 then d30 else d5 else if d8 then false else p3
        d45 : if false then if true then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if d44 then p1 else p3 ) ) ) $ ( if d10 then d23 else d23 )
        d47 : if false then if true then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> x48 ) ) ) $ ( false ) ) ) ) $ ( if true then d45 else p3 )
        d50 : if true then if false then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if x51 then d44 else d45 ) ) ) $ ( if p3 then p1 else p3 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d52 = if if false then p3 else p3 then if d30 then false else p3 else if d47 then p1 else p3
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( x55 ) ) ) ) $ ( if false then Bool else Bool )
        d54 = if if d50 then true else p1 then if p3 then p1 else true else if true then d11 else p1
        d57 : if false then if true then Bool else Bool else if false then Bool else Bool
        d57 = if if d38 then true else false then if d11 then p3 else d19 else if false then true else p1
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( x59 ) ) ) ) $ ( if false then Bool else Bool )
        d58 = if if d27 then p3 else d16 then if true then d23 else false else if p1 then p3 else p3
        d61 : if true then if true then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> d57 ) ) ) $ ( p1 ) ) ) ) $ ( if true then d45 else d32 )
        d64 : if false then if true then Bool else Bool else if false then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if p1 then x65 else false ) ) ) $ ( if p3 then p3 else p1 )
        d66 : if false then if true then Bool else Bool else if false then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> true ) ) ) $ ( x67 ) ) ) ) $ ( if false then p1 else d16 )
        d69 : if true then if true then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if false then true else true ) ) ) $ ( if d44 then p3 else false )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> x73 ) ) ) $ ( x72 ) ) ) ) $ ( if true then Bool else Bool )
        d71 = if if p3 then d54 else p3 then if true then d42 else d14 else if d14 then p3 else d64
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x77 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d45 ) ) ) $ ( p1 ) ) ) ) $ ( if d30 then true else false )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x82 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> x81 ) ) ) $ ( x80 ) ) ) ) $ ( if false then p3 else d54 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d84 = if if false then p3 else p3 then if p1 then false else d66 else if d66 then false else d58
        d87 : if false then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if false then d47 else p1 ) ) ) $ ( if p3 then p3 else true )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then Bool else x90 ) ) ) $ ( if false then Bool else Bool )
        d89 = if if p1 then false else p3 then if d84 then d5 else d69 else if p3 then d45 else d42
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( x94 ) ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> x92 ) ) ) $ ( d44 ) ) ) ) $ ( if d5 then false else true )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d96 = if if false then true else d44 then if true then d19 else p1 else if p3 then p1 else p1
        d99 : if true then if false then Bool else Bool else if true then Bool else Bool
        d99 = if if false then d45 else d30 then if p3 then p3 else false else if d66 then d57 else p1
        d100 : if true then if false then Bool else Bool else if true then Bool else Bool
        d100 = if if true then d8 else p3 then if p3 then d16 else d11 else if d14 then d27 else true
        d101 : if false then if false then Bool else Bool else if true then Bool else Bool
        d101 = if if d100 then d36 else true then if d100 then p3 else d27 else if true then false else p1
        d102 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else Bool ) ) ) $ ( if true then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> false ) ) ) $ ( d36 ) ) ) ) $ ( if false then d44 else true )
        d106 : if true then if true then Bool else Bool else if false then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if p3 then p3 else x107 ) ) ) $ ( if d102 then d100 else false )
        d108 : if true then if true then Bool else Bool else if true then Bool else Bool
        d108 = if if d87 then p3 else d16 then if d44 then d42 else false else if p1 then p3 else true
    d109 : if true then if true then Bool else Bool else if true then Bool else Bool
    d109 = ( ( M.d99 ) $ ( ( ( M.d44 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x110 -> true ) ) ) $ ( false ) )
    d111 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then Bool else x113 ) ) ) $ ( if true then Bool else Bool )
    d111 = ( ( M.d108 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d109 ) ) ) $ ( true ) ) ) $ ( ( ( M.d79 ) $ ( true ) ) $ ( d109 ) )
    d114 : if true then if true then Bool else Bool else if true then Bool else Bool
    d114 = if if d109 then d109 else d111 then if d111 then d111 else d109 else if d111 then d111 else false
    d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if false then Bool else x116 ) ) ) $ ( if false then Bool else Bool )
    d115 = if if true then d109 else false then if d114 then true else d114 else if true then d111 else true
    d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then x118 else Bool ) ) ) $ ( if true then Bool else Bool )
    d117 = if if false then true else d115 then if d114 then false else d114 else if true then false else d114
    d119 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( x121 ) ) ) ) $ ( if false then Bool else Bool )
    d119 = ( ( M.d44 ) $ ( ( ( M.d100 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x120 -> false ) ) ) $ ( d114 ) )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( M.d54 ) $ ( if d117 then x124 else x124 ) ) $ ( if x124 then false else x124 ) ) ) ) $ ( if d111 then d119 else d119 )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if false then Bool else x128 ) ) ) $ ( if true then Bool else Bool )
    d127 = if if d115 then false else d114 then if d109 then d123 else d115 else if d123 then d115 else true
    d129 : if true then if false then Bool else Bool else if true then Bool else Bool
    d129 = ( ( M.d52 ) $ ( if true then d109 else false ) ) $ ( ( ( M.d54 ) $ ( true ) ) $ ( false ) )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if true then x132 else x132 ) ) ) $ ( if true then Bool else Bool )
    d130 = ( ( M.d14 ) $ ( if true then false else d117 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x131 -> x131 ) ) ) $ ( true ) )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> x135 ) ) ) $ ( x134 ) ) ) ) $ ( if true then Bool else Bool )
    d133 = if if true then true else false then if true then true else false else if true then true else false
    d136 : if true then if false then Bool else Bool else if true then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> if d130 then x137 else false ) ) ) $ ( if d111 then d111 else false )
    d138 : if false then if false then Bool else Bool else if true then Bool else Bool
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> if d111 then x139 else d130 ) ) ) $ ( if false then true else d129 )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d140 = if if true then false else d129 then if false then false else false else if d123 then false else d119
    d143 : if false then if true then Bool else Bool else if true then Bool else Bool
    d143 = if if false then d136 else d129 then if false then false else false else if d140 then d114 else false
    d144 : ( ( Set -> Set ) ∋ ( ( λ x146 -> ( ( Set -> Set ) ∋ ( ( λ x147 -> x147 ) ) ) $ ( x146 ) ) ) ) $ ( if false then Bool else Bool )
    d144 = ( ( M.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x145 -> d115 ) ) ) $ ( d123 ) ) ) $ ( if d136 then d138 else d133 )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> Bool ) ) ) $ ( x151 ) ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( false ) ) ) ) $ ( if d111 then d109 else d114 )
    d153 : if true then if false then Bool else Bool else if true then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( M.d79 ) $ ( if d143 then x154 else true ) ) $ ( if d130 then x154 else false ) ) ) ) $ ( if d127 then d117 else false )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x158 -> if true then x158 else Bool ) ) ) $ ( if true then Bool else Bool )
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> ( ( Bool -> Bool ) ∋ ( ( λ x157 -> false ) ) ) $ ( d119 ) ) ) ) $ ( if d114 then d119 else d153 )
    d159 : if false then if false then Bool else Bool else if true then Bool else Bool
    d159 = ( ( M.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x160 -> false ) ) ) $ ( true ) ) ) $ ( if d119 then false else true )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if true then x163 else Bool ) ) ) $ ( if false then Bool else Bool )
    d161 = ( ( M.d44 ) $ ( if d119 then true else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x162 -> x162 ) ) ) $ ( d129 ) )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x166 -> ( ( Set -> Set ) ∋ ( ( λ x167 -> x167 ) ) ) $ ( x166 ) ) ) ) $ ( if false then Bool else Bool )
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( M.d30 ) $ ( if x165 then d143 else x165 ) ) $ ( if false then x165 else d117 ) ) ) ) $ ( if false then false else false )
    d168 : if false then if true then Bool else Bool else if false then Bool else Bool
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( false ) ) ) ) $ ( if d144 then false else d117 )
    d171 : if false then if false then Bool else Bool else if true then Bool else Bool
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> true ) ) ) $ ( d114 ) ) ) ) $ ( if false then true else false )
    d174 : if true then if true then Bool else Bool else if true then Bool else Bool
    d174 = ( ( M.d50 ) $ ( ( ( M.d36 ) $ ( d144 ) ) $ ( d138 ) ) ) $ ( ( ( M.d91 ) $ ( true ) ) $ ( d130 ) )
    d175 : if true then if false then Bool else Bool else if false then Bool else Bool
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> ( ( Bool -> Bool ) ∋ ( ( λ x177 -> x176 ) ) ) $ ( d161 ) ) ) ) $ ( if d127 then true else d143 )
    d178 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if false then Bool else x181 ) ) ) $ ( if false then Bool else Bool )
    d178 = ( ( M.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x179 -> d119 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( d171 ) )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> x183 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d182 = if if d143 then d155 else false then if d123 then d178 else d109 else if true then false else d161
    d185 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if true then x187 else x187 ) ) ) $ ( if false then Bool else Bool )
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> if false then false else true ) ) ) $ ( if d133 then false else d127 )
    d188 : if true then if true then Bool else Bool else if false then Bool else Bool
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( M.d54 ) $ ( if x189 then d174 else d171 ) ) $ ( if false then false else x189 ) ) ) ) $ ( if d114 then d159 else true )
    d190 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> x192 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d190 = if if false then true else false then if d144 then d161 else false else if true then d159 else d143
    d193 : if false then if false then Bool else Bool else if true then Bool else Bool
    d193 = if if d109 then true else true then if d178 then false else d138 else if d123 then false else d109
    d194 : if true then if false then Bool else Bool else if true then Bool else Bool
    d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> if true then x195 else false ) ) ) $ ( if d168 then d153 else d143 )
    d196 : ( ( Set -> Set ) ∋ ( ( λ x197 -> if true then x197 else Bool ) ) ) $ ( if false then Bool else Bool )
    d196 = ( ( M.d8 ) $ ( if false then true else true ) ) $ ( if true then true else false )
    d198 : ( ( Set -> Set ) ∋ ( ( λ x199 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> x199 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d198 = ( ( M.d101 ) $ ( ( ( M.d100 ) $ ( d130 ) ) $ ( false ) ) ) $ ( if d178 then d140 else d164 )
    d201 : ( ( Set -> Set ) ∋ ( ( λ x203 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d201 = ( ( M.d66 ) $ ( ( ( M.d32 ) $ ( d111 ) ) $ ( d129 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x202 -> x202 ) ) ) $ ( true ) )
    d204 : if false then if false then Bool else Bool else if false then Bool else Bool
    d204 = if if d115 then false else true then if d201 then d174 else false else if true then false else d153
    d205 : ( ( Set -> Set ) ∋ ( ( λ x207 -> ( ( Set -> Set ) ∋ ( ( λ x208 -> Bool ) ) ) $ ( x207 ) ) ) ) $ ( if false then Bool else Bool )
    d205 = ( ( Bool -> Bool ) ∋ ( ( λ x206 -> ( ( M.d32 ) $ ( if d138 then true else d109 ) ) $ ( if false then d129 else x206 ) ) ) ) $ ( if true then false else d204 )
    d209 : ( ( Set -> Set ) ∋ ( ( λ x211 -> ( ( Set -> Set ) ∋ ( ( λ x212 -> x211 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d209 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( M.d101 ) $ ( if x210 then d196 else d204 ) ) $ ( if d171 then true else x210 ) ) ) ) $ ( if d168 then d140 else d129 )
    d213 : if false then if true then Bool else Bool else if true then Bool else Bool
    d213 = if if true then d138 else true then if false then true else d198 else if d198 then d182 else false