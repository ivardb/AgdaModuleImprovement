module Decl450Base7  where
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
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if x2 then x2 else x2 ) ) ) $ ( if true then true else true )
        d4 : if false then if true then Bool else Bool else if false then Bool else Bool
        d4 = if if true then d1 else true then if true then d1 else d1 else if true then true else true
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d5 = if if true then d4 else d1 then if false then true else true else if d4 then true else true
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then Bool else x9 ) ) ) $ ( if true then Bool else Bool )
        d8 = if if d5 then false else true then if true then d4 else false else if d1 then d4 else d4
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d10 = if if d4 then true else false then if true then false else d5 else if d1 then false else false
        d12 : if false then if true then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> false ) ) ) $ ( false ) ) ) ) $ ( if d8 then d1 else false )
        d15 : if false then if true then Bool else Bool else if true then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if true then x16 else x16 ) ) ) $ ( if false then false else true )
        d17 : if false then if false then Bool else Bool else if false then Bool else Bool
        d17 = if if true then d12 else true then if true then d15 else false else if false then d12 else d15
        d18 : if true then if true then Bool else Bool else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> true ) ) ) $ ( x19 ) ) ) ) $ ( if false then d1 else d1 )
        d21 : if false then if true then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> false ) ) ) $ ( d10 ) ) ) ) $ ( if true then true else false )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then x25 else x25 ) ) ) $ ( if true then Bool else Bool )
        d24 = if if d15 then true else true then if d15 then false else d1 else if d4 then d1 else true
        d26 : if false then if true then Bool else Bool else if false then Bool else Bool
        d26 = if if d15 then d17 else d18 then if d24 then d4 else d15 else if d15 then d1 else true
        d27 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> x29 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if false then d15 else false ) ) ) $ ( if false then d24 else d15 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x32 ) ) ) $ ( x32 ) ) ) ) $ ( if true then Bool else Bool )
        d31 = if if true then d17 else d10 then if d26 then d17 else false else if false then d21 else d27
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d34 = if if d12 then true else d8 then if true then d10 else d24 else if true then d10 else true
        d36 : if false then if true then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if x37 then true else x37 ) ) ) $ ( if true then d34 else false )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d38 = if if d24 then d17 else d18 then if true then d17 else false else if false then true else false
        d40 : if true then if true then Bool else Bool else if true then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> d27 ) ) ) $ ( true ) ) ) ) $ ( if d10 then d1 else d34 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if true then x45 else x45 ) ) ) $ ( if false then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if true then d8 else x44 ) ) ) $ ( if true then true else d36 )
        d46 : if false then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d38 ) ) ) $ ( x47 ) ) ) ) $ ( if true then d27 else d21 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> x51 ) ) ) $ ( x50 ) ) ) ) $ ( if false then Bool else Bool )
        d49 = if if d38 then true else true then if d18 then d18 else false else if d27 then false else false
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> false ) ) ) $ ( true ) ) ) ) $ ( if d17 then d15 else d27 )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if x56 then x56 else x56 ) ) ) $ ( if false then false else false )
        d59 : if false then if false then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d49 then x60 else x60 ) ) ) $ ( if d27 then d4 else false )
        d61 : if false then if false then Bool else Bool else if false then Bool else Bool
        d61 = if if d52 then true else d8 then if d49 then true else true else if d55 then false else false
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then Bool else x63 ) ) ) $ ( if true then Bool else Bool )
        d62 = if if true then true else d38 then if true then true else false else if d10 then false else d5
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x66 ) ) ) $ ( d26 ) ) ) ) $ ( if d43 then d38 else false )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if true then x69 else x69 ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if d31 then d38 else x68 ) ) ) $ ( if true then false else d5 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x72 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d70 = if if d4 then false else true then if false then d64 else true else if d55 then d15 else true
        d73 : if false then if true then Bool else Bool else if false then Bool else Bool
        d73 = if if d1 then true else d49 then if d52 then true else d26 else if false then false else d24
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( x75 ) ) ) ) $ ( if true then Bool else Bool )
        d74 = if if d8 then d12 else d8 then if true then false else d21 else if true then d38 else d52
        d77 : if false then if false then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> x78 ) ) ) $ ( true ) ) ) ) $ ( if d64 then true else d55 )
        d80 : if true then if true then Bool else Bool else if true then Bool else Bool
        d80 = if if d10 then false else d52 then if d55 then d55 else true else if d59 then false else d17
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x83 ) ) ) $ ( x82 ) ) ) ) $ ( if false then Bool else Bool )
        d81 = if if false then false else true then if d73 then true else d31 else if false then d64 else d31
        d84 : if true then if true then Bool else Bool else if true then Bool else Bool
        d84 = if if d74 then d49 else d70 then if d67 then d18 else d64 else if d52 then d5 else d18
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = if if d26 then d49 else true then if true then false else d84 else if true then d67 else d26
        d86 : if true then if true then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if d31 then d40 else d17 ) ) ) $ ( if d34 then true else true )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if true then false else x89 ) ) ) $ ( if d64 then d8 else d4 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then Bool else x93 ) ) ) $ ( if true then Bool else Bool )
        d92 = if if d59 then false else d40 then if d18 then d4 else d55 else if true then d46 else true
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> x96 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = if if true then true else d8 then if false then d55 else d34 else if true then false else false
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if false then Bool else x98 ) ) ) $ ( if false then Bool else Bool )
        d97 = if if false then true else true then if true then true else false else if true then d59 else d61
        d99 : if false then if false then Bool else Bool else if false then Bool else Bool
        d99 = if if d77 then false else d43 then if d94 then false else true else if false then false else d52
        d100 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then Bool else x102 ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if d92 then false else false ) ) ) $ ( if true then false else true )
        d103 : if true then if true then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> true ) ) ) $ ( d55 ) ) ) ) $ ( if false then false else false )
        d106 : if false then if true then Bool else Bool else if true then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if x107 then false else x107 ) ) ) $ ( if d21 then false else d21 )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( d64 ) ) ) ) $ ( if false then true else true )
        d112 : if false then if true then Bool else Bool else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if true then d15 else false ) ) ) $ ( if d4 then d62 else d103 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then x115 else Bool ) ) ) $ ( if false then Bool else Bool )
        d114 = if if d52 then d67 else true then if false then d12 else true else if false then d55 else false
        d116 : if false then if true then Bool else Bool else if false then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if false then true else x117 ) ) ) $ ( if d55 then d36 else d92 )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if false then Bool else x121 ) ) ) $ ( if true then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( x119 ) ) ) ) $ ( if false then true else d81 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if false then x123 else x123 ) ) ) $ ( if true then Bool else Bool )
        d122 = if if false then false else false then if d55 then d74 else false else if d52 then d18 else d34
        d124 : if false then if true then Bool else Bool else if false then Bool else Bool
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if false then false else d24 ) ) ) $ ( if d26 then d84 else d4 )
        d126 : if false then if false then Bool else Bool else if false then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> d106 ) ) ) $ ( d8 ) ) ) ) $ ( if d108 then true else true )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d129 = if if d97 then d49 else true then if false then d4 else true else if d36 then d36 else true
        d131 : if true then if true then Bool else Bool else if false then Bool else Bool
        d131 = if if d36 then d88 else d49 then if d1 then d21 else d80 else if d129 then d74 else d70
        d132 : if true then if true then Bool else Bool else if false then Bool else Bool
        d132 = if if false then false else d5 then if false then d129 else false else if d36 then false else false
        d133 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> x137 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> x135 ) ) ) $ ( x134 ) ) ) ) $ ( if true then d24 else d46 )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> if x139 then x139 else true ) ) ) $ ( if false then d129 else d99 )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> x144 ) ) ) $ ( x144 ) ) ) ) $ ( if false then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> if d114 then d73 else x143 ) ) ) $ ( if d74 then false else d8 )
        d146 : if false then if true then Bool else Bool else if true then Bool else Bool
        d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> ( ( Bool -> Bool ) ∋ ( ( λ x148 -> x147 ) ) ) $ ( true ) ) ) ) $ ( if false then d18 else d15 )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x151 -> true ) ) ) $ ( x150 ) ) ) ) $ ( if true then true else true )
        d153 : ( ( Set -> Set ) ∋ ( ( λ x155 -> if true then Bool else x155 ) ) ) $ ( if false then Bool else Bool )
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> if d100 then d97 else d49 ) ) ) $ ( if d70 then true else true )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x159 -> if true then Bool else x159 ) ) ) $ ( if true then Bool else Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( Bool -> Bool ) ∋ ( ( λ x158 -> d73 ) ) ) $ ( x157 ) ) ) ) $ ( if true then false else false )
        d160 : if true then if false then Bool else Bool else if false then Bool else Bool
        d160 = if if true then d133 else true then if d59 then d100 else d64 else if true then true else d27
        d161 : if true then if true then Bool else Bool else if true then Bool else Bool
        d161 = if if d34 then true else true then if d142 then true else d74 else if d94 then d21 else d88
        d162 : ( ( Set -> Set ) ∋ ( ( λ x164 -> if true then x164 else Bool ) ) ) $ ( if false then Bool else Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> if d122 then x163 else d15 ) ) ) $ ( if d67 then true else true )
        d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if false then x167 else x167 ) ) ) $ ( if false then Bool else Bool )
        d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> if true then d61 else d1 ) ) ) $ ( if true then false else d106 )
        d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if true then x169 else Bool ) ) ) $ ( if false then Bool else Bool )
        d168 = if if d49 then false else true then if true then d116 else true else if d131 then false else d64
        d170 : if false then if true then Bool else Bool else if true then Bool else Bool
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> false ) ) ) $ ( x171 ) ) ) ) $ ( if d18 then d99 else false )
        d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if true then x174 else Bool ) ) ) $ ( if true then Bool else Bool )
        d173 = if if d99 then false else d114 then if d59 then d61 else true else if d131 then d81 else d86
        d175 : ( ( Set -> Set ) ∋ ( ( λ x178 -> if false then Bool else x178 ) ) ) $ ( if false then Bool else Bool )
        d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> ( ( Bool -> Bool ) ∋ ( ( λ x177 -> x177 ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> Bool ) ) ) $ ( x180 ) ) ) ) $ ( if false then Bool else Bool )
        d179 = if if d99 then d49 else d94 then if d59 then d59 else false else if d92 then d5 else false
        d182 : if true then if false then Bool else Bool else if true then Bool else Bool
        d182 = if if d38 then d175 else d149 then if d112 then false else d34 else if false then d86 else d126
        d183 : if true then if false then Bool else Bool else if true then Bool else Bool
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x184 -> if d114 then true else x184 ) ) ) $ ( if false then false else true )
        d185 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( Bool -> Bool ) ∋ ( ( λ x187 -> false ) ) ) $ ( x186 ) ) ) ) $ ( if true then true else d31 )
        d189 : if false then if true then Bool else Bool else if true then Bool else Bool
        d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x191 -> false ) ) ) $ ( x190 ) ) ) ) $ ( if false then d49 else d4 )
        d192 : if false then if true then Bool else Bool else if true then Bool else Bool
        d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> ( ( Bool -> Bool ) ∋ ( ( λ x194 -> x194 ) ) ) $ ( x193 ) ) ) ) $ ( if false then false else d129 )
        d195 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> Bool ) ) ) $ ( x196 ) ) ) ) $ ( if false then Bool else Bool )
        d195 = if if d160 then false else true then if d8 then true else d153 else if false then false else true
        d198 : if true then if false then Bool else Bool else if false then Bool else Bool
        d198 = if if true then d153 else true then if true then true else false else if true then false else true
        d199 : if true then if true then Bool else Bool else if true then Bool else Bool
        d199 = if if true then d183 else true then if d162 then true else false else if d182 then false else false
        d200 : if false then if false then Bool else Bool else if true then Bool else Bool
        d200 = if if true then false else true then if false then true else false else if d116 then d8 else d170
        d201 : ( ( Set -> Set ) ∋ ( ( λ x202 -> ( ( Set -> Set ) ∋ ( ( λ x203 -> Bool ) ) ) $ ( x202 ) ) ) ) $ ( if true then Bool else Bool )
        d201 = if if true then true else d183 then if true then d46 else d86 else if false then d161 else true
        d204 : if true then if false then Bool else Bool else if true then Bool else Bool
        d204 = if if d24 then false else d185 then if d124 then d97 else true else if false then d97 else d38
        d205 : if true then if true then Bool else Bool else if false then Bool else Bool
        d205 = ( ( Bool -> Bool ) ∋ ( ( λ x206 -> if true then x206 else x206 ) ) ) $ ( if true then true else d52 )
        d207 : if false then if true then Bool else Bool else if true then Bool else Bool
        d207 = if if d40 then d189 else d114 then if true then false else false else if false then d67 else d124
        d208 : if true then if true then Bool else Bool else if false then Bool else Bool
        d208 = if if true then false else true then if d70 then false else false else if d81 then false else true
        d209 : ( ( Set -> Set ) ∋ ( ( λ x212 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d209 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x211 -> x211 ) ) ) $ ( true ) ) ) ) $ ( if d168 then true else true )
        d213 : if true then if false then Bool else Bool else if true then Bool else Bool
        d213 = if if d73 then d92 else d204 then if false then true else false else if false then false else false
        d214 : ( ( Set -> Set ) ∋ ( ( λ x215 -> ( ( Set -> Set ) ∋ ( ( λ x216 -> x215 ) ) ) $ ( x215 ) ) ) ) $ ( if true then Bool else Bool )
        d214 = if if d201 then true else false then if d80 then d97 else false else if d36 then false else d213
        d217 : if true then if false then Bool else Bool else if false then Bool else Bool
        d217 = if if d67 then d36 else d208 then if true then false else d17 else if d86 then d165 else false
        d218 : ( ( Set -> Set ) ∋ ( ( λ x219 -> ( ( Set -> Set ) ∋ ( ( λ x220 -> Bool ) ) ) $ ( x219 ) ) ) ) $ ( if false then Bool else Bool )
        d218 = if if d214 then d84 else true then if true then d214 else d36 else if d185 then d108 else false
        d221 : ( ( Set -> Set ) ∋ ( ( λ x223 -> ( ( Set -> Set ) ∋ ( ( λ x224 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x222 -> if d142 then x222 else x222 ) ) ) $ ( if true then d126 else d199 )
        d225 : if true then if false then Bool else Bool else if true then Bool else Bool
        d225 = ( ( Bool -> Bool ) ∋ ( ( λ x226 -> if true then x226 else d133 ) ) ) $ ( if false then false else d21 )
        d227 : if false then if true then Bool else Bool else if true then Bool else Bool
        d227 = if if true then false else false then if d170 then true else d52 else if d118 then d185 else d162
        d228 : if false then if false then Bool else Bool else if true then Bool else Bool
        d228 = if if false then d92 else true then if true then false else d112 else if true then true else true
        d229 : ( ( Set -> Set ) ∋ ( ( λ x232 -> if true then x232 else Bool ) ) ) $ ( if true then Bool else Bool )
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x231 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then false else d103 )
        d233 : if true then if false then Bool else Bool else if true then Bool else Bool
        d233 = if if d209 then d227 else d88 then if false then d156 else false else if d24 then d21 else false
        d234 : ( ( Set -> Set ) ∋ ( ( λ x235 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d234 = if if d26 then d207 else true then if d64 then true else false else if false then d205 else d67
        d236 : if false then if true then Bool else Bool else if true then Bool else Bool
        d236 = ( ( Bool -> Bool ) ∋ ( ( λ x237 -> ( ( Bool -> Bool ) ∋ ( ( λ x238 -> x238 ) ) ) $ ( d80 ) ) ) ) $ ( if d207 then true else false )
        d239 : ( ( Set -> Set ) ∋ ( ( λ x241 -> ( ( Set -> Set ) ∋ ( ( λ x242 -> x242 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d239 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if d118 then x240 else d228 ) ) ) $ ( if d217 then true else false )
        d243 : ( ( Set -> Set ) ∋ ( ( λ x246 -> ( ( Set -> Set ) ∋ ( ( λ x247 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x244 -> ( ( Bool -> Bool ) ∋ ( ( λ x245 -> x244 ) ) ) $ ( false ) ) ) ) $ ( if d8 then false else true )
        d248 : if false then if true then Bool else Bool else if false then Bool else Bool
        d248 = if if d5 then d192 else true then if d21 then d73 else d129 else if true then false else false
        d249 : ( ( Set -> Set ) ∋ ( ( λ x252 -> if true then x252 else Bool ) ) ) $ ( if true then Bool else Bool )
        d249 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x251 -> d131 ) ) ) $ ( x250 ) ) ) ) $ ( if false then false else d161 )
        d253 : if true then if true then Bool else Bool else if true then Bool else Bool
        d253 = if if true then true else d149 then if d142 then d70 else false else if d21 then d64 else d228
        d254 : if false then if false then Bool else Bool else if false then Bool else Bool
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x255 -> ( ( Bool -> Bool ) ∋ ( ( λ x256 -> d18 ) ) ) $ ( x255 ) ) ) ) $ ( if true then true else false )
        d257 : ( ( Set -> Set ) ∋ ( ( λ x258 -> ( ( Set -> Set ) ∋ ( ( λ x259 -> Bool ) ) ) $ ( x258 ) ) ) ) $ ( if false then Bool else Bool )
        d257 = if if d106 then true else false then if d234 then true else true else if true then d227 else false
        d260 : ( ( Set -> Set ) ∋ ( ( λ x261 -> if false then x261 else Bool ) ) ) $ ( if true then Bool else Bool )
        d260 = if if d122 then true else true then if false then true else false else if false then d201 else true
        d262 : if false then if true then Bool else Bool else if true then Bool else Bool
        d262 = ( ( Bool -> Bool ) ∋ ( ( λ x263 -> ( ( Bool -> Bool ) ∋ ( ( λ x264 -> true ) ) ) $ ( x263 ) ) ) ) $ ( if d85 then false else false )
        d265 : if true then if true then Bool else Bool else if false then Bool else Bool
        d265 = if if true then d257 else d97 then if d74 then true else false else if d165 then d189 else d173
        d266 : ( ( Set -> Set ) ∋ ( ( λ x269 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x267 -> ( ( Bool -> Bool ) ∋ ( ( λ x268 -> d207 ) ) ) $ ( x267 ) ) ) ) $ ( if d214 then d208 else false )
        d271 : if false then if false then Bool else Bool else if false then Bool else Bool
        d271 = if if d59 then true else d179 then if true then d118 else false else if false then true else d97
        d272 : ( ( Set -> Set ) ∋ ( ( λ x273 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d272 = if if true then false else true then if false then d55 else false else if false then true else false
        d274 : if false then if false then Bool else Bool else if true then Bool else Bool
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x275 -> if true then x275 else d99 ) ) ) $ ( if d156 then d40 else d239 )
        d276 : if true then if false then Bool else Bool else if false then Bool else Bool
        d276 = if if d85 then d61 else d153 then if d262 then d55 else d156 else if false then true else false
        d277 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x281 -> x280 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d277 = ( ( Bool -> Bool ) ∋ ( ( λ x278 -> ( ( Bool -> Bool ) ∋ ( ( λ x279 -> false ) ) ) $ ( x278 ) ) ) ) $ ( if d94 then d262 else true )
        d282 : if false then if true then Bool else Bool else if false then Bool else Bool
        d282 = ( ( Bool -> Bool ) ∋ ( ( λ x283 -> ( ( Bool -> Bool ) ∋ ( ( λ x284 -> x284 ) ) ) $ ( x283 ) ) ) ) $ ( if d205 then false else false )
        d285 : ( ( Set -> Set ) ∋ ( ( λ x288 -> ( ( Set -> Set ) ∋ ( ( λ x289 -> Bool ) ) ) $ ( x288 ) ) ) ) $ ( if false then Bool else Bool )
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x286 -> ( ( Bool -> Bool ) ∋ ( ( λ x287 -> x287 ) ) ) $ ( d15 ) ) ) ) $ ( if d15 then d153 else true )
        d290 : ( ( Set -> Set ) ∋ ( ( λ x293 -> ( ( Set -> Set ) ∋ ( ( λ x294 -> Bool ) ) ) $ ( x293 ) ) ) ) $ ( if true then Bool else Bool )
        d290 = ( ( Bool -> Bool ) ∋ ( ( λ x291 -> ( ( Bool -> Bool ) ∋ ( ( λ x292 -> true ) ) ) $ ( x291 ) ) ) ) $ ( if false then d4 else true )
        d295 : if false then if false then Bool else Bool else if false then Bool else Bool
        d295 = ( ( Bool -> Bool ) ∋ ( ( λ x296 -> ( ( Bool -> Bool ) ∋ ( ( λ x297 -> x297 ) ) ) $ ( d124 ) ) ) ) $ ( if true then d285 else true )
        d298 : if false then if false then Bool else Bool else if true then Bool else Bool
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x299 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> x299 ) ) ) $ ( d146 ) ) ) ) $ ( if d168 then d100 else false )
        d301 : ( ( Set -> Set ) ∋ ( ( λ x302 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d301 = if if d272 then false else true then if d27 then true else false else if d153 then false else false
        d303 : if true then if false then Bool else Bool else if true then Bool else Bool
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x304 -> if d170 then d40 else x304 ) ) ) $ ( if d70 then false else false )
        d305 : ( ( Set -> Set ) ∋ ( ( λ x307 -> if true then Bool else x307 ) ) ) $ ( if true then Bool else Bool )
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x306 -> if false then d138 else x306 ) ) ) $ ( if false then true else d214 )
        d308 : ( ( Set -> Set ) ∋ ( ( λ x309 -> if true then x309 else x309 ) ) ) $ ( if true then Bool else Bool )
        d308 = if if false then d15 else true then if false then d233 else d122 else if d74 then true else true
        d310 : if false then if true then Bool else Bool else if false then Bool else Bool
        d310 = if if d108 then d94 else true then if false then d305 else d112 else if true then true else d260
        d311 : if true then if true then Bool else Bool else if true then Bool else Bool
        d311 = if if d94 then true else true then if d257 then d40 else d34 else if d10 then d27 else true
        d312 : if false then if false then Bool else Bool else if false then Bool else Bool
        d312 = if if false then false else false then if false then true else false else if true then d34 else d204
        d313 : ( ( Set -> Set ) ∋ ( ( λ x314 -> ( ( Set -> Set ) ∋ ( ( λ x315 -> x314 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d313 = if if d64 then true else false then if d92 then d234 else true else if false then d27 else false
        d316 : if true then if true then Bool else Bool else if false then Bool else Bool
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x317 -> ( ( Bool -> Bool ) ∋ ( ( λ x318 -> d274 ) ) ) $ ( true ) ) ) ) $ ( if true then d236 else false )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x321 -> ( ( Set -> Set ) ∋ ( ( λ x322 -> x321 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if x320 then x320 else true ) ) ) $ ( if false then d208 else d189 )
        d323 : if true then if false then Bool else Bool else if true then Bool else Bool
        d323 = if if true then d114 else d204 then if d1 then false else true else if false then false else false
        d324 : if true then if false then Bool else Bool else if true then Bool else Bool
        d324 = if if false then false else true then if d195 then d40 else false else if d36 then d132 else true
        d325 : ( ( Set -> Set ) ∋ ( ( λ x326 -> ( ( Set -> Set ) ∋ ( ( λ x327 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d325 = if if d254 then d182 else d61 then if d5 then d262 else true else if true then d207 else d168
        d328 : if true then if true then Bool else Bool else if true then Bool else Bool
        d328 = if if true then true else d85 then if false then d131 else d108 else if d173 then true else true
        d329 : ( ( Set -> Set ) ∋ ( ( λ x330 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d329 = if if d34 then d46 else d18 then if true then d62 else d324 else if false then false else d112
        d331 : if false then if true then Bool else Bool else if false then Bool else Bool
        d331 = if if false then true else d88 then if d59 then false else d227 else if d52 then true else false
        d332 : ( ( Set -> Set ) ∋ ( ( λ x333 -> ( ( Set -> Set ) ∋ ( ( λ x334 -> Bool ) ) ) $ ( x333 ) ) ) ) $ ( if false then Bool else Bool )
        d332 = if if false then true else false then if true then true else d138 else if d209 then true else false
        d335 : ( ( Set -> Set ) ∋ ( ( λ x337 -> ( ( Set -> Set ) ∋ ( ( λ x338 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x336 -> if false then false else d86 ) ) ) $ ( if d77 then false else d182 )
        d339 : ( ( Set -> Set ) ∋ ( ( λ x342 -> ( ( Set -> Set ) ∋ ( ( λ x343 -> x342 ) ) ) $ ( x342 ) ) ) ) $ ( if false then Bool else Bool )
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x341 -> d27 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d344 : ( ( Set -> Set ) ∋ ( ( λ x347 -> ( ( Set -> Set ) ∋ ( ( λ x348 -> x348 ) ) ) $ ( x347 ) ) ) ) $ ( if false then Bool else Bool )
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x345 -> ( ( Bool -> Bool ) ∋ ( ( λ x346 -> d74 ) ) ) $ ( true ) ) ) ) $ ( if false then d331 else false )
        d349 : if true then if true then Bool else Bool else if false then Bool else Bool
        d349 = if if d282 then true else d198 then if d5 then true else d61 else if d26 then d301 else false
        d350 : ( ( Set -> Set ) ∋ ( ( λ x352 -> if true then x352 else Bool ) ) ) $ ( if false then Bool else Bool )
        d350 = ( ( Bool -> Bool ) ∋ ( ( λ x351 -> if false then d214 else false ) ) ) $ ( if d271 then d138 else d195 )
        d353 : if true then if false then Bool else Bool else if false then Bool else Bool
        d353 = ( ( Bool -> Bool ) ∋ ( ( λ x354 -> if d108 then x354 else d106 ) ) ) $ ( if false then true else true )
        d355 : ( ( Set -> Set ) ∋ ( ( λ x356 -> ( ( Set -> Set ) ∋ ( ( λ x357 -> Bool ) ) ) $ ( x356 ) ) ) ) $ ( if false then Bool else Bool )
        d355 = if if d10 then true else true then if d204 then d64 else false else if d94 then d5 else d344
        d358 : ( ( Set -> Set ) ∋ ( ( λ x361 -> ( ( Set -> Set ) ∋ ( ( λ x362 -> x362 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d358 = ( ( Bool -> Bool ) ∋ ( ( λ x359 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> false ) ) ) $ ( d217 ) ) ) ) $ ( if d295 then d24 else d24 )
        d363 : if true then if false then Bool else Bool else if false then Bool else Bool
        d363 = if if d129 then true else true then if d156 then d353 else d328 else if d106 then false else d46
        d364 : ( ( Set -> Set ) ∋ ( ( λ x366 -> ( ( Set -> Set ) ∋ ( ( λ x367 -> x366 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x365 -> if d248 then x365 else x365 ) ) ) $ ( if d160 then d108 else false )
        d368 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x371 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x369 -> if true then true else x369 ) ) ) $ ( if d285 then true else d133 )
        d372 : ( ( Set -> Set ) ∋ ( ( λ x373 -> if false then x373 else x373 ) ) ) $ ( if false then Bool else Bool )
        d372 = if if true then d276 else d198 then if d10 then d17 else d218 else if d122 then d266 else false
        d374 : if false then if false then Bool else Bool else if false then Bool else Bool
        d374 = ( ( Bool -> Bool ) ∋ ( ( λ x375 -> if d112 then x375 else d253 ) ) ) $ ( if d179 then d331 else true )
        d376 : if true then if false then Bool else Bool else if false then Bool else Bool
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x377 -> if d15 then false else true ) ) ) $ ( if d80 then d189 else d27 )
        d378 : ( ( Set -> Set ) ∋ ( ( λ x381 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x379 -> ( ( Bool -> Bool ) ∋ ( ( λ x380 -> d364 ) ) ) $ ( true ) ) ) ) $ ( if d209 then false else false )
        d382 : if false then if false then Bool else Bool else if false then Bool else Bool
        d382 = if if true then true else false then if d165 then d182 else d132 else if d221 then d282 else d146
        d383 : ( ( Set -> Set ) ∋ ( ( λ x386 -> ( ( Set -> Set ) ∋ ( ( λ x387 -> x387 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d383 = ( ( Bool -> Bool ) ∋ ( ( λ x384 -> ( ( Bool -> Bool ) ∋ ( ( λ x385 -> d81 ) ) ) $ ( d67 ) ) ) ) $ ( if true then false else true )
        d388 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if false then x390 else x390 ) ) ) $ ( if true then Bool else Bool )
        d388 = ( ( Bool -> Bool ) ∋ ( ( λ x389 -> if d310 then false else d374 ) ) ) $ ( if d308 then d77 else d249 )
        d391 : if true then if false then Bool else Bool else if true then Bool else Bool
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x392 -> ( ( Bool -> Bool ) ∋ ( ( λ x393 -> x393 ) ) ) $ ( d344 ) ) ) ) $ ( if true then d271 else true )
        d394 : ( ( Set -> Set ) ∋ ( ( λ x395 -> ( ( Set -> Set ) ∋ ( ( λ x396 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d394 = if if d285 then false else d18 then if d301 then true else d85 else if d298 then false else d313
        d397 : if true then if true then Bool else Bool else if false then Bool else Bool
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x398 -> ( ( Bool -> Bool ) ∋ ( ( λ x399 -> x399 ) ) ) $ ( d149 ) ) ) ) $ ( if false then d124 else false )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x401 -> if true then x401 else Bool ) ) ) $ ( if false then Bool else Bool )
        d400 = if if d234 then false else d248 then if false then d227 else false else if false then false else d195
        d402 : ( ( Set -> Set ) ∋ ( ( λ x403 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d402 = if if d383 then d64 else false then if false then d290 else false else if false then false else d285
        d404 : if false then if false then Bool else Bool else if true then Bool else Bool
        d404 = ( ( Bool -> Bool ) ∋ ( ( λ x405 -> if false then d376 else false ) ) ) $ ( if d257 then true else false )
        d406 : ( ( Set -> Set ) ∋ ( ( λ x407 -> if true then x407 else x407 ) ) ) $ ( if true then Bool else Bool )
        d406 = if if true then d353 else d329 then if false then false else d200 else if d129 then true else false
        d408 : ( ( Set -> Set ) ∋ ( ( λ x411 -> ( ( Set -> Set ) ∋ ( ( λ x412 -> Bool ) ) ) $ ( x411 ) ) ) ) $ ( if true then Bool else Bool )
        d408 = ( ( Bool -> Bool ) ∋ ( ( λ x409 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> false ) ) ) $ ( d262 ) ) ) ) $ ( if d325 then d173 else d52 )
        d413 : if true then if false then Bool else Bool else if false then Bool else Bool
        d413 = ( ( Bool -> Bool ) ∋ ( ( λ x414 -> if false then x414 else d27 ) ) ) $ ( if true then false else false )
        d415 : if true then if false then Bool else Bool else if false then Bool else Bool
        d415 = if if d331 then false else false then if false then d38 else d34 else if d116 then d344 else true
        d416 : ( ( Set -> Set ) ∋ ( ( λ x417 -> if true then x417 else Bool ) ) ) $ ( if true then Bool else Bool )
        d416 = if if d282 then true else false then if d308 then true else d204 else if d52 then true else d374
        d418 : if true then if false then Bool else Bool else if true then Bool else Bool
        d418 = if if false then true else d62 then if d233 then d262 else d49 else if d21 then d271 else true
        d419 : ( ( Set -> Set ) ∋ ( ( λ x421 -> ( ( Set -> Set ) ∋ ( ( λ x422 -> Bool ) ) ) $ ( x421 ) ) ) ) $ ( if false then Bool else Bool )
        d419 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if false then x420 else x420 ) ) ) $ ( if true then d182 else false )
        d423 : if true then if false then Bool else Bool else if false then Bool else Bool
        d423 = ( ( Bool -> Bool ) ∋ ( ( λ x424 -> if x424 then false else d204 ) ) ) $ ( if d416 then d40 else true )
        d425 : ( ( Set -> Set ) ∋ ( ( λ x428 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d425 = ( ( Bool -> Bool ) ∋ ( ( λ x426 -> ( ( Bool -> Bool ) ∋ ( ( λ x427 -> d374 ) ) ) $ ( d209 ) ) ) ) $ ( if d124 then d271 else d161 )
        d429 : if false then if false then Bool else Bool else if false then Bool else Bool
        d429 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if true then x430 else true ) ) ) $ ( if false then d198 else d192 )
        d431 : if true then if true then Bool else Bool else if false then Bool else Bool
        d431 = if if false then d229 else true then if false then d179 else true else if false then d124 else false
        d432 : if true then if true then Bool else Bool else if true then Bool else Bool
        d432 = if if false then false else d325 then if d227 then d415 else d328 else if false then true else true
        d433 : ( ( Set -> Set ) ∋ ( ( λ x435 -> if true then x435 else Bool ) ) ) $ ( if false then Bool else Bool )
        d433 = ( ( Bool -> Bool ) ∋ ( ( λ x434 -> if x434 then x434 else x434 ) ) ) $ ( if d276 then false else d205 )
        d436 : if false then if true then Bool else Bool else if false then Bool else Bool
        d436 = if if true then false else true then if d257 then d316 else true else if d49 then d195 else d160
        d437 : ( ( Set -> Set ) ∋ ( ( λ x438 -> ( ( Set -> Set ) ∋ ( ( λ x439 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d437 = if if false then false else d243 then if d27 then d332 else d195 else if d406 then true else d214
        d440 : if true then if false then Bool else Bool else if true then Bool else Bool
        d440 = if if true then d402 else false then if d408 then true else d221 else if d378 then false else false
        d441 : if false then if true then Bool else Bool else if false then Bool else Bool
        d441 = if if false then d234 else false then if d162 then false else true else if d26 then d204 else d265
        d442 : if true then if true then Bool else Bool else if false then Bool else Bool
        d442 = if if false then d170 else false then if false then false else false else if false then false else true
        d443 : if false then if true then Bool else Bool else if true then Bool else Bool
        d443 = ( ( Bool -> Bool ) ∋ ( ( λ x444 -> ( ( Bool -> Bool ) ∋ ( ( λ x445 -> false ) ) ) $ ( true ) ) ) ) $ ( if d437 then false else true )
        d446 : if true then if false then Bool else Bool else if true then Bool else Bool
        d446 = ( ( Bool -> Bool ) ∋ ( ( λ x447 -> ( ( Bool -> Bool ) ∋ ( ( λ x448 -> true ) ) ) $ ( d12 ) ) ) ) $ ( if true then d372 else false )
        d449 : ( ( Set -> Set ) ∋ ( ( λ x451 -> if true then Bool else x451 ) ) ) $ ( if false then Bool else Bool )
        d449 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if d204 then d254 else d73 ) ) ) $ ( if d249 then d282 else false )
        d452 : if false then if false then Bool else Bool else if false then Bool else Bool
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x453 -> if x453 then d416 else d382 ) ) ) $ ( if d162 then d316 else false )
        d454 : if true then if true then Bool else Bool else if false then Bool else Bool
        d454 = if if false then d92 else d349 then if d24 then d378 else true else if false then d344 else d391
        d455 : if false then if false then Bool else Bool else if false then Bool else Bool
        d455 = ( ( Bool -> Bool ) ∋ ( ( λ x456 -> ( ( Bool -> Bool ) ∋ ( ( λ x457 -> true ) ) ) $ ( d142 ) ) ) ) $ ( if d225 then d126 else d441 )
        d458 : ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x461 -> x461 ) ) ) $ ( x460 ) ) ) ) $ ( if true then Bool else Bool )
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x459 -> if false then false else true ) ) ) $ ( if true then d310 else d353 )
        d462 : if false then if true then Bool else Bool else if true then Bool else Bool
        d462 = if if false then d99 else d290 then if d67 then d198 else d312 else if true then d358 else d285
        d463 : if true then if false then Bool else Bool else if false then Bool else Bool
        d463 = if if true then false else true then if false then d81 else true else if d418 then true else false
        d464 : ( ( Set -> Set ) ∋ ( ( λ x465 -> if false then x465 else Bool ) ) ) $ ( if true then Bool else Bool )
        d464 = if if d441 then d31 else true then if d266 then false else true else if d185 then true else true
        d466 : if true then if false then Bool else Bool else if false then Bool else Bool
        d466 = if if d26 then true else false then if true then d272 else d402 else if false then false else d99
        d467 : ( ( Set -> Set ) ∋ ( ( λ x468 -> ( ( Set -> Set ) ∋ ( ( λ x469 -> Bool ) ) ) $ ( x468 ) ) ) ) $ ( if false then Bool else Bool )
        d467 = if if true then d463 else d81 then if d446 then true else d198 else if true then true else true
        d470 : if false then if false then Bool else Bool else if true then Bool else Bool
        d470 = if if false then d415 else d376 then if true then d372 else d463 else if false then d10 else true
        d471 : ( ( Set -> Set ) ∋ ( ( λ x473 -> ( ( Set -> Set ) ∋ ( ( λ x474 -> x474 ) ) ) $ ( x473 ) ) ) ) $ ( if false then Bool else Bool )
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x472 -> if false then x472 else x472 ) ) ) $ ( if d325 then d192 else d218 )
        d475 : ( ( Set -> Set ) ∋ ( ( λ x476 -> ( ( Set -> Set ) ∋ ( ( λ x477 -> x476 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d475 = if if true then d40 else true then if d254 then d254 else d446 else if d382 then false else d271
        d478 : ( ( Set -> Set ) ∋ ( ( λ x479 -> ( ( Set -> Set ) ∋ ( ( λ x480 -> Bool ) ) ) $ ( x479 ) ) ) ) $ ( if false then Bool else Bool )
        d478 = if if d272 then d26 else d161 then if false then d419 else false else if true then d173 else d40
        d481 : ( ( Set -> Set ) ∋ ( ( λ x484 -> ( ( Set -> Set ) ∋ ( ( λ x485 -> Bool ) ) ) $ ( x484 ) ) ) ) $ ( if false then Bool else Bool )
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x482 -> ( ( Bool -> Bool ) ∋ ( ( λ x483 -> true ) ) ) $ ( true ) ) ) ) $ ( if d170 then d40 else true )
        d486 : if true then if true then Bool else Bool else if false then Bool else Bool
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x487 -> ( ( Bool -> Bool ) ∋ ( ( λ x488 -> d415 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d489 : ( ( Set -> Set ) ∋ ( ( λ x490 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d489 = if if true then false else false then if false then true else d221 else if false then true else d378
        d491 : ( ( Set -> Set ) ∋ ( ( λ x494 -> if true then x494 else x494 ) ) ) $ ( if true then Bool else Bool )
        d491 = ( ( Bool -> Bool ) ∋ ( ( λ x492 -> ( ( Bool -> Bool ) ∋ ( ( λ x493 -> x493 ) ) ) $ ( true ) ) ) ) $ ( if d24 then false else false )
        d495 : if false then if false then Bool else Bool else if true then Bool else Bool
        d495 = if if false then false else true then if d329 then true else d418 else if false then d106 else false
        d496 : if false then if false then Bool else Bool else if false then Bool else Bool
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x497 -> ( ( Bool -> Bool ) ∋ ( ( λ x498 -> false ) ) ) $ ( d458 ) ) ) ) $ ( if false then false else true )
        d499 : if true then if false then Bool else Bool else if true then Bool else Bool
        d499 = if if false then false else true then if d285 then d415 else false else if d437 then false else d74
        d500 : ( ( Set -> Set ) ∋ ( ( λ x501 -> if true then x501 else Bool ) ) ) $ ( if true then Bool else Bool )
        d500 = if if d464 then d248 else true then if d271 then d260 else d114 else if d331 then false else false
        d502 : if false then if false then Bool else Bool else if false then Bool else Bool
        d502 = ( ( Bool -> Bool ) ∋ ( ( λ x503 -> ( ( Bool -> Bool ) ∋ ( ( λ x504 -> d363 ) ) ) $ ( x503 ) ) ) ) $ ( if false then d329 else d67 )
        d505 : if true then if true then Bool else Bool else if true then Bool else Bool
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x506 -> ( ( Bool -> Bool ) ∋ ( ( λ x507 -> x507 ) ) ) $ ( x506 ) ) ) ) $ ( if d207 then true else false )
        d508 : ( ( Set -> Set ) ∋ ( ( λ x510 -> if false then x510 else Bool ) ) ) $ ( if true then Bool else Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x509 -> if d31 then x509 else x509 ) ) ) $ ( if d376 then true else d214 )
        d511 : if false then if true then Bool else Bool else if false then Bool else Bool
        d511 = ( ( Bool -> Bool ) ∋ ( ( λ x512 -> ( ( Bool -> Bool ) ∋ ( ( λ x513 -> x513 ) ) ) $ ( x512 ) ) ) ) $ ( if false then d61 else d192 )
        d514 : if true then if false then Bool else Bool else if false then Bool else Bool
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x515 -> if x515 then d502 else x515 ) ) ) $ ( if false then false else d272 )
        d516 : if true then if true then Bool else Bool else if false then Bool else Bool
        d516 = if if true then true else d103 then if d432 then d173 else d466 else if false then true else d227
        d517 : ( ( Set -> Set ) ∋ ( ( λ x519 -> ( ( Set -> Set ) ∋ ( ( λ x520 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x518 -> if x518 then d355 else true ) ) ) $ ( if d27 then d319 else d205 )
        d521 : if false then if true then Bool else Bool else if true then Bool else Bool
        d521 = if if d271 then d416 else true then if d17 then true else d227 else if d133 then d214 else false
        d522 : ( ( Set -> Set ) ∋ ( ( λ x523 -> ( ( Set -> Set ) ∋ ( ( λ x524 -> x523 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d522 = if if true then false else true then if false then d491 else d108 else if d449 then true else true
        d525 : if true then if true then Bool else Bool else if false then Bool else Bool
        d525 = if if true then d319 else true then if true then d305 else true else if true then false else false
        d526 : if true then if false then Bool else Bool else if true then Bool else Bool
        d526 = ( ( Bool -> Bool ) ∋ ( ( λ x527 -> ( ( Bool -> Bool ) ∋ ( ( λ x528 -> true ) ) ) $ ( d18 ) ) ) ) $ ( if false then d312 else true )
        d529 : if true then if true then Bool else Bool else if false then Bool else Bool
        d529 = if if true then d217 else d64 then if d64 then false else true else if d21 then d368 else d303
        d530 : if false then if false then Bool else Bool else if false then Bool else Bool
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x531 -> if x531 then d303 else false ) ) ) $ ( if false then d243 else d34 )
        d532 : ( ( Set -> Set ) ∋ ( ( λ x534 -> if true then Bool else x534 ) ) ) $ ( if false then Bool else Bool )
        d532 = ( ( Bool -> Bool ) ∋ ( ( λ x533 -> if true then x533 else x533 ) ) ) $ ( if false then true else d319 )
        d535 : if false then if true then Bool else Bool else if true then Bool else Bool
        d535 = ( ( Bool -> Bool ) ∋ ( ( λ x536 -> ( ( Bool -> Bool ) ∋ ( ( λ x537 -> x536 ) ) ) $ ( x536 ) ) ) ) $ ( if false then true else d502 )
        d538 : if false then if false then Bool else Bool else if false then Bool else Bool
        d538 = ( ( Bool -> Bool ) ∋ ( ( λ x539 -> ( ( Bool -> Bool ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( d400 ) ) ) ) $ ( if false then true else true )
        d541 : if false then if true then Bool else Bool else if true then Bool else Bool
        d541 = if if true then false else true then if d214 then false else false else if d43 then true else d313
        d542 : ( ( Set -> Set ) ∋ ( ( λ x544 -> ( ( Set -> Set ) ∋ ( ( λ x545 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d542 = ( ( Bool -> Bool ) ∋ ( ( λ x543 -> if x543 then d331 else x543 ) ) ) $ ( if d388 then false else d46 )
        d546 : if false then if false then Bool else Bool else if true then Bool else Bool
        d546 = ( ( Bool -> Bool ) ∋ ( ( λ x547 -> if d522 then x547 else d43 ) ) ) $ ( if d227 then d149 else d415 )
        d548 : if true then if true then Bool else Bool else if false then Bool else Bool
        d548 = if if d138 then false else d132 then if false then true else d358 else if false then false else d339
        d549 : ( ( Set -> Set ) ∋ ( ( λ x552 -> ( ( Set -> Set ) ∋ ( ( λ x553 -> x552 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x551 -> true ) ) ) $ ( x550 ) ) ) ) $ ( if d218 then true else true )
        d554 : ( ( Set -> Set ) ∋ ( ( λ x555 -> if false then Bool else x555 ) ) ) $ ( if false then Bool else Bool )
        d554 = if if d491 then d73 else d170 then if d84 then true else d10 else if d92 then false else d529
        d556 : if false then if false then Bool else Bool else if true then Bool else Bool
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x557 -> ( ( Bool -> Bool ) ∋ ( ( λ x558 -> true ) ) ) $ ( x557 ) ) ) ) $ ( if false then d266 else false )
        d559 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x561 -> x560 ) ) ) $ ( x560 ) ) ) ) $ ( if true then Bool else Bool )
        d559 = if if d467 then false else false then if d542 then d236 else true else if d88 then d295 else false
        d562 : ( ( Set -> Set ) ∋ ( ( λ x565 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d562 = ( ( Bool -> Bool ) ∋ ( ( λ x563 -> ( ( Bool -> Bool ) ∋ ( ( λ x564 -> x564 ) ) ) $ ( d218 ) ) ) ) $ ( if d12 then d394 else d21 )
        d566 : ( ( Set -> Set ) ∋ ( ( λ x568 -> ( ( Set -> Set ) ∋ ( ( λ x569 -> Bool ) ) ) $ ( x568 ) ) ) ) $ ( if true then Bool else Bool )
        d566 = ( ( Bool -> Bool ) ∋ ( ( λ x567 -> if x567 then d170 else x567 ) ) ) $ ( if false then d516 else d52 )
        d570 : ( ( Set -> Set ) ∋ ( ( λ x572 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x571 -> if x571 then false else d81 ) ) ) $ ( if false then d84 else d253 )
        d573 : if true then if true then Bool else Bool else if false then Bool else Bool
        d573 = if if d129 then d61 else false then if d266 then false else false else if false then d290 else true
        d574 : if true then if false then Bool else Bool else if true then Bool else Bool
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x575 -> if true then true else true ) ) ) $ ( if false then true else false )
        d576 : ( ( Set -> Set ) ∋ ( ( λ x577 -> ( ( Set -> Set ) ∋ ( ( λ x578 -> Bool ) ) ) $ ( x577 ) ) ) ) $ ( if true then Bool else Bool )
        d576 = if if d221 then false else d538 then if d55 then true else d266 else if d17 then d311 else d214
        d579 : ( ( Set -> Set ) ∋ ( ( λ x581 -> if false then x581 else x581 ) ) ) $ ( if true then Bool else Bool )
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> if x580 then true else d339 ) ) ) $ ( if true then false else false )
        d582 : if true then if false then Bool else Bool else if false then Bool else Bool
        d582 = if if d491 then d541 else d462 then if true then d103 else false else if true then true else d305
        d583 : ( ( Set -> Set ) ∋ ( ( λ x586 -> ( ( Set -> Set ) ∋ ( ( λ x587 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d583 = ( ( Bool -> Bool ) ∋ ( ( λ x584 -> ( ( Bool -> Bool ) ∋ ( ( λ x585 -> x585 ) ) ) $ ( true ) ) ) ) $ ( if d199 then d146 else d49 )
        d588 : ( ( Set -> Set ) ∋ ( ( λ x591 -> if false then Bool else x591 ) ) ) $ ( if true then Bool else Bool )
        d588 = ( ( Bool -> Bool ) ∋ ( ( λ x589 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( d316 ) ) ) ) $ ( if true then d496 else d383 )
        d592 : ( ( Set -> Set ) ∋ ( ( λ x595 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x593 -> ( ( Bool -> Bool ) ∋ ( ( λ x594 -> true ) ) ) $ ( true ) ) ) ) $ ( if d331 then false else false )
        d596 : ( ( Set -> Set ) ∋ ( ( λ x598 -> if true then Bool else x598 ) ) ) $ ( if false then Bool else Bool )
        d596 = ( ( Bool -> Bool ) ∋ ( ( λ x597 -> if true then false else x597 ) ) ) $ ( if false then d64 else false )
        d599 : if true then if false then Bool else Bool else if false then Bool else Bool
        d599 = if if false then true else true then if true then false else d153 else if true then true else true
        d600 : if true then if false then Bool else Bool else if false then Bool else Bool
        d600 = if if true then d574 else d18 then if d73 then d198 else false else if true then false else d328
        d601 : if false then if true then Bool else Bool else if true then Bool else Bool
        d601 = if if true then d383 else true then if d505 then false else d404 else if false then d491 else d243
        d602 : if true then if true then Bool else Bool else if true then Bool else Bool
        d602 = if if false then true else d344 then if d185 then d49 else d189 else if false then false else d525
        d603 : if true then if true then Bool else Bool else if false then Bool else Bool
        d603 = if if d4 then true else d478 then if d478 then true else false else if true then false else d208
        d604 : ( ( Set -> Set ) ∋ ( ( λ x605 -> ( ( Set -> Set ) ∋ ( ( λ x606 -> x606 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d604 = if if true then false else d214 then if true then d576 else d566 else if d146 then false else d463
        d607 : if false then if true then Bool else Bool else if true then Bool else Bool
        d607 = if if d282 then d153 else false then if d604 then false else d62 else if d559 then false else d204
        d608 : ( ( Set -> Set ) ∋ ( ( λ x609 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d608 = if if false then true else false then if d388 then d554 else d313 else if d116 then false else d227
        d610 : if false then if false then Bool else Bool else if true then Bool else Bool
        d610 = if if d556 then d227 else false then if d84 then d5 else true else if d391 then false else d436
        d611 : ( ( Set -> Set ) ∋ ( ( λ x613 -> ( ( Set -> Set ) ∋ ( ( λ x614 -> Bool ) ) ) $ ( x613 ) ) ) ) $ ( if false then Bool else Bool )
        d611 = ( ( Bool -> Bool ) ∋ ( ( λ x612 -> if d549 then true else true ) ) ) $ ( if d55 then false else false )
        d615 : if true then if true then Bool else Bool else if false then Bool else Bool
        d615 = if if true then false else d254 then if d262 then false else d173 else if d305 then d290 else true
        d616 : if true then if true then Bool else Bool else if false then Bool else Bool
        d616 = ( ( Bool -> Bool ) ∋ ( ( λ x617 -> ( ( Bool -> Bool ) ∋ ( ( λ x618 -> false ) ) ) $ ( d36 ) ) ) ) $ ( if true then false else true )
        d619 : if true then if false then Bool else Bool else if false then Bool else Bool
        d619 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x621 -> x620 ) ) ) $ ( d305 ) ) ) ) $ ( if true then d77 else d466 )
        d622 : ( ( Set -> Set ) ∋ ( ( λ x624 -> ( ( Set -> Set ) ∋ ( ( λ x625 -> x625 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x623 -> if x623 then x623 else x623 ) ) ) $ ( if true then true else true )
        d626 : ( ( Set -> Set ) ∋ ( ( λ x628 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d626 = ( ( Bool -> Bool ) ∋ ( ( λ x627 -> if x627 then x627 else x627 ) ) ) $ ( if d204 then true else true )
        d629 : if true then if true then Bool else Bool else if true then Bool else Bool
        d629 = if if d1 then d535 else true then if d505 then false else d262 else if d209 then true else false
        d630 : if false then if false then Bool else Bool else if true then Bool else Bool
        d630 = ( ( Bool -> Bool ) ∋ ( ( λ x631 -> ( ( Bool -> Bool ) ∋ ( ( λ x632 -> d225 ) ) ) $ ( false ) ) ) ) $ ( if d508 then true else d364 )
        d633 : ( ( Set -> Set ) ∋ ( ( λ x635 -> ( ( Set -> Set ) ∋ ( ( λ x636 -> x635 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d633 = ( ( Bool -> Bool ) ∋ ( ( λ x634 -> if d17 then d243 else d464 ) ) ) $ ( if d516 then true else d26 )
        d637 : ( ( Set -> Set ) ∋ ( ( λ x638 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d637 = if if d77 then true else true then if false then d49 else d383 else if false then d432 else d611
        d639 : if true then if true then Bool else Bool else if true then Bool else Bool
        d639 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if true then true else false ) ) ) $ ( if d67 then d332 else true )
        d641 : ( ( Set -> Set ) ∋ ( ( λ x643 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d641 = ( ( Bool -> Bool ) ∋ ( ( λ x642 -> if true then d195 else false ) ) ) $ ( if d208 then true else d175 )
        d644 : ( ( Set -> Set ) ∋ ( ( λ x645 -> if true then Bool else x645 ) ) ) $ ( if true then Bool else Bool )
        d644 = if if d416 then d372 else d227 then if d85 then false else false else if false then true else false
        d646 : if false then if true then Bool else Bool else if true then Bool else Bool
        d646 = if if true then d644 else true then if true then d454 else true else if false then true else d208
        d647 : ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x651 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d647 = ( ( Bool -> Bool ) ∋ ( ( λ x648 -> ( ( Bool -> Bool ) ∋ ( ( λ x649 -> false ) ) ) $ ( false ) ) ) ) $ ( if d489 then true else d489 )
        d652 : if false then if true then Bool else Bool else if true then Bool else Bool
        d652 = ( ( Bool -> Bool ) ∋ ( ( λ x653 -> if d566 then false else true ) ) ) $ ( if false then d26 else true )
        d654 : ( ( Set -> Set ) ∋ ( ( λ x655 -> ( ( Set -> Set ) ∋ ( ( λ x656 -> x656 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d654 = if if false then d301 else d185 then if false then false else d521 else if d303 then false else false
        d657 : ( ( Set -> Set ) ∋ ( ( λ x659 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d657 = ( ( Bool -> Bool ) ∋ ( ( λ x658 -> if x658 then x658 else d311 ) ) ) $ ( if false then d116 else true )
        d660 : ( ( Set -> Set ) ∋ ( ( λ x661 -> ( ( Set -> Set ) ∋ ( ( λ x662 -> x662 ) ) ) $ ( x661 ) ) ) ) $ ( if false then Bool else Bool )
        d660 = if if true then true else true then if d272 then true else true else if true then d254 else true
        d663 : if false then if true then Bool else Bool else if true then Bool else Bool
        d663 = if if d70 then d325 else false then if false then d437 else d470 else if d592 then false else d419
        d664 : ( ( Set -> Set ) ∋ ( ( λ x667 -> ( ( Set -> Set ) ∋ ( ( λ x668 -> Bool ) ) ) $ ( x667 ) ) ) ) $ ( if true then Bool else Bool )
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x665 -> ( ( Bool -> Bool ) ∋ ( ( λ x666 -> true ) ) ) $ ( true ) ) ) ) $ ( if d475 then d549 else d619 )
        d669 : if false then if true then Bool else Bool else if true then Bool else Bool
        d669 = if if false then d4 else false then if false then true else true else if d436 then true else d84
        d670 : if true then if true then Bool else Bool else if false then Bool else Bool
        d670 = ( ( Bool -> Bool ) ∋ ( ( λ x671 -> ( ( Bool -> Bool ) ∋ ( ( λ x672 -> true ) ) ) $ ( true ) ) ) ) $ ( if d408 then d481 else true )
        d673 : if true then if false then Bool else Bool else if false then Bool else Bool
        d673 = if if d670 then false else true then if d207 then d295 else true else if false then false else false
        d674 : ( ( Set -> Set ) ∋ ( ( λ x675 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d674 = if if false then d425 else d310 then if false then false else true else if d153 then false else d626
        d676 : if true then if false then Bool else Bool else if false then Bool else Bool
        d676 = ( ( Bool -> Bool ) ∋ ( ( λ x677 -> ( ( Bool -> Bool ) ∋ ( ( λ x678 -> x677 ) ) ) $ ( x677 ) ) ) ) $ ( if false then true else false )
        d679 : if true then if true then Bool else Bool else if false then Bool else Bool
        d679 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> ( ( Bool -> Bool ) ∋ ( ( λ x681 -> true ) ) ) $ ( x680 ) ) ) ) $ ( if false then d295 else true )
        d682 : ( ( Set -> Set ) ∋ ( ( λ x684 -> if false then Bool else x684 ) ) ) $ ( if false then Bool else Bool )
        d682 = ( ( Bool -> Bool ) ∋ ( ( λ x683 -> if false then x683 else d277 ) ) ) $ ( if d149 then false else false )
        d685 : if true then if false then Bool else Bool else if true then Bool else Bool
        d685 = if if d437 then d34 else d303 then if d10 then false else d312 else if false then d201 else d601
        d686 : ( ( Set -> Set ) ∋ ( ( λ x687 -> ( ( Set -> Set ) ∋ ( ( λ x688 -> x687 ) ) ) $ ( x687 ) ) ) ) $ ( if false then Bool else Bool )
        d686 = if if d61 then false else true then if d84 then d433 else false else if true then d316 else d38
        d689 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x691 -> x690 ) ) ) $ ( x690 ) ) ) ) $ ( if true then Bool else Bool )
        d689 = if if true then true else d77 then if false then d97 else false else if d639 then true else true
        d692 : if false then if false then Bool else Bool else if true then Bool else Bool
        d692 = ( ( Bool -> Bool ) ∋ ( ( λ x693 -> if x693 then false else d253 ) ) ) $ ( if true then true else d559 )
        d694 : if true then if false then Bool else Bool else if true then Bool else Bool
        d694 = ( ( Bool -> Bool ) ∋ ( ( λ x695 -> if x695 then d153 else false ) ) ) $ ( if d615 then d124 else d619 )
        d696 : if false then if false then Bool else Bool else if false then Bool else Bool
        d696 = ( ( Bool -> Bool ) ∋ ( ( λ x697 -> ( ( Bool -> Bool ) ∋ ( ( λ x698 -> true ) ) ) $ ( x697 ) ) ) ) $ ( if false then true else d353 )
        d699 : ( ( Set -> Set ) ∋ ( ( λ x700 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d699 = if if d556 then false else false then if true then d376 else true else if d5 then d272 else true
        d701 : ( ( Set -> Set ) ∋ ( ( λ x702 -> ( ( Set -> Set ) ∋ ( ( λ x703 -> x703 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d701 = if if false then d325 else false then if d388 then d350 else true else if d601 then d243 else false
        d704 : if true then if false then Bool else Bool else if true then Bool else Bool
        d704 = ( ( Bool -> Bool ) ∋ ( ( λ x705 -> ( ( Bool -> Bool ) ∋ ( ( λ x706 -> x705 ) ) ) $ ( d521 ) ) ) ) $ ( if true then d86 else d253 )
        d707 : if false then if true then Bool else Bool else if false then Bool else Bool
        d707 = if if true then d156 else true then if true then d36 else d88 else if false then false else true
        d708 : if false then if false then Bool else Bool else if false then Bool else Bool
        d708 = ( ( Bool -> Bool ) ∋ ( ( λ x709 -> ( ( Bool -> Bool ) ∋ ( ( λ x710 -> d505 ) ) ) $ ( x709 ) ) ) ) $ ( if false then true else d692 )
        d711 : ( ( Set -> Set ) ∋ ( ( λ x712 -> ( ( Set -> Set ) ∋ ( ( λ x713 -> x712 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d711 = if if d364 then d99 else false then if false then d73 else false else if false then d394 else false
        d714 : ( ( Set -> Set ) ∋ ( ( λ x715 -> if true then x715 else x715 ) ) ) $ ( if false then Bool else Bool )
        d714 = if if false then d355 else d64 then if false then false else false else if d116 then d88 else true
        d716 : ( ( Set -> Set ) ∋ ( ( λ x719 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d716 = ( ( Bool -> Bool ) ∋ ( ( λ x717 -> ( ( Bool -> Bool ) ∋ ( ( λ x718 -> d276 ) ) ) $ ( d249 ) ) ) ) $ ( if d260 then false else false )
        d720 : ( ( Set -> Set ) ∋ ( ( λ x721 -> if false then x721 else Bool ) ) ) $ ( if true then Bool else Bool )
        d720 = if if true then false else d311 then if false then true else d689 else if d62 then true else true
        d722 : if false then if true then Bool else Bool else if false then Bool else Bool
        d722 = ( ( Bool -> Bool ) ∋ ( ( λ x723 -> if true then d588 else false ) ) ) $ ( if true then d383 else true )
        d724 : if false then if true then Bool else Bool else if true then Bool else Bool
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x725 -> if true then true else d722 ) ) ) $ ( if d574 then true else false )
        d726 : if false then if false then Bool else Bool else if true then Bool else Bool
        d726 = if if false then false else d443 then if true then false else false else if d74 then d562 else true
        d727 : if false then if false then Bool else Bool else if true then Bool else Bool
        d727 = if if d64 then false else d454 then if d664 then d383 else true else if d692 then d84 else false
        d728 : if false then if false then Bool else Bool else if true then Bool else Bool
        d728 = if if true then d100 else d471 then if true then d129 else false else if d106 then d316 else d566
        d729 : if false then if true then Bool else Bool else if true then Bool else Bool
        d729 = if if d85 then d40 else true then if true then d253 else d249 else if d77 then d495 else false
        d730 : ( ( Set -> Set ) ∋ ( ( λ x733 -> ( ( Set -> Set ) ∋ ( ( λ x734 -> x733 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d730 = ( ( Bool -> Bool ) ∋ ( ( λ x731 -> ( ( Bool -> Bool ) ∋ ( ( λ x732 -> false ) ) ) $ ( x731 ) ) ) ) $ ( if true then true else d214 )
        d735 : if true then if false then Bool else Bool else if true then Bool else Bool
        d735 = if if true then false else d131 then if d679 then d548 else false else if d350 then d566 else false
        d736 : ( ( Set -> Set ) ∋ ( ( λ x737 -> ( ( Set -> Set ) ∋ ( ( λ x738 -> x738 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d736 = if if false then d131 else d711 then if d27 then d156 else d122 else if d173 then false else d462
        d739 : if false then if true then Bool else Bool else if true then Bool else Bool
        d739 = if if true then false else d132 then if true then d449 else d419 else if d179 then d189 else false
        d740 : if true then if false then Bool else Bool else if false then Bool else Bool
        d740 = if if true then false else d442 then if false then true else d364 else if d583 then d31 else d458
        d741 : if false then if false then Bool else Bool else if true then Bool else Bool
        d741 = ( ( Bool -> Bool ) ∋ ( ( λ x742 -> if x742 then d727 else d332 ) ) ) $ ( if true then d266 else d81 )
        d743 : if false then if true then Bool else Bool else if true then Bool else Bool
        d743 = if if d192 then true else false then if true then d608 else d549 else if true then d328 else false
        d744 : ( ( Set -> Set ) ∋ ( ( λ x747 -> ( ( Set -> Set ) ∋ ( ( λ x748 -> Bool ) ) ) $ ( x747 ) ) ) ) $ ( if false then Bool else Bool )
        d744 = ( ( Bool -> Bool ) ∋ ( ( λ x745 -> ( ( Bool -> Bool ) ∋ ( ( λ x746 -> d46 ) ) ) $ ( true ) ) ) ) $ ( if d260 then true else d726 )
        d749 : if false then if false then Bool else Bool else if false then Bool else Bool
        d749 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if true then false else false ) ) ) $ ( if d652 then true else true )
        d751 : if true then if false then Bool else Bool else if true then Bool else Bool
        d751 = if if true then d329 else true then if true then false else false else if true then d272 else d305
        d752 : if true then if true then Bool else Bool else if false then Bool else Bool
        d752 = ( ( Bool -> Bool ) ∋ ( ( λ x753 -> ( ( Bool -> Bool ) ∋ ( ( λ x754 -> x754 ) ) ) $ ( d743 ) ) ) ) $ ( if true then false else d749 )
        d755 : ( ( Set -> Set ) ∋ ( ( λ x756 -> ( ( Set -> Set ) ∋ ( ( λ x757 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d755 = if if true then true else d74 then if true then true else false else if false then false else d4
        d758 : if false then if false then Bool else Bool else if false then Bool else Bool
        d758 = if if d521 then d486 else false then if d324 then true else d372 else if d49 then d4 else true
        d759 : if true then if true then Bool else Bool else if false then Bool else Bool
        d759 = if if true then d253 else d243 then if true then d185 else d276 else if true then d541 else false
        d760 : if true then if false then Bool else Bool else if false then Bool else Bool
        d760 = if if d611 then true else d38 then if false then d218 else true else if d276 then true else false
        d761 : ( ( Set -> Set ) ∋ ( ( λ x764 -> if true then Bool else x764 ) ) ) $ ( if true then Bool else Bool )
        d761 = ( ( Bool -> Bool ) ∋ ( ( λ x762 -> ( ( Bool -> Bool ) ∋ ( ( λ x763 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d175 else d744 )
        d765 : if true then if false then Bool else Bool else if false then Bool else Bool
        d765 = ( ( Bool -> Bool ) ∋ ( ( λ x766 -> if d475 then d633 else x766 ) ) ) $ ( if false then false else false )
        d767 : if true then if true then Bool else Bool else if false then Bool else Bool
        d767 = ( ( Bool -> Bool ) ∋ ( ( λ x768 -> ( ( Bool -> Bool ) ∋ ( ( λ x769 -> d525 ) ) ) $ ( d646 ) ) ) ) $ ( if d679 then true else d431 )
        d770 : if false then if false then Bool else Bool else if false then Bool else Bool
        d770 = if if d97 then false else d602 then if d262 then true else d692 else if false then d673 else true
        d771 : if false then if false then Bool else Bool else if true then Bool else Bool
        d771 = if if d192 then d521 else d730 then if d249 then d582 else false else if false then d162 else false
        d772 : ( ( Set -> Set ) ∋ ( ( λ x775 -> ( ( Set -> Set ) ∋ ( ( λ x776 -> Bool ) ) ) $ ( x775 ) ) ) ) $ ( if false then Bool else Bool )
        d772 = ( ( Bool -> Bool ) ∋ ( ( λ x773 -> ( ( Bool -> Bool ) ∋ ( ( λ x774 -> x773 ) ) ) $ ( d305 ) ) ) ) $ ( if d714 then d17 else false )
        d777 : ( ( Set -> Set ) ∋ ( ( λ x780 -> if false then Bool else x780 ) ) ) $ ( if false then Bool else Bool )
        d777 = ( ( Bool -> Bool ) ∋ ( ( λ x778 -> ( ( Bool -> Bool ) ∋ ( ( λ x779 -> d749 ) ) ) $ ( false ) ) ) ) $ ( if d673 then d633 else d189 )
        d781 : ( ( Set -> Set ) ∋ ( ( λ x784 -> ( ( Set -> Set ) ∋ ( ( λ x785 -> Bool ) ) ) $ ( x784 ) ) ) ) $ ( if false then Bool else Bool )
        d781 = ( ( Bool -> Bool ) ∋ ( ( λ x782 -> ( ( Bool -> Bool ) ∋ ( ( λ x783 -> x783 ) ) ) $ ( x782 ) ) ) ) $ ( if d499 then d114 else false )
        d786 : if false then if false then Bool else Bool else if false then Bool else Bool
        d786 = if if d462 then d592 else true then if true then false else true else if d601 then false else d416
        d787 : if false then if false then Bool else Bool else if true then Bool else Bool
        d787 = if if false then d394 else d323 then if d358 then false else true else if false then true else true
        d788 : if true then if false then Bool else Bool else if false then Bool else Bool
        d788 = ( ( Bool -> Bool ) ∋ ( ( λ x789 -> ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d791 : ( ( Set -> Set ) ∋ ( ( λ x792 -> ( ( Set -> Set ) ∋ ( ( λ x793 -> Bool ) ) ) $ ( x792 ) ) ) ) $ ( if false then Bool else Bool )
        d791 = if if false then true else d611 then if d353 then d530 else true else if d165 then true else true
        d794 : ( ( Set -> Set ) ∋ ( ( λ x795 -> if false then Bool else x795 ) ) ) $ ( if true then Bool else Bool )
        d794 = if if true then false else d165 then if true then d467 else d592 else if d511 then true else d308
        d796 : if true then if true then Bool else Bool else if true then Bool else Bool
        d796 = ( ( Bool -> Bool ) ∋ ( ( λ x797 -> ( ( Bool -> Bool ) ∋ ( ( λ x798 -> false ) ) ) $ ( d298 ) ) ) ) $ ( if true then true else d99 )
        d799 : ( ( Set -> Set ) ∋ ( ( λ x800 -> ( ( Set -> Set ) ∋ ( ( λ x801 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d799 = if if false then d372 else d249 then if d142 then true else true else if d85 then true else d489
        d802 : ( ( Set -> Set ) ∋ ( ( λ x804 -> if false then x804 else x804 ) ) ) $ ( if true then Bool else Bool )
        d802 = ( ( Bool -> Bool ) ∋ ( ( λ x803 -> if x803 then d626 else false ) ) ) $ ( if true then d714 else d471 )
        d805 : if true then if true then Bool else Bool else if true then Bool else Bool
        d805 = if if true then true else false then if d652 then true else false else if true then d755 else d295
        d806 : ( ( Set -> Set ) ∋ ( ( λ x808 -> if false then x808 else Bool ) ) ) $ ( if false then Bool else Bool )
        d806 = ( ( Bool -> Bool ) ∋ ( ( λ x807 -> if x807 then true else d794 ) ) ) $ ( if d694 then true else d761 )
        d809 : if false then if true then Bool else Bool else if true then Bool else Bool
        d809 = if if d526 then d80 else false then if false then d413 else d332 else if d31 then true else d611
        d810 : if true then if false then Bool else Bool else if true then Bool else Bool
        d810 = ( ( Bool -> Bool ) ∋ ( ( λ x811 -> ( ( Bool -> Bool ) ∋ ( ( λ x812 -> x811 ) ) ) $ ( x811 ) ) ) ) $ ( if d271 then false else true )
        d813 : if true then if true then Bool else Bool else if false then Bool else Bool
        d813 = if if false then d599 else false then if d570 then true else true else if d43 then d205 else d94
        d814 : if true then if true then Bool else Bool else if true then Bool else Bool
        d814 = ( ( Bool -> Bool ) ∋ ( ( λ x815 -> if x815 then x815 else true ) ) ) $ ( if d576 then d418 else d664 )
        d816 : if false then if true then Bool else Bool else if true then Bool else Bool
        d816 = ( ( Bool -> Bool ) ∋ ( ( λ x817 -> ( ( Bool -> Bool ) ∋ ( ( λ x818 -> d26 ) ) ) $ ( x817 ) ) ) ) $ ( if d192 then d339 else d229 )
        d819 : ( ( Set -> Set ) ∋ ( ( λ x821 -> if true then x821 else x821 ) ) ) $ ( if false then Bool else Bool )
        d819 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if x820 then x820 else false ) ) ) $ ( if d481 then d64 else d175 )
        d822 : ( ( Set -> Set ) ∋ ( ( λ x825 -> ( ( Set -> Set ) ∋ ( ( λ x826 -> x825 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d822 = ( ( Bool -> Bool ) ∋ ( ( λ x823 -> ( ( Bool -> Bool ) ∋ ( ( λ x824 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d827 : ( ( Set -> Set ) ∋ ( ( λ x828 -> if true then x828 else Bool ) ) ) $ ( if false then Bool else Bool )
        d827 = if if false then d464 else false then if true then false else true else if false then true else d62
        d829 : ( ( Set -> Set ) ∋ ( ( λ x830 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d829 = if if d204 then d272 else false then if true then d478 else true else if false then false else d221
        d831 : ( ( Set -> Set ) ∋ ( ( λ x832 -> ( ( Set -> Set ) ∋ ( ( λ x833 -> x833 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d831 = if if false then d153 else false then if false then d670 else true else if true then d391 else d463
        d834 : ( ( Set -> Set ) ∋ ( ( λ x835 -> ( ( Set -> Set ) ∋ ( ( λ x836 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d834 = if if d17 then d415 else d27 then if d254 then true else false else if d100 then true else d735
        d837 : ( ( Set -> Set ) ∋ ( ( λ x839 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d837 = ( ( Bool -> Bool ) ∋ ( ( λ x838 -> if x838 then d720 else d481 ) ) ) $ ( if false then false else false )
        d841 : ( ( Set -> Set ) ∋ ( ( λ x844 -> ( ( Set -> Set ) ∋ ( ( λ x845 -> x845 ) ) ) $ ( x844 ) ) ) ) $ ( if true then Bool else Bool )
        d841 = ( ( Bool -> Bool ) ∋ ( ( λ x842 -> ( ( Bool -> Bool ) ∋ ( ( λ x843 -> true ) ) ) $ ( x842 ) ) ) ) $ ( if false then d462 else false )
        d846 : ( ( Set -> Set ) ∋ ( ( λ x847 -> ( ( Set -> Set ) ∋ ( ( λ x848 -> Bool ) ) ) $ ( x847 ) ) ) ) $ ( if false then Bool else Bool )
        d846 = if if d349 then d1 else true then if false then d179 else d637 else if true then true else false
        d849 : ( ( Set -> Set ) ∋ ( ( λ x850 -> ( ( Set -> Set ) ∋ ( ( λ x851 -> Bool ) ) ) $ ( x850 ) ) ) ) $ ( if false then Bool else Bool )
        d849 = if if d323 then true else false then if d80 then d556 else true else if d500 then false else true
        d852 : ( ( Set -> Set ) ∋ ( ( λ x853 -> if true then x853 else x853 ) ) ) $ ( if false then Bool else Bool )
        d852 = if if true then d308 else true then if d257 then d765 else d313 else if true then d59 else d355
        d854 : ( ( Set -> Set ) ∋ ( ( λ x856 -> ( ( Set -> Set ) ∋ ( ( λ x857 -> Bool ) ) ) $ ( x856 ) ) ) ) $ ( if false then Bool else Bool )
        d854 = ( ( Bool -> Bool ) ∋ ( ( λ x855 -> if x855 then false else x855 ) ) ) $ ( if true then d486 else false )
        d858 : ( ( Set -> Set ) ∋ ( ( λ x859 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d858 = if if true then true else false then if d266 then true else d349 else if false then d262 else true
        d860 : ( ( Set -> Set ) ∋ ( ( λ x863 -> ( ( Set -> Set ) ∋ ( ( λ x864 -> Bool ) ) ) $ ( x863 ) ) ) ) $ ( if false then Bool else Bool )
        d860 = ( ( Bool -> Bool ) ∋ ( ( λ x861 -> ( ( Bool -> Bool ) ∋ ( ( λ x862 -> x862 ) ) ) $ ( true ) ) ) ) $ ( if d353 then true else d592 )
        d865 : ( ( Set -> Set ) ∋ ( ( λ x866 -> ( ( Set -> Set ) ∋ ( ( λ x867 -> x866 ) ) ) $ ( x866 ) ) ) ) $ ( if false then Bool else Bool )
        d865 = if if d755 then d142 else d758 then if true then false else d562 else if d84 then true else d43
        d868 : ( ( Set -> Set ) ∋ ( ( λ x871 -> ( ( Set -> Set ) ∋ ( ( λ x872 -> Bool ) ) ) $ ( x871 ) ) ) ) $ ( if false then Bool else Bool )
        d868 = ( ( Bool -> Bool ) ∋ ( ( λ x869 -> ( ( Bool -> Bool ) ∋ ( ( λ x870 -> x869 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d108 )
        d873 : ( ( Set -> Set ) ∋ ( ( λ x876 -> if false then x876 else x876 ) ) ) $ ( if false then Bool else Bool )
        d873 = ( ( Bool -> Bool ) ∋ ( ( λ x874 -> ( ( Bool -> Bool ) ∋ ( ( λ x875 -> x875 ) ) ) $ ( x874 ) ) ) ) $ ( if true then false else true )
        d877 : if true then if true then Bool else Bool else if false then Bool else Bool
        d877 = if if d423 then false else d162 then if true then true else false else if true then true else true
        d878 : ( ( Set -> Set ) ∋ ( ( λ x879 -> if true then x879 else x879 ) ) ) $ ( if true then Bool else Bool )
        d878 = if if false then d611 else d265 then if false then d429 else true else if d199 then d741 else d841
        d880 : if true then if true then Bool else Bool else if true then Bool else Bool
        d880 = if if d34 then false else d142 then if d189 then true else true else if d686 then false else d470
        d881 : ( ( Set -> Set ) ∋ ( ( λ x882 -> if true then x882 else Bool ) ) ) $ ( if false then Bool else Bool )
        d881 = if if d846 then false else d607 then if d554 then false else d814 else if d714 then d64 else d854
        d883 : ( ( Set -> Set ) ∋ ( ( λ x886 -> ( ( Set -> Set ) ∋ ( ( λ x887 -> Bool ) ) ) $ ( x886 ) ) ) ) $ ( if true then Bool else Bool )
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x884 -> ( ( Bool -> Bool ) ∋ ( ( λ x885 -> d254 ) ) ) $ ( x884 ) ) ) ) $ ( if d467 then false else false )
        d888 : if false then if false then Bool else Bool else if true then Bool else Bool
        d888 = if if false then false else d881 then if true then true else false else if false then d463 else false
        d889 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x891 -> x891 ) ) ) $ ( x890 ) ) ) ) $ ( if false then Bool else Bool )
        d889 = if if d730 then false else true then if true then d726 else false else if true then d735 else true
        d892 : if false then if true then Bool else Bool else if false then Bool else Bool
        d892 = ( ( Bool -> Bool ) ∋ ( ( λ x893 -> if x893 then d88 else false ) ) ) $ ( if true then d382 else d229 )
        d894 : if true then if false then Bool else Bool else if false then Bool else Bool
        d894 = if if d576 then true else true then if false then d364 else d883 else if false then d454 else true
        d895 : if true then if true then Bool else Bool else if true then Bool else Bool
        d895 = ( ( Bool -> Bool ) ∋ ( ( λ x896 -> if true then x896 else x896 ) ) ) $ ( if true then true else true )
        d897 : ( ( Set -> Set ) ∋ ( ( λ x898 -> if false then x898 else x898 ) ) ) $ ( if false then Bool else Bool )
        d897 = if if false then d5 else false then if false then d772 else d59 else if false then false else d722
        d899 : if false then if true then Bool else Bool else if true then Bool else Bool
        d899 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( Bool -> Bool ) ∋ ( ( λ x901 -> x900 ) ) ) $ ( d765 ) ) ) ) $ ( if false then d21 else d260 )
        d902 : ( ( Set -> Set ) ∋ ( ( λ x903 -> if true then x903 else Bool ) ) ) $ ( if false then Bool else Bool )
        d902 = if if d311 then d182 else d865 then if d633 then d799 else d663 else if d112 then d608 else d38
        d904 : if false then if true then Bool else Bool else if false then Bool else Bool
        d904 = if if d260 then d423 else d213 then if false then true else d129 else if d902 then d777 else d873
        d905 : ( ( Set -> Set ) ∋ ( ( λ x907 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d905 = ( ( Bool -> Bool ) ∋ ( ( λ x906 -> if true then x906 else x906 ) ) ) $ ( if d701 then true else d85 )
        d908 : ( ( Set -> Set ) ∋ ( ( λ x909 -> ( ( Set -> Set ) ∋ ( ( λ x910 -> x909 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d908 = if if d168 then d822 else d660 then if false then true else false else if d548 then true else d310
        d911 : ( ( Set -> Set ) ∋ ( ( λ x912 -> if false then Bool else x912 ) ) ) $ ( if true then Bool else Bool )
        d911 = if if true then true else false then if d437 then false else d179 else if d441 then false else true
        d913 : if false then if false then Bool else Bool else if false then Bool else Bool
        d913 = if if d556 then false else false then if true then true else d236 else if d391 then true else false
        d914 : ( ( Set -> Set ) ∋ ( ( λ x915 -> if false then Bool else x915 ) ) ) $ ( if true then Bool else Bool )
        d914 = if if true then d554 else false then if d449 then false else d652 else if true then d67 else false
        d916 : if false then if false then Bool else Bool else if true then Bool else Bool
        d916 = if if d419 then true else d36 then if d323 then false else d310 else if false then false else true
        d917 : ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x921 -> x920 ) ) ) $ ( x920 ) ) ) ) $ ( if false then Bool else Bool )
        d917 = ( ( Bool -> Bool ) ∋ ( ( λ x918 -> ( ( Bool -> Bool ) ∋ ( ( λ x919 -> d641 ) ) ) $ ( false ) ) ) ) $ ( if true then d305 else true )
        d922 : ( ( Set -> Set ) ∋ ( ( λ x924 -> ( ( Set -> Set ) ∋ ( ( λ x925 -> x924 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d922 = ( ( Bool -> Bool ) ∋ ( ( λ x923 -> if true then false else d328 ) ) ) $ ( if d610 then false else d458 )
        d926 : if true then if true then Bool else Bool else if false then Bool else Bool
        d926 = if if true then d467 else false then if false then d496 else true else if true then d455 else true
        d927 : if true then if false then Bool else Bool else if false then Bool else Bool
        d927 = if if true then true else false then if true then false else d81 else if d716 then false else true
        d928 : if true then if false then Bool else Bool else if false then Bool else Bool
        d928 = ( ( Bool -> Bool ) ∋ ( ( λ x929 -> if x929 then true else d277 ) ) ) $ ( if true then d26 else d603 )
        d930 : if false then if false then Bool else Bool else if false then Bool else Bool
        d930 = if if d822 then true else false then if false then d64 else true else if true then d841 else d809
        d931 : if true then if true then Bool else Bool else if false then Bool else Bool
        d931 = ( ( Bool -> Bool ) ∋ ( ( λ x932 -> if d767 then d257 else x932 ) ) ) $ ( if false then false else false )
        d933 : ( ( Set -> Set ) ∋ ( ( λ x936 -> if false then x936 else Bool ) ) ) $ ( if true then Bool else Bool )
        d933 = ( ( Bool -> Bool ) ∋ ( ( λ x934 -> ( ( Bool -> Bool ) ∋ ( ( λ x935 -> x935 ) ) ) $ ( x934 ) ) ) ) $ ( if false then d406 else d502 )
        d937 : if true then if true then Bool else Bool else if false then Bool else Bool
        d937 = ( ( Bool -> Bool ) ∋ ( ( λ x938 -> ( ( Bool -> Bool ) ∋ ( ( λ x939 -> d526 ) ) ) $ ( x938 ) ) ) ) $ ( if d228 then false else false )
        d940 : ( ( Set -> Set ) ∋ ( ( λ x942 -> if true then x942 else x942 ) ) ) $ ( if false then Bool else Bool )
        d940 = ( ( Bool -> Bool ) ∋ ( ( λ x941 -> if d454 then x941 else x941 ) ) ) $ ( if d794 then false else false )
        d943 : ( ( Set -> Set ) ∋ ( ( λ x946 -> ( ( Set -> Set ) ∋ ( ( λ x947 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d943 = ( ( Bool -> Bool ) ∋ ( ( λ x944 -> ( ( Bool -> Bool ) ∋ ( ( λ x945 -> x945 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d948 : if true then if false then Bool else Bool else if false then Bool else Bool
        d948 = if if true then false else false then if false then d854 else d418 else if false then d526 else d183
        d949 : if true then if true then Bool else Bool else if true then Bool else Bool
        d949 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if x950 then x950 else true ) ) ) $ ( if d298 then d38 else false )
        d951 : if true then if true then Bool else Bool else if true then Bool else Bool
        d951 = if if false then d394 else d562 then if true then true else true else if true then true else false
        d952 : if false then if false then Bool else Bool else if true then Bool else Bool
        d952 = ( ( Bool -> Bool ) ∋ ( ( λ x953 -> if d694 then true else x953 ) ) ) $ ( if false then true else d535 )
        d954 : ( ( Set -> Set ) ∋ ( ( λ x955 -> if false then x955 else x955 ) ) ) $ ( if true then Bool else Bool )
        d954 = if if d440 then d443 else d404 then if true then true else d846 else if true then true else true
        d956 : if false then if false then Bool else Bool else if true then Bool else Bool
        d956 = if if d195 then false else d904 then if d308 then d911 else false else if true then d786 else false
        d957 : if false then if false then Bool else Bool else if true then Bool else Bool
        d957 = ( ( Bool -> Bool ) ∋ ( ( λ x958 -> if d600 then x958 else d38 ) ) ) $ ( if false then d908 else d952 )
        d959 : if true then if true then Bool else Bool else if false then Bool else Bool
        d959 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> if x960 then x960 else d679 ) ) ) $ ( if d301 then d416 else d106 )
        d961 : if true then if true then Bool else Bool else if true then Bool else Bool
        d961 = if if false then d305 else true then if d602 then d516 else d791 else if d253 then d883 else d132
        d962 : if false then if false then Bool else Bool else if true then Bool else Bool
        d962 = if if d822 then false else true then if d711 then d849 else true else if true then false else false
        d963 : ( ( Set -> Set ) ∋ ( ( λ x964 -> if true then Bool else x964 ) ) ) $ ( if false then Bool else Bool )
        d963 = if if d394 then false else true then if d189 then d391 else d36 else if d133 then d62 else d526
        d965 : ( ( Set -> Set ) ∋ ( ( λ x966 -> ( ( Set -> Set ) ∋ ( ( λ x967 -> x966 ) ) ) $ ( x966 ) ) ) ) $ ( if false then Bool else Bool )
        d965 = if if d436 then true else false then if d813 then true else true else if false then d192 else d858
        d968 : if true then if true then Bool else Bool else if true then Bool else Bool
        d968 = ( ( Bool -> Bool ) ∋ ( ( λ x969 -> ( ( Bool -> Bool ) ∋ ( ( λ x970 -> x970 ) ) ) $ ( x969 ) ) ) ) $ ( if true then d464 else false )
        d971 : ( ( Set -> Set ) ∋ ( ( λ x974 -> if false then x974 else Bool ) ) ) $ ( if false then Bool else Bool )
        d971 = ( ( Bool -> Bool ) ∋ ( ( λ x972 -> ( ( Bool -> Bool ) ∋ ( ( λ x973 -> x973 ) ) ) $ ( d740 ) ) ) ) $ ( if d883 then true else d73 )
        d975 : ( ( Set -> Set ) ∋ ( ( λ x978 -> ( ( Set -> Set ) ∋ ( ( λ x979 -> x978 ) ) ) $ ( x978 ) ) ) ) $ ( if false then Bool else Bool )
        d975 = ( ( Bool -> Bool ) ∋ ( ( λ x976 -> ( ( Bool -> Bool ) ∋ ( ( λ x977 -> x976 ) ) ) $ ( false ) ) ) ) $ ( if d73 then false else false )
        d980 : ( ( Set -> Set ) ∋ ( ( λ x981 -> ( ( Set -> Set ) ∋ ( ( λ x982 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d980 = if if d413 then false else true then if false then true else false else if d956 then d153 else d854
        d983 : ( ( Set -> Set ) ∋ ( ( λ x986 -> if true then x986 else Bool ) ) ) $ ( if true then Bool else Bool )
        d983 = ( ( Bool -> Bool ) ∋ ( ( λ x984 -> ( ( Bool -> Bool ) ∋ ( ( λ x985 -> false ) ) ) $ ( x984 ) ) ) ) $ ( if d860 then d954 else d583 )
        d987 : ( ( Set -> Set ) ∋ ( ( λ x988 -> ( ( Set -> Set ) ∋ ( ( λ x989 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d987 = if if d209 then false else d660 then if d62 then true else d254 else if true then d316 else d500
        d990 : if true then if true then Bool else Bool else if false then Bool else Bool
        d990 = if if false then d707 else true then if d570 then d249 else d471 else if true then d61 else d236
        d991 : if false then if false then Bool else Bool else if false then Bool else Bool
        d991 = if if false then true else d728 then if false then d112 else d192 else if true then false else d708
        d992 : if true then if false then Bool else Bool else if true then Bool else Bool
        d992 = if if true then false else false then if d521 then true else true else if true then true else d728
        d993 : if false then if false then Bool else Bool else if true then Bool else Bool
        d993 = ( ( Bool -> Bool ) ∋ ( ( λ x994 -> ( ( Bool -> Bool ) ∋ ( ( λ x995 -> false ) ) ) $ ( x994 ) ) ) ) $ ( if d556 then d290 else false )
        d996 : if true then if true then Bool else Bool else if true then Bool else Bool
        d996 = ( ( Bool -> Bool ) ∋ ( ( λ x997 -> ( ( Bool -> Bool ) ∋ ( ( λ x998 -> d156 ) ) ) $ ( d458 ) ) ) ) $ ( if d108 then true else true )
        d999 : if true then if false then Bool else Bool else if false then Bool else Bool
        d999 = if if false then d227 else false then if false then true else d996 else if false then d274 else false
        d1000 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x1001 -> if x1001 then d999 else true ) ) ) $ ( if d179 then false else d495 )
        d1002 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1002 = if if d402 then false else d363 then if true then d229 else true else if false then true else false
        d1003 : ( ( Set -> Set ) ∋ ( ( λ x1006 -> ( ( Set -> Set ) ∋ ( ( λ x1007 -> Bool ) ) ) $ ( x1006 ) ) ) ) $ ( if false then Bool else Bool )
        d1003 = ( ( Bool -> Bool ) ∋ ( ( λ x1004 -> ( ( Bool -> Bool ) ∋ ( ( λ x1005 -> d570 ) ) ) $ ( d239 ) ) ) ) $ ( if d548 then false else true )
        d1008 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1008 = ( ( Bool -> Bool ) ∋ ( ( λ x1009 -> if x1009 then x1009 else false ) ) ) $ ( if d227 then d822 else false )
        d1011 : ( ( Set -> Set ) ∋ ( ( λ x1012 -> if false then x1012 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1011 = if if false then d85 else true then if d350 then d810 else false else if d156 then true else false
        d1013 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1013 = if if d529 then false else true then if d489 then d402 else d266 else if false then d221 else false
        d1014 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1014 = if if false then false else true then if false then d418 else d525 else if true then false else d74
        d1015 : ( ( Set -> Set ) ∋ ( ( λ x1016 -> ( ( Set -> Set ) ∋ ( ( λ x1017 -> x1016 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1015 = if if true then d676 else d727 then if true then d770 else d657 else if false then d142 else false
        d1018 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x1019 -> ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> x1019 ) ) ) $ ( x1019 ) ) ) ) $ ( if false then false else false )
        d1021 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1021 = if if false then false else d466 then if false then d806 else d363 else if d455 then true else d933
        d1022 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1022 = ( ( Bool -> Bool ) ∋ ( ( λ x1023 -> if d573 then d221 else x1023 ) ) ) $ ( if d530 then d669 else d796 )
        d1024 : ( ( Set -> Set ) ∋ ( ( λ x1027 -> if true then x1027 else x1027 ) ) ) $ ( if false then Bool else Bool )
        d1024 = ( ( Bool -> Bool ) ∋ ( ( λ x1025 -> ( ( Bool -> Bool ) ∋ ( ( λ x1026 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d146 else true )
        d1028 : ( ( Set -> Set ) ∋ ( ( λ x1029 -> if true then x1029 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1028 = if if d895 then d852 else false then if false then d156 else d937 else if true then d429 else d499
        d1030 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> if true then x1031 else true ) ) ) $ ( if false then false else d926 )
        d1032 : ( ( Set -> Set ) ∋ ( ( λ x1033 -> ( ( Set -> Set ) ∋ ( ( λ x1034 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1032 = if if d899 then true else true then if false then true else d462 else if d449 then true else d221
        d1035 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1035 = ( ( Bool -> Bool ) ∋ ( ( λ x1036 -> ( ( Bool -> Bool ) ∋ ( ( λ x1037 -> d80 ) ) ) $ ( d957 ) ) ) ) $ ( if d878 then false else d841 )
        d1038 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1038 = if if d992 then d418 else d637 then if d674 then false else d114 else if d207 then d249 else d880
        d1039 : ( ( Set -> Set ) ∋ ( ( λ x1041 -> ( ( Set -> Set ) ∋ ( ( λ x1042 -> Bool ) ) ) $ ( x1041 ) ) ) ) $ ( if false then Bool else Bool )
        d1039 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if x1040 then d771 else false ) ) ) $ ( if d760 then d602 else true )
        d1043 : ( ( Set -> Set ) ∋ ( ( λ x1046 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1043 = ( ( Bool -> Bool ) ∋ ( ( λ x1044 -> ( ( Bool -> Bool ) ∋ ( ( λ x1045 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else d1024 )
        d1047 : ( ( Set -> Set ) ∋ ( ( λ x1049 -> ( ( Set -> Set ) ∋ ( ( λ x1050 -> Bool ) ) ) $ ( x1049 ) ) ) ) $ ( if false then Bool else Bool )
        d1047 = ( ( Bool -> Bool ) ∋ ( ( λ x1048 -> if x1048 then x1048 else false ) ) ) $ ( if d806 then d374 else true )
        d1051 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1051 = ( ( Bool -> Bool ) ∋ ( ( λ x1052 -> ( ( Bool -> Bool ) ∋ ( ( λ x1053 -> d214 ) ) ) $ ( d546 ) ) ) ) $ ( if d27 then false else true )
        d1054 : ( ( Set -> Set ) ∋ ( ( λ x1057 -> if true then x1057 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1054 = ( ( Bool -> Bool ) ∋ ( ( λ x1055 -> ( ( Bool -> Bool ) ∋ ( ( λ x1056 -> d802 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d26 )
        d1058 : ( ( Set -> Set ) ∋ ( ( λ x1059 -> if false then x1059 else x1059 ) ) ) $ ( if false then Bool else Bool )
        d1058 = if if d559 then true else d619 then if d73 then d526 else d1002 else if false then d36 else d400
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x1061 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1060 = if if false then false else d133 then if d486 then d1032 else d727 else if d133 then true else true
        d1062 : ( ( Set -> Set ) ∋ ( ( λ x1063 -> ( ( Set -> Set ) ∋ ( ( λ x1064 -> x1063 ) ) ) $ ( x1063 ) ) ) ) $ ( if false then Bool else Bool )
        d1062 = if if false then d153 else true then if d686 then d630 else d319 else if true then d500 else false
        d1065 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1065 = ( ( Bool -> Bool ) ∋ ( ( λ x1066 -> if d556 then d1003 else false ) ) ) $ ( if d644 then false else d730 )
        d1067 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1067 = if if false then true else false then if d641 then d674 else false else if false then d17 else true
        d1068 : ( ( Set -> Set ) ∋ ( ( λ x1069 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> x1069 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1068 = if if true then d425 else true then if false then false else true else if d1030 then d740 else false
        d1071 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1071 = if if true then d486 else d877 then if d368 then false else true else if true then d332 else d770
        d1072 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1072 = ( ( Bool -> Bool ) ∋ ( ( λ x1073 -> ( ( Bool -> Bool ) ∋ ( ( λ x1074 -> d173 ) ) ) $ ( d200 ) ) ) ) $ ( if true then d1014 else d441 )
        d1075 : ( ( Set -> Set ) ∋ ( ( λ x1078 -> ( ( Set -> Set ) ∋ ( ( λ x1079 -> x1078 ) ) ) $ ( x1078 ) ) ) ) $ ( if true then Bool else Bool )
        d1075 = ( ( Bool -> Bool ) ∋ ( ( λ x1076 -> ( ( Bool -> Bool ) ∋ ( ( λ x1077 -> d787 ) ) ) $ ( false ) ) ) ) $ ( if d463 then d272 else d214 )
        d1080 : ( ( Set -> Set ) ∋ ( ( λ x1082 -> ( ( Set -> Set ) ∋ ( ( λ x1083 -> Bool ) ) ) $ ( x1082 ) ) ) ) $ ( if true then Bool else Bool )
        d1080 = ( ( Bool -> Bool ) ∋ ( ( λ x1081 -> if d316 then x1081 else true ) ) ) $ ( if d799 then true else d116 )
        d1084 : ( ( Set -> Set ) ∋ ( ( λ x1085 -> if true then x1085 else x1085 ) ) ) $ ( if true then Bool else Bool )
        d1084 = if if d353 then true else false then if false then d402 else true else if true then true else d975
        d1086 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1086 = ( ( Bool -> Bool ) ∋ ( ( λ x1087 -> ( ( Bool -> Bool ) ∋ ( ( λ x1088 -> d922 ) ) ) $ ( d406 ) ) ) ) $ ( if true then false else false )
        d1089 : ( ( Set -> Set ) ∋ ( ( λ x1092 -> ( ( Set -> Set ) ∋ ( ( λ x1093 -> x1092 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1089 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> ( ( Bool -> Bool ) ∋ ( ( λ x1091 -> x1091 ) ) ) $ ( false ) ) ) ) $ ( if d34 then true else d873 )
        d1094 : ( ( Set -> Set ) ∋ ( ( λ x1095 -> if false then Bool else x1095 ) ) ) $ ( if false then Bool else Bool )
        d1094 = if if d55 then false else true then if d860 then d5 else true else if true then true else true
        d1096 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1096 = if if d722 then d574 else true then if false then false else true else if d604 then true else d829
        d1097 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1097 = ( ( Bool -> Bool ) ∋ ( ( λ x1098 -> ( ( Bool -> Bool ) ∋ ( ( λ x1099 -> false ) ) ) $ ( x1098 ) ) ) ) $ ( if false then true else true )
        d1101 : ( ( Set -> Set ) ∋ ( ( λ x1104 -> ( ( Set -> Set ) ∋ ( ( λ x1105 -> x1105 ) ) ) $ ( x1104 ) ) ) ) $ ( if true then Bool else Bool )
        d1101 = ( ( Bool -> Bool ) ∋ ( ( λ x1102 -> ( ( Bool -> Bool ) ∋ ( ( λ x1103 -> d61 ) ) ) $ ( true ) ) ) ) $ ( if d466 then d602 else d744 )
        d1106 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1106 = ( ( Bool -> Bool ) ∋ ( ( λ x1107 -> if x1107 then d794 else true ) ) ) $ ( if d329 then true else d629 )
        d1108 : ( ( Set -> Set ) ∋ ( ( λ x1111 -> ( ( Set -> Set ) ∋ ( ( λ x1112 -> x1111 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1108 = ( ( Bool -> Bool ) ∋ ( ( λ x1109 -> ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> x1109 ) ) ) $ ( d554 ) ) ) ) $ ( if false then true else false )
        d1113 : ( ( Set -> Set ) ∋ ( ( λ x1116 -> if true then x1116 else x1116 ) ) ) $ ( if true then Bool else Bool )
        d1113 = ( ( Bool -> Bool ) ∋ ( ( λ x1114 -> ( ( Bool -> Bool ) ∋ ( ( λ x1115 -> d822 ) ) ) $ ( x1114 ) ) ) ) $ ( if d467 then false else true )
        d1117 : ( ( Set -> Set ) ∋ ( ( λ x1118 -> if true then Bool else x1118 ) ) ) $ ( if false then Bool else Bool )
        d1117 = if if false then false else d961 then if true then true else false else if false then false else d1