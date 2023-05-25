module Decl450Base11  where
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
        d1 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x3 ) ) ) $ ( x2 ) ) ) ) $ ( if true then false else false )
        d4 : if true then if true then Bool else Bool else if false then Bool else Bool
        d4 = if if false then false else d1 then if d1 then d1 else d1 else if true then false else false
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> x7 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d5 = if if true then d4 else d4 then if d4 then false else true else if d4 then d4 else d1
        d8 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x12 ) ) ) $ ( x11 ) ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> x9 ) ) ) $ ( x9 ) ) ) ) $ ( if d1 then d5 else true )
        d13 : if false then if true then Bool else Bool else if false then Bool else Bool
        d13 = if if d4 then false else d1 then if false then false else false else if false then false else d1
        d14 : if false then if true then Bool else Bool else if true then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if true then true else d5 ) ) ) $ ( if d8 then d13 else false )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if true then x17 else Bool ) ) ) $ ( if false then Bool else Bool )
        d16 = if if false then d8 else false then if d8 then d14 else true else if d13 then false else true
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d18 = if if d5 then d5 else d14 then if true then false else true else if d4 then d1 else d1
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( x23 ) ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if d5 then d8 else d13 ) ) ) $ ( if d1 then d14 else false )
        d25 : if false then if true then Bool else Bool else if false then Bool else Bool
        d25 = if if d14 then true else false then if false then true else false else if d14 then true else false
        d26 : if true then if true then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> x28 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( x31 ) ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if d5 then x30 else d5 ) ) ) $ ( if d16 then d25 else true )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then x34 else Bool ) ) ) $ ( if true then Bool else Bool )
        d33 = if if d21 then true else false then if d8 then d4 else true else if d4 then false else true
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if false then Bool else x37 ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if false then d13 else true ) ) ) $ ( if d26 then d13 else d21 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( x39 ) ) ) ) $ ( if false then Bool else Bool )
        d38 = if if false then true else d29 then if true then true else d21 else if d21 then true else d4
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = if if d13 then d16 else true then if true then true else d38 else if d18 then d21 else d35
        d42 : if false then if true then Bool else Bool else if true then Bool else Bool
        d42 = if if d33 then d41 else true then if d16 then true else true else if true then d25 else true
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> x44 ) ) ) $ ( x44 ) ) ) ) $ ( if false then Bool else Bool )
        d43 = if if false then false else d42 then if false then d8 else d29 else if true then true else d25
        d46 : if false then if false then Bool else Bool else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> false ) ) ) $ ( d8 ) ) ) ) $ ( if false then d25 else false )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if true then Bool else x51 ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if false then x50 else x50 ) ) ) $ ( if false then true else true )
        d52 : if false then if false then Bool else Bool else if false then Bool else Bool
        d52 = if if d43 then false else d26 then if d16 then d33 else false else if d26 then false else d38
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then x54 else x54 ) ) ) $ ( if true then Bool else Bool )
        d53 = if if true then true else true then if true then d16 else false else if false then d41 else true
        d55 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x58 ) ) ) $ ( x58 ) ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> d52 ) ) ) $ ( d33 ) ) ) ) $ ( if true then true else false )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> x63 ) ) ) $ ( x62 ) ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if true then d25 else d16 ) ) ) $ ( if d14 then false else false )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x67 ) ) ) $ ( x67 ) ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d18 else false )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if d41 then d43 else d21 ) ) ) $ ( if d55 then d21 else true )
        d73 : if false then if true then Bool else Bool else if false then Bool else Bool
        d73 = if if true then d64 else d8 then if true then true else d33 else if false then true else d53
        d74 : if false then if false then Bool else Bool else if true then Bool else Bool
        d74 = if if false then d69 else true then if d41 then d1 else true else if false then d26 else d35
        d75 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if x76 then x76 else d26 ) ) ) $ ( if d14 then d18 else false )
        d79 : if false then if true then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( d41 ) ) ) ) $ ( if true then d16 else d42 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( x85 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> d33 ) ) ) $ ( d1 ) ) ) ) $ ( if true then false else true )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then Bool else x88 ) ) ) $ ( if false then Bool else Bool )
        d87 = if if true then d46 else d64 then if true then d25 else false else if false then d13 else d69
        d89 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else x92 ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> x90 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d42 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then x94 else x94 ) ) ) $ ( if false then Bool else Bool )
        d93 = if if d73 then false else d89 then if true then d14 else d1 else if d26 then d64 else d74
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then Bool else x97 ) ) ) $ ( if false then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d5 then x96 else true ) ) ) $ ( if d87 then true else false )
        d98 : if true then if true then Bool else Bool else if true then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if x99 then d55 else d16 ) ) ) $ ( if d46 then false else true )
        d100 : if false then if true then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> false ) ) ) $ ( d74 ) ) ) ) $ ( if d69 then false else d55 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x104 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d103 = if if true then false else true then if d82 then d42 else true else if d87 then d60 else false
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d106 = if if d55 then d103 else d79 then if false then d14 else false else if d75 then d52 else d95
        d109 : if false then if false then Bool else Bool else if false then Bool else Bool
        d109 = if if true then false else true then if d106 then false else false else if d18 then d73 else false
        d110 : if false then if false then Bool else Bool else if false then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if x111 then x111 else x111 ) ) ) $ ( if d69 then d5 else d100 )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d95 ) ) ) $ ( x113 ) ) ) ) $ ( if d42 then true else true )
        d117 : if true then if false then Bool else Bool else if false then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> true ) ) ) $ ( d42 ) ) ) ) $ ( if d100 then d33 else false )
        d120 : if true then if true then Bool else Bool else if true then Bool else Bool
        d120 = if if false then false else true then if d35 then true else false else if false then false else d75
        d121 : if false then if false then Bool else Bool else if false then Bool else Bool
        d121 = if if false then d98 else true then if true then d117 else false else if d64 then true else true
        d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> x123 ) ) ) $ ( x123 ) ) ) ) $ ( if false then Bool else Bool )
        d122 = if if false then false else d16 then if d33 then false else d79 else if false then true else d82
        d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if false then Bool else x126 ) ) ) $ ( if true then Bool else Bool )
        d125 = if if false then d16 else true then if d109 then d46 else true else if d8 then d120 else false
        d127 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> x129 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if x128 then d52 else x128 ) ) ) $ ( if d33 then true else d1 )
        d131 : if false then if false then Bool else Bool else if false then Bool else Bool
        d131 = if if d100 then false else false then if d14 then d75 else false else if d64 then true else d14
        d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if true then Bool else x133 ) ) ) $ ( if true then Bool else Bool )
        d132 = if if d38 then true else d100 then if d109 then d69 else false else if d64 then d1 else d1
        d134 : if false then if true then Bool else Bool else if true then Bool else Bool
        d134 = if if true then d1 else false then if false then false else false else if d127 then d122 else d110
        d135 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> x137 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d135 = if if true then d89 else true then if d26 then true else true else if false then d134 else d4
        d138 : if false then if true then Bool else Bool else if false then Bool else Bool
        d138 = if if false then true else true then if true then false else d5 else if false then d131 else d49
        d139 : if true then if true then Bool else Bool else if false then Bool else Bool
        d139 = if if d13 then d82 else true then if true then true else d55 else if d93 then false else d18
        d140 : if false then if true then Bool else Bool else if false then Bool else Bool
        d140 = if if false then true else false then if false then false else false else if false then d122 else d53
        d141 : if true then if true then Bool else Bool else if true then Bool else Bool
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> if d29 then false else d26 ) ) ) $ ( if true then d95 else d112 )
        d143 : if true then if false then Bool else Bool else if false then Bool else Bool
        d143 = if if true then d112 else d95 then if false then d26 else d127 else if false then false else false
        d144 : if false then if true then Bool else Bool else if true then Bool else Bool
        d144 = if if d127 then d112 else false then if true then d110 else d121 else if true then d25 else false
        d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d145 = if if d143 then true else d4 then if d4 then false else d141 else if d4 then d64 else d75
        d147 : ( ( Set -> Set ) ∋ ( ( λ x148 -> ( ( Set -> Set ) ∋ ( ( λ x149 -> x149 ) ) ) $ ( x148 ) ) ) ) $ ( if false then Bool else Bool )
        d147 = if if d35 then true else true then if d79 then d139 else false else if false then false else d26
        d150 : if false then if true then Bool else Bool else if true then Bool else Bool
        d150 = if if d64 then false else false then if d131 then false else true else if false then false else d145
        d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> ( ( Set -> Set ) ∋ ( ( λ x153 -> x153 ) ) ) $ ( x152 ) ) ) ) $ ( if true then Bool else Bool )
        d151 = if if false then d135 else true then if false then true else false else if false then d120 else d103
        d154 : if true then if false then Bool else Bool else if true then Bool else Bool
        d154 = if if false then d53 else false then if d49 then d143 else false else if d33 then false else true
        d155 : ( ( Set -> Set ) ∋ ( ( λ x156 -> ( ( Set -> Set ) ∋ ( ( λ x157 -> Bool ) ) ) $ ( x156 ) ) ) ) $ ( if false then Bool else Bool )
        d155 = if if d120 then false else d1 then if d138 then true else d145 else if false then true else d95
        d158 : if false then if false then Bool else Bool else if true then Bool else Bool
        d158 = if if false then true else d132 then if d112 then true else d140 else if d109 then d52 else d41
        d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if true then x160 else Bool ) ) ) $ ( if true then Bool else Bool )
        d159 = if if d53 then d52 else false then if true then false else d154 else if d135 then false else d55
        d161 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if true then x163 else Bool ) ) ) $ ( if false then Bool else Bool )
        d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> if d144 then x162 else d134 ) ) ) $ ( if d140 then d26 else false )
        d164 : if true then if false then Bool else Bool else if false then Bool else Bool
        d164 = if if d120 then true else false then if false then true else true else if true then false else d43
        d165 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if true then x166 else x166 ) ) ) $ ( if true then Bool else Bool )
        d165 = if if d132 then d14 else false then if false then true else true else if d95 then d154 else false
        d167 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> ( ( Bool -> Bool ) ∋ ( ( λ x169 -> d64 ) ) ) $ ( false ) ) ) ) $ ( if d64 then d165 else false )
        d171 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if false then x174 else Bool ) ) ) $ ( if true then Bool else Bool )
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> x172 ) ) ) $ ( d117 ) ) ) ) $ ( if true then d53 else false )
        d175 : ( ( Set -> Set ) ∋ ( ( λ x176 -> ( ( Set -> Set ) ∋ ( ( λ x177 -> Bool ) ) ) $ ( x176 ) ) ) ) $ ( if true then Bool else Bool )
        d175 = if if true then d25 else false then if false then true else false else if false then d134 else false
        d178 : ( ( Set -> Set ) ∋ ( ( λ x179 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( x179 ) ) ) ) $ ( if false then Bool else Bool )
        d178 = if if true then false else d73 then if d125 then true else false else if false then d87 else false
        d181 : if false then if false then Bool else Bool else if true then Bool else Bool
        d181 = if if true then d79 else false then if d159 then true else true else if d43 then d117 else true
        d182 : if false then if false then Bool else Bool else if true then Bool else Bool
        d182 = if if d35 then false else d106 then if d35 then false else d95 else if d167 then d100 else false
        d183 : if true then if false then Bool else Bool else if true then Bool else Bool
        d183 = if if d100 then false else true then if d64 then true else d38 else if d79 then d110 else true
        d184 : if true then if false then Bool else Bool else if false then Bool else Bool
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> if true then false else x185 ) ) ) $ ( if false then d183 else d53 )
        d186 : if true then if true then Bool else Bool else if false then Bool else Bool
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> if x187 then x187 else false ) ) ) $ ( if d103 then d175 else false )
        d188 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> Bool ) ) ) $ ( x191 ) ) ) ) $ ( if true then Bool else Bool )
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d87 ) ) ) $ ( x189 ) ) ) ) $ ( if false then d95 else true )
        d193 : ( ( Set -> Set ) ∋ ( ( λ x195 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> if false then x194 else false ) ) ) $ ( if d188 then d35 else true )
        d196 : if true then if true then Bool else Bool else if true then Bool else Bool
        d196 = if if d69 then true else d26 then if d74 then d165 else d120 else if true then true else false
        d197 : if false then if true then Bool else Bool else if true then Bool else Bool
        d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> ( ( Bool -> Bool ) ∋ ( ( λ x199 -> false ) ) ) $ ( d1 ) ) ) ) $ ( if d25 then d117 else d117 )
        d200 : if false then if false then Bool else Bool else if true then Bool else Bool
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x201 -> ( ( Bool -> Bool ) ∋ ( ( λ x202 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then d38 else true )
        d203 : ( ( Set -> Set ) ∋ ( ( λ x204 -> ( ( Set -> Set ) ∋ ( ( λ x205 -> Bool ) ) ) $ ( x204 ) ) ) ) $ ( if false then Bool else Bool )
        d203 = if if true then true else d100 then if d121 then d144 else d112 else if false then false else d140
        d206 : ( ( Set -> Set ) ∋ ( ( λ x207 -> ( ( Set -> Set ) ∋ ( ( λ x208 -> Bool ) ) ) $ ( x207 ) ) ) ) $ ( if true then Bool else Bool )
        d206 = if if d110 then d49 else d125 then if false then d181 else d87 else if true then true else false
        d209 : ( ( Set -> Set ) ∋ ( ( λ x210 -> ( ( Set -> Set ) ∋ ( ( λ x211 -> Bool ) ) ) $ ( x210 ) ) ) ) $ ( if false then Bool else Bool )
        d209 = if if d4 then d93 else true then if false then false else true else if false then true else d79
        d212 : if true then if true then Bool else Bool else if false then Bool else Bool
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x213 -> if d188 then x213 else d206 ) ) ) $ ( if true then false else d120 )
        d214 : ( ( Set -> Set ) ∋ ( ( λ x215 -> if false then x215 else Bool ) ) ) $ ( if false then Bool else Bool )
        d214 = if if false then d87 else d95 then if false then true else true else if d151 then true else d35
        d216 : ( ( Set -> Set ) ∋ ( ( λ x218 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d216 = ( ( Bool -> Bool ) ∋ ( ( λ x217 -> if x217 then d131 else x217 ) ) ) $ ( if d38 then false else true )
        d219 : if false then if false then Bool else Bool else if false then Bool else Bool
        d219 = if if d109 then false else true then if d109 then false else true else if d106 then d16 else false
        d220 : ( ( Set -> Set ) ∋ ( ( λ x223 -> ( ( Set -> Set ) ∋ ( ( λ x224 -> x223 ) ) ) $ ( x223 ) ) ) ) $ ( if true then Bool else Bool )
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x221 -> ( ( Bool -> Bool ) ∋ ( ( λ x222 -> true ) ) ) $ ( d151 ) ) ) ) $ ( if false then false else false )
        d225 : ( ( Set -> Set ) ∋ ( ( λ x226 -> ( ( Set -> Set ) ∋ ( ( λ x227 -> Bool ) ) ) $ ( x226 ) ) ) ) $ ( if true then Bool else Bool )
        d225 = if if d182 then d151 else d171 then if d214 then true else d55 else if false then false else true
        d228 : ( ( Set -> Set ) ∋ ( ( λ x231 -> if false then x231 else Bool ) ) ) $ ( if true then Bool else Bool )
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x229 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then d219 else d98 )
        d232 : if false then if false then Bool else Bool else if true then Bool else Bool
        d232 = ( ( Bool -> Bool ) ∋ ( ( λ x233 -> ( ( Bool -> Bool ) ∋ ( ( λ x234 -> true ) ) ) $ ( x233 ) ) ) ) $ ( if d46 then d82 else d13 )
        d235 : ( ( Set -> Set ) ∋ ( ( λ x237 -> ( ( Set -> Set ) ∋ ( ( λ x238 -> x238 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d235 = ( ( Bool -> Bool ) ∋ ( ( λ x236 -> if x236 then d29 else false ) ) ) $ ( if d117 then d21 else false )
        d239 : if false then if true then Bool else Bool else if true then Bool else Bool
        d239 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if true then d127 else d73 ) ) ) $ ( if d55 then true else true )
        d241 : if false then if true then Bool else Bool else if false then Bool else Bool
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x242 -> if true then d64 else x242 ) ) ) $ ( if false then false else d41 )
        d243 : ( ( Set -> Set ) ∋ ( ( λ x245 -> ( ( Set -> Set ) ∋ ( ( λ x246 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x244 -> if x244 then false else d16 ) ) ) $ ( if d125 then false else d121 )
        d247 : ( ( Set -> Set ) ∋ ( ( λ x249 -> if false then x249 else Bool ) ) ) $ ( if false then Bool else Bool )
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x248 -> if d75 then x248 else x248 ) ) ) $ ( if true then d183 else true )
        d250 : ( ( Set -> Set ) ∋ ( ( λ x252 -> ( ( Set -> Set ) ∋ ( ( λ x253 -> x253 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x251 -> if true then x251 else true ) ) ) $ ( if d5 then d120 else true )
        d254 : if true then if true then Bool else Bool else if true then Bool else Bool
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x255 -> if false then d175 else d103 ) ) ) $ ( if false then true else d52 )
        d256 : ( ( Set -> Set ) ∋ ( ( λ x259 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> x259 ) ) ) $ ( x259 ) ) ) ) $ ( if false then Bool else Bool )
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x257 -> ( ( Bool -> Bool ) ∋ ( ( λ x258 -> false ) ) ) $ ( x257 ) ) ) ) $ ( if d150 then false else false )
        d261 : ( ( Set -> Set ) ∋ ( ( λ x262 -> ( ( Set -> Set ) ∋ ( ( λ x263 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d261 = if if d138 then false else d186 then if false then d216 else true else if true then d26 else d42
        d264 : ( ( Set -> Set ) ∋ ( ( λ x267 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x265 -> ( ( Bool -> Bool ) ∋ ( ( λ x266 -> x265 ) ) ) $ ( d235 ) ) ) ) $ ( if false then true else false )
        d268 : ( ( Set -> Set ) ∋ ( ( λ x269 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> x270 ) ) ) $ ( x269 ) ) ) ) $ ( if false then Bool else Bool )
        d268 = if if d122 then false else d25 then if d254 then d89 else false else if false then false else d209
        d271 : ( ( Set -> Set ) ∋ ( ( λ x272 -> if false then x272 else x272 ) ) ) $ ( if true then Bool else Bool )
        d271 = if if false then true else d95 then if true then d175 else d186 else if true then d64 else false
        d273 : if true then if true then Bool else Bool else if false then Bool else Bool
        d273 = ( ( Bool -> Bool ) ∋ ( ( λ x274 -> ( ( Bool -> Bool ) ∋ ( ( λ x275 -> d42 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d220 )
        d276 : ( ( Set -> Set ) ∋ ( ( λ x279 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d276 = ( ( Bool -> Bool ) ∋ ( ( λ x277 -> ( ( Bool -> Bool ) ∋ ( ( λ x278 -> x277 ) ) ) $ ( false ) ) ) ) $ ( if d200 then true else true )
        d280 : if true then if false then Bool else Bool else if false then Bool else Bool
        d280 = if if d167 then d49 else true then if false then d268 else d127 else if false then true else d276
        d281 : ( ( Set -> Set ) ∋ ( ( λ x283 -> if false then x283 else x283 ) ) ) $ ( if true then Bool else Bool )
        d281 = ( ( Bool -> Bool ) ∋ ( ( λ x282 -> if x282 then x282 else d74 ) ) ) $ ( if true then d5 else d131 )
        d284 : ( ( Set -> Set ) ∋ ( ( λ x285 -> if false then x285 else x285 ) ) ) $ ( if true then Bool else Bool )
        d284 = if if d155 then true else d117 then if true then false else true else if d264 then false else false
        d286 : if false then if false then Bool else Bool else if true then Bool else Bool
        d286 = if if false then true else d147 then if true then d125 else d43 else if true then true else true
        d287 : ( ( Set -> Set ) ∋ ( ( λ x289 -> if false then x289 else Bool ) ) ) $ ( if false then Bool else Bool )
        d287 = ( ( Bool -> Bool ) ∋ ( ( λ x288 -> if false then d261 else d74 ) ) ) $ ( if d18 then true else true )
        d290 : ( ( Set -> Set ) ∋ ( ( λ x291 -> if true then x291 else x291 ) ) ) $ ( if false then Bool else Bool )
        d290 = if if d171 then d134 else true then if d254 then true else d122 else if false then true else d41
        d292 : ( ( Set -> Set ) ∋ ( ( λ x295 -> ( ( Set -> Set ) ∋ ( ( λ x296 -> x295 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x293 -> ( ( Bool -> Bool ) ∋ ( ( λ x294 -> x293 ) ) ) $ ( true ) ) ) ) $ ( if true then d8 else d268 )
        d297 : if true then if true then Bool else Bool else if false then Bool else Bool
        d297 = if if d14 then false else d110 then if d271 then false else d73 else if d273 then d280 else true
        d298 : ( ( Set -> Set ) ∋ ( ( λ x299 -> ( ( Set -> Set ) ∋ ( ( λ x300 -> x299 ) ) ) $ ( x299 ) ) ) ) $ ( if true then Bool else Bool )
        d298 = if if d286 then d122 else false then if d228 then d143 else d200 else if true then d150 else d158
        d301 : ( ( Set -> Set ) ∋ ( ( λ x304 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d301 = ( ( Bool -> Bool ) ∋ ( ( λ x302 -> ( ( Bool -> Bool ) ∋ ( ( λ x303 -> false ) ) ) $ ( x302 ) ) ) ) $ ( if false then true else d188 )
        d305 : if true then if true then Bool else Bool else if false then Bool else Bool
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x306 -> if false then x306 else x306 ) ) ) $ ( if false then false else d254 )
        d307 : ( ( Set -> Set ) ∋ ( ( λ x310 -> if true then x310 else Bool ) ) ) $ ( if false then Bool else Bool )
        d307 = ( ( Bool -> Bool ) ∋ ( ( λ x308 -> ( ( Bool -> Bool ) ∋ ( ( λ x309 -> true ) ) ) $ ( d200 ) ) ) ) $ ( if d200 then d171 else d161 )
        d311 : ( ( Set -> Set ) ∋ ( ( λ x313 -> ( ( Set -> Set ) ∋ ( ( λ x314 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d311 = ( ( Bool -> Bool ) ∋ ( ( λ x312 -> if true then x312 else d138 ) ) ) $ ( if false then d268 else false )
        d315 : ( ( Set -> Set ) ∋ ( ( λ x316 -> ( ( Set -> Set ) ∋ ( ( λ x317 -> Bool ) ) ) $ ( x316 ) ) ) ) $ ( if false then Bool else Bool )
        d315 = if if d49 then true else d155 then if d135 then true else true else if true then d254 else false
        d318 : ( ( Set -> Set ) ∋ ( ( λ x319 -> if false then Bool else x319 ) ) ) $ ( if false then Bool else Bool )
        d318 = if if d193 then d144 else true then if d75 then d239 else d188 else if true then d186 else d219
        d320 : if true then if true then Bool else Bool else if false then Bool else Bool
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x321 -> if d117 then d220 else x321 ) ) ) $ ( if true then d1 else d315 )
        d322 : if false then if true then Bool else Bool else if true then Bool else Bool
        d322 = ( ( Bool -> Bool ) ∋ ( ( λ x323 -> ( ( Bool -> Bool ) ∋ ( ( λ x324 -> true ) ) ) $ ( d188 ) ) ) ) $ ( if false then d287 else false )
        d325 : if false then if true then Bool else Bool else if true then Bool else Bool
        d325 = if if true then d140 else d98 then if false then d100 else true else if false then d175 else true
        d326 : ( ( Set -> Set ) ∋ ( ( λ x328 -> ( ( Set -> Set ) ∋ ( ( λ x329 -> Bool ) ) ) $ ( x328 ) ) ) ) $ ( if false then Bool else Bool )
        d326 = ( ( Bool -> Bool ) ∋ ( ( λ x327 -> if true then true else x327 ) ) ) $ ( if false then false else true )
        d330 : if true then if false then Bool else Bool else if true then Bool else Bool
        d330 = if if true then true else false then if true then false else d132 else if true then d175 else true
        d331 : ( ( Set -> Set ) ∋ ( ( λ x333 -> ( ( Set -> Set ) ∋ ( ( λ x334 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d331 = ( ( Bool -> Bool ) ∋ ( ( λ x332 -> if false then x332 else false ) ) ) $ ( if false then d35 else true )
        d335 : ( ( Set -> Set ) ∋ ( ( λ x338 -> if false then x338 else Bool ) ) ) $ ( if false then Bool else Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x336 -> ( ( Bool -> Bool ) ∋ ( ( λ x337 -> x336 ) ) ) $ ( false ) ) ) ) $ ( if true then d193 else d256 )
        d339 : ( ( Set -> Set ) ∋ ( ( λ x340 -> ( ( Set -> Set ) ∋ ( ( λ x341 -> x341 ) ) ) $ ( x340 ) ) ) ) $ ( if false then Bool else Bool )
        d339 = if if d322 then d330 else false then if d74 then false else true else if d188 then true else false
        d342 : ( ( Set -> Set ) ∋ ( ( λ x344 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x343 -> if d200 then d4 else x343 ) ) ) $ ( if true then d183 else true )
        d345 : ( ( Set -> Set ) ∋ ( ( λ x347 -> ( ( Set -> Set ) ∋ ( ( λ x348 -> x347 ) ) ) $ ( x347 ) ) ) ) $ ( if false then Bool else Bool )
        d345 = ( ( Bool -> Bool ) ∋ ( ( λ x346 -> if d331 then x346 else d273 ) ) ) $ ( if false then d220 else d273 )
        d349 : if true then if true then Bool else Bool else if true then Bool else Bool
        d349 = if if true then true else d13 then if d144 then d16 else true else if d232 then true else false
        d350 : ( ( Set -> Set ) ∋ ( ( λ x351 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d350 = if if d60 then d46 else d243 then if false then d82 else false else if d110 then true else false
        d352 : ( ( Set -> Set ) ∋ ( ( λ x355 -> if false then x355 else x355 ) ) ) $ ( if true then Bool else Bool )
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x353 -> ( ( Bool -> Bool ) ∋ ( ( λ x354 -> false ) ) ) $ ( x353 ) ) ) ) $ ( if true then d326 else d140 )
        d356 : if false then if false then Bool else Bool else if false then Bool else Bool
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x357 -> ( ( Bool -> Bool ) ∋ ( ( λ x358 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then true else d214 )
        d359 : if true then if true then Bool else Bool else if false then Bool else Bool
        d359 = if if d318 then true else d120 then if false then true else d203 else if false then d220 else false
        d360 : if false then if true then Bool else Bool else if true then Bool else Bool
        d360 = if if d16 then true else d134 then if d135 then d175 else d286 else if true then d241 else d75
        d361 : if true then if false then Bool else Bool else if true then Bool else Bool
        d361 = ( ( Bool -> Bool ) ∋ ( ( λ x362 -> ( ( Bool -> Bool ) ∋ ( ( λ x363 -> d145 ) ) ) $ ( x362 ) ) ) ) $ ( if false then d35 else d175 )
        d364 : ( ( Set -> Set ) ∋ ( ( λ x365 -> if true then x365 else Bool ) ) ) $ ( if false then Bool else Bool )
        d364 = if if d41 then false else d151 then if false then true else d25 else if true then true else false
        d366 : if true then if false then Bool else Bool else if false then Bool else Bool
        d366 = if if d339 then false else true then if d151 then true else true else if d18 then d167 else d87
        d367 : if false then if true then Bool else Bool else if false then Bool else Bool
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x368 -> ( ( Bool -> Bool ) ∋ ( ( λ x369 -> x369 ) ) ) $ ( x368 ) ) ) ) $ ( if d95 then d8 else true )
        d370 : if false then if true then Bool else Bool else if true then Bool else Bool
        d370 = if if false then d345 else d60 then if d167 then false else d16 else if false then d276 else false
        d371 : ( ( Set -> Set ) ∋ ( ( λ x373 -> if true then x373 else x373 ) ) ) $ ( if false then Bool else Bool )
        d371 = ( ( Bool -> Bool ) ∋ ( ( λ x372 -> if d182 then true else x372 ) ) ) $ ( if d335 then d125 else d247 )
        d374 : ( ( Set -> Set ) ∋ ( ( λ x375 -> if false then x375 else x375 ) ) ) $ ( if false then Bool else Bool )
        d374 = if if false then d345 else false then if false then d281 else d352 else if d184 then false else d290
        d376 : ( ( Set -> Set ) ∋ ( ( λ x377 -> if true then x377 else x377 ) ) ) $ ( if false then Bool else Bool )
        d376 = if if d212 then true else true then if false then false else true else if d280 then d182 else false
        d378 : ( ( Set -> Set ) ∋ ( ( λ x379 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> x379 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d378 = if if false then true else d349 then if d196 then true else false else if d25 then false else false
        d381 : if false then if true then Bool else Bool else if true then Bool else Bool
        d381 = ( ( Bool -> Bool ) ∋ ( ( λ x382 -> if d301 then false else x382 ) ) ) $ ( if d178 then d345 else true )
        d383 : if true then if true then Bool else Bool else if false then Bool else Bool
        d383 = ( ( Bool -> Bool ) ∋ ( ( λ x384 -> if true then x384 else true ) ) ) $ ( if true then true else false )
        d385 : if true then if false then Bool else Bool else if true then Bool else Bool
        d385 = ( ( Bool -> Bool ) ∋ ( ( λ x386 -> if x386 then d325 else d164 ) ) ) $ ( if false then d132 else d178 )
        d387 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if true then x390 else Bool ) ) ) $ ( if false then Bool else Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x388 -> ( ( Bool -> Bool ) ∋ ( ( λ x389 -> x388 ) ) ) $ ( d178 ) ) ) ) $ ( if d318 then false else d43 )
        d391 : ( ( Set -> Set ) ∋ ( ( λ x393 -> ( ( Set -> Set ) ∋ ( ( λ x394 -> x393 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x392 -> if false then x392 else true ) ) ) $ ( if d188 then d216 else d75 )
        d395 : ( ( Set -> Set ) ∋ ( ( λ x397 -> if false then x397 else Bool ) ) ) $ ( if true then Bool else Bool )
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x396 -> if x396 then d33 else true ) ) ) $ ( if false then d120 else d41 )
        d398 : if false then if true then Bool else Bool else if false then Bool else Bool
        d398 = if if true then d378 else true then if d290 then d53 else false else if d232 then d367 else true
        d399 : if true then if false then Bool else Bool else if false then Bool else Bool
        d399 = if if false then d188 else d385 then if true then false else true else if d52 then false else d140
        d400 : ( ( Set -> Set ) ∋ ( ( λ x401 -> if true then x401 else Bool ) ) ) $ ( if false then Bool else Bool )
        d400 = if if d239 then true else d4 then if false then d112 else d193 else if false then d383 else d151
        d402 : ( ( Set -> Set ) ∋ ( ( λ x405 -> if false then x405 else Bool ) ) ) $ ( if true then Bool else Bool )
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x403 -> ( ( Bool -> Bool ) ∋ ( ( λ x404 -> x404 ) ) ) $ ( d155 ) ) ) ) $ ( if d26 then d297 else true )
        d406 : if false then if true then Bool else Bool else if false then Bool else Bool
        d406 = if if d243 then d345 else d359 then if d225 then d82 else true else if d52 then true else d196
        d407 : ( ( Set -> Set ) ∋ ( ( λ x408 -> ( ( Set -> Set ) ∋ ( ( λ x409 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d407 = if if d49 then false else d297 then if false then true else d147 else if d165 then d406 else d320
        d410 : if true then if false then Bool else Bool else if true then Bool else Bool
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x411 -> if x411 then d271 else x411 ) ) ) $ ( if false then true else d370 )
        d412 : ( ( Set -> Set ) ∋ ( ( λ x414 -> ( ( Set -> Set ) ∋ ( ( λ x415 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x413 -> if x413 then false else x413 ) ) ) $ ( if d144 then d228 else d1 )
        d416 : if false then if false then Bool else Bool else if true then Bool else Bool
        d416 = ( ( Bool -> Bool ) ∋ ( ( λ x417 -> if x417 then x417 else false ) ) ) $ ( if d100 then d183 else true )
        d418 : ( ( Set -> Set ) ∋ ( ( λ x421 -> ( ( Set -> Set ) ∋ ( ( λ x422 -> Bool ) ) ) $ ( x421 ) ) ) ) $ ( if true then Bool else Bool )
        d418 = ( ( Bool -> Bool ) ∋ ( ( λ x419 -> ( ( Bool -> Bool ) ∋ ( ( λ x420 -> false ) ) ) $ ( true ) ) ) ) $ ( if d298 then d370 else false )
        d423 : if true then if false then Bool else Bool else if false then Bool else Bool
        d423 = if if true then d261 else d370 then if d29 then false else d55 else if d134 then false else d250
        d424 : if true then if false then Bool else Bool else if true then Bool else Bool
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x425 -> ( ( Bool -> Bool ) ∋ ( ( λ x426 -> true ) ) ) $ ( d387 ) ) ) ) $ ( if d161 then false else false )
        d427 : ( ( Set -> Set ) ∋ ( ( λ x428 -> if false then x428 else Bool ) ) ) $ ( if true then Bool else Bool )
        d427 = if if true then d8 else false then if false then true else false else if d232 then d298 else d320
        d429 : ( ( Set -> Set ) ∋ ( ( λ x430 -> if false then Bool else x430 ) ) ) $ ( if false then Bool else Bool )
        d429 = if if d196 then false else false then if d42 then d406 else true else if true then false else d273
        d431 : ( ( Set -> Set ) ∋ ( ( λ x433 -> if true then x433 else x433 ) ) ) $ ( if false then Bool else Bool )
        d431 = ( ( Bool -> Bool ) ∋ ( ( λ x432 -> if d121 then false else false ) ) ) $ ( if d73 then true else d339 )
        d434 : ( ( Set -> Set ) ∋ ( ( λ x437 -> if true then x437 else Bool ) ) ) $ ( if true then Bool else Bool )
        d434 = ( ( Bool -> Bool ) ∋ ( ( λ x435 -> ( ( Bool -> Bool ) ∋ ( ( λ x436 -> false ) ) ) $ ( false ) ) ) ) $ ( if d220 then true else d410 )
        d438 : ( ( Set -> Set ) ∋ ( ( λ x441 -> if true then x441 else Bool ) ) ) $ ( if true then Bool else Bool )
        d438 = ( ( Bool -> Bool ) ∋ ( ( λ x439 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> x439 ) ) ) $ ( false ) ) ) ) $ ( if false then d214 else d311 )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x444 -> if false then x444 else Bool ) ) ) $ ( if false then Bool else Bool )
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x443 -> if x443 then d164 else x443 ) ) ) $ ( if false then false else true )
        d445 : if true then if true then Bool else Bool else if false then Bool else Bool
        d445 = if if false then d318 else true then if false then false else d178 else if false then true else false
        d446 : ( ( Set -> Set ) ∋ ( ( λ x447 -> if false then x447 else Bool ) ) ) $ ( if false then Bool else Bool )
        d446 = if if false then true else d400 then if false then false else false else if d280 then false else d232
        d448 : if false then if false then Bool else Bool else if true then Bool else Bool
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x449 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> d418 ) ) ) $ ( d125 ) ) ) ) $ ( if d292 then false else d131 )
        d451 : if true then if true then Bool else Bool else if true then Bool else Bool
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x452 -> if false then x452 else false ) ) ) $ ( if d256 then true else false )
        d453 : ( ( Set -> Set ) ∋ ( ( λ x456 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x454 -> ( ( Bool -> Bool ) ∋ ( ( λ x455 -> x454 ) ) ) $ ( d132 ) ) ) ) $ ( if d55 then d14 else d360 )
        d457 : ( ( Set -> Set ) ∋ ( ( λ x458 -> if false then Bool else x458 ) ) ) $ ( if false then Bool else Bool )
        d457 = if if d412 then false else false then if false then d69 else d424 else if false then true else false
        d459 : ( ( Set -> Set ) ∋ ( ( λ x460 -> if false then Bool else x460 ) ) ) $ ( if false then Bool else Bool )
        d459 = if if true then d315 else true then if true then false else false else if true then true else d250
        d461 : ( ( Set -> Set ) ∋ ( ( λ x464 -> ( ( Set -> Set ) ∋ ( ( λ x465 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x462 -> ( ( Bool -> Bool ) ∋ ( ( λ x463 -> x463 ) ) ) $ ( d25 ) ) ) ) $ ( if true then true else false )
        d466 : if true then if false then Bool else Bool else if true then Bool else Bool
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x467 -> ( ( Bool -> Bool ) ∋ ( ( λ x468 -> false ) ) ) $ ( d21 ) ) ) ) $ ( if d220 then false else false )
        d469 : ( ( Set -> Set ) ∋ ( ( λ x470 -> ( ( Set -> Set ) ∋ ( ( λ x471 -> x470 ) ) ) $ ( x470 ) ) ) ) $ ( if true then Bool else Bool )
        d469 = if if false then false else d175 then if d235 then d171 else d387 else if true then d8 else true
        d472 : if true then if false then Bool else Bool else if true then Bool else Bool
        d472 = if if d186 then false else true then if d18 then false else d35 else if false then false else d438
        d473 : if true then if true then Bool else Bool else if false then Bool else Bool
        d473 = ( ( Bool -> Bool ) ∋ ( ( λ x474 -> if false then d41 else d301 ) ) ) $ ( if d200 then d175 else false )
        d475 : if false then if true then Bool else Bool else if true then Bool else Bool
        d475 = ( ( Bool -> Bool ) ∋ ( ( λ x476 -> if d412 then false else d315 ) ) ) $ ( if d225 then true else d209 )
        d477 : if false then if true then Bool else Bool else if true then Bool else Bool
        d477 = if if d410 then false else d359 then if d25 then d178 else false else if true then true else d1
        d478 : if false then if false then Bool else Bool else if true then Bool else Bool
        d478 = if if d418 then false else d387 then if d400 then true else false else if d232 then true else true
        d479 : ( ( Set -> Set ) ∋ ( ( λ x482 -> if true then x482 else Bool ) ) ) $ ( if true then Bool else Bool )
        d479 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> ( ( Bool -> Bool ) ∋ ( ( λ x481 -> d325 ) ) ) $ ( true ) ) ) ) $ ( if d193 then d117 else d423 )
        d483 : if false then if false then Bool else Bool else if false then Bool else Bool
        d483 = if if false then d95 else d264 then if d273 then true else true else if true then d117 else d286
        d484 : ( ( Set -> Set ) ∋ ( ( λ x487 -> ( ( Set -> Set ) ∋ ( ( λ x488 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x485 -> ( ( Bool -> Bool ) ∋ ( ( λ x486 -> x486 ) ) ) $ ( d254 ) ) ) ) $ ( if d235 then false else true )
        d489 : if false then if true then Bool else Bool else if false then Bool else Bool
        d489 = if if d74 then false else d406 then if d138 then true else false else if d383 then true else true
        d490 : if false then if false then Bool else Bool else if false then Bool else Bool
        d490 = if if true then false else d144 then if d131 then false else d423 else if d41 then d182 else false
        d491 : ( ( Set -> Set ) ∋ ( ( λ x493 -> ( ( Set -> Set ) ∋ ( ( λ x494 -> Bool ) ) ) $ ( x493 ) ) ) ) $ ( if false then Bool else Bool )
        d491 = ( ( Bool -> Bool ) ∋ ( ( λ x492 -> if true then x492 else d228 ) ) ) $ ( if d25 then false else d381 )
        d495 : ( ( Set -> Set ) ∋ ( ( λ x496 -> if false then Bool else x496 ) ) ) $ ( if false then Bool else Bool )
        d495 = if if true then false else false then if d161 then true else false else if true then d446 else d342
        d497 : if false then if false then Bool else Bool else if false then Bool else Bool
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x498 -> ( ( Bool -> Bool ) ∋ ( ( λ x499 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d145 else d183 )
        d500 : if false then if false then Bool else Bool else if true then Bool else Bool
        d500 = if if d256 then d184 else false then if d16 then d268 else false else if d281 then false else d495
        d501 : if false then if false then Bool else Bool else if false then Bool else Bool
        d501 = ( ( Bool -> Bool ) ∋ ( ( λ x502 -> ( ( Bool -> Bool ) ∋ ( ( λ x503 -> d477 ) ) ) $ ( x502 ) ) ) ) $ ( if d423 then true else d345 )
        d504 : if true then if false then Bool else Bool else if false then Bool else Bool
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x505 -> ( ( Bool -> Bool ) ∋ ( ( λ x506 -> d141 ) ) ) $ ( true ) ) ) ) $ ( if d461 then d497 else true )
        d507 : ( ( Set -> Set ) ∋ ( ( λ x508 -> ( ( Set -> Set ) ∋ ( ( λ x509 -> x509 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d507 = if if d1 then d158 else false then if d197 then d167 else d106 else if true then false else d241
        d510 : ( ( Set -> Set ) ∋ ( ( λ x513 -> ( ( Set -> Set ) ∋ ( ( λ x514 -> Bool ) ) ) $ ( x513 ) ) ) ) $ ( if true then Bool else Bool )
        d510 = ( ( Bool -> Bool ) ∋ ( ( λ x511 -> ( ( Bool -> Bool ) ∋ ( ( λ x512 -> x512 ) ) ) $ ( d271 ) ) ) ) $ ( if d292 then true else d374 )
        d515 : if false then if true then Bool else Bool else if true then Bool else Bool
        d515 = ( ( Bool -> Bool ) ∋ ( ( λ x516 -> if d193 then d479 else x516 ) ) ) $ ( if false then d475 else d273 )
        d517 : if false then if false then Bool else Bool else if true then Bool else Bool
        d517 = if if true then true else false then if d144 then d307 else false else if d93 then d16 else true
        d518 : ( ( Set -> Set ) ∋ ( ( λ x520 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d518 = ( ( Bool -> Bool ) ∋ ( ( λ x519 -> if x519 then x519 else x519 ) ) ) $ ( if d13 then d225 else d273 )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x523 -> if false then Bool else x523 ) ) ) $ ( if false then Bool else Bool )
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x522 -> if true then d109 else d165 ) ) ) $ ( if false then d164 else d182 )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x526 -> ( ( Set -> Set ) ∋ ( ( λ x527 -> x526 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x525 -> if d1 then false else false ) ) ) $ ( if false then d46 else true )
        d528 : if false then if true then Bool else Bool else if false then Bool else Bool
        d528 = if if false then d361 else d139 then if d297 then false else d391 else if d400 then false else d479
        d529 : if true then if true then Bool else Bool else if true then Bool else Bool
        d529 = if if false then d418 else d305 then if d459 then false else d247 else if d117 then d164 else true
        d530 : if true then if true then Bool else Bool else if false then Bool else Bool
        d530 = if if true then d1 else d117 then if d495 then true else d235 else if false then false else d322
        d531 : ( ( Set -> Set ) ∋ ( ( λ x533 -> ( ( Set -> Set ) ∋ ( ( λ x534 -> Bool ) ) ) $ ( x533 ) ) ) ) $ ( if true then Bool else Bool )
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x532 -> if d311 then true else false ) ) ) $ ( if false then d387 else d445 )
        d535 : if true then if false then Bool else Bool else if true then Bool else Bool
        d535 = if if d125 then true else true then if d196 then true else false else if d73 then false else d131
        d536 : ( ( Set -> Set ) ∋ ( ( λ x538 -> ( ( Set -> Set ) ∋ ( ( λ x539 -> Bool ) ) ) $ ( x538 ) ) ) ) $ ( if false then Bool else Bool )
        d536 = ( ( Bool -> Bool ) ∋ ( ( λ x537 -> if x537 then d469 else d256 ) ) ) $ ( if true then false else d431 )
        d540 : if true then if false then Bool else Bool else if false then Bool else Bool
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x541 -> ( ( Bool -> Bool ) ∋ ( ( λ x542 -> d364 ) ) ) $ ( x541 ) ) ) ) $ ( if true then true else d286 )
        d543 : if false then if true then Bool else Bool else if false then Bool else Bool
        d543 = ( ( Bool -> Bool ) ∋ ( ( λ x544 -> if true then true else x544 ) ) ) $ ( if false then true else d25 )
        d545 : ( ( Set -> Set ) ∋ ( ( λ x546 -> ( ( Set -> Set ) ∋ ( ( λ x547 -> x546 ) ) ) $ ( x546 ) ) ) ) $ ( if true then Bool else Bool )
        d545 = if if d387 then d64 else d5 then if false then d459 else d311 else if true then true else true
        d548 : if false then if true then Bool else Bool else if true then Bool else Bool
        d548 = if if false then true else d89 then if false then false else true else if d49 then true else d134
        d549 : if false then if true then Bool else Bool else if false then Bool else Bool
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if x550 then true else d53 ) ) ) $ ( if true then true else d416 )
        d551 : if true then if true then Bool else Bool else if true then Bool else Bool
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x552 -> if x552 then false else d139 ) ) ) $ ( if d93 then d5 else d400 )
        d553 : if true then if false then Bool else Bool else if true then Bool else Bool
        d553 = if if d209 then d140 else false then if true then d515 else d121 else if d53 then d349 else d400
        d554 : if false then if true then Bool else Bool else if true then Bool else Bool
        d554 = if if false then true else true then if d256 then false else d477 else if true then false else true
        d555 : ( ( Set -> Set ) ∋ ( ( λ x558 -> if false then Bool else x558 ) ) ) $ ( if false then Bool else Bool )
        d555 = ( ( Bool -> Bool ) ∋ ( ( λ x556 -> ( ( Bool -> Bool ) ∋ ( ( λ x557 -> d472 ) ) ) $ ( x556 ) ) ) ) $ ( if d87 then true else d442 )
        d559 : ( ( Set -> Set ) ∋ ( ( λ x561 -> ( ( Set -> Set ) ∋ ( ( λ x562 -> Bool ) ) ) $ ( x561 ) ) ) ) $ ( if false then Bool else Bool )
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if true then d371 else false ) ) ) $ ( if false then d400 else d165 )
        d563 : if true then if false then Bool else Bool else if false then Bool else Bool
        d563 = ( ( Bool -> Bool ) ∋ ( ( λ x564 -> if false then true else d524 ) ) ) $ ( if d442 then true else false )
        d565 : if true then if false then Bool else Bool else if true then Bool else Bool
        d565 = if if d106 then false else d154 then if true then d501 else d475 else if d73 then false else d287
        d566 : ( ( Set -> Set ) ∋ ( ( λ x569 -> if false then Bool else x569 ) ) ) $ ( if false then Bool else Bool )
        d566 = ( ( Bool -> Bool ) ∋ ( ( λ x567 -> ( ( Bool -> Bool ) ∋ ( ( λ x568 -> x567 ) ) ) $ ( d154 ) ) ) ) $ ( if false then d121 else false )
        d570 : ( ( Set -> Set ) ∋ ( ( λ x571 -> ( ( Set -> Set ) ∋ ( ( λ x572 -> x572 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d570 = if if true then false else true then if false then false else false else if false then d41 else false
        d573 : if false then if false then Bool else Bool else if true then Bool else Bool
        d573 = if if d55 then true else true then if d134 then d479 else d243 else if d35 then false else d131
        d574 : if false then if false then Bool else Bool else if false then Bool else Bool
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x575 -> if true then x575 else d286 ) ) ) $ ( if true then d311 else false )
        d576 : ( ( Set -> Set ) ∋ ( ( λ x578 -> ( ( Set -> Set ) ∋ ( ( λ x579 -> Bool ) ) ) $ ( x578 ) ) ) ) $ ( if true then Bool else Bool )
        d576 = ( ( Bool -> Bool ) ∋ ( ( λ x577 -> if true then false else d360 ) ) ) $ ( if false then true else d416 )
        d580 : ( ( Set -> Set ) ∋ ( ( λ x581 -> if true then Bool else x581 ) ) ) $ ( if true then Bool else Bool )
        d580 = if if d361 then false else d38 then if d326 then false else d360 else if d350 then d147 else false
        d582 : ( ( Set -> Set ) ∋ ( ( λ x583 -> ( ( Set -> Set ) ∋ ( ( λ x584 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d582 = if if d457 then d225 else d203 then if true then true else d13 else if d477 then d26 else false
        d585 : ( ( Set -> Set ) ∋ ( ( λ x586 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d585 = if if d489 then true else false then if d429 then false else d349 else if d524 then d326 else false
        d587 : ( ( Set -> Set ) ∋ ( ( λ x588 -> ( ( Set -> Set ) ∋ ( ( λ x589 -> x588 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d587 = if if false then d271 else d292 then if true then d243 else false else if true then false else d140
        d590 : if false then if true then Bool else Bool else if true then Bool else Bool
        d590 = if if d127 then true else true then if true then true else d139 else if false then false else d247
        d591 : ( ( Set -> Set ) ∋ ( ( λ x593 -> if false then x593 else Bool ) ) ) $ ( if false then Bool else Bool )
        d591 = ( ( Bool -> Bool ) ∋ ( ( λ x592 -> if true then x592 else false ) ) ) $ ( if d127 then d335 else d120 )
        d594 : ( ( Set -> Set ) ∋ ( ( λ x596 -> ( ( Set -> Set ) ∋ ( ( λ x597 -> x597 ) ) ) $ ( x596 ) ) ) ) $ ( if true then Bool else Bool )
        d594 = ( ( Bool -> Bool ) ∋ ( ( λ x595 -> if false then d489 else d457 ) ) ) $ ( if d139 then false else false )
        d598 : ( ( Set -> Set ) ∋ ( ( λ x600 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d598 = ( ( Bool -> Bool ) ∋ ( ( λ x599 -> if d399 then false else false ) ) ) $ ( if d154 then d155 else d585 )
        d601 : if true then if true then Bool else Bool else if false then Bool else Bool
        d601 = ( ( Bool -> Bool ) ∋ ( ( λ x602 -> if true then true else x602 ) ) ) $ ( if false then false else d89 )
        d603 : ( ( Set -> Set ) ∋ ( ( λ x605 -> ( ( Set -> Set ) ∋ ( ( λ x606 -> Bool ) ) ) $ ( x605 ) ) ) ) $ ( if true then Bool else Bool )
        d603 = ( ( Bool -> Bool ) ∋ ( ( λ x604 -> if x604 then d418 else false ) ) ) $ ( if false then false else d287 )
        d607 : if true then if true then Bool else Bool else if false then Bool else Bool
        d607 = ( ( Bool -> Bool ) ∋ ( ( λ x608 -> if true then x608 else d188 ) ) ) $ ( if true then d16 else false )
        d609 : if false then if true then Bool else Bool else if false then Bool else Bool
        d609 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> ( ( Bool -> Bool ) ∋ ( ( λ x611 -> x610 ) ) ) $ ( x610 ) ) ) ) $ ( if d26 then d475 else true )
        d612 : ( ( Set -> Set ) ∋ ( ( λ x615 -> ( ( Set -> Set ) ∋ ( ( λ x616 -> Bool ) ) ) $ ( x615 ) ) ) ) $ ( if false then Bool else Bool )
        d612 = ( ( Bool -> Bool ) ∋ ( ( λ x613 -> ( ( Bool -> Bool ) ∋ ( ( λ x614 -> true ) ) ) $ ( d376 ) ) ) ) $ ( if true then true else false )
        d617 : ( ( Set -> Set ) ∋ ( ( λ x620 -> ( ( Set -> Set ) ∋ ( ( λ x621 -> Bool ) ) ) $ ( x620 ) ) ) ) $ ( if true then Bool else Bool )
        d617 = ( ( Bool -> Bool ) ∋ ( ( λ x618 -> ( ( Bool -> Bool ) ∋ ( ( λ x619 -> false ) ) ) $ ( d155 ) ) ) ) $ ( if false then true else d214 )
        d622 : ( ( Set -> Set ) ∋ ( ( λ x623 -> ( ( Set -> Set ) ∋ ( ( λ x624 -> x623 ) ) ) $ ( x623 ) ) ) ) $ ( if true then Bool else Bool )
        d622 = if if d281 then d276 else d120 then if true then true else false else if d135 then d322 else d25
        d625 : ( ( Set -> Set ) ∋ ( ( λ x626 -> if false then x626 else Bool ) ) ) $ ( if true then Bool else Bool )
        d625 = if if d121 then false else d359 then if true then d161 else d325 else if false then d540 else true
        d627 : if true then if true then Bool else Bool else if true then Bool else Bool
        d627 = if if d448 then d134 else true then if false then d483 else d607 else if d315 then true else d14
        d628 : ( ( Set -> Set ) ∋ ( ( λ x629 -> if false then Bool else x629 ) ) ) $ ( if true then Bool else Bool )
        d628 = if if d150 then false else false then if d457 then d548 else d276 else if d320 then true else d53
        d630 : if true then if true then Bool else Bool else if true then Bool else Bool
        d630 = ( ( Bool -> Bool ) ∋ ( ( λ x631 -> if false then x631 else x631 ) ) ) $ ( if d399 then false else true )
        d632 : if true then if true then Bool else Bool else if true then Bool else Bool
        d632 = ( ( Bool -> Bool ) ∋ ( ( λ x633 -> ( ( Bool -> Bool ) ∋ ( ( λ x634 -> x633 ) ) ) $ ( d551 ) ) ) ) $ ( if false then true else d273 )
        d635 : ( ( Set -> Set ) ∋ ( ( λ x636 -> ( ( Set -> Set ) ∋ ( ( λ x637 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d635 = if if false then d497 else d359 then if d374 then false else false else if d429 then false else d423
        d638 : if false then if true then Bool else Bool else if false then Bool else Bool
        d638 = ( ( Bool -> Bool ) ∋ ( ( λ x639 -> if x639 then true else false ) ) ) $ ( if false then d155 else d165 )
        d640 : ( ( Set -> Set ) ∋ ( ( λ x642 -> ( ( Set -> Set ) ∋ ( ( λ x643 -> x642 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d640 = ( ( Bool -> Bool ) ∋ ( ( λ x641 -> if true then x641 else x641 ) ) ) $ ( if false then d135 else d178 )
        d644 : ( ( Set -> Set ) ∋ ( ( λ x647 -> if false then x647 else Bool ) ) ) $ ( if false then Bool else Bool )
        d644 = ( ( Bool -> Bool ) ∋ ( ( λ x645 -> ( ( Bool -> Bool ) ∋ ( ( λ x646 -> d504 ) ) ) $ ( x645 ) ) ) ) $ ( if d387 then false else d98 )
        d648 : ( ( Set -> Set ) ∋ ( ( λ x650 -> if false then Bool else x650 ) ) ) $ ( if false then Bool else Bool )
        d648 = ( ( Bool -> Bool ) ∋ ( ( λ x649 -> if d535 then x649 else true ) ) ) $ ( if d276 then true else d531 )
        d651 : if false then if true then Bool else Bool else if true then Bool else Bool
        d651 = ( ( Bool -> Bool ) ∋ ( ( λ x652 -> ( ( Bool -> Bool ) ∋ ( ( λ x653 -> false ) ) ) $ ( x652 ) ) ) ) $ ( if true then true else d442 )
        d654 : ( ( Set -> Set ) ∋ ( ( λ x655 -> if true then Bool else x655 ) ) ) $ ( if false then Bool else Bool )
        d654 = if if true then d171 else true then if d497 then true else true else if false then d18 else d554
        d656 : ( ( Set -> Set ) ∋ ( ( λ x659 -> if true then x659 else Bool ) ) ) $ ( if true then Bool else Bool )
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x657 -> ( ( Bool -> Bool ) ∋ ( ( λ x658 -> true ) ) ) $ ( d490 ) ) ) ) $ ( if true then d378 else d587 )
        d660 : ( ( Set -> Set ) ∋ ( ( λ x661 -> if true then x661 else x661 ) ) ) $ ( if false then Bool else Bool )
        d660 = if if d497 then true else false then if d35 then false else true else if d135 then true else d110
        d662 : if true then if false then Bool else Bool else if false then Bool else Bool
        d662 = if if d473 then d630 else true then if false then false else d630 else if true then d158 else false
        d663 : ( ( Set -> Set ) ∋ ( ( λ x664 -> if true then Bool else x664 ) ) ) $ ( if true then Bool else Bool )
        d663 = if if d654 then false else true then if true then true else d154 else if d565 then true else true
        d665 : if true then if false then Bool else Bool else if true then Bool else Bool
        d665 = if if d41 then true else false then if false then false else d268 else if d528 then false else d239
        d666 : if true then if false then Bool else Bool else if false then Bool else Bool
        d666 = if if d381 then d335 else d429 then if d276 then d400 else d235 else if d75 then d139 else d478
        d667 : if false then if true then Bool else Bool else if true then Bool else Bool
        d667 = ( ( Bool -> Bool ) ∋ ( ( λ x668 -> ( ( Bool -> Bool ) ∋ ( ( λ x669 -> d442 ) ) ) $ ( true ) ) ) ) $ ( if d220 then d565 else d366 )
        d670 : if true then if true then Bool else Bool else if false then Bool else Bool
        d670 = if if false then false else true then if true then false else false else if d536 then true else d524
        d671 : ( ( Set -> Set ) ∋ ( ( λ x674 -> ( ( Set -> Set ) ∋ ( ( λ x675 -> x674 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d671 = ( ( Bool -> Bool ) ∋ ( ( λ x672 -> ( ( Bool -> Bool ) ∋ ( ( λ x673 -> false ) ) ) $ ( x672 ) ) ) ) $ ( if false then true else d507 )
        d676 : ( ( Set -> Set ) ∋ ( ( λ x677 -> if true then x677 else Bool ) ) ) $ ( if true then Bool else Bool )
        d676 = if if false then d117 else true then if false then false else true else if true then d531 else d559
        d678 : ( ( Set -> Set ) ∋ ( ( λ x681 -> if false then x681 else Bool ) ) ) $ ( if true then Bool else Bool )
        d678 = ( ( Bool -> Bool ) ∋ ( ( λ x679 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> false ) ) ) $ ( x679 ) ) ) ) $ ( if d228 then false else d483 )
        d682 : ( ( Set -> Set ) ∋ ( ( λ x684 -> if false then x684 else x684 ) ) ) $ ( if true then Bool else Bool )
        d682 = ( ( Bool -> Bool ) ∋ ( ( λ x683 -> if d640 then true else d141 ) ) ) $ ( if true then d297 else d100 )
        d685 : if true then if true then Bool else Bool else if false then Bool else Bool
        d685 = if if true then true else true then if false then true else d5 else if true then d298 else true
        d686 : if false then if true then Bool else Bool else if true then Bool else Bool
        d686 = if if d410 then d79 else d489 then if true then d598 else d98 else if d475 then false else d648
        d687 : ( ( Set -> Set ) ∋ ( ( λ x689 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> x689 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d687 = ( ( Bool -> Bool ) ∋ ( ( λ x688 -> if d402 then d219 else true ) ) ) $ ( if d43 then d491 else d301 )
        d691 : if false then if true then Bool else Bool else if false then Bool else Bool
        d691 = ( ( Bool -> Bool ) ∋ ( ( λ x692 -> ( ( Bool -> Bool ) ∋ ( ( λ x693 -> d565 ) ) ) $ ( false ) ) ) ) $ ( if d518 then false else true )
        d694 : ( ( Set -> Set ) ∋ ( ( λ x697 -> ( ( Set -> Set ) ∋ ( ( λ x698 -> x697 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d694 = ( ( Bool -> Bool ) ∋ ( ( λ x695 -> ( ( Bool -> Bool ) ∋ ( ( λ x696 -> d225 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d342 )
        d699 : ( ( Set -> Set ) ∋ ( ( λ x701 -> ( ( Set -> Set ) ∋ ( ( λ x702 -> x701 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d699 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> if x700 then d632 else d247 ) ) ) $ ( if d182 then true else d671 )
        d703 : ( ( Set -> Set ) ∋ ( ( λ x704 -> ( ( Set -> Set ) ∋ ( ( λ x705 -> x704 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d703 = if if true then d164 else true then if false then d477 else true else if false then true else d301
        d706 : if true then if false then Bool else Bool else if true then Bool else Bool
        d706 = if if d121 then d630 else d49 then if true then true else d666 else if d181 then false else false
        d707 : if true then if true then Bool else Bool else if false then Bool else Bool
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x708 -> ( ( Bool -> Bool ) ∋ ( ( λ x709 -> d617 ) ) ) $ ( d75 ) ) ) ) $ ( if d109 then false else false )
        d710 : if true then if true then Bool else Bool else if false then Bool else Bool
        d710 = ( ( Bool -> Bool ) ∋ ( ( λ x711 -> if x711 then false else x711 ) ) ) $ ( if true then false else d518 )
        d712 : if true then if false then Bool else Bool else if true then Bool else Bool
        d712 = if if false then d448 else true then if d431 then d164 else false else if d112 then true else d553
        d713 : ( ( Set -> Set ) ∋ ( ( λ x716 -> ( ( Set -> Set ) ∋ ( ( λ x717 -> x716 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d713 = ( ( Bool -> Bool ) ∋ ( ( λ x714 -> ( ( Bool -> Bool ) ∋ ( ( λ x715 -> d656 ) ) ) $ ( x714 ) ) ) ) $ ( if d186 then false else d617 )
        d718 : ( ( Set -> Set ) ∋ ( ( λ x719 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d718 = if if d151 then false else false then if false then d418 else d473 else if d622 then d448 else d694
        d720 : ( ( Set -> Set ) ∋ ( ( λ x721 -> ( ( Set -> Set ) ∋ ( ( λ x722 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d720 = if if d298 then false else true then if false then d43 else false else if false then true else true
        d723 : if false then if false then Bool else Bool else if false then Bool else Bool
        d723 = ( ( Bool -> Bool ) ∋ ( ( λ x724 -> if x724 then false else d540 ) ) ) $ ( if false then d297 else d370 )
        d725 : if false then if true then Bool else Bool else if true then Bool else Bool
        d725 = if if true then d378 else true then if false then d311 else d553 else if d320 then d214 else true
        d726 : if true then if true then Bool else Bool else if false then Bool else Bool
        d726 = ( ( Bool -> Bool ) ∋ ( ( λ x727 -> if true then d713 else true ) ) ) $ ( if d451 then false else true )
        d728 : if true then if false then Bool else Bool else if true then Bool else Bool
        d728 = ( ( Bool -> Bool ) ∋ ( ( λ x729 -> if d585 then d553 else d453 ) ) ) $ ( if d138 then true else false )
        d730 : ( ( Set -> Set ) ∋ ( ( λ x731 -> ( ( Set -> Set ) ∋ ( ( λ x732 -> x732 ) ) ) $ ( x731 ) ) ) ) $ ( if false then Bool else Bool )
        d730 = if if true then d495 else true then if d261 then false else true else if d178 then d14 else false
        d733 : if true then if true then Bool else Bool else if false then Bool else Bool
        d733 = ( ( Bool -> Bool ) ∋ ( ( λ x734 -> if true then d699 else false ) ) ) $ ( if d35 then d322 else true )
        d735 : ( ( Set -> Set ) ∋ ( ( λ x738 -> if true then Bool else x738 ) ) ) $ ( if false then Bool else Bool )
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x736 -> ( ( Bool -> Bool ) ∋ ( ( λ x737 -> x736 ) ) ) $ ( x736 ) ) ) ) $ ( if d325 then d682 else true )
        d739 : if false then if false then Bool else Bool else if true then Bool else Bool
        d739 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> ( ( Bool -> Bool ) ∋ ( ( λ x741 -> x741 ) ) ) $ ( x740 ) ) ) ) $ ( if true then true else true )
        d742 : ( ( Set -> Set ) ∋ ( ( λ x743 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d742 = if if d79 then true else true then if false then d524 else d448 else if d5 then d585 else true
        d744 : if false then if true then Bool else Bool else if true then Bool else Bool
        d744 = ( ( Bool -> Bool ) ∋ ( ( λ x745 -> if true then d644 else x745 ) ) ) $ ( if d504 then d548 else d178 )
        d746 : if false then if false then Bool else Bool else if true then Bool else Bool
        d746 = ( ( Bool -> Bool ) ∋ ( ( λ x747 -> if false then x747 else false ) ) ) $ ( if false then false else true )
        d748 : if false then if true then Bool else Bool else if true then Bool else Bool
        d748 = if if d360 then d276 else d478 then if d228 then true else true else if true then d521 else false
        d749 : if true then if false then Bool else Bool else if true then Bool else Bool
        d749 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( ( Bool -> Bool ) ∋ ( ( λ x751 -> true ) ) ) $ ( false ) ) ) ) $ ( if d594 then d429 else d49 )
        d752 : ( ( Set -> Set ) ∋ ( ( λ x753 -> ( ( Set -> Set ) ∋ ( ( λ x754 -> x753 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d752 = if if false then false else d591 then if true then true else false else if d307 then true else d507
        d755 : ( ( Set -> Set ) ∋ ( ( λ x756 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d755 = if if d744 then d292 else d52 then if true then false else d74 else if false then d64 else d64
        d757 : if true then if true then Bool else Bool else if true then Bool else Bool
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x758 -> if d46 then true else d666 ) ) ) $ ( if false then d232 else d625 )
        d759 : ( ( Set -> Set ) ∋ ( ( λ x760 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d759 = if if d730 then d271 else false then if true then false else false else if d726 then d301 else d82
        d761 : if false then if false then Bool else Bool else if true then Bool else Bool
        d761 = ( ( Bool -> Bool ) ∋ ( ( λ x762 -> ( ( Bool -> Bool ) ∋ ( ( λ x763 -> true ) ) ) $ ( x762 ) ) ) ) $ ( if true then d214 else false )
        d764 : ( ( Set -> Set ) ∋ ( ( λ x765 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d764 = if if d175 then d759 else d16 then if d490 then d667 else true else if d155 then d140 else d214
        d766 : if true then if false then Bool else Bool else if false then Bool else Bool
        d766 = ( ( Bool -> Bool ) ∋ ( ( λ x767 -> ( ( Bool -> Bool ) ∋ ( ( λ x768 -> false ) ) ) $ ( d228 ) ) ) ) $ ( if false then false else true )
        d769 : ( ( Set -> Set ) ∋ ( ( λ x771 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d769 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> if d416 then x770 else x770 ) ) ) $ ( if d182 then d617 else true )
        d772 : if true then if false then Bool else Bool else if true then Bool else Bool
        d772 = ( ( Bool -> Bool ) ∋ ( ( λ x773 -> if d135 then d507 else x773 ) ) ) $ ( if d445 then d297 else d175 )
        d774 : if false then if true then Bool else Bool else if false then Bool else Bool
        d774 = ( ( Bool -> Bool ) ∋ ( ( λ x775 -> if d446 then x775 else d635 ) ) ) $ ( if false then d206 else d553 )
        d776 : ( ( Set -> Set ) ∋ ( ( λ x779 -> if true then x779 else Bool ) ) ) $ ( if false then Bool else Bool )
        d776 = ( ( Bool -> Bool ) ∋ ( ( λ x777 -> ( ( Bool -> Bool ) ∋ ( ( λ x778 -> x777 ) ) ) $ ( d350 ) ) ) ) $ ( if false then d500 else d239 )
        d780 : if false then if false then Bool else Bool else if false then Bool else Bool
        d780 = if if d155 then false else true then if d573 then false else d536 else if true then true else d155
        d781 : ( ( Set -> Set ) ∋ ( ( λ x782 -> ( ( Set -> Set ) ∋ ( ( λ x783 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d781 = if if true then d243 else false then if false then false else d64 else if false then true else d120
        d784 : if true then if true then Bool else Bool else if false then Bool else Bool
        d784 = ( ( Bool -> Bool ) ∋ ( ( λ x785 -> ( ( Bool -> Bool ) ∋ ( ( λ x786 -> x786 ) ) ) $ ( d214 ) ) ) ) $ ( if d264 then d517 else false )
        d787 : if false then if false then Bool else Bool else if true then Bool else Bool
        d787 = if if true then false else d197 then if true then false else false else if d694 then false else true
        d788 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x791 -> x790 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d788 = ( ( Bool -> Bool ) ∋ ( ( λ x789 -> if d120 then false else true ) ) ) $ ( if d720 then d553 else true )
        d792 : if true then if false then Bool else Bool else if false then Bool else Bool
        d792 = if if false then true else false then if d159 then d331 else true else if true then true else false
        d793 : if false then if true then Bool else Bool else if false then Bool else Bool
        d793 = ( ( Bool -> Bool ) ∋ ( ( λ x794 -> ( ( Bool -> Bool ) ∋ ( ( λ x795 -> d147 ) ) ) $ ( x794 ) ) ) ) $ ( if true then d609 else true )
        d796 : ( ( Set -> Set ) ∋ ( ( λ x797 -> ( ( Set -> Set ) ∋ ( ( λ x798 -> x798 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d796 = if if true then d793 else d150 then if true then d25 else d371 else if true then true else false
        d799 : ( ( Set -> Set ) ∋ ( ( λ x802 -> if true then Bool else x802 ) ) ) $ ( if false then Bool else Bool )
        d799 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( Bool -> Bool ) ∋ ( ( λ x801 -> true ) ) ) $ ( x800 ) ) ) ) $ ( if false then true else d364 )
        d803 : ( ( Set -> Set ) ∋ ( ( λ x804 -> if false then Bool else x804 ) ) ) $ ( if false then Bool else Bool )
        d803 = if if d38 then true else d654 then if false then d703 else false else if true then false else false
        d805 : if true then if false then Bool else Bool else if true then Bool else Bool
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x806 -> ( ( Bool -> Bool ) ∋ ( ( λ x807 -> d757 ) ) ) $ ( false ) ) ) ) $ ( if true then d175 else d685 )
        d808 : if false then if true then Bool else Bool else if true then Bool else Bool
        d808 = ( ( Bool -> Bool ) ∋ ( ( λ x809 -> if false then x809 else d563 ) ) ) $ ( if true then true else true )
        d810 : ( ( Set -> Set ) ∋ ( ( λ x812 -> if false then x812 else x812 ) ) ) $ ( if false then Bool else Bool )
        d810 = ( ( Bool -> Bool ) ∋ ( ( λ x811 -> if d164 then d41 else x811 ) ) ) $ ( if true then d663 else false )
        d813 : if false then if true then Bool else Bool else if false then Bool else Bool
        d813 = if if true then true else d366 then if true then false else false else if true then false else true
        d814 : ( ( Set -> Set ) ∋ ( ( λ x815 -> if true then x815 else x815 ) ) ) $ ( if false then Bool else Bool )
        d814 = if if true then d290 else false then if true then d535 else false else if false then true else false
        d816 : if false then if false then Bool else Bool else if false then Bool else Bool
        d816 = if if d127 then true else d196 then if false then d469 else true else if true then d121 else true
        d817 : ( ( Set -> Set ) ∋ ( ( λ x820 -> ( ( Set -> Set ) ∋ ( ( λ x821 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d817 = ( ( Bool -> Bool ) ∋ ( ( λ x818 -> ( ( Bool -> Bool ) ∋ ( ( λ x819 -> d573 ) ) ) $ ( x818 ) ) ) ) $ ( if true then true else false )
        d822 : if true then if true then Bool else Bool else if true then Bool else Bool
        d822 = if if d755 then true else false then if true then d14 else false else if d53 then true else false
        d823 : if true then if true then Bool else Bool else if false then Bool else Bool
        d823 = ( ( Bool -> Bool ) ∋ ( ( λ x824 -> ( ( Bool -> Bool ) ∋ ( ( λ x825 -> d150 ) ) ) $ ( d438 ) ) ) ) $ ( if false then d38 else d528 )
        d826 : if true then if false then Bool else Bool else if false then Bool else Bool
        d826 = if if d744 then false else d787 then if d434 then false else true else if true then false else d603
        d827 : if false then if true then Bool else Bool else if true then Bool else Bool
        d827 = if if false then d446 else false then if true then d536 else d612 else if d391 then d682 else false
        d828 : if false then if true then Bool else Bool else if true then Bool else Bool
        d828 = if if d391 then d707 else false then if d69 then d666 else d271 else if d200 then d418 else d660
        d829 : ( ( Set -> Set ) ∋ ( ( λ x832 -> ( ( Set -> Set ) ∋ ( ( λ x833 -> Bool ) ) ) $ ( x832 ) ) ) ) $ ( if true then Bool else Bool )
        d829 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> ( ( Bool -> Bool ) ∋ ( ( λ x831 -> d769 ) ) ) $ ( x830 ) ) ) ) $ ( if false then d216 else false )
        d834 : if true then if true then Bool else Bool else if false then Bool else Bool
        d834 = if if true then false else true then if d808 then false else true else if d139 then true else true
        d835 : ( ( Set -> Set ) ∋ ( ( λ x836 -> ( ( Set -> Set ) ∋ ( ( λ x837 -> Bool ) ) ) $ ( x836 ) ) ) ) $ ( if true then Bool else Bool )
        d835 = if if d803 then true else d518 then if d457 then true else d784 else if d110 then true else false
        d838 : if false then if true then Bool else Bool else if false then Bool else Bool
        d838 = ( ( Bool -> Bool ) ∋ ( ( λ x839 -> ( ( Bool -> Bool ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( d828 ) ) ) ) $ ( if d622 then d335 else true )
        d841 : if false then if true then Bool else Bool else if true then Bool else Bool
        d841 = if if true then true else d752 then if d591 then d490 else d159 else if d145 then true else true
        d842 : if true then if true then Bool else Bool else if true then Bool else Bool
        d842 = ( ( Bool -> Bool ) ∋ ( ( λ x843 -> if x843 then true else d644 ) ) ) $ ( if d759 then d135 else true )
        d844 : if false then if false then Bool else Bool else if false then Bool else Bool
        d844 = ( ( Bool -> Bool ) ∋ ( ( λ x845 -> ( ( Bool -> Bool ) ∋ ( ( λ x846 -> x845 ) ) ) $ ( d603 ) ) ) ) $ ( if d822 then d407 else false )
        d847 : if true then if true then Bool else Bool else if false then Bool else Bool
        d847 = ( ( Bool -> Bool ) ∋ ( ( λ x848 -> ( ( Bool -> Bool ) ∋ ( ( λ x849 -> true ) ) ) $ ( x848 ) ) ) ) $ ( if d158 then d183 else d360 )
        d850 : if false then if false then Bool else Bool else if false then Bool else Bool
        d850 = if if false then d424 else true then if true then false else false else if false then false else true
        d851 : if false then if false then Bool else Bool else if true then Bool else Bool
        d851 = ( ( Bool -> Bool ) ∋ ( ( λ x852 -> if x852 then d42 else x852 ) ) ) $ ( if d140 then false else false )
        d853 : if false then if true then Bool else Bool else if false then Bool else Bool
        d853 = if if d446 then false else d477 then if false then true else false else if true then false else d500
        d854 : ( ( Set -> Set ) ∋ ( ( λ x856 -> if true then x856 else x856 ) ) ) $ ( if false then Bool else Bool )
        d854 = ( ( Bool -> Bool ) ∋ ( ( λ x855 -> if true then d64 else d720 ) ) ) $ ( if d143 then d757 else d548 )
        d857 : if true then if true then Bool else Bool else if true then Bool else Bool
        d857 = if if d188 then false else false then if true then false else true else if d33 then d630 else true
        d858 : ( ( Set -> Set ) ∋ ( ( λ x859 -> ( ( Set -> Set ) ∋ ( ( λ x860 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d858 = if if false then d167 else true then if false then true else d828 else if d350 then d685 else true
        d861 : if false then if false then Bool else Bool else if true then Bool else Bool
        d861 = if if true then true else d780 then if false then true else d21 else if d594 then false else d764
        d862 : ( ( Set -> Set ) ∋ ( ( λ x863 -> ( ( Set -> Set ) ∋ ( ( λ x864 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d862 = if if d793 then false else d548 then if true then d412 else false else if true then true else d627
        d865 : if true then if false then Bool else Bool else if false then Bool else Bool
        d865 = ( ( Bool -> Bool ) ∋ ( ( λ x866 -> if true then x866 else x866 ) ) ) $ ( if false then false else true )
        d867 : if true then if false then Bool else Bool else if false then Bool else Bool
        d867 = ( ( Bool -> Bool ) ∋ ( ( λ x868 -> if x868 then false else true ) ) ) $ ( if false then true else d570 )
        d869 : if true then if true then Bool else Bool else if false then Bool else Bool
        d869 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if false then true else d799 ) ) ) $ ( if d582 then false else false )
        d871 : ( ( Set -> Set ) ∋ ( ( λ x872 -> ( ( Set -> Set ) ∋ ( ( λ x873 -> Bool ) ) ) $ ( x872 ) ) ) ) $ ( if false then Bool else Bool )
        d871 = if if true then true else false then if d175 then false else true else if true then d412 else true
        d874 : ( ( Set -> Set ) ∋ ( ( λ x875 -> if true then x875 else x875 ) ) ) $ ( if true then Bool else Bool )
        d874 = if if d834 then d472 else d466 then if d134 then false else false else if d424 then d429 else d290
        d876 : ( ( Set -> Set ) ∋ ( ( λ x879 -> ( ( Set -> Set ) ∋ ( ( λ x880 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d876 = ( ( Bool -> Bool ) ∋ ( ( λ x877 -> ( ( Bool -> Bool ) ∋ ( ( λ x878 -> d89 ) ) ) $ ( x877 ) ) ) ) $ ( if true then d660 else d406 )
        d881 : ( ( Set -> Set ) ∋ ( ( λ x882 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d881 = if if d241 then true else d197 then if true then d331 else d746 else if d182 then false else true
        d883 : ( ( Set -> Set ) ∋ ( ( λ x885 -> ( ( Set -> Set ) ∋ ( ( λ x886 -> x885 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x884 -> if d127 then x884 else x884 ) ) ) $ ( if d434 then true else false )
        d887 : if true then if true then Bool else Bool else if false then Bool else Bool
        d887 = ( ( Bool -> Bool ) ∋ ( ( λ x888 -> if false then d531 else false ) ) ) $ ( if d311 then d145 else true )
        d889 : if true then if false then Bool else Bool else if false then Bool else Bool
        d889 = if if d473 then true else true then if d254 then d183 else false else if d349 then d594 else true
        d890 : ( ( Set -> Set ) ∋ ( ( λ x891 -> ( ( Set -> Set ) ∋ ( ( λ x892 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d890 = if if d554 then d212 else d603 then if true then true else d881 else if true then d507 else d457
        d893 : ( ( Set -> Set ) ∋ ( ( λ x896 -> if false then x896 else x896 ) ) ) $ ( if true then Bool else Bool )
        d893 = ( ( Bool -> Bool ) ∋ ( ( λ x894 -> ( ( Bool -> Bool ) ∋ ( ( λ x895 -> true ) ) ) $ ( true ) ) ) ) $ ( if d427 then false else true )
        d897 : ( ( Set -> Set ) ∋ ( ( λ x898 -> ( ( Set -> Set ) ∋ ( ( λ x899 -> x898 ) ) ) $ ( x898 ) ) ) ) $ ( if false then Bool else Bool )
        d897 = if if d472 then false else d676 then if false then false else d412 else if false then true else d132
        d900 : ( ( Set -> Set ) ∋ ( ( λ x903 -> ( ( Set -> Set ) ∋ ( ( λ x904 -> Bool ) ) ) $ ( x903 ) ) ) ) $ ( if true then Bool else Bool )
        d900 = ( ( Bool -> Bool ) ∋ ( ( λ x901 -> ( ( Bool -> Bool ) ∋ ( ( λ x902 -> d827 ) ) ) $ ( x901 ) ) ) ) $ ( if true then d666 else d26 )
        d905 : ( ( Set -> Set ) ∋ ( ( λ x906 -> ( ( Set -> Set ) ∋ ( ( λ x907 -> x906 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d905 = if if true then d391 else true then if d529 then d479 else true else if false then true else true
        d908 : ( ( Set -> Set ) ∋ ( ( λ x909 -> if true then x909 else x909 ) ) ) $ ( if false then Bool else Bool )
        d908 = if if d53 then d656 else d5 then if false then true else d250 else if d121 then d559 else d112
        d910 : ( ( Set -> Set ) ∋ ( ( λ x911 -> ( ( Set -> Set ) ∋ ( ( λ x912 -> x912 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d910 = if if d171 then false else true then if d887 then d228 else d479 else if true then true else d350
        d913 : if true then if true then Bool else Bool else if false then Bool else Bool
        d913 = if if d247 then true else true then if d540 then d453 else d352 else if d184 then d666 else d268
        d914 : if false then if false then Bool else Bool else if true then Bool else Bool
        d914 = ( ( Bool -> Bool ) ∋ ( ( λ x915 -> if true then d796 else x915 ) ) ) $ ( if d687 then false else d555 )
        d916 : if true then if true then Bool else Bool else if true then Bool else Bool
        d916 = if if true then true else false then if d175 then false else d438 else if d400 then false else false
        d917 : if false then if true then Bool else Bool else if true then Bool else Bool
        d917 = ( ( Bool -> Bool ) ∋ ( ( λ x918 -> if d858 then x918 else d281 ) ) ) $ ( if true then d197 else d410 )
        d919 : if true then if false then Bool else Bool else if false then Bool else Bool
        d919 = if if d186 then d53 else true then if d307 then d69 else true else if false then d663 else true
        d920 : ( ( Set -> Set ) ∋ ( ( λ x922 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d920 = ( ( Bool -> Bool ) ∋ ( ( λ x921 -> if false then d424 else false ) ) ) $ ( if d472 then true else d412 )
        d923 : ( ( Set -> Set ) ∋ ( ( λ x925 -> if false then Bool else x925 ) ) ) $ ( if true then Bool else Bool )
        d923 = ( ( Bool -> Bool ) ∋ ( ( λ x924 -> if false then d297 else d883 ) ) ) $ ( if false then d35 else d381 )
        d926 : if true then if false then Bool else Bool else if true then Bool else Bool
        d926 = ( ( Bool -> Bool ) ∋ ( ( λ x927 -> if x927 then d900 else false ) ) ) $ ( if d667 then d566 else false )
        d928 : if true then if true then Bool else Bool else if false then Bool else Bool
        d928 = if if false then d378 else d477 then if false then d175 else true else if true then d543 else false
        d929 : if false then if true then Bool else Bool else if false then Bool else Bool
        d929 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> ( ( Bool -> Bool ) ∋ ( ( λ x931 -> false ) ) ) $ ( d335 ) ) ) ) $ ( if d540 then d326 else d239 )
        d932 : ( ( Set -> Set ) ∋ ( ( λ x935 -> ( ( Set -> Set ) ∋ ( ( λ x936 -> Bool ) ) ) $ ( x935 ) ) ) ) $ ( if false then Bool else Bool )
        d932 = ( ( Bool -> Bool ) ∋ ( ( λ x933 -> ( ( Bool -> Bool ) ∋ ( ( λ x934 -> true ) ) ) $ ( x933 ) ) ) ) $ ( if d159 then d21 else d106 )
        d937 : if true then if true then Bool else Bool else if false then Bool else Bool
        d937 = if if false then false else false then if d787 then d817 else false else if true then true else d216
        d938 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x941 -> x941 ) ) ) $ ( x940 ) ) ) ) $ ( if true then Bool else Bool )
        d938 = ( ( Bool -> Bool ) ∋ ( ( λ x939 -> if true then d423 else false ) ) ) $ ( if d268 then false else d138 )
        d942 : if false then if true then Bool else Bool else if false then Bool else Bool
        d942 = ( ( Bool -> Bool ) ∋ ( ( λ x943 -> ( ( Bool -> Bool ) ∋ ( ( λ x944 -> false ) ) ) $ ( x943 ) ) ) ) $ ( if true then true else d910 )
        d945 : ( ( Set -> Set ) ∋ ( ( λ x946 -> if true then x946 else Bool ) ) ) $ ( if true then Bool else Bool )
        d945 = if if false then d150 else d535 then if d585 then true else true else if false then d250 else false
        d947 : ( ( Set -> Set ) ∋ ( ( λ x948 -> if false then x948 else Bool ) ) ) $ ( if false then Bool else Bool )
        d947 = if if false then d184 else false then if d838 then d145 else d29 else if false then d46 else d290
        d949 : ( ( Set -> Set ) ∋ ( ( λ x950 -> ( ( Set -> Set ) ∋ ( ( λ x951 -> x950 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d949 = if if true then false else d110 then if d640 then true else d897 else if d574 then false else d473
        d952 : if true then if true then Bool else Bool else if false then Bool else Bool
        d952 = if if d147 then false else false then if true then true else d232 else if d667 then d712 else false
        d953 : if true then if true then Bool else Bool else if false then Bool else Bool
        d953 = if if d75 then d881 else true then if d287 then d150 else d914 else if false then true else d841
        d954 : ( ( Set -> Set ) ∋ ( ( λ x955 -> ( ( Set -> Set ) ∋ ( ( λ x956 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d954 = if if d662 then true else true then if false then d127 else d103 else if d585 then d748 else d276
        d957 : ( ( Set -> Set ) ∋ ( ( λ x959 -> if true then x959 else Bool ) ) ) $ ( if false then Bool else Bool )
        d957 = ( ( Bool -> Bool ) ∋ ( ( λ x958 -> if d733 then false else d472 ) ) ) $ ( if d953 then true else d834 )
        d960 : if false then if false then Bool else Bool else if false then Bool else Bool
        d960 = ( ( Bool -> Bool ) ∋ ( ( λ x961 -> ( ( Bool -> Bool ) ∋ ( ( λ x962 -> true ) ) ) $ ( x961 ) ) ) ) $ ( if d666 then d109 else d484 )
        d963 : ( ( Set -> Set ) ∋ ( ( λ x966 -> if false then x966 else x966 ) ) ) $ ( if false then Bool else Bool )
        d963 = ( ( Bool -> Bool ) ∋ ( ( λ x964 -> ( ( Bool -> Bool ) ∋ ( ( λ x965 -> x965 ) ) ) $ ( true ) ) ) ) $ ( if d69 then false else d82 )
        d967 : ( ( Set -> Set ) ∋ ( ( λ x968 -> ( ( Set -> Set ) ∋ ( ( λ x969 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d967 = if if d16 then false else d942 then if false then false else false else if false then false else true
        d970 : if false then if false then Bool else Bool else if true then Bool else Bool
        d970 = if if true then d139 else d703 then if d196 then true else true else if d188 then false else true
        d971 : ( ( Set -> Set ) ∋ ( ( λ x972 -> if false then Bool else x972 ) ) ) $ ( if true then Bool else Bool )
        d971 = if if false then d867 else d726 then if false then d954 else false else if true then d867 else true
        d973 : if false then if true then Bool else Bool else if true then Bool else Bool
        d973 = if if true then d573 else false then if true then d841 else false else if true then d565 else d489
        d974 : if false then if false then Bool else Bool else if true then Bool else Bool
        d974 = ( ( Bool -> Bool ) ∋ ( ( λ x975 -> if x975 then true else x975 ) ) ) $ ( if d501 then d451 else true )
        d976 : ( ( Set -> Set ) ∋ ( ( λ x977 -> ( ( Set -> Set ) ∋ ( ( λ x978 -> x977 ) ) ) $ ( x977 ) ) ) ) $ ( if false then Bool else Bool )
        d976 = if if true then false else d585 then if d793 then d574 else true else if d151 then d733 else false
        d979 : if true then if false then Bool else Bool else if true then Bool else Bool
        d979 = if if d209 then d442 else d261 then if true then d890 else false else if d573 then d810 else true
        d980 : if true then if true then Bool else Bool else if false then Bool else Bool
        d980 = if if false then true else true then if false then true else true else if d376 then true else false
        d981 : if false then if true then Bool else Bool else if true then Bool else Bool
        d981 = if if d764 then d656 else true then if d261 then d18 else false else if d654 then d475 else d350
        d982 : ( ( Set -> Set ) ∋ ( ( λ x983 -> ( ( Set -> Set ) ∋ ( ( λ x984 -> x984 ) ) ) $ ( x983 ) ) ) ) $ ( if false then Bool else Bool )
        d982 = if if d960 then d796 else true then if true then d297 else d320 else if d551 then d183 else d805
        d985 : if true then if true then Bool else Bool else if true then Bool else Bool
        d985 = if if d171 then true else d630 then if d501 then d41 else d876 else if d540 then false else d434
        d986 : ( ( Set -> Set ) ∋ ( ( λ x987 -> ( ( Set -> Set ) ∋ ( ( λ x988 -> x987 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d986 = if if d330 then true else false then if true then true else true else if false then true else d361
        d989 : if true then if false then Bool else Bool else if true then Bool else Bool
        d989 = if if false then true else false then if false then d42 else true else if false then true else d448
        d990 : if true then if false then Bool else Bool else if false then Bool else Bool
        d990 = ( ( Bool -> Bool ) ∋ ( ( λ x991 -> ( ( Bool -> Bool ) ∋ ( ( λ x992 -> d897 ) ) ) $ ( d175 ) ) ) ) $ ( if false then d587 else d301 )
        d993 : if true then if false then Bool else Bool else if true then Bool else Bool
        d993 = if if true then d254 else d549 then if d926 then true else d400 else if d985 then d87 else d865
        d994 : ( ( Set -> Set ) ∋ ( ( λ x996 -> ( ( Set -> Set ) ∋ ( ( λ x997 -> x996 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d994 = ( ( Bool -> Bool ) ∋ ( ( λ x995 -> if true then x995 else d484 ) ) ) $ ( if d769 then d427 else d929 )
        d998 : if true then if false then Bool else Bool else if false then Bool else Bool
        d998 = if if d371 then false else d989 then if false then true else true else if d60 then d817 else false
        d999 : if true then if true then Bool else Bool else if true then Bool else Bool
        d999 = if if false then d638 else false then if true then d640 else true else if d100 then false else true
        d1000 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x1001 -> ( ( Bool -> Bool ) ∋ ( ( λ x1002 -> d21 ) ) ) $ ( true ) ) ) ) $ ( if d723 then d292 else false )
        d1003 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1003 = if if d79 then d686 else false then if d847 then d713 else true else if d52 then true else false
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x1006 -> ( ( Set -> Set ) ∋ ( ( λ x1007 -> Bool ) ) ) $ ( x1006 ) ) ) ) $ ( if false then Bool else Bool )
        d1004 = ( ( Bool -> Bool ) ∋ ( ( λ x1005 -> if x1005 then x1005 else x1005 ) ) ) $ ( if d140 then d535 else false )
        d1008 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1008 = ( ( Bool -> Bool ) ∋ ( ( λ x1009 -> if false then d723 else d228 ) ) ) $ ( if d387 then d942 else d268 )
        d1010 : ( ( Set -> Set ) ∋ ( ( λ x1012 -> ( ( Set -> Set ) ∋ ( ( λ x1013 -> Bool ) ) ) $ ( x1012 ) ) ) ) $ ( if true then Bool else Bool )
        d1010 = ( ( Bool -> Bool ) ∋ ( ( λ x1011 -> if false then true else x1011 ) ) ) $ ( if d850 then true else true )
        d1014 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1014 = if if true then d805 else d999 then if d834 then true else true else if d280 then d947 else false
        d1015 : ( ( Set -> Set ) ∋ ( ( λ x1016 -> ( ( Set -> Set ) ∋ ( ( λ x1017 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1015 = if if true then d16 else d209 then if d228 then false else d603 else if d638 then d359 else false
        d1018 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x1019 -> if x1019 then x1019 else d256 ) ) ) $ ( if true then d110 else d609 )
        d1020 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1020 = if if d827 then d5 else d13 then if d183 then d364 else false else if true then false else d479
        d1021 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1021 = ( ( Bool -> Bool ) ∋ ( ( λ x1022 -> if x1022 then x1022 else d311 ) ) ) $ ( if d188 then true else true )
        d1023 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1023 = ( ( Bool -> Bool ) ∋ ( ( λ x1024 -> ( ( Bool -> Bool ) ∋ ( ( λ x1025 -> x1025 ) ) ) $ ( d861 ) ) ) ) $ ( if true then d784 else d109 )
        d1026 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1026 = if if true then d247 else d151 then if false then d448 else true else if true then false else d383
        d1027 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1027 = if if d784 then true else false then if d515 then d178 else true else if false then d271 else true
        d1028 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> if false then x1030 else x1030 ) ) ) $ ( if false then Bool else Bool )
        d1028 = ( ( Bool -> Bool ) ∋ ( ( λ x1029 -> if x1029 then false else x1029 ) ) ) $ ( if true then d757 else true )
        d1031 : ( ( Set -> Set ) ∋ ( ( λ x1033 -> ( ( Set -> Set ) ∋ ( ( λ x1034 -> Bool ) ) ) $ ( x1033 ) ) ) ) $ ( if true then Bool else Bool )
        d1031 = ( ( Bool -> Bool ) ∋ ( ( λ x1032 -> if x1032 then false else d374 ) ) ) $ ( if d938 then false else d175 )
        d1035 : ( ( Set -> Set ) ∋ ( ( λ x1038 -> if true then x1038 else x1038 ) ) ) $ ( if true then Bool else Bool )
        d1035 = ( ( Bool -> Bool ) ∋ ( ( λ x1036 -> ( ( Bool -> Bool ) ∋ ( ( λ x1037 -> x1037 ) ) ) $ ( x1036 ) ) ) ) $ ( if false then false else false )
        d1039 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1039 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if x1040 then true else true ) ) ) $ ( if false then true else true )
        d1041 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1041 = if if d993 then d574 else d793 then if true then true else true else if d835 then d359 else d981
        d1042 : ( ( Set -> Set ) ∋ ( ( λ x1043 -> if false then Bool else x1043 ) ) ) $ ( if true then Bool else Bool )
        d1042 = if if false then false else true then if d957 then true else false else if d728 then false else false
        d1044 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1044 = if if true then false else d29 then if d281 then d247 else true else if true then false else true
        d1045 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1045 = ( ( Bool -> Bool ) ∋ ( ( λ x1046 -> ( ( Bool -> Bool ) ∋ ( ( λ x1047 -> d630 ) ) ) $ ( x1046 ) ) ) ) $ ( if d206 then false else d913 )
        d1048 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1048 = ( ( Bool -> Bool ) ∋ ( ( λ x1049 -> if false then x1049 else d841 ) ) ) $ ( if d981 then d145 else false )
        d1050 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1050 = ( ( Bool -> Bool ) ∋ ( ( λ x1051 -> ( ( Bool -> Bool ) ∋ ( ( λ x1052 -> d209 ) ) ) $ ( x1051 ) ) ) ) $ ( if true then d730 else true )
        d1053 : ( ( Set -> Set ) ∋ ( ( λ x1054 -> ( ( Set -> Set ) ∋ ( ( λ x1055 -> x1055 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1053 = if if d980 then d1015 else d799 then if d994 then d565 else true else if d239 then d326 else d196
        d1056 : ( ( Set -> Set ) ∋ ( ( λ x1057 -> ( ( Set -> Set ) ∋ ( ( λ x1058 -> Bool ) ) ) $ ( x1057 ) ) ) ) $ ( if false then Bool else Bool )
        d1056 = if if true then true else d161 then if false then true else true else if true then d477 else false
        d1059 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> if true then Bool else x1060 ) ) ) $ ( if false then Bool else Bool )
        d1059 = if if d781 then false else d900 then if false then d335 else d851 else if true then true else false
        d1061 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1061 = ( ( Bool -> Bool ) ∋ ( ( λ x1062 -> if d960 then x1062 else d947 ) ) ) $ ( if d399 then true else true )
        d1063 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1063 = if if false then true else false then if true then d164 else true else if d874 then d286 else d713
        d1064 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1064 = if if d154 then false else d16 then if false then d183 else false else if d998 then d326 else false
        d1065 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1065 = if if d974 then true else false then if true then d529 else d594 else if true then false else true
        d1066 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1066 = if if d755 then d184 else false then if d713 then d109 else d18 else if d478 then d865 else d322
        d1067 : ( ( Set -> Set ) ∋ ( ( λ x1068 -> if false then Bool else x1068 ) ) ) $ ( if false then Bool else Bool )
        d1067 = if if d203 then d551 else false then if true then false else true else if false then d1059 else d182
        d1069 : ( ( Set -> Set ) ∋ ( ( λ x1071 -> if false then x1071 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1069 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if true then d1063 else d676 ) ) ) $ ( if d764 then d515 else d587 )
        d1072 : ( ( Set -> Set ) ∋ ( ( λ x1075 -> ( ( Set -> Set ) ∋ ( ( λ x1076 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1072 = ( ( Bool -> Bool ) ∋ ( ( λ x1073 -> ( ( Bool -> Bool ) ∋ ( ( λ x1074 -> x1073 ) ) ) $ ( true ) ) ) ) $ ( if d345 then d497 else true )
        d1077 : ( ( Set -> Set ) ∋ ( ( λ x1078 -> ( ( Set -> Set ) ∋ ( ( λ x1079 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1077 = if if d307 then d95 else true then if d120 then true else true else if d841 then true else d1027
        d1080 : ( ( Set -> Set ) ∋ ( ( λ x1082 -> if true then Bool else x1082 ) ) ) $ ( if false then Bool else Bool )
        d1080 = ( ( Bool -> Bool ) ∋ ( ( λ x1081 -> if x1081 then false else d120 ) ) ) $ ( if true then false else true )
        d1083 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1083 = if if d796 then true else d973 then if d769 then true else d694 else if false then true else false
        d1084 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1084 = if if false then false else true then if false then true else d175 else if d228 then d8 else true
        d1085 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1085 = if if false then false else d635 then if false then false else true else if true then d1000 else d876
        d1086 : ( ( Set -> Set ) ∋ ( ( λ x1088 -> if false then x1088 else x1088 ) ) ) $ ( if false then Bool else Bool )
        d1086 = ( ( Bool -> Bool ) ∋ ( ( λ x1087 -> if true then d1 else d400 ) ) ) $ ( if d1045 then true else d699 )
        d1089 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1089 = if if false then d75 else d1004 then if true then d766 else d473 else if d501 then d122 else true
        d1090 : ( ( Set -> Set ) ∋ ( ( λ x1093 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1090 = ( ( Bool -> Bool ) ∋ ( ( λ x1091 -> ( ( Bool -> Bool ) ∋ ( ( λ x1092 -> x1092 ) ) ) $ ( d459 ) ) ) ) $ ( if d591 then d699 else false )
        d1094 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1094 = ( ( Bool -> Bool ) ∋ ( ( λ x1095 -> ( ( Bool -> Bool ) ∋ ( ( λ x1096 -> x1096 ) ) ) $ ( true ) ) ) ) $ ( if d1063 then false else d865 )
        d1097 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1097 = ( ( Bool -> Bool ) ∋ ( ( λ x1098 -> if false then d434 else false ) ) ) $ ( if false then false else d167 )
        d1099 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1099 = if if false then false else d808 then if d952 then true else d427 else if d974 then d1021 else false
        d1100 : ( ( Set -> Set ) ∋ ( ( λ x1102 -> ( ( Set -> Set ) ∋ ( ( λ x1103 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1100 = ( ( Bool -> Bool ) ∋ ( ( λ x1101 -> if d735 then x1101 else true ) ) ) $ ( if d412 then false else true )
        d1104 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1104 = if if true then false else false then if d352 then d986 else true else if true then d49 else true
        d1105 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1105 = if if d1085 then d42 else d871 then if d671 then false else true else if true then true else true
        d1106 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1106 = if if true then d566 else d141 then if true then true else false else if d197 then d345 else d723