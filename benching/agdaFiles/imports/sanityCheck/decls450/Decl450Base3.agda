module Decl450Base3  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else x4 ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x2 ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then Bool else x6 ) ) ) $ ( if false then Bool else Bool )
        d5 = if if true then true else false then if d1 then false else d1 else if d1 then false else false
        d7 : if false then if true then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if false then true else x8 ) ) ) $ ( if false then d5 else d1 )
        d9 : if false then if true then Bool else Bool else if false then Bool else Bool
        d9 = if if false then true else false then if d1 then true else false else if true then d1 else d1
        d10 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x13 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> d1 ) ) ) $ ( d5 ) ) ) ) $ ( if d5 then d5 else false )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if true then x16 else x16 ) ) ) $ ( if d7 then false else true )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x21 ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d19 = if if d10 then d15 else d5 then if d5 then false else d5 else if d5 then false else false
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> Bool ) ) ) $ ( x25 ) ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d10 ) ) ) $ ( x23 ) ) ) ) $ ( if true then false else d1 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then x29 else x29 ) ) ) $ ( if true then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if d9 then x28 else true ) ) ) $ ( if d10 then true else d15 )
        d30 : if false then if false then Bool else Bool else if false then Bool else Bool
        d30 = if if d10 then d10 else true then if false then false else d10 else if d15 then d10 else d1
        d31 : if false then if true then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if x32 then d1 else x32 ) ) ) $ ( if true then false else d30 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> x35 ) ) ) $ ( x34 ) ) ) ) $ ( if false then Bool else Bool )
        d33 = if if true then d10 else d9 then if d15 then true else false else if d22 then d30 else d30
        d36 : if true then if false then Bool else Bool else if false then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if x37 then x37 else x37 ) ) ) $ ( if d10 then d27 else d27 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if true then Bool else x41 ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> true ) ) ) $ ( x39 ) ) ) ) $ ( if d22 then false else d10 )
        d42 : if true then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if x43 then false else false ) ) ) $ ( if false then d10 else d30 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then x47 else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> x45 ) ) ) $ ( x45 ) ) ) ) $ ( if false then d10 else false )
        d48 : if false then if false then Bool else Bool else if true then Bool else Bool
        d48 = if if d7 then true else d27 then if true then d44 else d1 else if d9 then d19 else d27
        d49 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( x52 ) ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> true ) ) ) $ ( false ) ) ) ) $ ( if d42 then d33 else d1 )
        d54 : if true then if false then Bool else Bool else if true then Bool else Bool
        d54 = if if false then d38 else false then if false then d36 else d10 else if d15 then d33 else false
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d55 = if if false then d10 else false then if false then false else false else if true then d42 else d27
        d57 : if false then if true then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if x58 then d1 else x58 ) ) ) $ ( if true then false else d10 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> false ) ) ) $ ( false ) ) ) ) $ ( if d7 then d7 else true )
        d63 : if true then if false then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> false ) ) ) $ ( d31 ) ) ) ) $ ( if d54 then d54 else d15 )
        d66 : if false then if false then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if x67 then true else false ) ) ) $ ( if false then false else d19 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then x69 else Bool ) ) ) $ ( if false then Bool else Bool )
        d68 = if if d63 then true else false then if false then d59 else d9 else if true then false else d7
        d70 : if false then if false then Bool else Bool else if false then Bool else Bool
        d70 = if if false then true else true then if true then d42 else d48 else if d7 then d54 else true
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d71 = if if true then d31 else d44 then if d68 then true else d55 else if true then true else d15
        d74 : if false then if true then Bool else Bool else if true then Bool else Bool
        d74 = if if true then true else false then if d9 then true else d59 else if false then false else d70
        d75 : if true then if true then Bool else Bool else if false then Bool else Bool
        d75 = if if d71 then d1 else false then if d33 then d22 else false else if d63 then false else d1
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = if if false then false else d70 then if d74 then d48 else d5 else if true then d48 else true
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> x78 ) ) ) $ ( x78 ) ) ) ) $ ( if true then Bool else Bool )
        d77 = if if d59 then true else false then if d10 then d54 else false else if d10 then true else d55
        d80 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then x82 else Bool ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if x81 then false else x81 ) ) ) $ ( if true then false else false )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( x85 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if true then x84 else x84 ) ) ) $ ( if d15 then d15 else true )
        d87 : if false then if false then Bool else Bool else if false then Bool else Bool
        d87 = if if d5 then d70 else false then if true then false else true else if d15 then true else d10
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( x89 ) ) ) ) $ ( if true then Bool else Bool )
        d88 = if if d27 then true else d36 then if d19 then false else d22 else if true then true else false
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else x92 ) ) ) $ ( if true then Bool else Bool )
        d91 = if if d57 then d55 else d49 then if true then false else true else if false then d42 else false
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d93 = if if true then true else d80 then if false then d38 else true else if false then true else false
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> x99 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> x96 ) ) ) $ ( d15 ) ) ) ) $ ( if d42 then d22 else d31 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then x101 else Bool ) ) ) $ ( if false then Bool else Bool )
        d100 = if if d68 then true else false then if true then d1 else d55 else if d77 then d87 else d1
        d102 : if false then if false then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> d54 ) ) ) $ ( d59 ) ) ) ) $ ( if true then d1 else d66 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if false then x108 else x108 ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> x106 ) ) ) $ ( d74 ) ) ) ) $ ( if true then false else d100 )
        d109 : if false then if false then Bool else Bool else if true then Bool else Bool
        d109 = if if d48 then false else d93 then if false then d49 else d54 else if true then d10 else d100
        d110 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d95 ) ) ) $ ( false ) ) ) ) $ ( if d105 then false else d88 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d114 = if if true then d70 else d100 then if d22 then true else true else if true then d9 else d19
        d117 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( x120 ) ) ) ) $ ( if false then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> true ) ) ) $ ( x118 ) ) ) ) $ ( if d30 then d83 else d49 )
        d122 : if false then if true then Bool else Bool else if false then Bool else Bool
        d122 = if if true then true else d93 then if d76 then false else d27 else if d48 then true else d75
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x125 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d123 = if if true then d100 else false then if d44 then d83 else true else if false then true else d1
        d126 : if true then if false then Bool else Bool else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> d44 ) ) ) $ ( x127 ) ) ) ) $ ( if d87 then false else false )
        d129 : if true then if false then Bool else Bool else if false then Bool else Bool
        d129 = if if d71 then true else true then if false then false else d22 else if true then d19 else d114
        d130 : if false then if false then Bool else Bool else if false then Bool else Bool
        d130 = if if d102 then false else d105 then if d117 then d1 else false else if d95 then d76 else d9
        d131 : if true then if false then Bool else Bool else if true then Bool else Bool
        d131 = if if true then true else true then if d77 then d110 else d83 else if false then false else d59
        d132 : if false then if true then Bool else Bool else if false then Bool else Bool
        d132 = if if d27 then false else d95 then if false then d19 else d5 else if false then d80 else true
        d133 : if true then if true then Bool else Bool else if true then Bool else Bool
        d133 = if if false then d75 else d110 then if false then d88 else d38 else if d132 then false else false
        d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d134 = if if d5 then false else true then if true then false else false else if false then false else true
        d136 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( Bool -> Bool ) ∋ ( ( λ x138 -> d91 ) ) ) $ ( x137 ) ) ) ) $ ( if d30 then true else d44 )
        d140 : if true then if false then Bool else Bool else if false then Bool else Bool
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> if false then x141 else x141 ) ) ) $ ( if d44 then false else true )
        d142 : if true then if true then Bool else Bool else if false then Bool else Bool
        d142 = if if d57 then d114 else true then if false then false else d59 else if false then d93 else d63
        d143 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( Bool -> Bool ) ∋ ( ( λ x145 -> d70 ) ) ) $ ( false ) ) ) ) $ ( if true then d9 else d93 )
        d147 : ( ( Set -> Set ) ∋ ( ( λ x149 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> if false then x148 else d48 ) ) ) $ ( if false then true else d55 )
        d151 : if false then if false then Bool else Bool else if false then Bool else Bool
        d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> if d1 then x152 else x152 ) ) ) $ ( if false then d126 else d42 )
        d153 : if false then if true then Bool else Bool else if false then Bool else Bool
        d153 = if if false then false else d5 then if true then d54 else true else if false then d68 else d80
        d154 : if false then if true then Bool else Bool else if false then Bool else Bool
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x155 -> if x155 then false else x155 ) ) ) $ ( if true then d38 else d44 )
        d156 : if true then if true then Bool else Bool else if false then Bool else Bool
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( Bool -> Bool ) ∋ ( ( λ x158 -> d66 ) ) ) $ ( x157 ) ) ) ) $ ( if true then true else false )
        d159 : if true then if true then Bool else Bool else if false then Bool else Bool
        d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x161 -> false ) ) ) $ ( x160 ) ) ) ) $ ( if d15 then false else true )
        d162 : if false then if true then Bool else Bool else if true then Bool else Bool
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> if false then true else true ) ) ) $ ( if d117 then d153 else d76 )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> if x165 then false else d27 ) ) ) $ ( if d136 then d49 else d63 )
        d167 : if false then if false then Bool else Bool else if true then Bool else Bool
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> ( ( Bool -> Bool ) ∋ ( ( λ x169 -> x169 ) ) ) $ ( x168 ) ) ) ) $ ( if d70 then d66 else d109 )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x172 -> ( ( Set -> Set ) ∋ ( ( λ x173 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> if x171 then true else d63 ) ) ) $ ( if d159 then true else true )
        d174 : ( ( Set -> Set ) ∋ ( ( λ x175 -> ( ( Set -> Set ) ∋ ( ( λ x176 -> Bool ) ) ) $ ( x175 ) ) ) ) $ ( if false then Bool else Bool )
        d174 = if if d77 then d164 else true then if false then true else true else if d170 then false else true
        d177 : if true then if false then Bool else Bool else if false then Bool else Bool
        d177 = if if d7 then d153 else d77 then if d102 then true else d132 else if d88 then d143 else d30
        d178 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> x181 ) ) ) $ ( x180 ) ) ) ) $ ( if true then Bool else Bool )
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> if d174 then true else d74 ) ) ) $ ( if d68 then d74 else true )
        d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if true then x183 else x183 ) ) ) $ ( if true then Bool else Bool )
        d182 = if if d49 then d59 else d36 then if false then d27 else d178 else if d95 then true else d15
        d184 : if true then if true then Bool else Bool else if true then Bool else Bool
        d184 = if if d174 then d105 else d70 then if d170 then d55 else false else if false then true else d178
        d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d185 = if if d70 then false else false then if true then d1 else false else if false then false else true
        d187 : ( ( Set -> Set ) ∋ ( ( λ x188 -> ( ( Set -> Set ) ∋ ( ( λ x189 -> x189 ) ) ) $ ( x188 ) ) ) ) $ ( if true then Bool else Bool )
        d187 = if if d129 then d71 else true then if true then d156 else false else if d156 then true else d151
        d190 : ( ( Set -> Set ) ∋ ( ( λ x193 -> ( ( Set -> Set ) ∋ ( ( λ x194 -> x194 ) ) ) $ ( x193 ) ) ) ) $ ( if false then Bool else Bool )
        d190 = ( ( Bool -> Bool ) ∋ ( ( λ x191 -> ( ( Bool -> Bool ) ∋ ( ( λ x192 -> true ) ) ) $ ( d83 ) ) ) ) $ ( if d129 then false else true )
        d195 : if false then if true then Bool else Bool else if true then Bool else Bool
        d195 = if if true then d33 else true then if d117 then d91 else d177 else if true then false else false
        d196 : if false then if true then Bool else Bool else if false then Bool else Bool
        d196 = ( ( Bool -> Bool ) ∋ ( ( λ x197 -> ( ( Bool -> Bool ) ∋ ( ( λ x198 -> d174 ) ) ) $ ( d185 ) ) ) ) $ ( if true then true else d44 )
        d199 : if true then if true then Bool else Bool else if false then Bool else Bool
        d199 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x201 -> d49 ) ) ) $ ( d159 ) ) ) ) $ ( if d7 then d49 else d95 )
        d202 : ( ( Set -> Set ) ∋ ( ( λ x204 -> if true then x204 else x204 ) ) ) $ ( if true then Bool else Bool )
        d202 = ( ( Bool -> Bool ) ∋ ( ( λ x203 -> if false then x203 else false ) ) ) $ ( if d44 then d36 else false )
        d205 : if true then if true then Bool else Bool else if true then Bool else Bool
        d205 = if if d147 then false else d42 then if true then true else true else if false then d129 else false
        d206 : ( ( Set -> Set ) ∋ ( ( λ x208 -> if false then Bool else x208 ) ) ) $ ( if true then Bool else Bool )
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> if x207 then x207 else d44 ) ) ) $ ( if d57 then false else d154 )
        d209 : ( ( Set -> Set ) ∋ ( ( λ x210 -> ( ( Set -> Set ) ∋ ( ( λ x211 -> Bool ) ) ) $ ( x210 ) ) ) ) $ ( if false then Bool else Bool )
        d209 = if if false then d132 else false then if d70 then true else true else if d7 then d130 else false
        d212 : if false then if true then Bool else Bool else if true then Bool else Bool
        d212 = if if false then d49 else d151 then if false then true else false else if true then false else d110
        d213 : if false then if false then Bool else Bool else if true then Bool else Bool
        d213 = if if d205 then true else true then if true then d170 else true else if true then d177 else false
        d214 : if false then if false then Bool else Bool else if true then Bool else Bool
        d214 = if if false then false else d49 then if true then d134 else d156 else if d27 then true else d88
        d215 : ( ( Set -> Set ) ∋ ( ( λ x216 -> ( ( Set -> Set ) ∋ ( ( λ x217 -> x216 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d215 = if if d42 then true else false then if false then d95 else d102 else if false then false else d44
        d218 : if true then if false then Bool else Bool else if false then Bool else Bool
        d218 = ( ( Bool -> Bool ) ∋ ( ( λ x219 -> if x219 then d122 else x219 ) ) ) $ ( if false then d147 else d100 )
        d220 : ( ( Set -> Set ) ∋ ( ( λ x223 -> if false then x223 else x223 ) ) ) $ ( if false then Bool else Bool )
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x221 -> ( ( Bool -> Bool ) ∋ ( ( λ x222 -> d68 ) ) ) $ ( x221 ) ) ) ) $ ( if false then d213 else true )
        d224 : if false then if false then Bool else Bool else if true then Bool else Bool
        d224 = ( ( Bool -> Bool ) ∋ ( ( λ x225 -> if d205 then false else false ) ) ) $ ( if d162 then d77 else d87 )
        d226 : ( ( Set -> Set ) ∋ ( ( λ x227 -> ( ( Set -> Set ) ∋ ( ( λ x228 -> x227 ) ) ) $ ( x227 ) ) ) ) $ ( if false then Bool else Bool )
        d226 = if if d38 then d123 else true then if true then d133 else false else if true then d147 else d129
        d229 : if true then if false then Bool else Bool else if true then Bool else Bool
        d229 = if if false then d174 else false then if d74 then true else true else if d36 then false else true
        d230 : if true then if false then Bool else Bool else if false then Bool else Bool
        d230 = ( ( Bool -> Bool ) ∋ ( ( λ x231 -> if d229 then d164 else true ) ) ) $ ( if true then true else d132 )
        d232 : if false then if true then Bool else Bool else if false then Bool else Bool
        d232 = ( ( Bool -> Bool ) ∋ ( ( λ x233 -> ( ( Bool -> Bool ) ∋ ( ( λ x234 -> true ) ) ) $ ( x233 ) ) ) ) $ ( if d102 then d80 else d9 )
        d235 : if false then if false then Bool else Bool else if true then Bool else Bool
        d235 = if if d185 then d22 else d70 then if true then d36 else true else if true then true else true
        d236 : ( ( Set -> Set ) ∋ ( ( λ x238 -> if true then x238 else Bool ) ) ) $ ( if false then Bool else Bool )
        d236 = ( ( Bool -> Bool ) ∋ ( ( λ x237 -> if x237 then false else d44 ) ) ) $ ( if true then d132 else d48 )
        d239 : ( ( Set -> Set ) ∋ ( ( λ x240 -> if true then x240 else x240 ) ) ) $ ( if true then Bool else Bool )
        d239 = if if true then true else d93 then if false then false else false else if false then true else d209
        d241 : if true then if false then Bool else Bool else if false then Bool else Bool
        d241 = if if true then false else d215 then if d123 then d109 else d5 else if true then d130 else true
        d242 : ( ( Set -> Set ) ∋ ( ( λ x243 -> ( ( Set -> Set ) ∋ ( ( λ x244 -> x244 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d242 = if if false then d154 else d38 then if false then d224 else true else if d153 then d10 else d226
        d245 : if false then if false then Bool else Bool else if true then Bool else Bool
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x246 -> ( ( Bool -> Bool ) ∋ ( ( λ x247 -> true ) ) ) $ ( d7 ) ) ) ) $ ( if d151 then false else true )
        d248 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x251 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d248 = ( ( Bool -> Bool ) ∋ ( ( λ x249 -> if false then d136 else true ) ) ) $ ( if true then d126 else d236 )
        d252 : if false then if true then Bool else Bool else if false then Bool else Bool
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x253 -> ( ( Bool -> Bool ) ∋ ( ( λ x254 -> d156 ) ) ) $ ( x253 ) ) ) ) $ ( if true then d156 else d230 )
        d255 : if true then if true then Bool else Bool else if true then Bool else Bool
        d255 = if if d154 then true else true then if d199 then false else false else if false then d27 else d229
        d256 : ( ( Set -> Set ) ∋ ( ( λ x259 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( x259 ) ) ) ) $ ( if true then Bool else Bool )
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x257 -> ( ( Bool -> Bool ) ∋ ( ( λ x258 -> d159 ) ) ) $ ( d122 ) ) ) ) $ ( if d220 then false else d215 )
        d261 : if true then if true then Bool else Bool else if false then Bool else Bool
        d261 = if if d57 then d123 else true then if d117 then false else d105 else if false then d1 else d109
        d262 : if false then if true then Bool else Bool else if true then Bool else Bool
        d262 = if if true then true else d1 then if true then false else true else if true then d248 else d143
        d263 : ( ( Set -> Set ) ∋ ( ( λ x265 -> ( ( Set -> Set ) ∋ ( ( λ x266 -> x265 ) ) ) $ ( x265 ) ) ) ) $ ( if true then Bool else Bool )
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x264 -> if d54 then true else false ) ) ) $ ( if d162 then false else true )
        d267 : ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x271 -> x270 ) ) ) $ ( x270 ) ) ) ) $ ( if true then Bool else Bool )
        d267 = ( ( Bool -> Bool ) ∋ ( ( λ x268 -> ( ( Bool -> Bool ) ∋ ( ( λ x269 -> x269 ) ) ) $ ( d63 ) ) ) ) $ ( if d133 then d147 else d213 )
        d272 : ( ( Set -> Set ) ∋ ( ( λ x273 -> if false then x273 else x273 ) ) ) $ ( if false then Bool else Bool )
        d272 = if if d55 then true else d209 then if false then d49 else d262 else if true then d154 else true
        d274 : if true then if true then Bool else Bool else if true then Bool else Bool
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x275 -> ( ( Bool -> Bool ) ∋ ( ( λ x276 -> x276 ) ) ) $ ( d154 ) ) ) ) $ ( if d142 then d256 else true )
        d277 : ( ( Set -> Set ) ∋ ( ( λ x278 -> if true then Bool else x278 ) ) ) $ ( if false then Bool else Bool )
        d277 = if if true then d182 else true then if true then true else false else if d262 then true else d170
        d279 : if false then if false then Bool else Bool else if true then Bool else Bool
        d279 = if if d232 then d105 else d229 then if true then false else d153 else if d147 then d27 else d1
        d280 : ( ( Set -> Set ) ∋ ( ( λ x281 -> ( ( Set -> Set ) ∋ ( ( λ x282 -> x282 ) ) ) $ ( x281 ) ) ) ) $ ( if false then Bool else Bool )
        d280 = if if d132 then d74 else d209 then if false then true else true else if d215 then d27 else true
        d283 : if false then if false then Bool else Bool else if true then Bool else Bool
        d283 = if if d9 then d143 else d15 then if false then true else d22 else if d182 then d267 else true
        d284 : ( ( Set -> Set ) ∋ ( ( λ x285 -> if false then x285 else Bool ) ) ) $ ( if true then Bool else Bool )
        d284 = if if d283 then false else false then if d5 then false else true else if d129 then true else false
        d286 : ( ( Set -> Set ) ∋ ( ( λ x288 -> if true then x288 else x288 ) ) ) $ ( if true then Bool else Bool )
        d286 = ( ( Bool -> Bool ) ∋ ( ( λ x287 -> if false then false else x287 ) ) ) $ ( if d235 then d132 else true )
        d289 : if true then if false then Bool else Bool else if false then Bool else Bool
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if d184 then x290 else d182 ) ) ) $ ( if d5 then d226 else false )
        d291 : if true then if true then Bool else Bool else if true then Bool else Bool
        d291 = if if false then false else d130 then if true then true else false else if true then d162 else d71
        d292 : if true then if true then Bool else Bool else if false then Bool else Bool
        d292 = if if false then d209 else true then if false then d229 else d235 else if d15 then true else d215
        d293 : if true then if false then Bool else Bool else if false then Bool else Bool
        d293 = if if true then true else d235 then if d132 then d170 else d88 else if d105 then false else false
        d294 : if true then if false then Bool else Bool else if true then Bool else Bool
        d294 = ( ( Bool -> Bool ) ∋ ( ( λ x295 -> ( ( Bool -> Bool ) ∋ ( ( λ x296 -> true ) ) ) $ ( false ) ) ) ) $ ( if d70 then d75 else d77 )
        d297 : ( ( Set -> Set ) ∋ ( ( λ x298 -> if false then x298 else x298 ) ) ) $ ( if false then Bool else Bool )
        d297 = if if d213 then d213 else false then if false then d88 else d36 else if true then true else true
        d299 : ( ( Set -> Set ) ∋ ( ( λ x301 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if x300 then true else x300 ) ) ) $ ( if d178 then false else false )
        d302 : if true then if true then Bool else Bool else if true then Bool else Bool
        d302 = if if d5 then true else d206 then if false then false else d263 else if false then false else false
        d303 : ( ( Set -> Set ) ∋ ( ( λ x306 -> if false then x306 else Bool ) ) ) $ ( if true then Bool else Bool )
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x304 -> ( ( Bool -> Bool ) ∋ ( ( λ x305 -> d242 ) ) ) $ ( true ) ) ) ) $ ( if true then d302 else d27 )
        d307 : if true then if true then Bool else Bool else if false then Bool else Bool
        d307 = ( ( Bool -> Bool ) ∋ ( ( λ x308 -> if d109 then x308 else d178 ) ) ) $ ( if false then d22 else d159 )
        d309 : ( ( Set -> Set ) ∋ ( ( λ x310 -> ( ( Set -> Set ) ∋ ( ( λ x311 -> x310 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d309 = if if false then d232 else d230 then if false then d5 else false else if d7 then d284 else false
        d312 : ( ( Set -> Set ) ∋ ( ( λ x313 -> ( ( Set -> Set ) ∋ ( ( λ x314 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d312 = if if d19 then d75 else true then if d291 then d77 else true else if d232 then true else false
        d315 : ( ( Set -> Set ) ∋ ( ( λ x317 -> ( ( Set -> Set ) ∋ ( ( λ x318 -> x318 ) ) ) $ ( x317 ) ) ) ) $ ( if false then Bool else Bool )
        d315 = ( ( Bool -> Bool ) ∋ ( ( λ x316 -> if d232 then x316 else true ) ) ) $ ( if d136 then d206 else d131 )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x321 -> if false then x321 else Bool ) ) ) $ ( if false then Bool else Bool )
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if true then d30 else true ) ) ) $ ( if d279 then true else d241 )
        d322 : ( ( Set -> Set ) ∋ ( ( λ x323 -> if true then x323 else x323 ) ) ) $ ( if true then Bool else Bool )
        d322 = if if d164 then true else false then if false then d66 else d252 else if d215 then d74 else d109
        d324 : ( ( Set -> Set ) ∋ ( ( λ x325 -> ( ( Set -> Set ) ∋ ( ( λ x326 -> Bool ) ) ) $ ( x325 ) ) ) ) $ ( if false then Bool else Bool )
        d324 = if if true then d5 else d199 then if true then false else d154 else if d267 then d280 else false
        d327 : if true then if true then Bool else Bool else if false then Bool else Bool
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x328 -> if d102 then d42 else false ) ) ) $ ( if false then false else d299 )
        d329 : if true then if true then Bool else Bool else if false then Bool else Bool
        d329 = if if false then d195 else d297 then if d315 then d239 else d38 else if d182 then false else d91
        d330 : if true then if true then Bool else Bool else if false then Bool else Bool
        d330 = if if false then false else d232 then if d131 then false else true else if true then false else d38
        d331 : ( ( Set -> Set ) ∋ ( ( λ x332 -> ( ( Set -> Set ) ∋ ( ( λ x333 -> x332 ) ) ) $ ( x332 ) ) ) ) $ ( if false then Bool else Bool )
        d331 = if if d122 then d91 else d329 then if d214 then d272 else d164 else if true then d49 else false
        d334 : ( ( Set -> Set ) ∋ ( ( λ x337 -> ( ( Set -> Set ) ∋ ( ( λ x338 -> x338 ) ) ) $ ( x337 ) ) ) ) $ ( if false then Bool else Bool )
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x335 -> ( ( Bool -> Bool ) ∋ ( ( λ x336 -> d302 ) ) ) $ ( d170 ) ) ) ) $ ( if d190 then d59 else true )
        d339 : if false then if false then Bool else Bool else if true then Bool else Bool
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x341 -> x340 ) ) ) $ ( x340 ) ) ) ) $ ( if d277 then d55 else d31 )
        d342 : ( ( Set -> Set ) ∋ ( ( λ x345 -> ( ( Set -> Set ) ∋ ( ( λ x346 -> Bool ) ) ) $ ( x345 ) ) ) ) $ ( if false then Bool else Bool )
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x343 -> ( ( Bool -> Bool ) ∋ ( ( λ x344 -> x344 ) ) ) $ ( true ) ) ) ) $ ( if true then d319 else d154 )
        d347 : if false then if true then Bool else Bool else if true then Bool else Bool
        d347 = ( ( Bool -> Bool ) ∋ ( ( λ x348 -> if x348 then true else true ) ) ) $ ( if d299 then false else d7 )
        d349 : ( ( Set -> Set ) ∋ ( ( λ x351 -> if true then x351 else x351 ) ) ) $ ( if false then Bool else Bool )
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if x350 then d22 else x350 ) ) ) $ ( if d232 then d164 else d91 )
        d352 : ( ( Set -> Set ) ∋ ( ( λ x355 -> ( ( Set -> Set ) ∋ ( ( λ x356 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x353 -> ( ( Bool -> Bool ) ∋ ( ( λ x354 -> x354 ) ) ) $ ( false ) ) ) ) $ ( if d130 then d327 else false )
        d357 : if false then if false then Bool else Bool else if false then Bool else Bool
        d357 = if if d68 then true else true then if d33 then d95 else d131 else if d236 then d309 else d334
        d358 : ( ( Set -> Set ) ∋ ( ( λ x359 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d358 = if if true then d134 else true then if false then true else d212 else if d252 then true else d170
        d361 : if true then if false then Bool else Bool else if false then Bool else Bool
        d361 = if if d159 then d230 else d330 then if d31 then d31 else true else if d91 then d352 else false
        d362 : if true then if false then Bool else Bool else if true then Bool else Bool
        d362 = if if d293 then true else d95 then if d122 then true else d274 else if true then true else d100
        d363 : if false then if false then Bool else Bool else if true then Bool else Bool
        d363 = if if false then d7 else true then if d22 then true else d284 else if d1 then false else false
        d364 : ( ( Set -> Set ) ∋ ( ( λ x365 -> if false then x365 else x365 ) ) ) $ ( if false then Bool else Bool )
        d364 = if if d95 then false else false then if d134 then d274 else d342 else if d156 then false else false
        d366 : ( ( Set -> Set ) ∋ ( ( λ x368 -> if false then x368 else x368 ) ) ) $ ( if false then Bool else Bool )
        d366 = ( ( Bool -> Bool ) ∋ ( ( λ x367 -> if x367 then true else true ) ) ) $ ( if true then true else true )
        d369 : ( ( Set -> Set ) ∋ ( ( λ x371 -> if true then x371 else x371 ) ) ) $ ( if false then Bool else Bool )
        d369 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if x370 then d1 else false ) ) ) $ ( if d248 then d236 else false )
        d372 : ( ( Set -> Set ) ∋ ( ( λ x373 -> if false then x373 else x373 ) ) ) $ ( if true then Bool else Bool )
        d372 = if if d178 then false else d256 then if false then d299 else d218 else if false then d248 else true
        d374 : if false then if true then Bool else Bool else if false then Bool else Bool
        d374 = if if false then d122 else d334 then if d88 then d312 else false else if true then d230 else d185
        d375 : ( ( Set -> Set ) ∋ ( ( λ x376 -> ( ( Set -> Set ) ∋ ( ( λ x377 -> x377 ) ) ) $ ( x376 ) ) ) ) $ ( if true then Bool else Bool )
        d375 = if if false then d324 else d153 then if false then false else d162 else if d170 then d292 else true
        d378 : ( ( Set -> Set ) ∋ ( ( λ x379 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d378 = if if d151 then true else d102 then if d309 then false else d363 else if d279 then d369 else d279
        d381 : ( ( Set -> Set ) ∋ ( ( λ x383 -> if false then x383 else Bool ) ) ) $ ( if true then Bool else Bool )
        d381 = ( ( Bool -> Bool ) ∋ ( ( λ x382 -> if true then true else false ) ) ) $ ( if d309 then d102 else false )
        d384 : ( ( Set -> Set ) ∋ ( ( λ x385 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d384 = if if d93 then d277 else true then if d5 then d226 else d162 else if d358 then d95 else d123
        d386 : ( ( Set -> Set ) ∋ ( ( λ x389 -> if false then x389 else Bool ) ) ) $ ( if false then Bool else Bool )
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x387 -> ( ( Bool -> Bool ) ∋ ( ( λ x388 -> x387 ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d390 : if false then if false then Bool else Bool else if true then Bool else Bool
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x391 -> if true then x391 else true ) ) ) $ ( if true then false else d241 )
        d392 : ( ( Set -> Set ) ∋ ( ( λ x395 -> ( ( Set -> Set ) ∋ ( ( λ x396 -> Bool ) ) ) $ ( x395 ) ) ) ) $ ( if false then Bool else Bool )
        d392 = ( ( Bool -> Bool ) ∋ ( ( λ x393 -> ( ( Bool -> Bool ) ∋ ( ( λ x394 -> true ) ) ) $ ( x393 ) ) ) ) $ ( if d7 then true else true )
        d397 : ( ( Set -> Set ) ∋ ( ( λ x399 -> ( ( Set -> Set ) ∋ ( ( λ x400 -> Bool ) ) ) $ ( x399 ) ) ) ) $ ( if true then Bool else Bool )
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x398 -> if d199 then d236 else d299 ) ) ) $ ( if d235 then d136 else d110 )
        d401 : if true then if true then Bool else Bool else if true then Bool else Bool
        d401 = if if false then true else true then if true then d239 else d230 else if false then true else false
        d402 : ( ( Set -> Set ) ∋ ( ( λ x403 -> if true then x403 else x403 ) ) ) $ ( if true then Bool else Bool )
        d402 = if if false then true else d293 then if false then d236 else true else if d54 then d42 else true
        d404 : if true then if true then Bool else Bool else if true then Bool else Bool
        d404 = if if false then false else false then if true then false else false else if true then false else d102
        d405 : ( ( Set -> Set ) ∋ ( ( λ x406 -> ( ( Set -> Set ) ∋ ( ( λ x407 -> Bool ) ) ) $ ( x406 ) ) ) ) $ ( if true then Bool else Bool )
        d405 = if if d185 then d162 else true then if d339 then d319 else false else if d114 then true else true
        d408 : ( ( Set -> Set ) ∋ ( ( λ x409 -> if false then Bool else x409 ) ) ) $ ( if true then Bool else Bool )
        d408 = if if d33 then d274 else d229 then if d212 then false else d100 else if d284 then d280 else d267
        d410 : ( ( Set -> Set ) ∋ ( ( λ x411 -> ( ( Set -> Set ) ∋ ( ( λ x412 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d410 = if if d315 then false else d213 then if false then d248 else true else if d374 then d309 else d36
        d413 : if false then if true then Bool else Bool else if true then Bool else Bool
        d413 = ( ( Bool -> Bool ) ∋ ( ( λ x414 -> if false then d358 else false ) ) ) $ ( if d319 then d297 else d88 )
        d415 : if true then if false then Bool else Bool else if true then Bool else Bool
        d415 = if if false then d142 else true then if true then d248 else d322 else if d239 then d80 else d151
        d416 : if true then if false then Bool else Bool else if true then Bool else Bool
        d416 = if if true then true else false then if d294 then d364 else true else if d230 then false else d292
        d417 : if true then if false then Bool else Bool else if false then Bool else Bool
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x418 -> ( ( Bool -> Bool ) ∋ ( ( λ x419 -> true ) ) ) $ ( x418 ) ) ) ) $ ( if d87 then false else d185 )
        d420 : if true then if false then Bool else Bool else if false then Bool else Bool
        d420 = if if true then d75 else false then if d7 then true else false else if d77 then false else d174
        d421 : if false then if false then Bool else Bool else if false then Bool else Bool
        d421 = if if d319 then d384 else d402 then if d339 then false else true else if true then false else false
        d422 : ( ( Set -> Set ) ∋ ( ( λ x423 -> if true then x423 else x423 ) ) ) $ ( if true then Bool else Bool )
        d422 = if if false then d214 else d142 then if d324 then d374 else true else if false then false else d303
        d424 : if true then if false then Bool else Bool else if false then Bool else Bool
        d424 = if if true then d38 else d109 then if d184 then true else true else if d239 then true else d289
        d425 : ( ( Set -> Set ) ∋ ( ( λ x427 -> if true then x427 else x427 ) ) ) $ ( if true then Bool else Bool )
        d425 = ( ( Bool -> Bool ) ∋ ( ( λ x426 -> if x426 then d122 else true ) ) ) $ ( if true then false else false )
        d428 : ( ( Set -> Set ) ∋ ( ( λ x430 -> ( ( Set -> Set ) ∋ ( ( λ x431 -> x430 ) ) ) $ ( x430 ) ) ) ) $ ( if false then Bool else Bool )
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x429 -> if true then x429 else d9 ) ) ) $ ( if true then d153 else d164 )
        d432 : ( ( Set -> Set ) ∋ ( ( λ x433 -> if false then x433 else Bool ) ) ) $ ( if false then Bool else Bool )
        d432 = if if true then d7 else d364 then if d331 then true else false else if true then true else d331
        d434 : ( ( Set -> Set ) ∋ ( ( λ x436 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d434 = ( ( Bool -> Bool ) ∋ ( ( λ x435 -> if d261 then d415 else d352 ) ) ) $ ( if d154 then d218 else false )
        d437 : if false then if false then Bool else Bool else if false then Bool else Bool
        d437 = ( ( Bool -> Bool ) ∋ ( ( λ x438 -> if x438 then x438 else false ) ) ) $ ( if d36 then d143 else d187 )
        d439 : ( ( Set -> Set ) ∋ ( ( λ x440 -> ( ( Set -> Set ) ∋ ( ( λ x441 -> x441 ) ) ) $ ( x440 ) ) ) ) $ ( if false then Bool else Bool )
        d439 = if if true then d159 else true then if d123 then d263 else d88 else if d213 then d226 else d339
        d442 : ( ( Set -> Set ) ∋ ( ( λ x443 -> ( ( Set -> Set ) ∋ ( ( λ x444 -> Bool ) ) ) $ ( x443 ) ) ) ) $ ( if true then Bool else Bool )
        d442 = if if true then d229 else d334 then if d293 then d384 else d7 else if true then false else false
        d445 : ( ( Set -> Set ) ∋ ( ( λ x447 -> if false then Bool else x447 ) ) ) $ ( if true then Bool else Bool )
        d445 = ( ( Bool -> Bool ) ∋ ( ( λ x446 -> if x446 then false else x446 ) ) ) $ ( if true then true else false )
        d448 : ( ( Set -> Set ) ∋ ( ( λ x451 -> ( ( Set -> Set ) ∋ ( ( λ x452 -> x452 ) ) ) $ ( x451 ) ) ) ) $ ( if false then Bool else Bool )
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x449 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> false ) ) ) $ ( x449 ) ) ) ) $ ( if true then false else d424 )
        d453 : ( ( Set -> Set ) ∋ ( ( λ x456 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x454 -> ( ( Bool -> Bool ) ∋ ( ( λ x455 -> d156 ) ) ) $ ( x454 ) ) ) ) $ ( if true then true else false )
        d457 : ( ( Set -> Set ) ∋ ( ( λ x458 -> if false then x458 else Bool ) ) ) $ ( if false then Bool else Bool )
        d457 = if if false then d327 else d381 then if false then d372 else d416 else if true then d437 else d401
        d459 : if false then if true then Bool else Bool else if true then Bool else Bool
        d459 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x461 -> x460 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d358 )
        d462 : if false then if false then Bool else Bool else if true then Bool else Bool
        d462 = ( ( Bool -> Bool ) ∋ ( ( λ x463 -> if d327 then d428 else false ) ) ) $ ( if false then d457 else d357 )
        d464 : ( ( Set -> Set ) ∋ ( ( λ x465 -> ( ( Set -> Set ) ∋ ( ( λ x466 -> x465 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d464 = if if d71 then false else false then if d59 then d102 else d256 else if d315 then d381 else d329
        d467 : ( ( Set -> Set ) ∋ ( ( λ x468 -> ( ( Set -> Set ) ∋ ( ( λ x469 -> Bool ) ) ) $ ( x468 ) ) ) ) $ ( if false then Bool else Bool )
        d467 = if if d397 then d71 else false then if true then d63 else false else if false then false else d307
        d470 : if false then if true then Bool else Bool else if true then Bool else Bool
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x471 -> if false then x471 else x471 ) ) ) $ ( if false then d195 else d307 )
        d472 : ( ( Set -> Set ) ∋ ( ( λ x474 -> if true then x474 else Bool ) ) ) $ ( if false then Bool else Bool )
        d472 = ( ( Bool -> Bool ) ∋ ( ( λ x473 -> if false then false else d162 ) ) ) $ ( if true then true else true )
        d475 : if false then if true then Bool else Bool else if true then Bool else Bool
        d475 = ( ( Bool -> Bool ) ∋ ( ( λ x476 -> ( ( Bool -> Bool ) ∋ ( ( λ x477 -> x476 ) ) ) $ ( d329 ) ) ) ) $ ( if d185 then d410 else d408 )
        d478 : if false then if true then Bool else Bool else if false then Bool else Bool
        d478 = if if d274 then d272 else true then if true then false else d214 else if true then false else d420
        d479 : ( ( Set -> Set ) ∋ ( ( λ x480 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d479 = if if d362 then false else false then if d378 then true else false else if d448 then d437 else false
        d481 : ( ( Set -> Set ) ∋ ( ( λ x484 -> ( ( Set -> Set ) ∋ ( ( λ x485 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x482 -> ( ( Bool -> Bool ) ∋ ( ( λ x483 -> x482 ) ) ) $ ( x482 ) ) ) ) $ ( if true then d261 else false )
        d486 : if true then if false then Bool else Bool else if true then Bool else Bool
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x487 -> if true then true else x487 ) ) ) $ ( if d401 then false else d147 )
        d488 : if false then if false then Bool else Bool else if false then Bool else Bool
        d488 = if if false then d15 else false then if d358 then false else false else if d405 then d478 else d38
        d489 : if false then if true then Bool else Bool else if false then Bool else Bool
        d489 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if x490 then x490 else false ) ) ) $ ( if true then true else true )
        d491 : ( ( Set -> Set ) ∋ ( ( λ x492 -> if true then x492 else x492 ) ) ) $ ( if false then Bool else Bool )
        d491 = if if false then true else d302 then if true then d358 else false else if d153 then true else d195
        d493 : ( ( Set -> Set ) ∋ ( ( λ x495 -> ( ( Set -> Set ) ∋ ( ( λ x496 -> x496 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x494 -> if d445 then d464 else x494 ) ) ) $ ( if true then d245 else false )
        d497 : if true then if false then Bool else Bool else if false then Bool else Bool
        d497 = if if d448 then d205 else d10 then if false then d142 else true else if false then false else true
        d498 : ( ( Set -> Set ) ∋ ( ( λ x501 -> if false then x501 else Bool ) ) ) $ ( if false then Bool else Bool )
        d498 = ( ( Bool -> Bool ) ∋ ( ( λ x499 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> false ) ) ) $ ( false ) ) ) ) $ ( if d66 then d339 else true )
        d502 : ( ( Set -> Set ) ∋ ( ( λ x503 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d502 = if if true then false else d88 then if false then d319 else false else if false then d299 else d493
        d504 : if false then if true then Bool else Bool else if true then Bool else Bool
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x505 -> if x505 then x505 else false ) ) ) $ ( if false then d245 else false )
        d506 : ( ( Set -> Set ) ∋ ( ( λ x509 -> ( ( Set -> Set ) ∋ ( ( λ x510 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d506 = ( ( Bool -> Bool ) ∋ ( ( λ x507 -> ( ( Bool -> Bool ) ∋ ( ( λ x508 -> d309 ) ) ) $ ( x507 ) ) ) ) $ ( if d215 then true else d299 )
        d511 : if true then if true then Bool else Bool else if true then Bool else Bool
        d511 = ( ( Bool -> Bool ) ∋ ( ( λ x512 -> if d68 then x512 else x512 ) ) ) $ ( if d294 then true else false )
        d513 : ( ( Set -> Set ) ∋ ( ( λ x515 -> if false then x515 else x515 ) ) ) $ ( if true then Bool else Bool )
        d513 = ( ( Bool -> Bool ) ∋ ( ( λ x514 -> if d134 then true else true ) ) ) $ ( if d88 then true else d241 )
        d516 : ( ( Set -> Set ) ∋ ( ( λ x517 -> ( ( Set -> Set ) ∋ ( ( λ x518 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d516 = if if true then false else d475 then if d424 then true else false else if false then d272 else false
        d519 : if true then if true then Bool else Bool else if false then Bool else Bool
        d519 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x521 -> x521 ) ) ) $ ( true ) ) ) ) $ ( if d284 then true else d415 )
        d522 : ( ( Set -> Set ) ∋ ( ( λ x523 -> if false then Bool else x523 ) ) ) $ ( if false then Bool else Bool )
        d522 = if if false then false else false then if d349 then d293 else true else if d467 then d117 else false
        d524 : ( ( Set -> Set ) ∋ ( ( λ x527 -> if true then Bool else x527 ) ) ) $ ( if false then Bool else Bool )
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x525 -> ( ( Bool -> Bool ) ∋ ( ( λ x526 -> false ) ) ) $ ( x525 ) ) ) ) $ ( if true then false else false )
        d528 : if true then if false then Bool else Bool else if false then Bool else Bool
        d528 = if if d524 then d329 else d170 then if false then true else false else if true then d184 else d307
        d529 : ( ( Set -> Set ) ∋ ( ( λ x532 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d529 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> ( ( Bool -> Bool ) ∋ ( ( λ x531 -> x531 ) ) ) $ ( true ) ) ) ) $ ( if d9 then true else true )
        d533 : if false then if true then Bool else Bool else if false then Bool else Bool
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x534 -> if d199 then d292 else d442 ) ) ) $ ( if false then d358 else false )
        d535 : ( ( Set -> Set ) ∋ ( ( λ x538 -> if false then Bool else x538 ) ) ) $ ( if false then Bool else Bool )
        d535 = ( ( Bool -> Bool ) ∋ ( ( λ x536 -> ( ( Bool -> Bool ) ∋ ( ( λ x537 -> x536 ) ) ) $ ( x536 ) ) ) ) $ ( if false then false else false )
        d539 : ( ( Set -> Set ) ∋ ( ( λ x540 -> ( ( Set -> Set ) ∋ ( ( λ x541 -> Bool ) ) ) $ ( x540 ) ) ) ) $ ( if false then Bool else Bool )
        d539 = if if d48 then d413 else false then if d422 then true else d498 else if d74 then d369 else d374
        d542 : ( ( Set -> Set ) ∋ ( ( λ x543 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d542 = if if false then d15 else true then if false then false else true else if true then false else d280
        d544 : if false then if false then Bool else Bool else if false then Bool else Bool
        d544 = if if true then d528 else d209 then if d489 then d48 else false else if false then true else false
        d545 : if true then if true then Bool else Bool else if true then Bool else Bool
        d545 = if if false then false else d421 then if d110 then d424 else true else if false then d140 else d442
        d546 : if true then if false then Bool else Bool else if false then Bool else Bool
        d546 = if if true then d167 else d151 then if d156 then d381 else d489 else if d413 then false else d475
        d547 : if true then if true then Bool else Bool else if true then Bool else Bool
        d547 = if if true then d415 else d196 then if false then true else false else if d88 then d133 else false
        d548 : if true then if false then Bool else Bool else if false then Bool else Bool
        d548 = if if true then d242 else d132 then if d544 then false else d542 else if d361 then d205 else false
        d549 : if true then if true then Bool else Bool else if false then Bool else Bool
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x551 -> d88 ) ) ) $ ( d422 ) ) ) ) $ ( if d190 then d445 else d256 )
        d552 : ( ( Set -> Set ) ∋ ( ( λ x553 -> if true then x553 else x553 ) ) ) $ ( if true then Bool else Bool )
        d552 = if if true then true else false then if d230 then d547 else d102 else if d174 then false else d5
        d554 : if true then if true then Bool else Bool else if true then Bool else Bool
        d554 = if if d364 then true else true then if d342 then d416 else d133 else if true then d164 else false
        d555 : if true then if false then Bool else Bool else if true then Bool else Bool
        d555 = if if true then false else true then if d497 then d545 else d291 else if d170 then false else true
        d556 : if true then if false then Bool else Bool else if true then Bool else Bool
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x557 -> if x557 then x557 else d80 ) ) ) $ ( if false then d375 else d528 )
        d558 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x561 -> x560 ) ) ) $ ( x560 ) ) ) ) $ ( if false then Bool else Bool )
        d558 = ( ( Bool -> Bool ) ∋ ( ( λ x559 -> if true then x559 else false ) ) ) $ ( if true then false else d63 )
        d562 : ( ( Set -> Set ) ∋ ( ( λ x563 -> if true then x563 else Bool ) ) ) $ ( if false then Bool else Bool )
        d562 = if if d224 then d319 else d213 then if d488 then false else d303 else if false then d277 else false
        d564 : if false then if false then Bool else Bool else if false then Bool else Bool
        d564 = ( ( Bool -> Bool ) ∋ ( ( λ x565 -> ( ( Bool -> Bool ) ∋ ( ( λ x566 -> x565 ) ) ) $ ( d519 ) ) ) ) $ ( if d27 then d372 else d130 )
        d567 : if false then if false then Bool else Bool else if true then Bool else Bool
        d567 = ( ( Bool -> Bool ) ∋ ( ( λ x568 -> if x568 then x568 else x568 ) ) ) $ ( if d93 then true else true )
        d569 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d569 = if if d224 then d302 else true then if false then d352 else d555 else if d397 then d122 else d9
        d571 : if true then if false then Bool else Bool else if true then Bool else Bool
        d571 = if if false then true else false then if false then d361 else false else if true then false else d274
        d572 : ( ( Set -> Set ) ∋ ( ( λ x574 -> if false then x574 else x574 ) ) ) $ ( if true then Bool else Bool )
        d572 = ( ( Bool -> Bool ) ∋ ( ( λ x573 -> if d229 then d167 else x573 ) ) ) $ ( if false then d502 else d167 )
        d575 : ( ( Set -> Set ) ∋ ( ( λ x578 -> ( ( Set -> Set ) ∋ ( ( λ x579 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d575 = ( ( Bool -> Bool ) ∋ ( ( λ x576 -> ( ( Bool -> Bool ) ∋ ( ( λ x577 -> x576 ) ) ) $ ( d130 ) ) ) ) $ ( if true then d68 else true )
        d580 : ( ( Set -> Set ) ∋ ( ( λ x582 -> ( ( Set -> Set ) ∋ ( ( λ x583 -> x583 ) ) ) $ ( x582 ) ) ) ) $ ( if true then Bool else Bool )
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x581 -> if x581 then true else true ) ) ) $ ( if d70 then true else d402 )
        d584 : ( ( Set -> Set ) ∋ ( ( λ x585 -> if true then x585 else x585 ) ) ) $ ( if false then Bool else Bool )
        d584 = if if d284 then d331 else false then if d196 then d498 else false else if d123 then d5 else d569
        d586 : if true then if false then Bool else Bool else if true then Bool else Bool
        d586 = ( ( Bool -> Bool ) ∋ ( ( λ x587 -> ( ( Bool -> Bool ) ∋ ( ( λ x588 -> false ) ) ) $ ( x587 ) ) ) ) $ ( if true then true else false )
        d589 : if false then if true then Bool else Bool else if false then Bool else Bool
        d589 = if if d245 then d349 else false then if true then false else true else if d57 then true else d263
        d590 : if false then if false then Bool else Bool else if false then Bool else Bool
        d590 = ( ( Bool -> Bool ) ∋ ( ( λ x591 -> if d331 then d134 else d196 ) ) ) $ ( if true then false else d307 )
        d592 : ( ( Set -> Set ) ∋ ( ( λ x595 -> ( ( Set -> Set ) ∋ ( ( λ x596 -> x596 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x593 -> ( ( Bool -> Bool ) ∋ ( ( λ x594 -> false ) ) ) $ ( d528 ) ) ) ) $ ( if d294 then false else d33 )
        d597 : ( ( Set -> Set ) ∋ ( ( λ x598 -> ( ( Set -> Set ) ∋ ( ( λ x599 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d597 = if if false then false else d572 then if true then false else false else if false then d309 else true
        d600 : ( ( Set -> Set ) ∋ ( ( λ x601 -> if false then Bool else x601 ) ) ) $ ( if true then Bool else Bool )
        d600 = if if true then d252 else false then if d59 then true else d9 else if d267 then d481 else d467
        d602 : ( ( Set -> Set ) ∋ ( ( λ x604 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d602 = ( ( Bool -> Bool ) ∋ ( ( λ x603 -> if d277 then true else d547 ) ) ) $ ( if true then d154 else true )
        d605 : if true then if true then Bool else Bool else if true then Bool else Bool
        d605 = if if false then true else false then if true then d151 else true else if d357 then d274 else false
        d606 : ( ( Set -> Set ) ∋ ( ( λ x607 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d606 = if if d252 then d361 else d164 then if true then d15 else false else if d48 then true else d602
        d608 : ( ( Set -> Set ) ∋ ( ( λ x609 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d608 = if if false then d91 else false then if false then d364 else true else if true then false else d178
        d610 : ( ( Set -> Set ) ∋ ( ( λ x612 -> ( ( Set -> Set ) ∋ ( ( λ x613 -> x612 ) ) ) $ ( x612 ) ) ) ) $ ( if false then Bool else Bool )
        d610 = ( ( Bool -> Bool ) ∋ ( ( λ x611 -> if true then x611 else true ) ) ) $ ( if d453 then d488 else d432 )
        d614 : ( ( Set -> Set ) ∋ ( ( λ x617 -> ( ( Set -> Set ) ∋ ( ( λ x618 -> Bool ) ) ) $ ( x617 ) ) ) ) $ ( if true then Bool else Bool )
        d614 = ( ( Bool -> Bool ) ∋ ( ( λ x615 -> ( ( Bool -> Bool ) ∋ ( ( λ x616 -> x616 ) ) ) $ ( false ) ) ) ) $ ( if d87 then d327 else false )
        d619 : if true then if false then Bool else Bool else if true then Bool else Bool
        d619 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x621 -> d142 ) ) ) $ ( d303 ) ) ) ) $ ( if d425 then true else d506 )
        d622 : if false then if true then Bool else Bool else if false then Bool else Bool
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x623 -> ( ( Bool -> Bool ) ∋ ( ( λ x624 -> false ) ) ) $ ( d352 ) ) ) ) $ ( if false then false else true )
        d625 : ( ( Set -> Set ) ∋ ( ( λ x626 -> if false then x626 else x626 ) ) ) $ ( if false then Bool else Bool )
        d625 = if if d245 then false else d153 then if false then d408 else d299 else if d187 then false else d497
        d627 : ( ( Set -> Set ) ∋ ( ( λ x630 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d627 = ( ( Bool -> Bool ) ∋ ( ( λ x628 -> ( ( Bool -> Bool ) ∋ ( ( λ x629 -> x629 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d631 : ( ( Set -> Set ) ∋ ( ( λ x632 -> ( ( Set -> Set ) ∋ ( ( λ x633 -> x632 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d631 = if if false then d279 else d448 then if d424 then false else d299 else if true then true else false
        d634 : ( ( Set -> Set ) ∋ ( ( λ x635 -> ( ( Set -> Set ) ∋ ( ( λ x636 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d634 = if if d235 then d533 else d445 then if d68 then false else d76 else if true then d95 else d319
        d637 : ( ( Set -> Set ) ∋ ( ( λ x640 -> ( ( Set -> Set ) ∋ ( ( λ x641 -> x641 ) ) ) $ ( x640 ) ) ) ) $ ( if false then Bool else Bool )
        d637 = ( ( Bool -> Bool ) ∋ ( ( λ x638 -> ( ( Bool -> Bool ) ∋ ( ( λ x639 -> d357 ) ) ) $ ( x638 ) ) ) ) $ ( if true then d129 else d462 )
        d642 : if false then if true then Bool else Bool else if false then Bool else Bool
        d642 = if if true then d48 else true then if d516 then d397 else d357 else if true then d488 else true
        d643 : if true then if false then Bool else Bool else if true then Bool else Bool
        d643 = ( ( Bool -> Bool ) ∋ ( ( λ x644 -> if d302 then d547 else true ) ) ) $ ( if d324 then d205 else true )
        d645 : if false then if false then Bool else Bool else if true then Bool else Bool
        d645 = ( ( Bool -> Bool ) ∋ ( ( λ x646 -> if x646 then d83 else d159 ) ) ) $ ( if false then true else d36 )
        d647 : if true then if false then Bool else Bool else if true then Bool else Bool
        d647 = ( ( Bool -> Bool ) ∋ ( ( λ x648 -> ( ( Bool -> Bool ) ∋ ( ( λ x649 -> false ) ) ) $ ( d479 ) ) ) ) $ ( if d339 then d327 else d442 )
        d650 : if false then if true then Bool else Bool else if false then Bool else Bool
        d650 = ( ( Bool -> Bool ) ∋ ( ( λ x651 -> if d457 then x651 else d294 ) ) ) $ ( if false then d261 else d605 )
        d652 : if true then if true then Bool else Bool else if false then Bool else Bool
        d652 = if if d369 then d366 else d214 then if true then d597 else false else if true then true else true
        d653 : ( ( Set -> Set ) ∋ ( ( λ x654 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d653 = if if d195 then d74 else d369 then if d564 then true else false else if d209 then d352 else d49
        d655 : if false then if true then Bool else Bool else if false then Bool else Bool
        d655 = ( ( Bool -> Bool ) ∋ ( ( λ x656 -> ( ( Bool -> Bool ) ∋ ( ( λ x657 -> true ) ) ) $ ( x656 ) ) ) ) $ ( if true then false else false )
        d658 : if false then if false then Bool else Bool else if false then Bool else Bool
        d658 = ( ( Bool -> Bool ) ∋ ( ( λ x659 -> ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( true ) ) ) ) $ ( if d502 then false else false )
        d661 : ( ( Set -> Set ) ∋ ( ( λ x662 -> ( ( Set -> Set ) ∋ ( ( λ x663 -> x663 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d661 = if if false then d421 else false then if false then true else false else if false then d110 else false
        d664 : if false then if false then Bool else Bool else if false then Bool else Bool
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x665 -> ( ( Bool -> Bool ) ∋ ( ( λ x666 -> false ) ) ) $ ( d74 ) ) ) ) $ ( if true then false else true )
        d667 : ( ( Set -> Set ) ∋ ( ( λ x670 -> ( ( Set -> Set ) ∋ ( ( λ x671 -> x670 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d667 = ( ( Bool -> Bool ) ∋ ( ( λ x668 -> ( ( Bool -> Bool ) ∋ ( ( λ x669 -> false ) ) ) $ ( d432 ) ) ) ) $ ( if false then d195 else true )
        d672 : if true then if false then Bool else Bool else if false then Bool else Bool
        d672 = if if d95 then d229 else d242 then if d279 then d230 else d299 else if true then d224 else true
        d673 : ( ( Set -> Set ) ∋ ( ( λ x675 -> if false then x675 else x675 ) ) ) $ ( if true then Bool else Bool )
        d673 = ( ( Bool -> Bool ) ∋ ( ( λ x674 -> if d417 then d386 else x674 ) ) ) $ ( if d289 then d136 else false )
        d676 : if false then if true then Bool else Bool else if true then Bool else Bool
        d676 = ( ( Bool -> Bool ) ∋ ( ( λ x677 -> ( ( Bool -> Bool ) ∋ ( ( λ x678 -> true ) ) ) $ ( false ) ) ) ) $ ( if d162 then false else true )
        d679 : ( ( Set -> Set ) ∋ ( ( λ x681 -> ( ( Set -> Set ) ∋ ( ( λ x682 -> x682 ) ) ) $ ( x681 ) ) ) ) $ ( if false then Bool else Bool )
        d679 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if false then false else d475 ) ) ) $ ( if true then d277 else d105 )
        d683 : if true then if false then Bool else Bool else if true then Bool else Bool
        d683 = ( ( Bool -> Bool ) ∋ ( ( λ x684 -> if x684 then x684 else x684 ) ) ) $ ( if true then true else true )
        d685 : ( ( Set -> Set ) ∋ ( ( λ x686 -> ( ( Set -> Set ) ∋ ( ( λ x687 -> x687 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d685 = if if d284 then d324 else d284 then if true then d606 else d592 else if true then false else false
        d688 : ( ( Set -> Set ) ∋ ( ( λ x690 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d688 = ( ( Bool -> Bool ) ∋ ( ( λ x689 -> if false then false else d529 ) ) ) $ ( if d27 then true else d486 )
        d691 : if true then if false then Bool else Bool else if false then Bool else Bool
        d691 = ( ( Bool -> Bool ) ∋ ( ( λ x692 -> ( ( Bool -> Bool ) ∋ ( ( λ x693 -> false ) ) ) $ ( true ) ) ) ) $ ( if d572 then d602 else d679 )
        d694 : ( ( Set -> Set ) ∋ ( ( λ x695 -> ( ( Set -> Set ) ∋ ( ( λ x696 -> Bool ) ) ) $ ( x695 ) ) ) ) $ ( if true then Bool else Bool )
        d694 = if if d110 then true else d459 then if d87 then d286 else true else if true then d303 else false
        d697 : ( ( Set -> Set ) ∋ ( ( λ x698 -> ( ( Set -> Set ) ∋ ( ( λ x699 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d697 = if if d464 then true else d516 then if d220 then false else d502 else if false then d672 else d302
        d700 : ( ( Set -> Set ) ∋ ( ( λ x702 -> ( ( Set -> Set ) ∋ ( ( λ x703 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d700 = ( ( Bool -> Bool ) ∋ ( ( λ x701 -> if true then true else true ) ) ) $ ( if d504 then false else false )
        d704 : if true then if false then Bool else Bool else if true then Bool else Bool
        d704 = if if false then true else false then if true then d575 else false else if true then true else d252
        d705 : if true then if true then Bool else Bool else if false then Bool else Bool
        d705 = ( ( Bool -> Bool ) ∋ ( ( λ x706 -> if x706 then x706 else x706 ) ) ) $ ( if false then true else true )
        d707 : if true then if true then Bool else Bool else if true then Bool else Bool
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x708 -> if x708 then x708 else d95 ) ) ) $ ( if true then d22 else true )
        d709 : ( ( Set -> Set ) ∋ ( ( λ x712 -> ( ( Set -> Set ) ∋ ( ( λ x713 -> x713 ) ) ) $ ( x712 ) ) ) ) $ ( if true then Bool else Bool )
        d709 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( ( Bool -> Bool ) ∋ ( ( λ x711 -> d625 ) ) ) $ ( x710 ) ) ) ) $ ( if false then d544 else true )
        d714 : if true then if false then Bool else Bool else if false then Bool else Bool
        d714 = ( ( Bool -> Bool ) ∋ ( ( λ x715 -> if d549 then x715 else d434 ) ) ) $ ( if true then d513 else false )
        d716 : if true then if true then Bool else Bool else if true then Bool else Bool
        d716 = if if d110 then true else d688 then if d245 then true else d597 else if true then false else d66
        d717 : if true then if true then Bool else Bool else if false then Bool else Bool
        d717 = if if true then d329 else d70 then if d410 then true else false else if false then d299 else false
        d718 : ( ( Set -> Set ) ∋ ( ( λ x719 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d718 = if if d697 then true else d567 then if true then d697 else true else if d38 then false else d44
        d720 : if true then if true then Bool else Bool else if true then Bool else Bool
        d720 = if if false then true else d489 then if false then false else true else if false then d292 else true
        d721 : ( ( Set -> Set ) ∋ ( ( λ x724 -> if false then Bool else x724 ) ) ) $ ( if true then Bool else Bool )
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x722 -> ( ( Bool -> Bool ) ∋ ( ( λ x723 -> false ) ) ) $ ( x722 ) ) ) ) $ ( if false then d381 else d625 )
        d725 : ( ( Set -> Set ) ∋ ( ( λ x728 -> ( ( Set -> Set ) ∋ ( ( λ x729 -> Bool ) ) ) $ ( x728 ) ) ) ) $ ( if false then Bool else Bool )
        d725 = ( ( Bool -> Bool ) ∋ ( ( λ x726 -> ( ( Bool -> Bool ) ∋ ( ( λ x727 -> true ) ) ) $ ( x726 ) ) ) ) $ ( if true then true else true )
        d730 : ( ( Set -> Set ) ∋ ( ( λ x731 -> ( ( Set -> Set ) ∋ ( ( λ x732 -> Bool ) ) ) $ ( x731 ) ) ) ) $ ( if false then Bool else Bool )
        d730 = if if false then true else true then if d236 then d218 else d467 else if d694 then false else false
        d733 : if false then if false then Bool else Bool else if false then Bool else Bool
        d733 = ( ( Bool -> Bool ) ∋ ( ( λ x734 -> ( ( Bool -> Bool ) ∋ ( ( λ x735 -> x734 ) ) ) $ ( d36 ) ) ) ) $ ( if d533 then d357 else false )
        d736 : if true then if false then Bool else Bool else if true then Bool else Bool
        d736 = ( ( Bool -> Bool ) ∋ ( ( λ x737 -> if false then d294 else d714 ) ) ) $ ( if false then d504 else d535 )
        d738 : ( ( Set -> Set ) ∋ ( ( λ x739 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> x739 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d738 = if if false then d279 else d524 then if d716 then false else d42 else if true then d513 else true
        d741 : ( ( Set -> Set ) ∋ ( ( λ x742 -> if false then x742 else Bool ) ) ) $ ( if false then Bool else Bool )
        d741 = if if d182 then false else true then if d445 then d184 else d68 else if false then d212 else d95
        d743 : if false then if false then Bool else Bool else if false then Bool else Bool
        d743 = if if d457 then true else true then if d151 then true else true else if d261 then true else d279
        d744 : if false then if true then Bool else Bool else if true then Bool else Bool
        d744 = if if d676 then false else d404 then if d408 then true else d303 else if false then false else d650
        d745 : if true then if false then Bool else Bool else if false then Bool else Bool
        d745 = if if d481 then false else false then if true then d498 else true else if true then d206 else true
        d746 : ( ( Set -> Set ) ∋ ( ( λ x747 -> ( ( Set -> Set ) ∋ ( ( λ x748 -> x748 ) ) ) $ ( x747 ) ) ) ) $ ( if false then Bool else Bool )
        d746 = if if d744 then false else d720 then if d535 then d196 else false else if false then true else d608
        d749 : if false then if true then Bool else Bool else if true then Bool else Bool
        d749 = if if false then true else d513 then if d1 then true else true else if false then false else false
        d750 : if true then if false then Bool else Bool else if false then Bool else Bool
        d750 = ( ( Bool -> Bool ) ∋ ( ( λ x751 -> ( ( Bool -> Bool ) ∋ ( ( λ x752 -> x751 ) ) ) $ ( x751 ) ) ) ) $ ( if false then true else d459 )
        d753 : ( ( Set -> Set ) ∋ ( ( λ x755 -> ( ( Set -> Set ) ∋ ( ( λ x756 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d753 = ( ( Bool -> Bool ) ∋ ( ( λ x754 -> if false then true else true ) ) ) $ ( if d502 then d717 else false )
        d757 : ( ( Set -> Set ) ∋ ( ( λ x758 -> ( ( Set -> Set ) ∋ ( ( λ x759 -> Bool ) ) ) $ ( x758 ) ) ) ) $ ( if true then Bool else Bool )
        d757 = if if true then false else d716 then if d555 then false else d667 else if false then d292 else false
        d760 : if false then if false then Bool else Bool else if false then Bool else Bool
        d760 = if if d199 then d102 else true then if false then d378 else d105 else if d252 then d109 else true
        d761 : if true then if false then Bool else Bool else if true then Bool else Bool
        d761 = if if d154 then d319 else false then if d196 then false else d425 else if true then d716 else false
        d762 : ( ( Set -> Set ) ∋ ( ( λ x765 -> if false then Bool else x765 ) ) ) $ ( if true then Bool else Bool )
        d762 = ( ( Bool -> Bool ) ∋ ( ( λ x763 -> ( ( Bool -> Bool ) ∋ ( ( λ x764 -> true ) ) ) $ ( d614 ) ) ) ) $ ( if true then true else false )
        d766 : ( ( Set -> Set ) ∋ ( ( λ x767 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d766 = if if d592 then d448 else d361 then if d653 then false else false else if false then d30 else true
        d768 : if true then if false then Bool else Bool else if false then Bool else Bool
        d768 = if if true then d362 else d95 then if d167 then d650 else d74 else if d655 then true else true
        d769 : ( ( Set -> Set ) ∋ ( ( λ x772 -> if false then Bool else x772 ) ) ) $ ( if true then Bool else Bool )
        d769 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( Bool -> Bool ) ∋ ( ( λ x771 -> d224 ) ) ) $ ( false ) ) ) ) $ ( if d327 then d57 else d132 )
        d773 : if true then if true then Bool else Bool else if false then Bool else Bool
        d773 = ( ( Bool -> Bool ) ∋ ( ( λ x774 -> ( ( Bool -> Bool ) ∋ ( ( λ x775 -> false ) ) ) $ ( x774 ) ) ) ) $ ( if d741 then d592 else false )
        d776 : ( ( Set -> Set ) ∋ ( ( λ x779 -> if false then x779 else x779 ) ) ) $ ( if true then Bool else Bool )
        d776 = ( ( Bool -> Bool ) ∋ ( ( λ x777 -> ( ( Bool -> Bool ) ∋ ( ( λ x778 -> d741 ) ) ) $ ( false ) ) ) ) $ ( if true then d462 else true )
        d780 : if true then if true then Bool else Bool else if false then Bool else Bool
        d780 = if if d215 then false else d309 then if d546 then true else d252 else if true then true else d59
        d781 : if false then if true then Bool else Bool else if true then Bool else Bool
        d781 = ( ( Bool -> Bool ) ∋ ( ( λ x782 -> ( ( Bool -> Bool ) ∋ ( ( λ x783 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else d88 )
        d784 : ( ( Set -> Set ) ∋ ( ( λ x787 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d784 = ( ( Bool -> Bool ) ∋ ( ( λ x785 -> ( ( Bool -> Bool ) ∋ ( ( λ x786 -> d91 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d725 )
        d788 : ( ( Set -> Set ) ∋ ( ( λ x789 -> if false then x789 else x789 ) ) ) $ ( if true then Bool else Bool )
        d788 = if if true then true else d491 then if d272 then d88 else false else if d372 then d374 else true
        d790 : ( ( Set -> Set ) ∋ ( ( λ x791 -> ( ( Set -> Set ) ∋ ( ( λ x792 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d790 = if if d673 then d209 else true then if false then d733 else false else if false then false else d610
        d793 : if false then if false then Bool else Bool else if false then Bool else Bool
        d793 = if if d571 then false else true then if d428 then false else true else if d397 then false else false
        d794 : ( ( Set -> Set ) ∋ ( ( λ x797 -> if false then x797 else x797 ) ) ) $ ( if true then Bool else Bool )
        d794 = ( ( Bool -> Bool ) ∋ ( ( λ x795 -> ( ( Bool -> Bool ) ∋ ( ( λ x796 -> d528 ) ) ) $ ( d402 ) ) ) ) $ ( if false then d213 else true )
        d798 : if true then if false then Bool else Bool else if false then Bool else Bool
        d798 = if if d213 then true else d123 then if d413 then d542 else false else if false then d773 else true
        d799 : ( ( Set -> Set ) ∋ ( ( λ x800 -> ( ( Set -> Set ) ∋ ( ( λ x801 -> x801 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d799 = if if d645 then d610 else false then if true then d55 else d605 else if false then d738 else false
        d802 : if true then if false then Bool else Bool else if true then Bool else Bool
        d802 = ( ( Bool -> Bool ) ∋ ( ( λ x803 -> ( ( Bool -> Bool ) ∋ ( ( λ x804 -> d655 ) ) ) $ ( x803 ) ) ) ) $ ( if d545 then d608 else false )
        d805 : ( ( Set -> Set ) ∋ ( ( λ x807 -> ( ( Set -> Set ) ∋ ( ( λ x808 -> Bool ) ) ) $ ( x807 ) ) ) ) $ ( if false then Bool else Bool )
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x806 -> if d634 then x806 else x806 ) ) ) $ ( if d319 then d622 else d472 )
        d809 : ( ( Set -> Set ) ∋ ( ( λ x810 -> ( ( Set -> Set ) ∋ ( ( λ x811 -> Bool ) ) ) $ ( x810 ) ) ) ) $ ( if true then Bool else Bool )
        d809 = if if false then false else d401 then if true then d358 else d130 else if d650 then true else true
        d812 : if false then if false then Bool else Bool else if true then Bool else Bool
        d812 = ( ( Bool -> Bool ) ∋ ( ( λ x813 -> ( ( Bool -> Bool ) ∋ ( ( λ x814 -> d329 ) ) ) $ ( false ) ) ) ) $ ( if d761 then d730 else true )
        d815 : ( ( Set -> Set ) ∋ ( ( λ x816 -> ( ( Set -> Set ) ∋ ( ( λ x817 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d815 = if if false then d162 else d683 then if false then false else true else if d602 then false else false
        d818 : if true then if true then Bool else Bool else if false then Bool else Bool
        d818 = ( ( Bool -> Bool ) ∋ ( ( λ x819 -> if x819 then d352 else false ) ) ) $ ( if true then false else d159 )
        d820 : if false then if false then Bool else Bool else if true then Bool else Bool
        d820 = ( ( Bool -> Bool ) ∋ ( ( λ x821 -> if true then false else false ) ) ) $ ( if false then false else false )
        d822 : ( ( Set -> Set ) ∋ ( ( λ x823 -> if true then x823 else x823 ) ) ) $ ( if false then Bool else Bool )
        d822 = if if false then false else true then if d815 then true else false else if d177 then d549 else true
        d824 : ( ( Set -> Set ) ∋ ( ( λ x827 -> if true then Bool else x827 ) ) ) $ ( if true then Bool else Bool )
        d824 = ( ( Bool -> Bool ) ∋ ( ( λ x825 -> ( ( Bool -> Bool ) ∋ ( ( λ x826 -> d753 ) ) ) $ ( x825 ) ) ) ) $ ( if d709 then d167 else d506 )
        d828 : ( ( Set -> Set ) ∋ ( ( λ x831 -> ( ( Set -> Set ) ∋ ( ( λ x832 -> Bool ) ) ) $ ( x831 ) ) ) ) $ ( if true then Bool else Bool )
        d828 = ( ( Bool -> Bool ) ∋ ( ( λ x829 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> x830 ) ) ) $ ( d19 ) ) ) ) $ ( if d134 then false else false )
        d833 : ( ( Set -> Set ) ∋ ( ( λ x836 -> ( ( Set -> Set ) ∋ ( ( λ x837 -> Bool ) ) ) $ ( x836 ) ) ) ) $ ( if true then Bool else Bool )
        d833 = ( ( Bool -> Bool ) ∋ ( ( λ x834 -> ( ( Bool -> Bool ) ∋ ( ( λ x835 -> true ) ) ) $ ( d705 ) ) ) ) $ ( if d504 then d248 else d132 )
        d838 : if true then if false then Bool else Bool else if true then Bool else Bool
        d838 = ( ( Bool -> Bool ) ∋ ( ( λ x839 -> if d586 then d218 else d608 ) ) ) $ ( if false then d820 else d549 )
        d840 : if true then if false then Bool else Bool else if true then Bool else Bool
        d840 = if if false then d274 else false then if true then false else d66 else if d105 then d19 else d66
        d841 : ( ( Set -> Set ) ∋ ( ( λ x843 -> ( ( Set -> Set ) ∋ ( ( λ x844 -> Bool ) ) ) $ ( x843 ) ) ) ) $ ( if true then Bool else Bool )
        d841 = ( ( Bool -> Bool ) ∋ ( ( λ x842 -> if true then d721 else d187 ) ) ) $ ( if false then d130 else false )
        d845 : ( ( Set -> Set ) ∋ ( ( λ x846 -> ( ( Set -> Set ) ∋ ( ( λ x847 -> Bool ) ) ) $ ( x846 ) ) ) ) $ ( if false then Bool else Bool )
        d845 = if if d154 then false else true then if true then d812 else d315 else if true then d793 else true
        d848 : if false then if false then Bool else Bool else if true then Bool else Bool
        d848 = if if d709 then false else d768 then if false then true else d672 else if d129 then true else true
        d849 : ( ( Set -> Set ) ∋ ( ( λ x850 -> if false then Bool else x850 ) ) ) $ ( if true then Bool else Bool )
        d849 = if if false then d655 else true then if false then true else d422 else if false then true else d283
        d851 : ( ( Set -> Set ) ∋ ( ( λ x852 -> if false then Bool else x852 ) ) ) $ ( if true then Bool else Bool )
        d851 = if if false then true else d1 then if d252 then d688 else d401 else if d766 then d478 else d289
        d853 : ( ( Set -> Set ) ∋ ( ( λ x856 -> ( ( Set -> Set ) ∋ ( ( λ x857 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d853 = ( ( Bool -> Bool ) ∋ ( ( λ x854 -> ( ( Bool -> Bool ) ∋ ( ( λ x855 -> d600 ) ) ) $ ( true ) ) ) ) $ ( if d319 then false else d564 )
        d858 : ( ( Set -> Set ) ∋ ( ( λ x859 -> ( ( Set -> Set ) ∋ ( ( λ x860 -> Bool ) ) ) $ ( x859 ) ) ) ) $ ( if false then Bool else Bool )
        d858 = if if false then d697 else d589 then if d110 then false else true else if d352 then d799 else d248
        d861 : ( ( Set -> Set ) ∋ ( ( λ x862 -> if true then x862 else Bool ) ) ) $ ( if true then Bool else Bool )
        d861 = if if d297 then true else d324 then if d274 then false else true else if d330 then true else false
        d863 : ( ( Set -> Set ) ∋ ( ( λ x866 -> ( ( Set -> Set ) ∋ ( ( λ x867 -> x866 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d863 = ( ( Bool -> Bool ) ∋ ( ( λ x864 -> ( ( Bool -> Bool ) ∋ ( ( λ x865 -> x864 ) ) ) $ ( d841 ) ) ) ) $ ( if false then true else d76 )
        d868 : if false then if false then Bool else Bool else if false then Bool else Bool
        d868 = ( ( Bool -> Bool ) ∋ ( ( λ x869 -> if d840 then x869 else true ) ) ) $ ( if d292 then false else d472 )
        d870 : if false then if false then Bool else Bool else if true then Bool else Bool
        d870 = if if d375 then d87 else true then if false then d539 else false else if false then d584 else true
        d871 : if true then if true then Bool else Bool else if true then Bool else Bool
        d871 = ( ( Bool -> Bool ) ∋ ( ( λ x872 -> if x872 then x872 else x872 ) ) ) $ ( if true then d533 else true )
        d873 : if true then if false then Bool else Bool else if true then Bool else Bool
        d873 = ( ( Bool -> Bool ) ∋ ( ( λ x874 -> if x874 then false else false ) ) ) $ ( if d177 then d738 else d802 )
        d875 : if true then if false then Bool else Bool else if false then Bool else Bool
        d875 = ( ( Bool -> Bool ) ∋ ( ( λ x876 -> if x876 then true else x876 ) ) ) $ ( if d769 then d572 else d248 )
        d877 : if true then if false then Bool else Bool else if true then Bool else Bool
        d877 = ( ( Bool -> Bool ) ∋ ( ( λ x878 -> if false then d199 else true ) ) ) $ ( if d535 then d131 else d584 )
        d879 : ( ( Set -> Set ) ∋ ( ( λ x881 -> ( ( Set -> Set ) ∋ ( ( λ x882 -> x881 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d879 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> if d262 then d416 else true ) ) ) $ ( if d714 then false else true )
        d883 : ( ( Set -> Set ) ∋ ( ( λ x885 -> ( ( Set -> Set ) ∋ ( ( λ x886 -> Bool ) ) ) $ ( x885 ) ) ) ) $ ( if true then Bool else Bool )
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x884 -> if x884 then d445 else d809 ) ) ) $ ( if false then d27 else false )
        d887 : if true then if true then Bool else Bool else if true then Bool else Bool
        d887 = ( ( Bool -> Bool ) ∋ ( ( λ x888 -> ( ( Bool -> Bool ) ∋ ( ( λ x889 -> d643 ) ) ) $ ( false ) ) ) ) $ ( if d134 then false else false )
        d890 : if false then if true then Bool else Bool else if false then Bool else Bool
        d890 = ( ( Bool -> Bool ) ∋ ( ( λ x891 -> ( ( Bool -> Bool ) ∋ ( ( λ x892 -> false ) ) ) $ ( true ) ) ) ) $ ( if d653 then false else d36 )
        d893 : ( ( Set -> Set ) ∋ ( ( λ x894 -> ( ( Set -> Set ) ∋ ( ( λ x895 -> x894 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d893 = if if d890 then true else d174 then if true then false else d167 else if d102 then d434 else true
        d896 : ( ( Set -> Set ) ∋ ( ( λ x898 -> ( ( Set -> Set ) ∋ ( ( λ x899 -> x898 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d896 = ( ( Bool -> Bool ) ∋ ( ( λ x897 -> if true then true else false ) ) ) $ ( if d781 then false else d511 )
        d900 : ( ( Set -> Set ) ∋ ( ( λ x901 -> ( ( Set -> Set ) ∋ ( ( λ x902 -> x901 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d900 = if if d312 then true else false then if d542 then d818 else d650 else if d600 then d297 else true
        d903 : if false then if false then Bool else Bool else if false then Bool else Bool
        d903 = if if d187 then true else true then if d572 then d569 else false else if d502 then d63 else false
        d904 : ( ( Set -> Set ) ∋ ( ( λ x907 -> if false then x907 else x907 ) ) ) $ ( if false then Bool else Bool )
        d904 = ( ( Bool -> Bool ) ∋ ( ( λ x905 -> ( ( Bool -> Bool ) ∋ ( ( λ x906 -> false ) ) ) $ ( x905 ) ) ) ) $ ( if d488 then false else true )
        d908 : if false then if true then Bool else Bool else if false then Bool else Bool
        d908 = ( ( Bool -> Bool ) ∋ ( ( λ x909 -> if false then x909 else d182 ) ) ) $ ( if true then false else d54 )
        d910 : ( ( Set -> Set ) ∋ ( ( λ x911 -> ( ( Set -> Set ) ∋ ( ( λ x912 -> Bool ) ) ) $ ( x911 ) ) ) ) $ ( if false then Bool else Bool )
        d910 = if if false then true else false then if false then d284 else true else if true then d605 else d707
        d913 : if true then if false then Bool else Bool else if false then Bool else Bool
        d913 = if if true then d631 else d327 then if true then false else d773 else if d545 then true else false
        d914 : if true then if true then Bool else Bool else if true then Bool else Bool
        d914 = if if true then d147 else true then if false then d547 else d352 else if d679 then d154 else true
        d915 : if true then if false then Bool else Bool else if false then Bool else Bool
        d915 = if if false then d890 else d280 then if d849 then d584 else false else if d352 then true else true
        d916 : ( ( Set -> Set ) ∋ ( ( λ x919 -> if false then x919 else Bool ) ) ) $ ( if false then Bool else Bool )
        d916 = ( ( Bool -> Bool ) ∋ ( ( λ x917 -> ( ( Bool -> Bool ) ∋ ( ( λ x918 -> true ) ) ) $ ( x917 ) ) ) ) $ ( if d780 then d610 else d685 )
        d920 : ( ( Set -> Set ) ∋ ( ( λ x922 -> if true then Bool else x922 ) ) ) $ ( if false then Bool else Bool )
        d920 = ( ( Bool -> Bool ) ∋ ( ( λ x921 -> if x921 then d744 else x921 ) ) ) $ ( if true then false else true )
        d923 : ( ( Set -> Set ) ∋ ( ( λ x926 -> if false then x926 else x926 ) ) ) $ ( if true then Bool else Bool )
        d923 = ( ( Bool -> Bool ) ∋ ( ( λ x924 -> ( ( Bool -> Bool ) ∋ ( ( λ x925 -> x925 ) ) ) $ ( x924 ) ) ) ) $ ( if false then true else false )
        d927 : ( ( Set -> Set ) ∋ ( ( λ x930 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d927 = ( ( Bool -> Bool ) ∋ ( ( λ x928 -> ( ( Bool -> Bool ) ∋ ( ( λ x929 -> d312 ) ) ) $ ( d38 ) ) ) ) $ ( if d245 then true else d303 )
        d931 : ( ( Set -> Set ) ∋ ( ( λ x932 -> if false then x932 else x932 ) ) ) $ ( if true then Bool else Bool )
        d931 = if if d352 then d397 else d528 then if d870 then true else d558 else if false then d280 else true
        d933 : if false then if true then Bool else Bool else if false then Bool else Bool
        d933 = if if d627 then false else false then if d920 then false else d631 else if d420 then d467 else d904
        d934 : ( ( Set -> Set ) ∋ ( ( λ x935 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d934 = if if d491 then d236 else d162 then if d424 then d263 else d504 else if d284 then d327 else true
        d936 : ( ( Set -> Set ) ∋ ( ( λ x938 -> if false then x938 else x938 ) ) ) $ ( if true then Bool else Bool )
        d936 = ( ( Bool -> Bool ) ∋ ( ( λ x937 -> if x937 then false else d114 ) ) ) $ ( if false then true else d274 )
        d939 : if false then if true then Bool else Bool else if false then Bool else Bool
        d939 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> ( ( Bool -> Bool ) ∋ ( ( λ x941 -> false ) ) ) $ ( d927 ) ) ) ) $ ( if d136 then d705 else false )
        d942 : ( ( Set -> Set ) ∋ ( ( λ x945 -> ( ( Set -> Set ) ∋ ( ( λ x946 -> x945 ) ) ) $ ( x945 ) ) ) ) $ ( if false then Bool else Bool )
        d942 = ( ( Bool -> Bool ) ∋ ( ( λ x943 -> ( ( Bool -> Bool ) ∋ ( ( λ x944 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d1 else d547 )
        d947 : ( ( Set -> Set ) ∋ ( ( λ x948 -> ( ( Set -> Set ) ∋ ( ( λ x949 -> x949 ) ) ) $ ( x948 ) ) ) ) $ ( if true then Bool else Bool )
        d947 = if if false then true else d196 then if false then false else d470 else if false then false else d475
        d950 : if true then if true then Bool else Bool else if false then Bool else Bool
        d950 = if if d781 then true else d506 then if true then d327 else d164 else if true then false else d214
        d951 : if true then if false then Bool else Bool else if true then Bool else Bool
        d951 = if if false then d762 else d80 then if true then d209 else d828 else if d195 then d725 else false
        d952 : ( ( Set -> Set ) ∋ ( ( λ x955 -> if true then x955 else Bool ) ) ) $ ( if false then Bool else Bool )
        d952 = ( ( Bool -> Bool ) ∋ ( ( λ x953 -> ( ( Bool -> Bool ) ∋ ( ( λ x954 -> true ) ) ) $ ( d214 ) ) ) ) $ ( if d824 then d162 else d704 )
        d956 : if false then if false then Bool else Bool else if true then Bool else Bool
        d956 = ( ( Bool -> Bool ) ∋ ( ( λ x957 -> if true then x957 else x957 ) ) ) $ ( if true then true else d402 )
        d958 : ( ( Set -> Set ) ∋ ( ( λ x961 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d958 = ( ( Bool -> Bool ) ∋ ( ( λ x959 -> ( ( Bool -> Bool ) ∋ ( ( λ x960 -> d519 ) ) ) $ ( x959 ) ) ) ) $ ( if true then true else false )
        d962 : if false then if false then Bool else Bool else if false then Bool else Bool
        d962 = ( ( Bool -> Bool ) ∋ ( ( λ x963 -> ( ( Bool -> Bool ) ∋ ( ( λ x964 -> d185 ) ) ) $ ( true ) ) ) ) $ ( if d33 then true else false )
        d965 : ( ( Set -> Set ) ∋ ( ( λ x968 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d965 = ( ( Bool -> Bool ) ∋ ( ( λ x966 -> ( ( Bool -> Bool ) ∋ ( ( λ x967 -> true ) ) ) $ ( true ) ) ) ) $ ( if d828 then false else false )
        d969 : if true then if true then Bool else Bool else if true then Bool else Bool
        d969 = if if d833 then d66 else true then if false then false else true else if true then d610 else true
        d970 : if true then if true then Bool else Bool else if true then Bool else Bool
        d970 = if if true then d619 else true then if d841 then d845 else false else if d956 then d462 else true
        d971 : ( ( Set -> Set ) ∋ ( ( λ x973 -> ( ( Set -> Set ) ∋ ( ( λ x974 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d971 = ( ( Bool -> Bool ) ∋ ( ( λ x972 -> if d33 then x972 else x972 ) ) ) $ ( if true then false else d307 )
        d975 : if true then if true then Bool else Bool else if true then Bool else Bool
        d975 = ( ( Bool -> Bool ) ∋ ( ( λ x976 -> ( ( Bool -> Bool ) ∋ ( ( λ x977 -> d820 ) ) ) $ ( x976 ) ) ) ) $ ( if d645 then d140 else true )
        d978 : ( ( Set -> Set ) ∋ ( ( λ x979 -> ( ( Set -> Set ) ∋ ( ( λ x980 -> Bool ) ) ) $ ( x979 ) ) ) ) $ ( if false then Bool else Bool )
        d978 = if if false then false else d863 then if d154 then d936 else true else if true then true else false
        d981 : if true then if true then Bool else Bool else if true then Bool else Bool
        d981 = if if false then d873 else false then if d714 then d404 else d768 else if d242 then d109 else d9
        d982 : ( ( Set -> Set ) ∋ ( ( λ x985 -> if false then x985 else Bool ) ) ) $ ( if true then Bool else Bool )
        d982 = ( ( Bool -> Bool ) ∋ ( ( λ x983 -> ( ( Bool -> Bool ) ∋ ( ( λ x984 -> false ) ) ) $ ( d519 ) ) ) ) $ ( if d132 then false else true )
        d986 : if true then if false then Bool else Bool else if true then Bool else Bool
        d986 = if if d637 then d498 else false then if d133 then false else false else if true then true else d1
        d987 : if false then if true then Bool else Bool else if true then Bool else Bool
        d987 = ( ( Bool -> Bool ) ∋ ( ( λ x988 -> if d75 then d893 else x988 ) ) ) $ ( if d519 then d57 else d602 )
        d989 : if true then if true then Bool else Bool else if false then Bool else Bool
        d989 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if true then x990 else false ) ) ) $ ( if d685 then false else d516 )
        d991 : ( ( Set -> Set ) ∋ ( ( λ x992 -> if true then x992 else x992 ) ) ) $ ( if true then Bool else Bool )
        d991 = if if false then true else false then if d361 then d54 else d122 else if d970 then false else false
        d993 : ( ( Set -> Set ) ∋ ( ( λ x994 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d993 = if if false then false else true then if d292 then d547 else true else if true then d548 else d539
        d995 : ( ( Set -> Set ) ∋ ( ( λ x996 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d995 = if if d220 then false else d489 then if false then false else false else if d329 then d950 else false
        d997 : ( ( Set -> Set ) ∋ ( ( λ x998 -> ( ( Set -> Set ) ∋ ( ( λ x999 -> Bool ) ) ) $ ( x998 ) ) ) ) $ ( if false then Bool else Bool )
        d997 = if if false then d87 else true then if d910 then false else false else if false then d962 else false
        d1000 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x1001 -> ( ( Bool -> Bool ) ∋ ( ( λ x1002 -> false ) ) ) $ ( d309 ) ) ) ) $ ( if d982 then d71 else true )
        d1003 : ( ( Set -> Set ) ∋ ( ( λ x1004 -> ( ( Set -> Set ) ∋ ( ( λ x1005 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1003 = if if d299 then false else d497 then if true then d920 else d292 else if true then false else d962
        d1006 : ( ( Set -> Set ) ∋ ( ( λ x1007 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1006 = if if false then true else false then if d513 then d529 else false else if false then false else d556
        d1008 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1008 = ( ( Bool -> Bool ) ∋ ( ( λ x1009 -> ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> d241 ) ) ) $ ( x1009 ) ) ) ) $ ( if false then d673 else true )
        d1011 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1011 = if if false then d562 else d529 then if false then true else false else if true then d361 else d205
        d1012 : ( ( Set -> Set ) ∋ ( ( λ x1013 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1012 = if if d117 then d776 else d93 then if d277 then false else false else if false then true else false
        d1014 : ( ( Set -> Set ) ∋ ( ( λ x1017 -> if false then x1017 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1014 = ( ( Bool -> Bool ) ∋ ( ( λ x1015 -> ( ( Bool -> Bool ) ∋ ( ( λ x1016 -> d1011 ) ) ) $ ( x1015 ) ) ) ) $ ( if d478 then true else d153 )
        d1018 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x1019 -> if true then d750 else true ) ) ) $ ( if false then false else false )
        d1020 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1020 = ( ( Bool -> Bool ) ∋ ( ( λ x1021 -> if d812 then x1021 else d769 ) ) ) $ ( if d416 then d916 else false )
        d1022 : ( ( Set -> Set ) ∋ ( ( λ x1023 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1022 = if if d196 then d780 else d851 then if d293 then d5 else d970 else if false then d497 else d374
        d1024 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1024 = ( ( Bool -> Bool ) ∋ ( ( λ x1025 -> if x1025 then false else x1025 ) ) ) $ ( if true then false else d704 )
        d1026 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1026 = ( ( Bool -> Bool ) ∋ ( ( λ x1027 -> ( ( Bool -> Bool ) ∋ ( ( λ x1028 -> d707 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d1029 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1029 = if if true then d815 else d997 then if true then false else d927 else if d997 then true else false
        d1030 : ( ( Set -> Set ) ∋ ( ( λ x1032 -> if true then x1032 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> if d213 then d352 else x1031 ) ) ) $ ( if false then d645 else d544 )
        d1033 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1033 = ( ( Bool -> Bool ) ∋ ( ( λ x1034 -> ( ( Bool -> Bool ) ∋ ( ( λ x1035 -> d205 ) ) ) $ ( x1034 ) ) ) ) $ ( if true then d634 else d991 )
        d1036 : ( ( Set -> Set ) ∋ ( ( λ x1037 -> if true then x1037 else x1037 ) ) ) $ ( if true then Bool else Bool )
        d1036 = if if false then d49 else d546 then if d366 then d707 else d871 else if true then d542 else d653
        d1038 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1038 = ( ( Bool -> Bool ) ∋ ( ( λ x1039 -> if x1039 then true else x1039 ) ) ) $ ( if d750 then true else false )
        d1040 : ( ( Set -> Set ) ∋ ( ( λ x1043 -> if true then Bool else x1043 ) ) ) $ ( if true then Bool else Bool )
        d1040 = ( ( Bool -> Bool ) ∋ ( ( λ x1041 -> ( ( Bool -> Bool ) ∋ ( ( λ x1042 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d256 )
        d1044 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1044 = if if false then false else false then if d610 then true else d384 else if true then d679 else d572
        d1045 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1045 = if if d828 then d462 else d462 then if false then true else d546 else if true then d780 else d548
        d1046 : ( ( Set -> Set ) ∋ ( ( λ x1047 -> ( ( Set -> Set ) ∋ ( ( λ x1048 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1046 = if if d462 then false else d619 then if d330 then true else d162 else if true then true else d725
        d1049 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1049 = if if d267 then d315 else d459 then if true then d110 else d294 else if d704 then d286 else true
        d1050 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1050 = ( ( Bool -> Bool ) ∋ ( ( λ x1051 -> if x1051 then d199 else d522 ) ) ) $ ( if d220 then d462 else d580 )
        d1052 : ( ( Set -> Set ) ∋ ( ( λ x1053 -> if true then x1053 else x1053 ) ) ) $ ( if true then Bool else Bool )
        d1052 = if if d162 then d489 else d871 then if false then d38 else d277 else if d750 then false else true
        d1054 : ( ( Set -> Set ) ∋ ( ( λ x1055 -> if true then Bool else x1055 ) ) ) $ ( if false then Bool else Bool )
        d1054 = if if true then true else d256 then if false then true else d366 else if true then true else d1011
        d1056 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1056 = ( ( Bool -> Bool ) ∋ ( ( λ x1057 -> if x1057 then x1057 else x1057 ) ) ) $ ( if true then d685 else false )
        d1058 : ( ( Set -> Set ) ∋ ( ( λ x1059 -> if true then x1059 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1058 = if if true then d688 else d504 then if true then true else d1045 else if d1014 then false else d768
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x1063 -> if true then Bool else x1063 ) ) ) $ ( if true then Bool else Bool )
        d1060 = ( ( Bool -> Bool ) ∋ ( ( λ x1061 -> ( ( Bool -> Bool ) ∋ ( ( λ x1062 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then true else d117 )
        d1064 : ( ( Set -> Set ) ∋ ( ( λ x1066 -> if false then x1066 else x1066 ) ) ) $ ( if true then Bool else Bool )
        d1064 = ( ( Bool -> Bool ) ∋ ( ( λ x1065 -> if x1065 then d241 else d631 ) ) ) $ ( if d475 then true else d170 )
        d1067 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> ( ( Set -> Set ) ∋ ( ( λ x1071 -> x1071 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1067 = ( ( Bool -> Bool ) ∋ ( ( λ x1068 -> ( ( Bool -> Bool ) ∋ ( ( λ x1069 -> true ) ) ) $ ( d293 ) ) ) ) $ ( if false then false else false )
        d1072 : ( ( Set -> Set ) ∋ ( ( λ x1073 -> ( ( Set -> Set ) ∋ ( ( λ x1074 -> Bool ) ) ) $ ( x1073 ) ) ) ) $ ( if false then Bool else Bool )
        d1072 = if if d434 then d364 else true then if true then d766 else d83 else if d1056 then true else true
        d1075 : ( ( Set -> Set ) ∋ ( ( λ x1076 -> ( ( Set -> Set ) ∋ ( ( λ x1077 -> x1076 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1075 = if if d445 then false else true then if d481 then d91 else true else if d91 then d384 else d870
        d1078 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1078 = ( ( Bool -> Bool ) ∋ ( ( λ x1079 -> ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> true ) ) ) $ ( x1079 ) ) ) ) $ ( if false then false else true )
        d1081 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1081 = if if false then false else d958 then if false then d1030 else d381 else if true then d848 else false
        d1082 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1082 = ( ( Bool -> Bool ) ∋ ( ( λ x1083 -> ( ( Bool -> Bool ) ∋ ( ( λ x1084 -> d853 ) ) ) $ ( true ) ) ) ) $ ( if d605 then true else d871 )
        d1085 : ( ( Set -> Set ) ∋ ( ( λ x1088 -> if false then Bool else x1088 ) ) ) $ ( if false then Bool else Bool )
        d1085 = ( ( Bool -> Bool ) ∋ ( ( λ x1086 -> ( ( Bool -> Bool ) ∋ ( ( λ x1087 -> d716 ) ) ) $ ( x1086 ) ) ) ) $ ( if true then d519 else d324 )
        d1089 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1089 = if if true then true else d425 then if false then d470 else d655 else if d59 then true else true
        d1090 : ( ( Set -> Set ) ∋ ( ( λ x1093 -> ( ( Set -> Set ) ∋ ( ( λ x1094 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1090 = ( ( Bool -> Bool ) ∋ ( ( λ x1091 -> ( ( Bool -> Bool ) ∋ ( ( λ x1092 -> false ) ) ) $ ( x1091 ) ) ) ) $ ( if true then d861 else false )
        d1095 : ( ( Set -> Set ) ∋ ( ( λ x1098 -> ( ( Set -> Set ) ∋ ( ( λ x1099 -> x1098 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1095 = ( ( Bool -> Bool ) ∋ ( ( λ x1096 -> ( ( Bool -> Bool ) ∋ ( ( λ x1097 -> true ) ) ) $ ( false ) ) ) ) $ ( if d694 then true else d743 )
        d1100 : ( ( Set -> Set ) ∋ ( ( λ x1101 -> if false then Bool else x1101 ) ) ) $ ( if true then Bool else Bool )
        d1100 = if if true then true else false then if false then d329 else d177 else if false then false else true
        d1102 : ( ( Set -> Set ) ∋ ( ( λ x1104 -> if false then x1104 else x1104 ) ) ) $ ( if false then Bool else Bool )
        d1102 = ( ( Bool -> Bool ) ∋ ( ( λ x1103 -> if d870 then x1103 else x1103 ) ) ) $ ( if false then d462 else d552 )
        d1105 : ( ( Set -> Set ) ∋ ( ( λ x1108 -> if true then x1108 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1105 = ( ( Bool -> Bool ) ∋ ( ( λ x1106 -> ( ( Bool -> Bool ) ∋ ( ( λ x1107 -> x1106 ) ) ) $ ( true ) ) ) ) $ ( if d404 then false else d709 )
        d1109 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1109 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if x1110 then x1110 else false ) ) ) $ ( if true then d472 else d746 )
        d1111 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1111 = ( ( Bool -> Bool ) ∋ ( ( λ x1112 -> ( ( Bool -> Bool ) ∋ ( ( λ x1113 -> d453 ) ) ) $ ( d315 ) ) ) ) $ ( if false then d420 else false )
        d1114 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1114 = ( ( Bool -> Bool ) ∋ ( ( λ x1115 -> if d352 then x1115 else x1115 ) ) ) $ ( if d753 then false else false )
        d1116 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1116 = ( ( Bool -> Bool ) ∋ ( ( λ x1117 -> if d1089 then false else x1117 ) ) ) $ ( if d397 then false else d294 )
        d1118 : ( ( Set -> Set ) ∋ ( ( λ x1119 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> x1120 ) ) ) $ ( x1119 ) ) ) ) $ ( if false then Bool else Bool )
        d1118 = if if true then d802 else d15 then if false then d631 else d812 else if false then false else d291
        d1121 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1121 = if if d673 then true else true then if true then d605 else true else if d1022 then d162 else true
        d1122 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1122 = ( ( Bool -> Bool ) ∋ ( ( λ x1123 -> ( ( Bool -> Bool ) ∋ ( ( λ x1124 -> d381 ) ) ) $ ( d631 ) ) ) ) $ ( if d38 then d404 else d286 )
        d1125 : ( ( Set -> Set ) ∋ ( ( λ x1126 -> ( ( Set -> Set ) ∋ ( ( λ x1127 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1125 = if if false then true else d272 then if d386 then d975 else true else if false then d572 else true
        d1128 : ( ( Set -> Set ) ∋ ( ( λ x1129 -> ( ( Set -> Set ) ∋ ( ( λ x1130 -> Bool ) ) ) $ ( x1129 ) ) ) ) $ ( if true then Bool else Bool )
        d1128 = if if d489 then d802 else d489 then if true then d845 else d1089 else if false then false else d790
        d1131 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1131 = ( ( Bool -> Bool ) ∋ ( ( λ x1132 -> ( ( Bool -> Bool ) ∋ ( ( λ x1133 -> true ) ) ) $ ( x1132 ) ) ) ) $ ( if d331 then true else d212 )
        d1134 : ( ( Set -> Set ) ∋ ( ( λ x1135 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1134 = if if false then false else true then if d1118 then d942 else d105 else if true then d761 else d863
        d1136 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1136 = ( ( Bool -> Bool ) ∋ ( ( λ x1137 -> if false then x1137 else x1137 ) ) ) $ ( if d57 then d488 else true )
        d1138 : ( ( Set -> Set ) ∋ ( ( λ x1139 -> if false then x1139 else x1139 ) ) ) $ ( if true then Bool else Bool )
        d1138 = if if d849 then true else true then if d136 then true else d1082 else if true then false else d397
        d1140 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1140 = if if true then d1029 else d820 then if true then true else true else if true then d840 else d820