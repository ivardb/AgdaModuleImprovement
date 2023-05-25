module Decl450Base15  where
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
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x2 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if true then Bool else x5 ) ) ) $ ( if false then Bool else Bool )
        d4 = if if true then true else d1 then if d1 then false else false else if d1 then d1 else false
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then x9 else x9 ) ) ) $ ( if true then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> d4 ) ) ) $ ( x7 ) ) ) ) $ ( if false then d1 else d1 )
        d10 : if true then if true then Bool else Bool else if false then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> d4 ) ) ) $ ( x11 ) ) ) ) $ ( if d4 then d4 else false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> x14 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d18 : if false then if true then Bool else Bool else if true then Bool else Bool
        d18 = if if d6 then d10 else true then if d6 then false else true else if false then d6 else true
        d19 : if false then if true then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d6 else d1 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if false then Bool else x25 ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d10 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> x27 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d26 = if if d1 then false else true then if false then true else true else if d4 then false else false
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d29 = if if d13 then false else d1 then if d18 then d26 else false else if d1 then true else d22
        d32 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then Bool else x35 ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> true ) ) ) $ ( x33 ) ) ) ) $ ( if false then false else d19 )
        d36 : if false then if false then Bool else Bool else if false then Bool else Bool
        d36 = if if true then false else d22 then if true then true else false else if true then d10 else true
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( x39 ) ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if x38 then x38 else true ) ) ) $ ( if false then d10 else false )
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if d13 then x42 else x42 ) ) ) $ ( if true then true else d36 )
        d43 : if false then if false then Bool else Bool else if false then Bool else Bool
        d43 = if if false then d26 else d41 then if d26 then false else d32 else if d18 then true else true
        d44 : if true then if false then Bool else Bool else if true then Bool else Bool
        d44 = if if true then false else false then if d29 then true else d41 else if false then d1 else d41
        d45 : if true then if true then Bool else Bool else if false then Bool else Bool
        d45 = if if d43 then true else false then if false then false else false else if true then false else d13
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if true then x47 else x47 ) ) ) $ ( if true then Bool else Bool )
        d46 = if if d22 then false else true then if false then d37 else true else if false then d43 else true
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> Bool ) ) ) $ ( x50 ) ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if x49 then true else d10 ) ) ) $ ( if false then true else d6 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x54 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d52 = if if true then d48 else true then if true then d10 else false else if d45 then true else false
        d55 : if true then if false then Bool else Bool else if false then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> d46 ) ) ) $ ( x56 ) ) ) ) $ ( if d52 then true else false )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d58 = if if d10 then d19 else d36 then if true then d18 else d19 else if false then d37 else d18
        d61 : if false then if true then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if true then x62 else x62 ) ) ) $ ( if false then d1 else d43 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if true then x66 else Bool ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> d32 ) ) ) $ ( x64 ) ) ) ) $ ( if d19 then d58 else d22 )
        d67 : if true then if true then Bool else Bool else if true then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if x68 then d4 else false ) ) ) $ ( if false then d45 else false )
        d69 : if true then if false then Bool else Bool else if false then Bool else Bool
        d69 = if if true then d48 else true then if false then true else d29 else if d13 then false else d32
        d70 : if false then if false then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if d6 then x71 else d55 ) ) ) $ ( if true then true else true )
        d72 : if true then if true then Bool else Bool else if true then Bool else Bool
        d72 = if if d70 then d36 else false then if true then true else false else if d4 then d22 else false
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if true then Bool else x74 ) ) ) $ ( if true then Bool else Bool )
        d73 = if if d61 then d36 else d41 then if true then d43 else false else if true then true else true
        d75 : if true then if false then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if false then x76 else true ) ) ) $ ( if true then d1 else false )
        d77 : if false then if false then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> d72 ) ) ) $ ( x78 ) ) ) ) $ ( if false then d44 else d44 )
        d80 : if false then if true then Bool else Bool else if false then Bool else Bool
        d80 = if if false then true else d52 then if d72 then true else d69 else if false then false else d55
        d81 : if true then if false then Bool else Bool else if false then Bool else Bool
        d81 = if if false then true else d26 then if true then false else d55 else if true then d4 else false
        d82 : if true then if false then Bool else Bool else if true then Bool else Bool
        d82 = if if d4 then true else false then if d72 then d77 else d75 else if true then true else false
        d83 : if false then if false then Bool else Bool else if false then Bool else Bool
        d83 = if if true then d75 else false then if d55 then d32 else true else if d41 then d58 else d19
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( x86 ) ) ) ) $ ( if true then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if x85 then d1 else x85 ) ) ) $ ( if d69 then d1 else true )
        d88 : if true then if true then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if x89 then true else d29 ) ) ) $ ( if true then false else d18 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d90 = if if true then false else false then if d69 then false else d55 else if d37 then d10 else false
        d92 : if false then if false then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if d80 then d18 else d43 ) ) ) $ ( if true then true else d37 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> x95 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d94 = if if d13 then d32 else d52 then if d18 then false else true else if d43 then d37 else true
        d97 : if false then if false then Bool else Bool else if false then Bool else Bool
        d97 = if if false then false else false then if d70 then d75 else false else if true then d13 else true
        d98 : if true then if false then Bool else Bool else if true then Bool else Bool
        d98 = if if d90 then false else true then if d37 then d4 else false else if d43 then d55 else false
        d99 : if true then if true then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if true then d45 else d94 ) ) ) $ ( if d83 then d4 else d72 )
        d101 : if false then if false then Bool else Bool else if true then Bool else Bool
        d101 = if if d4 then d84 else true then if d46 then d43 else d75 else if d83 then d77 else true
        d102 : if true then if false then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> d69 ) ) ) $ ( true ) ) ) ) $ ( if true then d6 else d83 )
        d105 : if true then if false then Bool else Bool else if false then Bool else Bool
        d105 = if if d97 then d82 else false then if false then d77 else false else if true then d55 else d13
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( x107 ) ) ) ) $ ( if true then Bool else Bool )
        d106 = if if true then true else d4 then if true then false else d88 else if false then d84 else false
        d109 : if false then if true then Bool else Bool else if true then Bool else Bool
        d109 = if if d45 then d19 else false then if true then false else d105 else if false then d1 else true
        d110 : if true then if false then Bool else Bool else if true then Bool else Bool
        d110 = if if false then false else d29 then if false then d4 else d106 else if d41 then d6 else d106
        d111 : if false then if false then Bool else Bool else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if x112 then false else x112 ) ) ) $ ( if true then false else d110 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then x114 else Bool ) ) ) $ ( if false then Bool else Bool )
        d113 = if if true then true else true then if true then false else d81 else if d73 then d36 else d77
        d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> x116 ) ) ) $ ( x116 ) ) ) ) $ ( if true then Bool else Bool )
        d115 = if if true then d111 else d6 then if d29 then d58 else true else if false then d58 else d45
        d118 : if false then if true then Bool else Bool else if false then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> true ) ) ) $ ( x119 ) ) ) ) $ ( if d81 then d45 else true )
        d121 : if true then if false then Bool else Bool else if true then Bool else Bool
        d121 = if if d83 then false else false then if d10 then false else false else if true then true else true
        d122 : if true then if false then Bool else Bool else if true then Bool else Bool
        d122 = if if true then true else d118 then if false then false else false else if d98 then true else d22
        d123 : if false then if true then Bool else Bool else if false then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> false ) ) ) $ ( d6 ) ) ) ) $ ( if d90 then false else true )
        d126 : if true then if true then Bool else Bool else if true then Bool else Bool
        d126 = if if true then false else false then if false then d6 else d81 else if d13 then d55 else d110
        d127 : if true then if true then Bool else Bool else if true then Bool else Bool
        d127 = if if false then d67 else false then if d82 then true else d75 else if false then false else false
        d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( x129 ) ) ) ) $ ( if true then Bool else Bool )
        d128 = if if true then false else d90 then if d97 then false else true else if false then true else true
        d131 : if true then if true then Bool else Bool else if true then Bool else Bool
        d131 = if if false then false else d92 then if false then false else false else if d110 then true else d58
        d132 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> if false then false else true ) ) ) $ ( if true then false else true )
        d136 : ( ( Set -> Set ) ∋ ( ( λ x139 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> Bool ) ) ) $ ( x139 ) ) ) ) $ ( if true then Bool else Bool )
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( Bool -> Bool ) ∋ ( ( λ x138 -> true ) ) ) $ ( x137 ) ) ) ) $ ( if d41 then d131 else d126 )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x143 -> ( ( Set -> Set ) ∋ ( ( λ x144 -> x143 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> if false then true else d113 ) ) ) $ ( if true then false else d44 )
        d145 : if false then if true then Bool else Bool else if true then Bool else Bool
        d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> if d63 then d102 else x146 ) ) ) $ ( if d18 then false else true )
        d147 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if false then x148 else x148 ) ) ) $ ( if true then Bool else Bool )
        d147 = if if d36 then d123 else d18 then if true then false else true else if false then d122 else d98
        d149 : ( ( Set -> Set ) ∋ ( ( λ x151 -> if false then x151 else Bool ) ) ) $ ( if true then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if d18 then d109 else d63 ) ) ) $ ( if d69 then d46 else d110 )
        d152 : if false then if false then Bool else Bool else if false then Bool else Bool
        d152 = if if d1 then false else false then if false then d102 else d37 else if d52 then d128 else false
        d153 : if false then if true then Bool else Bool else if true then Bool else Bool
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( Bool -> Bool ) ∋ ( ( λ x155 -> d41 ) ) ) $ ( false ) ) ) ) $ ( if d97 then d26 else false )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x158 -> if false then Bool else x158 ) ) ) $ ( if true then Bool else Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> if d72 then d10 else x157 ) ) ) $ ( if d80 then true else d106 )
        d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> Bool ) ) ) $ ( x160 ) ) ) ) $ ( if true then Bool else Bool )
        d159 = if if false then d43 else false then if false then d55 else d61 else if d70 then d132 else false
        d162 : ( ( Set -> Set ) ∋ ( ( λ x163 -> ( ( Set -> Set ) ∋ ( ( λ x164 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d162 = if if d127 then false else false then if true then d46 else false else if d44 then d43 else true
        d165 : if true then if true then Bool else Bool else if true then Bool else Bool
        d165 = if if true then false else false then if false then true else d111 else if d84 then true else d153
        d166 : if false then if true then Bool else Bool else if true then Bool else Bool
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> if x167 then x167 else d131 ) ) ) $ ( if d4 then true else d44 )
        d168 : if false then if false then Bool else Bool else if true then Bool else Bool
        d168 = if if true then false else d131 then if true then d88 else true else if true then d70 else false
        d169 : if false then if false then Bool else Bool else if false then Bool else Bool
        d169 = if if d166 then false else true then if true then false else d106 else if true then d162 else d88
        d170 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> x174 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> d98 ) ) ) $ ( true ) ) ) ) $ ( if false then d41 else true )
        d175 : if false then if true then Bool else Bool else if false then Bool else Bool
        d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> if d127 then x176 else true ) ) ) $ ( if true then false else d13 )
        d177 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> x179 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d177 = if if false then d175 else d121 then if d162 then d55 else d72 else if d169 then false else d166
        d180 : if false then if true then Bool else Bool else if true then Bool else Bool
        d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> if d67 then x181 else d98 ) ) ) $ ( if true then d106 else true )
        d182 : if false then if false then Bool else Bool else if false then Bool else Bool
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> if d67 then d55 else false ) ) ) $ ( if true then true else d101 )
        d184 : if true then if false then Bool else Bool else if false then Bool else Bool
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> ( ( Bool -> Bool ) ∋ ( ( λ x186 -> d58 ) ) ) $ ( x185 ) ) ) ) $ ( if true then false else d111 )
        d187 : if false then if true then Bool else Bool else if false then Bool else Bool
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x188 -> if d111 then x188 else true ) ) ) $ ( if false then d13 else d6 )
        d189 : if true then if false then Bool else Bool else if false then Bool else Bool
        d189 = if if true then true else d43 then if false then false else d170 else if true then d67 else d67
        d190 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> x192 ) ) ) $ ( x191 ) ) ) ) $ ( if true then Bool else Bool )
        d190 = if if false then d4 else true then if true then false else false else if true then false else true
        d193 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> x195 ) ) ) $ ( x195 ) ) ) ) $ ( if true then Bool else Bool )
        d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> if d52 then false else true ) ) ) $ ( if true then true else true )
        d197 : if true then if true then Bool else Bool else if true then Bool else Bool
        d197 = if if true then d63 else true then if d169 then d136 else false else if d170 then false else d67
        d198 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if false then x200 else x200 ) ) ) $ ( if false then Bool else Bool )
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x199 -> if d99 then x199 else d197 ) ) ) $ ( if d113 then d70 else d90 )
        d201 : if true then if false then Bool else Bool else if true then Bool else Bool
        d201 = ( ( Bool -> Bool ) ∋ ( ( λ x202 -> if x202 then d106 else x202 ) ) ) $ ( if false then d106 else true )
        d203 : ( ( Set -> Set ) ∋ ( ( λ x204 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d203 = if if true then false else false then if false then false else true else if true then d147 else false
        d205 : if true then if true then Bool else Bool else if false then Bool else Bool
        d205 = ( ( Bool -> Bool ) ∋ ( ( λ x206 -> ( ( Bool -> Bool ) ∋ ( ( λ x207 -> x207 ) ) ) $ ( false ) ) ) ) $ ( if d141 then d106 else d92 )
        d208 : if true then if true then Bool else Bool else if false then Bool else Bool
        d208 = ( ( Bool -> Bool ) ∋ ( ( λ x209 -> if d63 then x209 else x209 ) ) ) $ ( if d187 then true else d70 )
        d210 : if false then if false then Bool else Bool else if true then Bool else Bool
        d210 = if if false then d10 else d72 then if true then false else d159 else if d22 then d189 else false
        d211 : if false then if true then Bool else Bool else if false then Bool else Bool
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x212 -> if x212 then x212 else true ) ) ) $ ( if false then d55 else true )
        d213 : if false then if false then Bool else Bool else if true then Bool else Bool
        d213 = if if d26 then true else d92 then if d175 then true else false else if true then d82 else d83
        d214 : ( ( Set -> Set ) ∋ ( ( λ x215 -> if false then Bool else x215 ) ) ) $ ( if false then Bool else Bool )
        d214 = if if true then d198 else false then if true then d29 else false else if d149 then d211 else d41
        d216 : if false then if true then Bool else Bool else if false then Bool else Bool
        d216 = ( ( Bool -> Bool ) ∋ ( ( λ x217 -> if d52 then x217 else true ) ) ) $ ( if d63 then false else d213 )
        d218 : if false then if false then Bool else Bool else if true then Bool else Bool
        d218 = ( ( Bool -> Bool ) ∋ ( ( λ x219 -> ( ( Bool -> Bool ) ∋ ( ( λ x220 -> d52 ) ) ) $ ( false ) ) ) ) $ ( if d126 then d81 else d32 )
        d221 : ( ( Set -> Set ) ∋ ( ( λ x224 -> if true then x224 else x224 ) ) ) $ ( if false then Bool else Bool )
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x222 -> ( ( Bool -> Bool ) ∋ ( ( λ x223 -> false ) ) ) $ ( d216 ) ) ) ) $ ( if d180 then false else false )
        d225 : if true then if false then Bool else Bool else if false then Bool else Bool
        d225 = if if true then d70 else false then if d214 then d149 else true else if d166 then d169 else true
        d226 : ( ( Set -> Set ) ∋ ( ( λ x227 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d226 = if if d98 then d121 else false then if d77 then false else d205 else if false then d182 else false
        d228 : ( ( Set -> Set ) ∋ ( ( λ x229 -> ( ( Set -> Set ) ∋ ( ( λ x230 -> x229 ) ) ) $ ( x229 ) ) ) ) $ ( if true then Bool else Bool )
        d228 = if if false then false else d69 then if d141 then true else d169 else if d177 then false else d19
        d231 : if false then if true then Bool else Bool else if false then Bool else Bool
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x232 -> if x232 then d221 else false ) ) ) $ ( if false then d198 else false )
        d233 : ( ( Set -> Set ) ∋ ( ( λ x234 -> ( ( Set -> Set ) ∋ ( ( λ x235 -> Bool ) ) ) $ ( x234 ) ) ) ) $ ( if true then Bool else Bool )
        d233 = if if d83 then d123 else d67 then if true then true else d226 else if d221 then d141 else d118
        d236 : if false then if false then Bool else Bool else if false then Bool else Bool
        d236 = if if true then true else d152 then if d145 then d98 else true else if d80 then d26 else d216
        d237 : ( ( Set -> Set ) ∋ ( ( λ x238 -> ( ( Set -> Set ) ∋ ( ( λ x239 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d237 = if if d153 then true else d184 then if true then false else false else if false then true else d168
        d240 : ( ( Set -> Set ) ∋ ( ( λ x241 -> ( ( Set -> Set ) ∋ ( ( λ x242 -> x241 ) ) ) $ ( x241 ) ) ) ) $ ( if false then Bool else Bool )
        d240 = if if d82 then d61 else true then if d58 then true else d81 else if false then d187 else d198
        d243 : ( ( Set -> Set ) ∋ ( ( λ x244 -> if false then Bool else x244 ) ) ) $ ( if false then Bool else Bool )
        d243 = if if false then d99 else false then if false then d149 else true else if true then true else true
        d245 : ( ( Set -> Set ) ∋ ( ( λ x247 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x246 -> if x246 then x246 else true ) ) ) $ ( if d1 then true else d6 )
        d248 : ( ( Set -> Set ) ∋ ( ( λ x251 -> if true then x251 else Bool ) ) ) $ ( if false then Bool else Bool )
        d248 = ( ( Bool -> Bool ) ∋ ( ( λ x249 -> ( ( Bool -> Bool ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( d36 ) ) ) ) $ ( if true then d152 else d147 )
        d252 : ( ( Set -> Set ) ∋ ( ( λ x253 -> if true then Bool else x253 ) ) ) $ ( if false then Bool else Bool )
        d252 = if if true then d36 else d132 then if true then false else false else if false then d46 else true
        d254 : ( ( Set -> Set ) ∋ ( ( λ x255 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d254 = if if d105 then true else d128 then if d109 then d184 else d75 else if d101 then false else false
        d256 : if false then if false then Bool else Bool else if false then Bool else Bool
        d256 = if if true then d101 else d184 then if true then false else false else if false then d189 else d75
        d257 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x261 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d257 = ( ( Bool -> Bool ) ∋ ( ( λ x258 -> ( ( Bool -> Bool ) ∋ ( ( λ x259 -> false ) ) ) $ ( d97 ) ) ) ) $ ( if true then false else d210 )
        d262 : if false then if true then Bool else Bool else if true then Bool else Bool
        d262 = if if true then false else false then if true then d201 else true else if d233 then d216 else false
        d263 : if false then if true then Bool else Bool else if true then Bool else Bool
        d263 = if if false then true else d159 then if d32 then true else d99 else if true then d201 else false
        d264 : if false then if true then Bool else Bool else if false then Bool else Bool
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x265 -> ( ( Bool -> Bool ) ∋ ( ( λ x266 -> false ) ) ) $ ( x265 ) ) ) ) $ ( if d170 then true else true )
        d267 : ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x271 -> x271 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d267 = ( ( Bool -> Bool ) ∋ ( ( λ x268 -> ( ( Bool -> Bool ) ∋ ( ( λ x269 -> x269 ) ) ) $ ( d257 ) ) ) ) $ ( if true then d19 else false )
        d272 : ( ( Set -> Set ) ∋ ( ( λ x273 -> ( ( Set -> Set ) ∋ ( ( λ x274 -> x273 ) ) ) $ ( x273 ) ) ) ) $ ( if true then Bool else Bool )
        d272 = if if false then d43 else d240 then if d170 then false else true else if d70 then d245 else d63
        d275 : if false then if false then Bool else Bool else if true then Bool else Bool
        d275 = if if false then false else true then if false then d236 else false else if d36 then true else d80
        d276 : ( ( Set -> Set ) ∋ ( ( λ x279 -> if true then x279 else x279 ) ) ) $ ( if false then Bool else Bool )
        d276 = ( ( Bool -> Bool ) ∋ ( ( λ x277 -> ( ( Bool -> Bool ) ∋ ( ( λ x278 -> d214 ) ) ) $ ( x277 ) ) ) ) $ ( if false then true else true )
        d280 : ( ( Set -> Set ) ∋ ( ( λ x282 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d280 = ( ( Bool -> Bool ) ∋ ( ( λ x281 -> if d198 then false else true ) ) ) $ ( if d256 then d118 else d121 )
        d283 : if false then if false then Bool else Bool else if true then Bool else Bool
        d283 = if if true then d201 else false then if true then true else false else if false then true else false
        d284 : ( ( Set -> Set ) ∋ ( ( λ x285 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d284 = if if d168 then false else true then if d132 then false else d18 else if d262 then d131 else false
        d286 : ( ( Set -> Set ) ∋ ( ( λ x288 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d286 = ( ( Bool -> Bool ) ∋ ( ( λ x287 -> if false then x287 else x287 ) ) ) $ ( if d55 then d170 else d122 )
        d289 : if true then if false then Bool else Bool else if true then Bool else Bool
        d289 = if if true then false else d198 then if true then d18 else d43 else if true then false else d18
        d290 : if false then if false then Bool else Bool else if true then Bool else Bool
        d290 = if if false then d149 else d152 then if false then true else d58 else if d166 then true else d58
        d291 : if true then if false then Bool else Bool else if true then Bool else Bool
        d291 = ( ( Bool -> Bool ) ∋ ( ( λ x292 -> ( ( Bool -> Bool ) ∋ ( ( λ x293 -> false ) ) ) $ ( x292 ) ) ) ) $ ( if d233 then false else false )
        d294 : if true then if false then Bool else Bool else if false then Bool else Bool
        d294 = ( ( Bool -> Bool ) ∋ ( ( λ x295 -> ( ( Bool -> Bool ) ∋ ( ( λ x296 -> true ) ) ) $ ( x295 ) ) ) ) $ ( if false then true else true )
        d297 : ( ( Set -> Set ) ∋ ( ( λ x298 -> if true then x298 else x298 ) ) ) $ ( if false then Bool else Bool )
        d297 = if if d149 then true else d73 then if d126 then d170 else d110 else if d19 then true else false
        d299 : if false then if true then Bool else Bool else if false then Bool else Bool
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x301 -> false ) ) ) $ ( true ) ) ) ) $ ( if d37 then d190 else true )
        d302 : ( ( Set -> Set ) ∋ ( ( λ x303 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d302 = if if d149 then d94 else d240 then if false then d198 else true else if d99 then true else true
        d304 : if false then if false then Bool else Bool else if false then Bool else Bool
        d304 = if if false then true else d105 then if d226 then d216 else false else if d115 then d1 else true
        d305 : ( ( Set -> Set ) ∋ ( ( λ x306 -> ( ( Set -> Set ) ∋ ( ( λ x307 -> Bool ) ) ) $ ( x306 ) ) ) ) $ ( if false then Bool else Bool )
        d305 = if if d122 then d214 else d276 then if d141 then false else true else if false then false else d175
        d308 : ( ( Set -> Set ) ∋ ( ( λ x311 -> if true then x311 else Bool ) ) ) $ ( if false then Bool else Bool )
        d308 = ( ( Bool -> Bool ) ∋ ( ( λ x309 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> x310 ) ) ) $ ( d190 ) ) ) ) $ ( if true then d305 else false )
        d312 : if false then if false then Bool else Bool else if true then Bool else Bool
        d312 = if if true then true else true then if d233 then d305 else true else if d208 then true else d297
        d313 : if false then if true then Bool else Bool else if true then Bool else Bool
        d313 = if if false then d70 else false then if true then true else d82 else if d41 then d286 else false
        d314 : ( ( Set -> Set ) ∋ ( ( λ x316 -> ( ( Set -> Set ) ∋ ( ( λ x317 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d314 = ( ( Bool -> Bool ) ∋ ( ( λ x315 -> if true then d136 else false ) ) ) $ ( if true then true else true )
        d318 : ( ( Set -> Set ) ∋ ( ( λ x319 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( x319 ) ) ) ) $ ( if false then Bool else Bool )
        d318 = if if d1 then true else d286 then if d102 then d189 else false else if true then true else d312
        d321 : ( ( Set -> Set ) ∋ ( ( λ x322 -> ( ( Set -> Set ) ∋ ( ( λ x323 -> x323 ) ) ) $ ( x322 ) ) ) ) $ ( if false then Bool else Bool )
        d321 = if if false then false else d41 then if d99 then false else d168 else if d37 then true else d67
        d324 : ( ( Set -> Set ) ∋ ( ( λ x325 -> ( ( Set -> Set ) ∋ ( ( λ x326 -> x326 ) ) ) $ ( x325 ) ) ) ) $ ( if false then Bool else Bool )
        d324 = if if true then d218 else d82 then if d236 then true else false else if d115 then d236 else d70
        d327 : ( ( Set -> Set ) ∋ ( ( λ x330 -> if true then Bool else x330 ) ) ) $ ( if false then Bool else Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x328 -> ( ( Bool -> Bool ) ∋ ( ( λ x329 -> d211 ) ) ) $ ( true ) ) ) ) $ ( if d324 then d58 else false )
        d331 : ( ( Set -> Set ) ∋ ( ( λ x332 -> if false then x332 else x332 ) ) ) $ ( if true then Bool else Bool )
        d331 = if if true then true else true then if d101 then true else true else if false then true else d228
        d333 : ( ( Set -> Set ) ∋ ( ( λ x334 -> ( ( Set -> Set ) ∋ ( ( λ x335 -> x335 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d333 = if if false then false else false then if d118 then true else true else if false then true else false
        d336 : ( ( Set -> Set ) ∋ ( ( λ x339 -> ( ( Set -> Set ) ∋ ( ( λ x340 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d336 = ( ( Bool -> Bool ) ∋ ( ( λ x337 -> ( ( Bool -> Bool ) ∋ ( ( λ x338 -> x337 ) ) ) $ ( d256 ) ) ) ) $ ( if d156 then true else d18 )
        d341 : if true then if false then Bool else Bool else if true then Bool else Bool
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x342 -> ( ( Bool -> Bool ) ∋ ( ( λ x343 -> x343 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d318 )
        d344 : if false then if true then Bool else Bool else if false then Bool else Bool
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x345 -> if x345 then d131 else false ) ) ) $ ( if d213 then false else d52 )
        d346 : if true then if false then Bool else Bool else if false then Bool else Bool
        d346 = ( ( Bool -> Bool ) ∋ ( ( λ x347 -> if x347 then x347 else d286 ) ) ) $ ( if false then d170 else false )
        d348 : if true then if false then Bool else Bool else if false then Bool else Bool
        d348 = if if true then false else d190 then if d82 then true else false else if d216 then false else false
        d349 : if true then if false then Bool else Bool else if true then Bool else Bool
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if d6 then d333 else x350 ) ) ) $ ( if true then d324 else d267 )
        d351 : if false then if true then Bool else Bool else if true then Bool else Bool
        d351 = ( ( Bool -> Bool ) ∋ ( ( λ x352 -> ( ( Bool -> Bool ) ∋ ( ( λ x353 -> false ) ) ) $ ( d321 ) ) ) ) $ ( if d81 then false else d203 )
        d354 : ( ( Set -> Set ) ∋ ( ( λ x357 -> if false then x357 else Bool ) ) ) $ ( if false then Bool else Bool )
        d354 = ( ( Bool -> Bool ) ∋ ( ( λ x355 -> ( ( Bool -> Bool ) ∋ ( ( λ x356 -> false ) ) ) $ ( x355 ) ) ) ) $ ( if d333 then true else false )
        d358 : if false then if true then Bool else Bool else if true then Bool else Bool
        d358 = if if false then false else false then if d354 then true else d318 else if d131 then d131 else true
        d359 : if false then if false then Bool else Bool else if true then Bool else Bool
        d359 = if if true then false else false then if false then false else false else if d236 then d136 else d77
        d360 : if false then if false then Bool else Bool else if true then Bool else Bool
        d360 = if if d294 then false else d121 then if true then false else false else if false then true else d88
        d361 : if false then if false then Bool else Bool else if true then Bool else Bool
        d361 = ( ( Bool -> Bool ) ∋ ( ( λ x362 -> ( ( Bool -> Bool ) ∋ ( ( λ x363 -> x362 ) ) ) $ ( x362 ) ) ) ) $ ( if d153 then d228 else false )
        d364 : if false then if false then Bool else Bool else if true then Bool else Bool
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x365 -> ( ( Bool -> Bool ) ∋ ( ( λ x366 -> x366 ) ) ) $ ( d13 ) ) ) ) $ ( if d36 then d44 else d236 )
        d367 : ( ( Set -> Set ) ∋ ( ( λ x368 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d367 = if if d349 then false else false then if true then d294 else false else if d312 then d236 else d361
        d369 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x371 -> x370 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d369 = if if d346 then true else d162 then if d289 then true else true else if d348 then d267 else true
        d372 : if true then if false then Bool else Bool else if true then Bool else Bool
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x373 -> ( ( Bool -> Bool ) ∋ ( ( λ x374 -> x374 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d149 )
        d375 : ( ( Set -> Set ) ∋ ( ( λ x377 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x376 -> if x376 then true else d126 ) ) ) $ ( if d75 then d193 else true )
        d378 : ( ( Set -> Set ) ∋ ( ( λ x381 -> ( ( Set -> Set ) ∋ ( ( λ x382 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x379 -> ( ( Bool -> Bool ) ∋ ( ( λ x380 -> d240 ) ) ) $ ( true ) ) ) ) $ ( if d83 then d169 else d198 )
        d383 : if true then if true then Bool else Bool else if true then Bool else Bool
        d383 = if if true then false else false then if d289 then false else d63 else if false then true else d248
        d384 : if false then if true then Bool else Bool else if false then Bool else Bool
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x385 -> ( ( Bool -> Bool ) ∋ ( ( λ x386 -> d284 ) ) ) $ ( x385 ) ) ) ) $ ( if d48 then true else d367 )
        d387 : if false then if true then Bool else Bool else if true then Bool else Bool
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x388 -> if x388 then x388 else d216 ) ) ) $ ( if true then d336 else false )
        d389 : ( ( Set -> Set ) ∋ ( ( λ x392 -> ( ( Set -> Set ) ∋ ( ( λ x393 -> x392 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d389 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x391 -> false ) ) ) $ ( d175 ) ) ) ) $ ( if d367 then true else false )
        d394 : if true then if false then Bool else Bool else if false then Bool else Bool
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x395 -> if false then x395 else true ) ) ) $ ( if d147 then false else false )
        d396 : if false then if true then Bool else Bool else if false then Bool else Bool
        d396 = ( ( Bool -> Bool ) ∋ ( ( λ x397 -> if x397 then d170 else x397 ) ) ) $ ( if true then false else true )
        d398 : if true then if false then Bool else Bool else if true then Bool else Bool
        d398 = if if true then true else true then if d267 then d52 else d341 else if d198 then false else d384
        d399 : if true then if false then Bool else Bool else if false then Bool else Bool
        d399 = if if d372 then d193 else false then if d43 then d354 else true else if false then true else false
        d400 : if false then if false then Bool else Bool else if true then Bool else Bool
        d400 = if if false then d262 else d75 then if d169 then false else true else if false then d283 else d55
        d401 : ( ( Set -> Set ) ∋ ( ( λ x402 -> if true then Bool else x402 ) ) ) $ ( if false then Bool else Bool )
        d401 = if if d110 then false else d75 then if d349 then d22 else false else if d349 then d331 else d131
        d403 : ( ( Set -> Set ) ∋ ( ( λ x404 -> ( ( Set -> Set ) ∋ ( ( λ x405 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d403 = if if true then d182 else d69 then if d389 then d312 else d344 else if false then true else true
        d406 : ( ( Set -> Set ) ∋ ( ( λ x407 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d406 = if if false then d136 else d394 then if true then true else true else if true then false else true
        d408 : if false then if true then Bool else Bool else if false then Bool else Bool
        d408 = ( ( Bool -> Bool ) ∋ ( ( λ x409 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> false ) ) ) $ ( d189 ) ) ) ) $ ( if true then d341 else d182 )
        d411 : if true then if true then Bool else Bool else if true then Bool else Bool
        d411 = if if true then d45 else d149 then if d6 then true else d225 else if d389 then d221 else d349
        d412 : ( ( Set -> Set ) ∋ ( ( λ x415 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x413 -> ( ( Bool -> Bool ) ∋ ( ( λ x414 -> false ) ) ) $ ( true ) ) ) ) $ ( if d252 then d226 else d210 )
        d416 : ( ( Set -> Set ) ∋ ( ( λ x418 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d416 = ( ( Bool -> Bool ) ∋ ( ( λ x417 -> if x417 then x417 else true ) ) ) $ ( if true then d80 else d122 )
        d419 : if true then if false then Bool else Bool else if false then Bool else Bool
        d419 = if if true then d387 else d52 then if false then false else d83 else if false then false else d156
        d420 : ( ( Set -> Set ) ∋ ( ( λ x421 -> if true then x421 else Bool ) ) ) $ ( if false then Bool else Bool )
        d420 = if if d263 then d294 else d240 then if true then false else d383 else if true then true else d61
        d422 : ( ( Set -> Set ) ∋ ( ( λ x423 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d422 = if if false then d420 else d26 then if true then d411 else true else if true then d289 else d383
        d424 : if true then if false then Bool else Bool else if true then Bool else Bool
        d424 = if if true then false else d416 then if d105 then true else d333 else if true then false else d243
        d425 : ( ( Set -> Set ) ∋ ( ( λ x428 -> ( ( Set -> Set ) ∋ ( ( λ x429 -> x428 ) ) ) $ ( x428 ) ) ) ) $ ( if true then Bool else Bool )
        d425 = ( ( Bool -> Bool ) ∋ ( ( λ x426 -> ( ( Bool -> Bool ) ∋ ( ( λ x427 -> d214 ) ) ) $ ( false ) ) ) ) $ ( if false then d245 else d299 )
        d430 : if false then if true then Bool else Bool else if false then Bool else Bool
        d430 = ( ( Bool -> Bool ) ∋ ( ( λ x431 -> ( ( Bool -> Bool ) ∋ ( ( λ x432 -> x431 ) ) ) $ ( d401 ) ) ) ) $ ( if d166 then d228 else d197 )
        d433 : if false then if true then Bool else Bool else if true then Bool else Bool
        d433 = ( ( Bool -> Bool ) ∋ ( ( λ x434 -> ( ( Bool -> Bool ) ∋ ( ( λ x435 -> false ) ) ) $ ( d97 ) ) ) ) $ ( if d197 then d70 else true )
        d436 : ( ( Set -> Set ) ∋ ( ( λ x437 -> if true then x437 else Bool ) ) ) $ ( if false then Bool else Bool )
        d436 = if if false then d182 else d6 then if d46 then d131 else true else if d304 then d210 else false
        d438 : if true then if true then Bool else Bool else if true then Bool else Bool
        d438 = if if d360 then d197 else true then if false then false else d252 else if d406 then d401 else false
        d439 : ( ( Set -> Set ) ∋ ( ( λ x440 -> ( ( Set -> Set ) ∋ ( ( λ x441 -> Bool ) ) ) $ ( x440 ) ) ) ) $ ( if true then Bool else Bool )
        d439 = if if d123 then false else d245 then if false then false else false else if true then true else d41
        d442 : ( ( Set -> Set ) ∋ ( ( λ x445 -> if false then x445 else Bool ) ) ) $ ( if true then Bool else Bool )
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x443 -> ( ( Bool -> Bool ) ∋ ( ( λ x444 -> x444 ) ) ) $ ( d226 ) ) ) ) $ ( if true then d394 else d156 )
        d446 : ( ( Set -> Set ) ∋ ( ( λ x449 -> ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d446 = ( ( Bool -> Bool ) ∋ ( ( λ x447 -> ( ( Bool -> Bool ) ∋ ( ( λ x448 -> x447 ) ) ) $ ( d101 ) ) ) ) $ ( if d225 then true else d256 )
        d451 : ( ( Set -> Set ) ∋ ( ( λ x454 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x452 -> ( ( Bool -> Bool ) ∋ ( ( λ x453 -> x452 ) ) ) $ ( false ) ) ) ) $ ( if d354 then false else false )
        d455 : if false then if false then Bool else Bool else if true then Bool else Bool
        d455 = ( ( Bool -> Bool ) ∋ ( ( λ x456 -> ( ( Bool -> Bool ) ∋ ( ( λ x457 -> true ) ) ) $ ( x456 ) ) ) ) $ ( if d408 then false else false )
        d458 : if false then if true then Bool else Bool else if false then Bool else Bool
        d458 = if if d314 then d375 else false then if d190 then false else d221 else if d101 then d349 else d336
        d459 : if false then if true then Bool else Bool else if false then Bool else Bool
        d459 = if if true then d272 else d90 then if false then false else false else if d90 then d394 else true
        d460 : if false then if true then Bool else Bool else if false then Bool else Bool
        d460 = if if false then true else false then if true then d291 else false else if true then false else d46
        d461 : ( ( Set -> Set ) ∋ ( ( λ x462 -> if true then x462 else Bool ) ) ) $ ( if true then Bool else Bool )
        d461 = if if d37 then d118 else false then if true then false else d55 else if d305 then d389 else d180
        d463 : ( ( Set -> Set ) ∋ ( ( λ x464 -> if true then Bool else x464 ) ) ) $ ( if true then Bool else Bool )
        d463 = if if true then d248 else d318 then if false then false else true else if d41 then false else true
        d465 : ( ( Set -> Set ) ∋ ( ( λ x466 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d465 = if if d61 then d314 else d109 then if true then d94 else d228 else if false then false else false
        d467 : ( ( Set -> Set ) ∋ ( ( λ x470 -> ( ( Set -> Set ) ∋ ( ( λ x471 -> Bool ) ) ) $ ( x470 ) ) ) ) $ ( if true then Bool else Bool )
        d467 = ( ( Bool -> Bool ) ∋ ( ( λ x468 -> ( ( Bool -> Bool ) ∋ ( ( λ x469 -> x469 ) ) ) $ ( d312 ) ) ) ) $ ( if false then true else d58 )
        d472 : ( ( Set -> Set ) ∋ ( ( λ x473 -> ( ( Set -> Set ) ∋ ( ( λ x474 -> x473 ) ) ) $ ( x473 ) ) ) ) $ ( if false then Bool else Bool )
        d472 = if if false then d110 else d166 then if false then d299 else true else if true then d169 else d121
        d475 : if false then if false then Bool else Bool else if true then Bool else Bool
        d475 = if if false then true else d81 then if false then d262 else d90 else if true then d346 else true
        d476 : if true then if true then Bool else Bool else if false then Bool else Bool
        d476 = if if false then d460 else d308 then if d384 then false else true else if d208 then d243 else false
        d477 : ( ( Set -> Set ) ∋ ( ( λ x478 -> ( ( Set -> Set ) ∋ ( ( λ x479 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d477 = if if true then d389 else d252 then if false then d294 else d412 else if d396 then d156 else true
        d480 : ( ( Set -> Set ) ∋ ( ( λ x481 -> ( ( Set -> Set ) ∋ ( ( λ x482 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d480 = if if d267 then false else true then if d80 then d121 else d411 else if true then true else true
        d483 : ( ( Set -> Set ) ∋ ( ( λ x484 -> ( ( Set -> Set ) ∋ ( ( λ x485 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d483 = if if false then d252 else d358 then if true then d465 else d367 else if d175 then d297 else d201
        d486 : if true then if false then Bool else Bool else if false then Bool else Bool
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x487 -> if x487 then x487 else d41 ) ) ) $ ( if d283 then d63 else false )
        d488 : ( ( Set -> Set ) ∋ ( ( λ x489 -> if false then x489 else Bool ) ) ) $ ( if false then Bool else Bool )
        d488 = if if true then false else d467 then if false then d225 else true else if d375 then d44 else d333
        d490 : ( ( Set -> Set ) ∋ ( ( λ x491 -> ( ( Set -> Set ) ∋ ( ( λ x492 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d490 = if if d69 then d92 else d109 then if d177 then false else true else if d416 then d243 else d324
        d493 : ( ( Set -> Set ) ∋ ( ( λ x494 -> ( ( Set -> Set ) ∋ ( ( λ x495 -> x495 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d493 = if if d73 then d99 else d348 then if true then true else d460 else if d182 then false else false
        d496 : if true then if false then Bool else Bool else if false then Bool else Bool
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x497 -> ( ( Bool -> Bool ) ∋ ( ( λ x498 -> x497 ) ) ) $ ( d109 ) ) ) ) $ ( if d197 then false else false )
        d499 : if false then if false then Bool else Bool else if true then Bool else Bool
        d499 = if if true then d394 else false then if false then d48 else d75 else if d128 then true else true
        d500 : ( ( Set -> Set ) ∋ ( ( λ x501 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d500 = if if false then true else d483 then if false then false else true else if false then true else d245
        d502 : if false then if false then Bool else Bool else if true then Bool else Bool
        d502 = if if d354 then false else false then if d305 then true else d483 else if d276 then d233 else true
        d503 : ( ( Set -> Set ) ∋ ( ( λ x505 -> ( ( Set -> Set ) ∋ ( ( λ x506 -> Bool ) ) ) $ ( x505 ) ) ) ) $ ( if false then Bool else Bool )
        d503 = ( ( Bool -> Bool ) ∋ ( ( λ x504 -> if false then d221 else d358 ) ) ) $ ( if false then d126 else true )
        d507 : if false then if false then Bool else Bool else if false then Bool else Bool
        d507 = if if true then false else true then if false then false else true else if d214 then d45 else true
        d508 : ( ( Set -> Set ) ∋ ( ( λ x510 -> if false then x510 else Bool ) ) ) $ ( if false then Bool else Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x509 -> if true then d22 else x509 ) ) ) $ ( if true then d113 else d177 )
        d511 : if false then if true then Bool else Bool else if false then Bool else Bool
        d511 = ( ( Bool -> Bool ) ∋ ( ( λ x512 -> ( ( Bool -> Bool ) ∋ ( ( λ x513 -> d46 ) ) ) $ ( d336 ) ) ) ) $ ( if d190 then true else d19 )
        d514 : if true then if false then Bool else Bool else if false then Bool else Bool
        d514 = if if d109 then d26 else d459 then if d231 then d165 else d145 else if d41 then true else d408
        d515 : if true then if false then Bool else Bool else if true then Bool else Bool
        d515 = if if true then d193 else false then if true then d358 else true else if true then false else d406
        d516 : ( ( Set -> Set ) ∋ ( ( λ x517 -> if false then x517 else Bool ) ) ) $ ( if false then Bool else Bool )
        d516 = if if false then d436 else d483 then if false then true else d6 else if d121 then true else false
        d518 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x521 -> x520 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d518 = ( ( Bool -> Bool ) ∋ ( ( λ x519 -> if d263 then true else d18 ) ) ) $ ( if d67 then true else d341 )
        d522 : ( ( Set -> Set ) ∋ ( ( λ x523 -> if false then x523 else Bool ) ) ) $ ( if true then Bool else Bool )
        d522 = if if d88 then d283 else d283 then if d180 then d102 else d121 else if d496 then false else d472
        d524 : if false then if true then Bool else Bool else if false then Bool else Bool
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x525 -> if x525 then x525 else d36 ) ) ) $ ( if false then d254 else d98 )
        d526 : ( ( Set -> Set ) ∋ ( ( λ x527 -> ( ( Set -> Set ) ∋ ( ( λ x528 -> x527 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d526 = if if d480 then false else d152 then if false then false else d94 else if d294 then true else d83
        d529 : ( ( Set -> Set ) ∋ ( ( λ x530 -> ( ( Set -> Set ) ∋ ( ( λ x531 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d529 = if if d225 then true else d13 then if false then true else d518 else if d29 then d477 else true
        d532 : if false then if false then Bool else Bool else if true then Bool else Bool
        d532 = ( ( Bool -> Bool ) ∋ ( ( λ x533 -> if d419 then true else x533 ) ) ) $ ( if false then d177 else false )
        d534 : if true then if false then Bool else Bool else if true then Bool else Bool
        d534 = if if d496 then d422 else d118 then if true then true else d488 else if d6 then d88 else true
        d535 : ( ( Set -> Set ) ∋ ( ( λ x537 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d535 = ( ( Bool -> Bool ) ∋ ( ( λ x536 -> if d63 then x536 else x536 ) ) ) $ ( if false then true else false )
        d538 : if false then if false then Bool else Bool else if false then Bool else Bool
        d538 = ( ( Bool -> Bool ) ∋ ( ( λ x539 -> if x539 then true else true ) ) ) $ ( if d408 then false else true )
        d540 : ( ( Set -> Set ) ∋ ( ( λ x543 -> if false then x543 else x543 ) ) ) $ ( if false then Bool else Bool )
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x541 -> ( ( Bool -> Bool ) ∋ ( ( λ x542 -> true ) ) ) $ ( x541 ) ) ) ) $ ( if false then true else false )
        d544 : ( ( Set -> Set ) ∋ ( ( λ x546 -> ( ( Set -> Set ) ∋ ( ( λ x547 -> x547 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d544 = ( ( Bool -> Bool ) ∋ ( ( λ x545 -> if d175 then true else true ) ) ) $ ( if true then d297 else d349 )
        d548 : if false then if false then Bool else Bool else if false then Bool else Bool
        d548 = ( ( Bool -> Bool ) ∋ ( ( λ x549 -> ( ( Bool -> Bool ) ∋ ( ( λ x550 -> false ) ) ) $ ( d341 ) ) ) ) $ ( if d18 then true else d524 )
        d551 : if true then if true then Bool else Bool else if true then Bool else Bool
        d551 = if if d483 then true else true then if true then d105 else false else if d162 then true else d488
        d552 : if false then if true then Bool else Bool else if true then Bool else Bool
        d552 = if if false then d461 else d349 then if true then true else d422 else if d503 then d82 else true
        d553 : ( ( Set -> Set ) ∋ ( ( λ x555 -> ( ( Set -> Set ) ∋ ( ( λ x556 -> x555 ) ) ) $ ( x555 ) ) ) ) $ ( if false then Bool else Bool )
        d553 = ( ( Bool -> Bool ) ∋ ( ( λ x554 -> if false then d127 else x554 ) ) ) $ ( if d197 then d147 else false )
        d557 : if false then if false then Bool else Bool else if true then Bool else Bool
        d557 = ( ( Bool -> Bool ) ∋ ( ( λ x558 -> if d99 then d214 else x558 ) ) ) $ ( if true then false else d197 )
        d559 : if false then if true then Bool else Bool else if true then Bool else Bool
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> ( ( Bool -> Bool ) ∋ ( ( λ x561 -> x560 ) ) ) $ ( x560 ) ) ) ) $ ( if d272 then d359 else true )
        d562 : if false then if true then Bool else Bool else if true then Bool else Bool
        d562 = if if d84 then false else false then if d189 then false else false else if d248 then d4 else d152
        d563 : ( ( Set -> Set ) ∋ ( ( λ x564 -> if false then x564 else x564 ) ) ) $ ( if true then Bool else Bool )
        d563 = if if d136 then d297 else d166 then if true then d73 else false else if d419 then true else false
        d565 : ( ( Set -> Set ) ∋ ( ( λ x568 -> ( ( Set -> Set ) ∋ ( ( λ x569 -> x569 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d565 = ( ( Bool -> Bool ) ∋ ( ( λ x566 -> ( ( Bool -> Bool ) ∋ ( ( λ x567 -> x566 ) ) ) $ ( x566 ) ) ) ) $ ( if false then true else false )
        d570 : if false then if true then Bool else Bool else if false then Bool else Bool
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x571 -> if x571 then x571 else false ) ) ) $ ( if true then false else true )
        d572 : ( ( Set -> Set ) ∋ ( ( λ x573 -> ( ( Set -> Set ) ∋ ( ( λ x574 -> x574 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d572 = if if d378 then false else false then if false then true else d308 else if true then d231 else false
        d575 : if false then if true then Bool else Bool else if false then Bool else Bool
        d575 = ( ( Bool -> Bool ) ∋ ( ( λ x576 -> ( ( Bool -> Bool ) ∋ ( ( λ x577 -> x577 ) ) ) $ ( true ) ) ) ) $ ( if d283 then true else false )
        d578 : if true then if true then Bool else Bool else if true then Bool else Bool
        d578 = ( ( Bool -> Bool ) ∋ ( ( λ x579 -> if d400 then d522 else x579 ) ) ) $ ( if true then false else false )
        d580 : ( ( Set -> Set ) ∋ ( ( λ x583 -> if false then Bool else x583 ) ) ) $ ( if true then Bool else Bool )
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x581 -> ( ( Bool -> Bool ) ∋ ( ( λ x582 -> d113 ) ) ) $ ( d291 ) ) ) ) $ ( if d483 then true else d524 )
        d584 : if true then if false then Bool else Bool else if true then Bool else Bool
        d584 = if if d578 then false else d312 then if d182 then true else false else if true then true else d552
        d585 : ( ( Set -> Set ) ∋ ( ( λ x586 -> if true then x586 else Bool ) ) ) $ ( if true then Bool else Bool )
        d585 = if if d283 then d121 else d486 then if d508 then true else true else if true then d486 else d304
        d587 : ( ( Set -> Set ) ∋ ( ( λ x589 -> if false then Bool else x589 ) ) ) $ ( if true then Bool else Bool )
        d587 = ( ( Bool -> Bool ) ∋ ( ( λ x588 -> if false then d82 else false ) ) ) $ ( if d245 then false else false )
        d590 : if false then if true then Bool else Bool else if true then Bool else Bool
        d590 = if if true then false else d214 then if d522 then true else true else if d170 then d535 else d225
        d591 : ( ( Set -> Set ) ∋ ( ( λ x592 -> ( ( Set -> Set ) ∋ ( ( λ x593 -> x593 ) ) ) $ ( x592 ) ) ) ) $ ( if true then Bool else Bool )
        d591 = if if false then false else d61 then if true then true else false else if true then d578 else d101
        d594 : ( ( Set -> Set ) ∋ ( ( λ x596 -> if false then Bool else x596 ) ) ) $ ( if false then Bool else Bool )
        d594 = ( ( Bool -> Bool ) ∋ ( ( λ x595 -> if x595 then x595 else true ) ) ) $ ( if false then d499 else false )
        d597 : ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x601 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d597 = ( ( Bool -> Bool ) ∋ ( ( λ x598 -> ( ( Bool -> Bool ) ∋ ( ( λ x599 -> d225 ) ) ) $ ( true ) ) ) ) $ ( if false then d446 else false )
        d602 : ( ( Set -> Set ) ∋ ( ( λ x603 -> ( ( Set -> Set ) ∋ ( ( λ x604 -> Bool ) ) ) $ ( x603 ) ) ) ) $ ( if true then Bool else Bool )
        d602 = if if d216 then d331 else false then if false then d262 else d436 else if true then false else true
        d605 : if true then if false then Bool else Bool else if true then Bool else Bool
        d605 = if if d70 then d420 else true then if true then true else true else if true then true else d189
        d606 : if false then if true then Bool else Bool else if false then Bool else Bool
        d606 = ( ( Bool -> Bool ) ∋ ( ( λ x607 -> ( ( Bool -> Bool ) ∋ ( ( λ x608 -> false ) ) ) $ ( true ) ) ) ) $ ( if d77 then d483 else true )
        d609 : if true then if false then Bool else Bool else if false then Bool else Bool
        d609 = if if d55 then d94 else d384 then if d508 then d289 else d401 else if false then d493 else d364
        d610 : ( ( Set -> Set ) ∋ ( ( λ x611 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d610 = if if true then d264 else true then if false then d290 else false else if d562 then true else d105
        d612 : if false then if false then Bool else Bool else if true then Bool else Bool
        d612 = if if false then true else d411 then if false then false else true else if d341 then true else false
        d613 : if false then if true then Bool else Bool else if false then Bool else Bool
        d613 = if if d305 then d111 else d276 then if d461 then false else d572 else if d256 then true else d557
        d614 : ( ( Set -> Set ) ∋ ( ( λ x617 -> ( ( Set -> Set ) ∋ ( ( λ x618 -> x617 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d614 = ( ( Bool -> Bool ) ∋ ( ( λ x615 -> ( ( Bool -> Bool ) ∋ ( ( λ x616 -> x616 ) ) ) $ ( false ) ) ) ) $ ( if d327 then true else d201 )
        d619 : if true then if false then Bool else Bool else if true then Bool else Bool
        d619 = if if d548 then d43 else d263 then if d499 then d165 else d424 else if d304 then false else d430
        d620 : if true then if true then Bool else Bool else if false then Bool else Bool
        d620 = ( ( Bool -> Bool ) ∋ ( ( λ x621 -> if x621 then true else x621 ) ) ) $ ( if d403 then d384 else false )
        d622 : ( ( Set -> Set ) ∋ ( ( λ x624 -> ( ( Set -> Set ) ∋ ( ( λ x625 -> Bool ) ) ) $ ( x624 ) ) ) ) $ ( if true then Bool else Bool )
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x623 -> if false then true else x623 ) ) ) $ ( if d551 then true else d438 )
        d626 : if false then if false then Bool else Bool else if false then Bool else Bool
        d626 = if if false then false else d559 then if false then false else false else if false then false else true
        d627 : ( ( Set -> Set ) ∋ ( ( λ x630 -> ( ( Set -> Set ) ∋ ( ( λ x631 -> Bool ) ) ) $ ( x630 ) ) ) ) $ ( if true then Bool else Bool )
        d627 = ( ( Bool -> Bool ) ∋ ( ( λ x628 -> ( ( Bool -> Bool ) ∋ ( ( λ x629 -> x628 ) ) ) $ ( x628 ) ) ) ) $ ( if d201 then d237 else d263 )
        d632 : if false then if true then Bool else Bool else if false then Bool else Bool
        d632 = if if d446 then true else d578 then if true then true else true else if d314 then true else false
        d633 : if true then if false then Bool else Bool else if false then Bool else Bool
        d633 = ( ( Bool -> Bool ) ∋ ( ( λ x634 -> if false then x634 else x634 ) ) ) $ ( if d168 then d364 else false )
        d635 : if true then if true then Bool else Bool else if true then Bool else Bool
        d635 = ( ( Bool -> Bool ) ∋ ( ( λ x636 -> if x636 then x636 else d375 ) ) ) $ ( if false then false else false )
        d637 : if false then if false then Bool else Bool else if false then Bool else Bool
        d637 = ( ( Bool -> Bool ) ∋ ( ( λ x638 -> ( ( Bool -> Bool ) ∋ ( ( λ x639 -> d446 ) ) ) $ ( d360 ) ) ) ) $ ( if true then true else true )
        d640 : if true then if true then Bool else Bool else if false then Bool else Bool
        d640 = ( ( Bool -> Bool ) ∋ ( ( λ x641 -> ( ( Bool -> Bool ) ∋ ( ( λ x642 -> x642 ) ) ) $ ( false ) ) ) ) $ ( if false then d256 else false )
        d643 : if true then if false then Bool else Bool else if true then Bool else Bool
        d643 = if if true then false else true then if true then false else d10 else if true then d614 else true
        d644 : ( ( Set -> Set ) ∋ ( ( λ x645 -> ( ( Set -> Set ) ∋ ( ( λ x646 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d644 = if if true then false else true then if d236 then false else d169 else if d305 then d141 else true
        d647 : if false then if true then Bool else Bool else if false then Bool else Bool
        d647 = if if true then true else true then if d236 then false else true else if d458 then false else d403
        d648 : ( ( Set -> Set ) ∋ ( ( λ x649 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( x649 ) ) ) ) $ ( if true then Bool else Bool )
        d648 = if if d516 then d436 else false then if false then false else false else if d333 then d294 else d467
        d651 : ( ( Set -> Set ) ∋ ( ( λ x654 -> ( ( Set -> Set ) ∋ ( ( λ x655 -> Bool ) ) ) $ ( x654 ) ) ) ) $ ( if false then Bool else Bool )
        d651 = ( ( Bool -> Bool ) ∋ ( ( λ x652 -> ( ( Bool -> Bool ) ∋ ( ( λ x653 -> d110 ) ) ) $ ( d237 ) ) ) ) $ ( if d401 then false else false )
        d656 : if false then if false then Bool else Bool else if false then Bool else Bool
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x657 -> if d211 then false else true ) ) ) $ ( if true then d256 else true )
        d658 : if true then if true then Bool else Bool else if false then Bool else Bool
        d658 = ( ( Bool -> Bool ) ∋ ( ( λ x659 -> if true then true else d425 ) ) ) $ ( if d165 then d218 else d627 )
        d660 : ( ( Set -> Set ) ∋ ( ( λ x663 -> if true then Bool else x663 ) ) ) $ ( if true then Bool else Bool )
        d660 = ( ( Bool -> Bool ) ∋ ( ( λ x661 -> ( ( Bool -> Bool ) ∋ ( ( λ x662 -> d412 ) ) ) $ ( x661 ) ) ) ) $ ( if d656 then false else true )
        d664 : if true then if false then Bool else Bool else if false then Bool else Bool
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x665 -> if d411 then x665 else x665 ) ) ) $ ( if false then false else d257 )
        d666 : ( ( Set -> Set ) ∋ ( ( λ x669 -> if false then x669 else x669 ) ) ) $ ( if true then Bool else Bool )
        d666 = ( ( Bool -> Bool ) ∋ ( ( λ x667 -> ( ( Bool -> Bool ) ∋ ( ( λ x668 -> x667 ) ) ) $ ( x667 ) ) ) ) $ ( if true then false else true )
        d670 : if true then if true then Bool else Bool else if true then Bool else Bool
        d670 = ( ( Bool -> Bool ) ∋ ( ( λ x671 -> if d411 then d70 else true ) ) ) $ ( if d463 then d656 else true )
        d672 : ( ( Set -> Set ) ∋ ( ( λ x673 -> ( ( Set -> Set ) ∋ ( ( λ x674 -> x674 ) ) ) $ ( x673 ) ) ) ) $ ( if false then Bool else Bool )
        d672 = if if d483 then d375 else d500 then if false then d411 else d358 else if false then d99 else d226
        d675 : if false then if true then Bool else Bool else if true then Bool else Bool
        d675 = if if d635 then true else false then if false then d61 else d98 else if d240 then true else false
        d676 : ( ( Set -> Set ) ∋ ( ( λ x677 -> if false then x677 else Bool ) ) ) $ ( if true then Bool else Bool )
        d676 = if if d387 then d400 else true then if d420 then false else false else if d535 then true else d41
        d678 : if true then if true then Bool else Bool else if true then Bool else Bool
        d678 = ( ( Bool -> Bool ) ∋ ( ( λ x679 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> d52 ) ) ) $ ( true ) ) ) ) $ ( if d578 then d113 else d1 )
        d681 : ( ( Set -> Set ) ∋ ( ( λ x682 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d681 = if if d400 then false else true then if d81 then d214 else true else if true then true else d580
        d683 : ( ( Set -> Set ) ∋ ( ( λ x684 -> ( ( Set -> Set ) ∋ ( ( λ x685 -> x685 ) ) ) $ ( x684 ) ) ) ) $ ( if false then Bool else Bool )
        d683 = if if d346 then d313 else d123 then if d672 then false else false else if true then false else true
        d686 : ( ( Set -> Set ) ∋ ( ( λ x689 -> if false then x689 else Bool ) ) ) $ ( if true then Bool else Bool )
        d686 = ( ( Bool -> Bool ) ∋ ( ( λ x687 -> ( ( Bool -> Bool ) ∋ ( ( λ x688 -> true ) ) ) $ ( true ) ) ) ) $ ( if d486 then d131 else true )
        d690 : if true then if false then Bool else Bool else if false then Bool else Bool
        d690 = ( ( Bool -> Bool ) ∋ ( ( λ x691 -> if d490 then true else x691 ) ) ) $ ( if d360 then d175 else true )
        d692 : if true then if true then Bool else Bool else if true then Bool else Bool
        d692 = if if d327 then true else false then if false then d557 else d439 else if true then d169 else true
        d693 : ( ( Set -> Set ) ∋ ( ( λ x694 -> ( ( Set -> Set ) ∋ ( ( λ x695 -> x694 ) ) ) $ ( x694 ) ) ) ) $ ( if false then Bool else Bool )
        d693 = if if d136 then d36 else true then if true then false else d575 else if d290 then false else false
        d696 : ( ( Set -> Set ) ∋ ( ( λ x698 -> ( ( Set -> Set ) ∋ ( ( λ x699 -> x698 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d696 = ( ( Bool -> Bool ) ∋ ( ( λ x697 -> if false then true else x697 ) ) ) $ ( if true then d289 else d383 )
        d700 : if false then if false then Bool else Bool else if true then Bool else Bool
        d700 = if if false then d475 else d349 then if d532 then d359 else d606 else if false then false else d500
        d701 : if false then if true then Bool else Bool else if true then Bool else Bool
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x702 -> ( ( Bool -> Bool ) ∋ ( ( λ x703 -> true ) ) ) $ ( x702 ) ) ) ) $ ( if d563 then false else d187 )
        d704 : ( ( Set -> Set ) ∋ ( ( λ x706 -> if false then x706 else Bool ) ) ) $ ( if false then Bool else Bool )
        d704 = ( ( Bool -> Bool ) ∋ ( ( λ x705 -> if d467 then x705 else d52 ) ) ) $ ( if d516 then d336 else d226 )
        d707 : ( ( Set -> Set ) ∋ ( ( λ x708 -> ( ( Set -> Set ) ∋ ( ( λ x709 -> x709 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d707 = if if false then true else true then if d211 then d515 else false else if false then true else false
        d710 : ( ( Set -> Set ) ∋ ( ( λ x711 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d710 = if if false then d406 else true then if d526 then true else false else if true then d262 else true
        d712 : if true then if false then Bool else Bool else if false then Bool else Bool
        d712 = ( ( Bool -> Bool ) ∋ ( ( λ x713 -> ( ( Bool -> Bool ) ∋ ( ( λ x714 -> true ) ) ) $ ( false ) ) ) ) $ ( if d197 then d77 else d412 )
        d715 : ( ( Set -> Set ) ∋ ( ( λ x716 -> ( ( Set -> Set ) ∋ ( ( λ x717 -> x717 ) ) ) $ ( x716 ) ) ) ) $ ( if true then Bool else Bool )
        d715 = if if d275 then d483 else d587 then if false then d182 else d349 else if d507 then d384 else d63
        d718 : ( ( Set -> Set ) ∋ ( ( λ x719 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d718 = if if d507 then d529 else true then if true then true else d45 else if false then false else d455
        d721 : ( ( Set -> Set ) ∋ ( ( λ x723 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x722 -> if x722 then x722 else x722 ) ) ) $ ( if false then true else false )
        d724 : if false then if true then Bool else Bool else if false then Bool else Bool
        d724 = if if d496 then true else false then if d184 then d683 else d290 else if true then d111 else false
        d725 : ( ( Set -> Set ) ∋ ( ( λ x726 -> ( ( Set -> Set ) ∋ ( ( λ x727 -> x727 ) ) ) $ ( x726 ) ) ) ) $ ( if true then Bool else Bool )
        d725 = if if true then d605 else d526 then if true then d175 else d70 else if true then d231 else true
        d728 : ( ( Set -> Set ) ∋ ( ( λ x729 -> ( ( Set -> Set ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( x729 ) ) ) ) $ ( if true then Bool else Bool )
        d728 = if if d460 then true else false then if d233 then d578 else false else if d272 then d97 else true
        d731 : if true then if true then Bool else Bool else if false then Bool else Bool
        d731 = ( ( Bool -> Bool ) ∋ ( ( λ x732 -> ( ( Bool -> Bool ) ∋ ( ( λ x733 -> x733 ) ) ) $ ( true ) ) ) ) $ ( if d710 then false else true )
        d734 : ( ( Set -> Set ) ∋ ( ( λ x737 -> if true then x737 else x737 ) ) ) $ ( if false then Bool else Bool )
        d734 = ( ( Bool -> Bool ) ∋ ( ( λ x735 -> ( ( Bool -> Bool ) ∋ ( ( λ x736 -> d442 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d131 )
        d738 : ( ( Set -> Set ) ∋ ( ( λ x739 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> x739 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d738 = if if true then d524 else d187 then if d81 then false else true else if d182 then d98 else d496
        d741 : if false then if true then Bool else Bool else if false then Bool else Bool
        d741 = if if true then true else false then if true then false else false else if true then d82 else d189
        d742 : if true then if false then Bool else Bool else if false then Bool else Bool
        d742 = ( ( Bool -> Bool ) ∋ ( ( λ x743 -> if false then x743 else false ) ) ) $ ( if d463 then d424 else d514 )
        d744 : ( ( Set -> Set ) ∋ ( ( λ x745 -> if true then x745 else Bool ) ) ) $ ( if true then Bool else Bool )
        d744 = if if d522 then d626 else false then if true then d502 else false else if false then true else true
        d746 : ( ( Set -> Set ) ∋ ( ( λ x747 -> if true then x747 else Bool ) ) ) $ ( if true then Bool else Bool )
        d746 = if if d81 then d627 else true then if d84 then true else true else if true then d486 else d90
        d748 : if true then if false then Bool else Bool else if true then Bool else Bool
        d748 = if if true then false else d58 then if false then true else true else if true then false else d177
        d749 : if true then if false then Bool else Bool else if true then Bool else Bool
        d749 = if if d408 then d584 else true then if d327 then true else d190 else if false then true else d118
        d750 : ( ( Set -> Set ) ∋ ( ( λ x752 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d750 = ( ( Bool -> Bool ) ∋ ( ( λ x751 -> if d162 then d686 else d502 ) ) ) $ ( if true then d610 else false )
        d753 : if true then if false then Bool else Bool else if false then Bool else Bool
        d753 = if if d746 then false else false then if false then d710 else d351 else if false then false else true
        d754 : if false then if false then Bool else Bool else if true then Bool else Bool
        d754 = ( ( Bool -> Bool ) ∋ ( ( λ x755 -> if d728 then x755 else x755 ) ) ) $ ( if false then d741 else false )
        d756 : ( ( Set -> Set ) ∋ ( ( λ x757 -> ( ( Set -> Set ) ∋ ( ( λ x758 -> Bool ) ) ) $ ( x757 ) ) ) ) $ ( if true then Bool else Bool )
        d756 = if if d280 then false else true then if d666 then d511 else d72 else if d658 then d606 else false
        d759 : if false then if false then Bool else Bool else if false then Bool else Bool
        d759 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if x760 then d106 else d683 ) ) ) $ ( if false then false else d83 )
        d761 : ( ( Set -> Set ) ∋ ( ( λ x763 -> if true then Bool else x763 ) ) ) $ ( if false then Bool else Bool )
        d761 = ( ( Bool -> Bool ) ∋ ( ( λ x762 -> if true then x762 else x762 ) ) ) $ ( if true then d208 else true )
        d764 : ( ( Set -> Set ) ∋ ( ( λ x766 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d764 = ( ( Bool -> Bool ) ∋ ( ( λ x765 -> if x765 then d324 else d544 ) ) ) $ ( if d412 then d538 else true )
        d767 : ( ( Set -> Set ) ∋ ( ( λ x768 -> if false then Bool else x768 ) ) ) $ ( if true then Bool else Bool )
        d767 = if if d704 then true else d61 then if d534 then true else true else if d52 then true else true
        d769 : ( ( Set -> Set ) ∋ ( ( λ x772 -> if true then x772 else Bool ) ) ) $ ( if true then Bool else Bool )
        d769 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( Bool -> Bool ) ∋ ( ( λ x771 -> d490 ) ) ) $ ( d58 ) ) ) ) $ ( if false then true else d94 )
        d773 : ( ( Set -> Set ) ∋ ( ( λ x774 -> if true then x774 else x774 ) ) ) $ ( if false then Bool else Bool )
        d773 = if if false then false else d486 then if d480 then d221 else true else if true then false else true
        d775 : ( ( Set -> Set ) ∋ ( ( λ x777 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d775 = ( ( Bool -> Bool ) ∋ ( ( λ x776 -> if d6 then true else d190 ) ) ) $ ( if d115 then d502 else d666 )
        d778 : ( ( Set -> Set ) ∋ ( ( λ x779 -> if false then x779 else x779 ) ) ) $ ( if false then Bool else Bool )
        d778 = if if d128 then d375 else d378 then if false then true else false else if d463 then d13 else d515
        d780 : if false then if true then Bool else Bool else if false then Bool else Bool
        d780 = if if true then true else true then if false then true else true else if true then d156 else d29
        d781 : if false then if true then Bool else Bool else if true then Bool else Bool
        d781 = ( ( Bool -> Bool ) ∋ ( ( λ x782 -> if d90 then true else x782 ) ) ) $ ( if d168 then d496 else d90 )
        d783 : if true then if true then Bool else Bool else if false then Bool else Bool
        d783 = if if d69 then false else d82 then if true then true else false else if d590 then d162 else d252
        d784 : if false then if true then Bool else Bool else if false then Bool else Bool
        d784 = if if false then true else false then if true then d131 else d81 else if true then false else true
        d785 : ( ( Set -> Set ) ∋ ( ( λ x788 -> if true then x788 else x788 ) ) ) $ ( if true then Bool else Bool )
        d785 = ( ( Bool -> Bool ) ∋ ( ( λ x786 -> ( ( Bool -> Bool ) ∋ ( ( λ x787 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then false else d313 )
        d789 : if true then if true then Bool else Bool else if true then Bool else Bool
        d789 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if false then false else x790 ) ) ) $ ( if false then d324 else false )
        d791 : if true then if true then Bool else Bool else if false then Bool else Bool
        d791 = ( ( Bool -> Bool ) ∋ ( ( λ x792 -> ( ( Bool -> Bool ) ∋ ( ( λ x793 -> d387 ) ) ) $ ( true ) ) ) ) $ ( if d175 then d637 else false )
        d794 : if true then if false then Bool else Bool else if true then Bool else Bool
        d794 = ( ( Bool -> Bool ) ∋ ( ( λ x795 -> ( ( Bool -> Bool ) ∋ ( ( λ x796 -> d290 ) ) ) $ ( x795 ) ) ) ) $ ( if d58 then true else false )
        d797 : if false then if false then Bool else Bool else if true then Bool else Bool
        d797 = ( ( Bool -> Bool ) ∋ ( ( λ x798 -> if d459 then d98 else true ) ) ) $ ( if false then true else d147 )
        d799 : ( ( Set -> Set ) ∋ ( ( λ x801 -> if false then Bool else x801 ) ) ) $ ( if false then Bool else Bool )
        d799 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if true then x800 else true ) ) ) $ ( if d203 then d36 else d401 )
        d802 : ( ( Set -> Set ) ∋ ( ( λ x803 -> if false then Bool else x803 ) ) ) $ ( if true then Bool else Bool )
        d802 = if if d412 then true else false then if true then d738 else true else if d664 then d591 else d635
        d804 : ( ( Set -> Set ) ∋ ( ( λ x807 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d804 = ( ( Bool -> Bool ) ∋ ( ( λ x805 -> ( ( Bool -> Bool ) ∋ ( ( λ x806 -> false ) ) ) $ ( d19 ) ) ) ) $ ( if d184 then d243 else d349 )
        d808 : ( ( Set -> Set ) ∋ ( ( λ x809 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d808 = if if d718 then d419 else d508 then if d490 then true else true else if d109 then d781 else true
        d810 : if false then if true then Bool else Bool else if false then Bool else Bool
        d810 = ( ( Bool -> Bool ) ∋ ( ( λ x811 -> if false then x811 else true ) ) ) $ ( if d756 then false else d141 )
        d812 : ( ( Set -> Set ) ∋ ( ( λ x813 -> if false then x813 else x813 ) ) ) $ ( if true then Bool else Bool )
        d812 = if if true then d136 else d810 then if d403 then d455 else d92 else if true then false else false
        d814 : ( ( Set -> Set ) ∋ ( ( λ x816 -> ( ( Set -> Set ) ∋ ( ( λ x817 -> x816 ) ) ) $ ( x816 ) ) ) ) $ ( if false then Bool else Bool )
        d814 = ( ( Bool -> Bool ) ∋ ( ( λ x815 -> if x815 then x815 else true ) ) ) $ ( if d394 then d110 else d784 )
        d818 : ( ( Set -> Set ) ∋ ( ( λ x819 -> if false then x819 else x819 ) ) ) $ ( if false then Bool else Bool )
        d818 = if if false then true else false then if d58 then false else false else if d658 then d412 else false
        d820 : ( ( Set -> Set ) ∋ ( ( λ x821 -> if true then Bool else x821 ) ) ) $ ( if false then Bool else Bool )
        d820 = if if false then false else d375 then if false then d557 else true else if false then d602 else true
        d822 : ( ( Set -> Set ) ∋ ( ( λ x823 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d822 = if if false then d791 else false then if d283 then d145 else false else if false then true else d336
        d824 : ( ( Set -> Set ) ∋ ( ( λ x825 -> ( ( Set -> Set ) ∋ ( ( λ x826 -> Bool ) ) ) $ ( x825 ) ) ) ) $ ( if false then Bool else Bool )
        d824 = if if false then d372 else d19 then if d412 then d756 else d283 else if false then true else d41
        d827 : ( ( Set -> Set ) ∋ ( ( λ x828 -> if true then x828 else x828 ) ) ) $ ( if false then Bool else Bool )
        d827 = if if d613 then false else d400 then if false then false else false else if d439 then true else true
        d829 : if false then if false then Bool else Bool else if true then Bool else Bool
        d829 = if if d578 then d184 else d256 then if false then d778 else true else if d201 then true else d240
        d830 : ( ( Set -> Set ) ∋ ( ( λ x831 -> ( ( Set -> Set ) ∋ ( ( λ x832 -> x832 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d830 = if if d190 then d228 else d534 then if true then true else d313 else if d488 then d411 else false
        d833 : ( ( Set -> Set ) ∋ ( ( λ x836 -> if false then Bool else x836 ) ) ) $ ( if true then Bool else Bool )
        d833 = ( ( Bool -> Bool ) ∋ ( ( λ x834 -> ( ( Bool -> Bool ) ∋ ( ( λ x835 -> d205 ) ) ) $ ( x834 ) ) ) ) $ ( if true then d493 else d226 )
        d837 : if true then if true then Bool else Bool else if true then Bool else Bool
        d837 = ( ( Bool -> Bool ) ∋ ( ( λ x838 -> ( ( Bool -> Bool ) ∋ ( ( λ x839 -> d750 ) ) ) $ ( d814 ) ) ) ) $ ( if d166 then d52 else d670 )
        d840 : ( ( Set -> Set ) ∋ ( ( λ x843 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d840 = ( ( Bool -> Bool ) ∋ ( ( λ x841 -> ( ( Bool -> Bool ) ∋ ( ( λ x842 -> d168 ) ) ) $ ( d348 ) ) ) ) $ ( if d724 then d814 else true )
        d844 : ( ( Set -> Set ) ∋ ( ( λ x845 -> if true then x845 else x845 ) ) ) $ ( if false then Bool else Bool )
        d844 = if if d304 then false else false then if d110 then d572 else true else if false then d131 else false
        d846 : if true then if false then Bool else Bool else if true then Bool else Bool
        d846 = if if d193 then d724 else false then if d67 then true else true else if d175 then d19 else d460
        d847 : ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then x850 else x850 ) ) ) $ ( if true then Bool else Bool )
        d847 = ( ( Bool -> Bool ) ∋ ( ( λ x848 -> ( ( Bool -> Bool ) ∋ ( ( λ x849 -> d612 ) ) ) $ ( d327 ) ) ) ) $ ( if false then false else true )
        d851 : if false then if false then Bool else Bool else if false then Bool else Bool
        d851 = ( ( Bool -> Bool ) ∋ ( ( λ x852 -> if x852 then d10 else false ) ) ) $ ( if false then true else d840 )
        d853 : ( ( Set -> Set ) ∋ ( ( λ x856 -> ( ( Set -> Set ) ∋ ( ( λ x857 -> x857 ) ) ) $ ( x856 ) ) ) ) $ ( if false then Bool else Bool )
        d853 = ( ( Bool -> Bool ) ∋ ( ( λ x854 -> ( ( Bool -> Bool ) ∋ ( ( λ x855 -> false ) ) ) $ ( d633 ) ) ) ) $ ( if d548 then d791 else d829 )
        d858 : ( ( Set -> Set ) ∋ ( ( λ x860 -> ( ( Set -> Set ) ∋ ( ( λ x861 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d858 = ( ( Bool -> Bool ) ∋ ( ( λ x859 -> if x859 then x859 else x859 ) ) ) $ ( if d267 then d664 else d132 )
        d862 : ( ( Set -> Set ) ∋ ( ( λ x863 -> ( ( Set -> Set ) ∋ ( ( λ x864 -> x863 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d862 = if if false then false else d147 then if false then false else true else if d572 then d43 else d225
        d865 : if false then if true then Bool else Bool else if false then Bool else Bool
        d865 = if if d503 then d394 else d853 then if d442 then d327 else true else if d710 then d627 else false
        d866 : if true then if true then Bool else Bool else if false then Bool else Bool
        d866 = ( ( Bool -> Bool ) ∋ ( ( λ x867 -> ( ( Bool -> Bool ) ∋ ( ( λ x868 -> x868 ) ) ) $ ( d626 ) ) ) ) $ ( if true then d534 else d182 )
        d869 : if false then if true then Bool else Bool else if true then Bool else Bool
        d869 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> ( ( Bool -> Bool ) ∋ ( ( λ x871 -> d99 ) ) ) $ ( d602 ) ) ) ) $ ( if d424 then false else false )
        d872 : if true then if false then Bool else Bool else if false then Bool else Bool
        d872 = ( ( Bool -> Bool ) ∋ ( ( λ x873 -> ( ( Bool -> Bool ) ∋ ( ( λ x874 -> x873 ) ) ) $ ( true ) ) ) ) $ ( if false then d331 else d314 )
        d875 : ( ( Set -> Set ) ∋ ( ( λ x876 -> ( ( Set -> Set ) ∋ ( ( λ x877 -> x876 ) ) ) $ ( x876 ) ) ) ) $ ( if false then Bool else Bool )
        d875 = if if true then false else true then if d461 then d29 else false else if d327 then d190 else d153
        d878 : if true then if false then Bool else Bool else if true then Bool else Bool
        d878 = ( ( Bool -> Bool ) ∋ ( ( λ x879 -> if true then d559 else d761 ) ) ) $ ( if d156 then false else d18 )
        d880 : if true then if false then Bool else Bool else if true then Bool else Bool
        d880 = ( ( Bool -> Bool ) ∋ ( ( λ x881 -> ( ( Bool -> Bool ) ∋ ( ( λ x882 -> x882 ) ) ) $ ( false ) ) ) ) $ ( if false then d387 else false )
        d883 : if false then if true then Bool else Bool else if true then Bool else Bool
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x884 -> if d499 then x884 else d499 ) ) ) $ ( if d524 then true else false )
        d885 : ( ( Set -> Set ) ∋ ( ( λ x886 -> ( ( Set -> Set ) ∋ ( ( λ x887 -> x886 ) ) ) $ ( x886 ) ) ) ) $ ( if false then Bool else Bool )
        d885 = if if d844 then d136 else d756 then if false then d704 else false else if false then d416 else d61
        d888 : if true then if true then Bool else Bool else if false then Bool else Bool
        d888 = ( ( Bool -> Bool ) ∋ ( ( λ x889 -> ( ( Bool -> Bool ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( false ) ) ) ) $ ( if d126 then false else d840 )
        d891 : if false then if false then Bool else Bool else if true then Bool else Bool
        d891 = if if d756 then false else d538 then if true then true else false else if false then false else d291
        d892 : if false then if false then Bool else Bool else if false then Bool else Bool
        d892 = ( ( Bool -> Bool ) ∋ ( ( λ x893 -> if x893 then false else true ) ) ) $ ( if d551 then d313 else true )
        d894 : ( ( Set -> Set ) ∋ ( ( λ x895 -> ( ( Set -> Set ) ∋ ( ( λ x896 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d894 = if if true then d761 else false then if d327 then false else false else if false then d442 else false
        d897 : ( ( Set -> Set ) ∋ ( ( λ x900 -> if true then Bool else x900 ) ) ) $ ( if true then Bool else Bool )
        d897 = ( ( Bool -> Bool ) ∋ ( ( λ x898 -> ( ( Bool -> Bool ) ∋ ( ( λ x899 -> false ) ) ) $ ( true ) ) ) ) $ ( if d463 then d865 else true )
        d901 : ( ( Set -> Set ) ∋ ( ( λ x902 -> if true then Bool else x902 ) ) ) $ ( if false then Bool else Bool )
        d901 = if if false then d778 else true then if d724 then d436 else d313 else if d123 then d398 else true
        d903 : if true then if false then Bool else Bool else if false then Bool else Bool
        d903 = ( ( Bool -> Bool ) ∋ ( ( λ x904 -> ( ( Bool -> Bool ) ∋ ( ( λ x905 -> true ) ) ) $ ( false ) ) ) ) $ ( if d190 then d245 else false )
        d906 : if true then if false then Bool else Bool else if true then Bool else Bool
        d906 = ( ( Bool -> Bool ) ∋ ( ( λ x907 -> ( ( Bool -> Bool ) ∋ ( ( λ x908 -> true ) ) ) $ ( x907 ) ) ) ) $ ( if false then true else true )
        d909 : ( ( Set -> Set ) ∋ ( ( λ x911 -> if true then x911 else x911 ) ) ) $ ( if true then Bool else Bool )
        d909 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> if false then false else false ) ) ) $ ( if d526 then false else d88 )
        d912 : if false then if false then Bool else Bool else if false then Bool else Bool
        d912 = ( ( Bool -> Bool ) ∋ ( ( λ x913 -> if x913 then true else d802 ) ) ) $ ( if true then false else false )
        d914 : ( ( Set -> Set ) ∋ ( ( λ x916 -> if true then x916 else x916 ) ) ) $ ( if false then Bool else Bool )
        d914 = ( ( Bool -> Bool ) ∋ ( ( λ x915 -> if false then d847 else d690 ) ) ) $ ( if false then d299 else d658 )
        d917 : if true then if true then Bool else Bool else if false then Bool else Bool
        d917 = ( ( Bool -> Bool ) ∋ ( ( λ x918 -> if d609 then d170 else d875 ) ) ) $ ( if d640 then d701 else d436 )
        d919 : if false then if true then Bool else Bool else if false then Bool else Bool
        d919 = if if d858 then d324 else d131 then if d750 then d304 else d846 else if d168 then d190 else d738
        d920 : ( ( Set -> Set ) ∋ ( ( λ x922 -> if false then x922 else Bool ) ) ) $ ( if true then Bool else Bool )
        d920 = ( ( Bool -> Bool ) ∋ ( ( λ x921 -> if false then x921 else true ) ) ) $ ( if true then true else false )
        d923 : ( ( Set -> Set ) ∋ ( ( λ x926 -> if false then x926 else Bool ) ) ) $ ( if true then Bool else Bool )
        d923 = ( ( Bool -> Bool ) ∋ ( ( λ x924 -> ( ( Bool -> Bool ) ∋ ( ( λ x925 -> x924 ) ) ) $ ( d327 ) ) ) ) $ ( if d906 then d731 else d63 )
        d927 : ( ( Set -> Set ) ∋ ( ( λ x929 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> Bool ) ) ) $ ( x929 ) ) ) ) $ ( if false then Bool else Bool )
        d927 = ( ( Bool -> Bool ) ∋ ( ( λ x928 -> if d360 then x928 else d231 ) ) ) $ ( if d166 then d572 else true )
        d931 : if false then if false then Bool else Bool else if false then Bool else Bool
        d931 = if if d526 then true else true then if d128 then d880 else d878 else if d105 then false else d182
        d932 : ( ( Set -> Set ) ∋ ( ( λ x933 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d932 = if if d538 then false else true then if d906 then true else d389 else if d166 then d331 else true
        d934 : if true then if true then Bool else Bool else if false then Bool else Bool
        d934 = if if d715 then d193 else d94 then if d216 then false else true else if d840 then d619 else d48
        d935 : ( ( Set -> Set ) ∋ ( ( λ x936 -> ( ( Set -> Set ) ∋ ( ( λ x937 -> x936 ) ) ) $ ( x936 ) ) ) ) $ ( if false then Bool else Bool )
        d935 = if if d780 then d32 else d70 then if d43 then false else d243 else if d750 then d198 else false
        d938 : if false then if true then Bool else Bool else if true then Bool else Bool
        d938 = if if d216 then true else d477 then if d69 then false else d919 else if d693 then true else d696
        d939 : ( ( Set -> Set ) ∋ ( ( λ x942 -> ( ( Set -> Set ) ∋ ( ( λ x943 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d939 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> ( ( Bool -> Bool ) ∋ ( ( λ x941 -> false ) ) ) $ ( d660 ) ) ) ) $ ( if d866 then true else false )
        d944 : ( ( Set -> Set ) ∋ ( ( λ x945 -> if false then x945 else Bool ) ) ) $ ( if true then Bool else Bool )
        d944 = if if d892 then d81 else false then if true then false else d58 else if true then true else d551
        d946 : if false then if false then Bool else Bool else if false then Bool else Bool
        d946 = ( ( Bool -> Bool ) ∋ ( ( λ x947 -> if false then true else d69 ) ) ) $ ( if true then d313 else d430 )
        d948 : ( ( Set -> Set ) ∋ ( ( λ x949 -> ( ( Set -> Set ) ∋ ( ( λ x950 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d948 = if if true then false else d327 then if true then true else false else if false then false else false
        d951 : if true then if true then Bool else Bool else if false then Bool else Bool
        d951 = ( ( Bool -> Bool ) ∋ ( ( λ x952 -> ( ( Bool -> Bool ) ∋ ( ( λ x953 -> d780 ) ) ) $ ( d439 ) ) ) ) $ ( if true then d935 else d559 )
        d954 : if true then if false then Bool else Bool else if false then Bool else Bool
        d954 = ( ( Bool -> Bool ) ∋ ( ( λ x955 -> if true then false else true ) ) ) $ ( if false then true else false )
        d956 : ( ( Set -> Set ) ∋ ( ( λ x958 -> if false then Bool else x958 ) ) ) $ ( if false then Bool else Bool )
        d956 = ( ( Bool -> Bool ) ∋ ( ( λ x957 -> if true then d45 else x957 ) ) ) $ ( if false then d92 else false )
        d959 : ( ( Set -> Set ) ∋ ( ( λ x960 -> ( ( Set -> Set ) ∋ ( ( λ x961 -> x961 ) ) ) $ ( x960 ) ) ) ) $ ( if true then Bool else Bool )
        d959 = if if true then d724 else d262 then if true then false else d632 else if true then false else d305
        d962 : if false then if false then Bool else Bool else if false then Bool else Bool
        d962 = if if d72 then false else true then if d99 then d920 else d508 else if d750 then d627 else d938
        d963 : ( ( Set -> Set ) ∋ ( ( λ x965 -> if true then x965 else x965 ) ) ) $ ( if true then Bool else Bool )
        d963 = ( ( Bool -> Bool ) ∋ ( ( λ x964 -> if x964 then x964 else d741 ) ) ) $ ( if d177 then true else d46 )
        d966 : ( ( Set -> Set ) ∋ ( ( λ x968 -> if true then x968 else Bool ) ) ) $ ( if false then Bool else Bool )
        d966 = ( ( Bool -> Bool ) ∋ ( ( λ x967 -> if false then x967 else true ) ) ) $ ( if d909 then true else false )
        d969 : if true then if true then Bool else Bool else if false then Bool else Bool
        d969 = if if false then false else true then if true then false else true else if true then false else d901
        d970 : if false then if false then Bool else Bool else if true then Bool else Bool
        d970 = if if true then true else d767 then if false then d166 else d490 else if d383 then true else d216
        d971 : ( ( Set -> Set ) ∋ ( ( λ x974 -> ( ( Set -> Set ) ∋ ( ( λ x975 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d971 = ( ( Bool -> Bool ) ∋ ( ( λ x972 -> ( ( Bool -> Bool ) ∋ ( ( λ x973 -> d575 ) ) ) $ ( x972 ) ) ) ) $ ( if false then true else false )
        d976 : if true then if true then Bool else Bool else if true then Bool else Bool
        d976 = if if false then d878 else d208 then if d715 then d785 else true else if d312 then false else d534
        d977 : if true then if false then Bool else Bool else if false then Bool else Bool
        d977 = if if d814 then d136 else d436 then if d136 then d226 else false else if d169 then d245 else false
        d978 : ( ( Set -> Set ) ∋ ( ( λ x981 -> ( ( Set -> Set ) ∋ ( ( λ x982 -> x981 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d978 = ( ( Bool -> Bool ) ∋ ( ( λ x979 -> ( ( Bool -> Bool ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( x979 ) ) ) ) $ ( if false then d83 else false )
        d983 : ( ( Set -> Set ) ∋ ( ( λ x985 -> if false then Bool else x985 ) ) ) $ ( if true then Bool else Bool )
        d983 = ( ( Bool -> Bool ) ∋ ( ( λ x984 -> if x984 then x984 else true ) ) ) $ ( if false then d147 else true )
        d986 : if true then if false then Bool else Bool else if true then Bool else Bool
        d986 = if if true then d256 else d43 then if d358 then false else d976 else if d824 then true else true
        d987 : if false then if false then Bool else Bool else if true then Bool else Bool
        d987 = ( ( Bool -> Bool ) ∋ ( ( λ x988 -> ( ( Bool -> Bool ) ∋ ( ( λ x989 -> x989 ) ) ) $ ( d156 ) ) ) ) $ ( if d875 then d318 else d927 )
        d990 : ( ( Set -> Set ) ∋ ( ( λ x992 -> ( ( Set -> Set ) ∋ ( ( λ x993 -> Bool ) ) ) $ ( x992 ) ) ) ) $ ( if true then Bool else Bool )
        d990 = ( ( Bool -> Bool ) ∋ ( ( λ x991 -> if d644 then false else x991 ) ) ) $ ( if true then d131 else d742 )
        d994 : if false then if true then Bool else Bool else if false then Bool else Bool
        d994 = if if false then false else d394 then if false then false else true else if d221 then d193 else false
        d995 : if false then if false then Bool else Bool else if false then Bool else Bool
        d995 = ( ( Bool -> Bool ) ∋ ( ( λ x996 -> ( ( Bool -> Bool ) ∋ ( ( λ x997 -> x996 ) ) ) $ ( d672 ) ) ) ) $ ( if d267 then d184 else d141 )
        d998 : if false then if false then Bool else Bool else if true then Bool else Bool
        d998 = ( ( Bool -> Bool ) ∋ ( ( λ x999 -> if x999 then false else true ) ) ) $ ( if d610 then d553 else true )
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x1003 -> if true then x1003 else x1003 ) ) ) $ ( if true then Bool else Bool )
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x1001 -> ( ( Bool -> Bool ) ∋ ( ( λ x1002 -> true ) ) ) $ ( true ) ) ) ) $ ( if d82 then false else d614 )
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x1007 -> ( ( Set -> Set ) ∋ ( ( λ x1008 -> x1007 ) ) ) $ ( x1007 ) ) ) ) $ ( if true then Bool else Bool )
        d1004 = ( ( Bool -> Bool ) ∋ ( ( λ x1005 -> ( ( Bool -> Bool ) ∋ ( ( λ x1006 -> true ) ) ) $ ( false ) ) ) ) $ ( if d715 then d459 else false )
        d1009 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1009 = if if false then d299 else false then if true then true else true else if false then true else false
        d1011 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1011 = ( ( Bool -> Bool ) ∋ ( ( λ x1012 -> if d128 then x1012 else x1012 ) ) ) $ ( if d954 then true else d113 )
        d1013 : ( ( Set -> Set ) ∋ ( ( λ x1016 -> if false then Bool else x1016 ) ) ) $ ( if false then Bool else Bool )
        d1013 = ( ( Bool -> Bool ) ∋ ( ( λ x1014 -> ( ( Bool -> Bool ) ∋ ( ( λ x1015 -> x1015 ) ) ) $ ( false ) ) ) ) $ ( if false then d590 else d451 )
        d1017 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1017 = if if d361 then true else d994 then if d211 then true else d463 else if d367 then true else d267
        d1018 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x1019 -> ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> true ) ) ) $ ( d672 ) ) ) ) $ ( if d990 then d923 else false )
        d1021 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1021 = ( ( Bool -> Bool ) ∋ ( ( λ x1022 -> ( ( Bool -> Bool ) ∋ ( ( λ x1023 -> d19 ) ) ) $ ( x1022 ) ) ) ) $ ( if false then false else false )
        d1024 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1024 = if if false then false else true then if false then true else true else if false then false else false
        d1025 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1025 = ( ( Bool -> Bool ) ∋ ( ( λ x1026 -> ( ( Bool -> Bool ) ∋ ( ( λ x1027 -> false ) ) ) $ ( true ) ) ) ) $ ( if d26 then false else d632 )
        d1028 : ( ( Set -> Set ) ∋ ( ( λ x1029 -> if true then x1029 else x1029 ) ) ) $ ( if false then Bool else Bool )
        d1028 = if if true then d761 else d724 then if false then true else true else if true then d483 else d552
        d1030 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1030 = if if true then d969 else false then if true then false else d935 else if d197 then d511 else true
        d1031 : ( ( Set -> Set ) ∋ ( ( λ x1033 -> if false then Bool else x1033 ) ) ) $ ( if true then Bool else Bool )
        d1031 = ( ( Bool -> Bool ) ∋ ( ( λ x1032 -> if false then x1032 else d333 ) ) ) $ ( if true then d304 else d411 )
        d1034 : ( ( Set -> Set ) ∋ ( ( λ x1035 -> ( ( Set -> Set ) ∋ ( ( λ x1036 -> Bool ) ) ) $ ( x1035 ) ) ) ) $ ( if false then Bool else Bool )
        d1034 = if if false then d963 else d591 then if true then false else d302 else if d467 then d780 else d1011
        d1037 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1037 = ( ( Bool -> Bool ) ∋ ( ( λ x1038 -> if x1038 then x1038 else false ) ) ) $ ( if false then false else d605 )
        d1039 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1039 = if if true then false else d514 then if true then false else true else if false then d77 else false
        d1040 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1040 = if if true then d63 else d920 then if true then true else true else if false then d77 else false
        d1041 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1041 = if if d84 then true else d88 then if false then false else d535 else if false then d216 else d656
        d1042 : ( ( Set -> Set ) ∋ ( ( λ x1043 -> ( ( Set -> Set ) ∋ ( ( λ x1044 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1042 = if if false then true else true then if d987 then false else d551 else if d578 then d394 else d885
        d1045 : ( ( Set -> Set ) ∋ ( ( λ x1048 -> if false then Bool else x1048 ) ) ) $ ( if true then Bool else Bool )
        d1045 = ( ( Bool -> Bool ) ∋ ( ( λ x1046 -> ( ( Bool -> Bool ) ∋ ( ( λ x1047 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d493 else d439 )
        d1049 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1049 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if d152 then false else d401 ) ) ) $ ( if d69 then d111 else d213 )
        d1051 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1051 = ( ( Bool -> Bool ) ∋ ( ( λ x1052 -> ( ( Bool -> Bool ) ∋ ( ( λ x1053 -> x1053 ) ) ) $ ( d6 ) ) ) ) $ ( if d262 then true else false )
        d1054 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1054 = ( ( Bool -> Bool ) ∋ ( ( λ x1055 -> if x1055 then d305 else true ) ) ) $ ( if d419 then d378 else d748 )
        d1056 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1056 = if if true then false else d236 then if false then true else d1018 else if d672 then d364 else d935
        d1057 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> if false then x1060 else x1060 ) ) ) $ ( if true then Bool else Bool )
        d1057 = ( ( Bool -> Bool ) ∋ ( ( λ x1058 -> ( ( Bool -> Bool ) ∋ ( ( λ x1059 -> x1059 ) ) ) $ ( d149 ) ) ) ) $ ( if d48 then d935 else d818 )
        d1061 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1061 = ( ( Bool -> Bool ) ∋ ( ( λ x1062 -> ( ( Bool -> Bool ) ∋ ( ( λ x1063 -> true ) ) ) $ ( x1062 ) ) ) ) $ ( if d1025 then false else d231 )
        d1064 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1064 = if if d1017 then false else d58 then if d289 then d746 else true else if d145 then true else false
        d1065 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1065 = if if d1017 then false else false then if d321 then true else d6 else if false then d256 else d389
        d1066 : ( ( Set -> Set ) ∋ ( ( λ x1069 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> x1069 ) ) ) $ ( x1069 ) ) ) ) $ ( if true then Bool else Bool )
        d1066 = ( ( Bool -> Bool ) ∋ ( ( λ x1067 -> ( ( Bool -> Bool ) ∋ ( ( λ x1068 -> x1068 ) ) ) $ ( x1067 ) ) ) ) $ ( if true then d401 else false )
        d1071 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1071 = if if false then d26 else true then if d420 then false else true else if false then true else d430
        d1072 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1072 = ( ( Bool -> Bool ) ∋ ( ( λ x1073 -> ( ( Bool -> Bool ) ∋ ( ( λ x1074 -> true ) ) ) $ ( x1073 ) ) ) ) $ ( if true then false else d123 )
        d1075 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1075 = if if false then d613 else d906 then if d378 then d597 else d1061 else if false then d396 else true
        d1076 : ( ( Set -> Set ) ∋ ( ( λ x1077 -> if false then x1077 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1076 = if if false then d672 else true then if d784 then d1 else d1018 else if true then d69 else true
        d1078 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1078 = ( ( Bool -> Bool ) ∋ ( ( λ x1079 -> if true then x1079 else d609 ) ) ) $ ( if d170 then d920 else d938 )
        d1080 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1080 = ( ( Bool -> Bool ) ∋ ( ( λ x1081 -> ( ( Bool -> Bool ) ∋ ( ( λ x1082 -> d400 ) ) ) $ ( d55 ) ) ) ) $ ( if false then d704 else d1030 )
        d1083 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1083 = if if true then d633 else d1021 then if d572 then true else d1065 else if d605 then false else d126
        d1084 : ( ( Set -> Set ) ∋ ( ( λ x1085 -> ( ( Set -> Set ) ∋ ( ( λ x1086 -> Bool ) ) ) $ ( x1085 ) ) ) ) $ ( if false then Bool else Bool )
        d1084 = if if d313 then false else d837 then if false then d475 else true else if d767 then d761 else d159
        d1087 : ( ( Set -> Set ) ∋ ( ( λ x1088 -> if true then x1088 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1087 = if if false then true else d584 then if d522 then d1066 else false else if false then true else false
        d1089 : ( ( Set -> Set ) ∋ ( ( λ x1092 -> ( ( Set -> Set ) ∋ ( ( λ x1093 -> Bool ) ) ) $ ( x1092 ) ) ) ) $ ( if false then Bool else Bool )
        d1089 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> ( ( Bool -> Bool ) ∋ ( ( λ x1091 -> d70 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d26 )