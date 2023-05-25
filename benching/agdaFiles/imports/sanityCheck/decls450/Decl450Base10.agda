module Decl450Base10  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then x3 else x3 ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if false then true else x2 ) ) ) $ ( if false then true else false )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then x6 else Bool ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if d1 then x5 else x5 ) ) ) $ ( if d1 then true else false )
        d7 : if false then if true then Bool else Bool else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if x8 then true else x8 ) ) ) $ ( if false then true else false )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then Bool else x12 ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> x11 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d1 )
        d13 : if false then if false then Bool else Bool else if false then Bool else Bool
        d13 = if if d7 then false else true then if false then d1 else true else if true then false else d7
        d14 : if false then if false then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if d4 then d7 else x15 ) ) ) $ ( if d1 then true else d9 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d16 = if if d7 then d7 else d13 then if false then d14 else true else if d7 then true else true
        d18 : if false then if true then Bool else Bool else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( x19 ) ) ) ) $ ( if d7 then d14 else d14 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x23 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d21 = if if d13 then d16 else false then if false then d18 else true else if true then true else d14
        d24 : if true then if false then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( x25 ) ) ) ) $ ( if false then false else false )
        d27 : if true then if false then Bool else Bool else if false then Bool else Bool
        d27 = if if false then true else true then if d16 then d7 else d18 else if d13 then d14 else d7
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( x29 ) ) ) ) $ ( if false then Bool else Bool )
        d28 = if if false then true else false then if false then true else d18 else if true then true else true
        d31 : if true then if false then Bool else Bool else if true then Bool else Bool
        d31 = if if true then d4 else d28 then if false then d4 else d7 else if d13 then d1 else d27
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if x33 then d13 else d14 ) ) ) $ ( if false then d21 else false )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then Bool else x37 ) ) ) $ ( if false then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if true then d9 else true ) ) ) $ ( if d1 then d28 else d4 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if false then true else x39 ) ) ) $ ( if d28 then d9 else d35 )
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = if if true then false else true then if false then d21 else d35 else if d4 then d31 else d9
        d43 : if false then if false then Bool else Bool else if false then Bool else Bool
        d43 = if if d14 then false else true then if false then d21 else d24 else if d38 then d38 else d7
        d44 : if false then if true then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> d14 ) ) ) $ ( false ) ) ) ) $ ( if d21 then d13 else true )
        d47 : if true then if true then Bool else Bool else if true then Bool else Bool
        d47 = if if d1 then d24 else d24 then if d35 then false else d7 else if d31 then true else d43
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( x49 ) ) ) ) $ ( if true then Bool else Bool )
        d48 = if if false then true else d31 then if true then d28 else false else if d16 then false else false
        d51 : if false then if false then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> d4 ) ) ) $ ( x52 ) ) ) ) $ ( if d32 then true else d28 )
        d54 : if false then if false then Bool else Bool else if true then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> true ) ) ) $ ( d43 ) ) ) ) $ ( if d7 then true else false )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x59 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d57 = if if d44 then d42 else d51 then if d35 then false else d32 else if d31 then false else d48
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if false then d28 else d13 ) ) ) $ ( if false then true else true )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then x67 else x67 ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( x65 ) ) ) ) $ ( if false then d48 else d16 )
        d68 : if false then if true then Bool else Bool else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if false then d9 else x69 ) ) ) $ ( if false then d32 else true )
        d70 : if true then if false then Bool else Bool else if true then Bool else Bool
        d70 = if if d44 then true else false then if false then false else d21 else if d18 then true else d43
        d71 : if false then if false then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> true ) ) ) $ ( d35 ) ) ) ) $ ( if d27 then d43 else true )
        d74 : if true then if true then Bool else Bool else if true then Bool else Bool
        d74 = if if d71 then false else d60 then if true then true else d24 else if false then d60 else true
        d75 : if true then if true then Bool else Bool else if false then Bool else Bool
        d75 = if if true then false else d13 then if false then false else true else if d27 then d60 else d35
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = if if false then false else d74 then if d60 then d74 else true else if d42 then false else false
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if true then x78 else Bool ) ) ) $ ( if false then Bool else Bool )
        d77 = if if d4 then false else d64 then if d43 then d42 else true else if d43 then d64 else false
        d79 : if false then if true then Bool else Bool else if false then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if false then true else d14 ) ) ) $ ( if d14 then d51 else false )
        d81 : if true then if false then Bool else Bool else if true then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> true ) ) ) $ ( true ) ) ) ) $ ( if d31 then false else d77 )
        d84 : if true then if true then Bool else Bool else if false then Bool else Bool
        d84 = if if false then d47 else true then if false then d81 else d79 else if d74 then true else false
        d85 : if true then if true then Bool else Bool else if false then Bool else Bool
        d85 = if if d84 then false else d1 then if d4 then true else true else if d75 then d31 else true
        d86 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( x88 ) ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if true then x87 else d85 ) ) ) $ ( if false then false else d84 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if true then x92 else x92 ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if true then x91 else d85 ) ) ) $ ( if false then false else true )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x94 ) ) ) $ ( x94 ) ) ) ) $ ( if true then Bool else Bool )
        d93 = if if false then d60 else d43 then if d44 then false else false else if true then false else false
        d96 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if true then Bool else x99 ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> d74 ) ) ) $ ( false ) ) ) ) $ ( if false then d64 else d75 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d100 = if if true then false else d16 then if false then true else false else if false then d43 else true
        d103 : if true then if false then Bool else Bool else if false then Bool else Bool
        d103 = if if d38 then d31 else d51 then if d18 then d44 else d77 else if true then true else d1
        d104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> x105 ) ) ) $ ( x105 ) ) ) ) $ ( if false then d96 else true )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> x109 ) ) ) $ ( false ) ) ) ) $ ( if false then d79 else d79 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( x114 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> d84 ) ) ) $ ( d31 ) ) ) ) $ ( if d71 then true else d104 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if false then x119 else Bool ) ) ) $ ( if false then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> x118 ) ) ) $ ( false ) ) ) ) $ ( if d35 then true else d4 )
        d120 : if true then if false then Bool else Bool else if false then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if x121 then d21 else x121 ) ) ) $ ( if true then true else true )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> x123 ) ) ) $ ( false ) ) ) ) $ ( if d48 then false else true )
        d126 : if false then if true then Bool else Bool else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> d21 ) ) ) $ ( x127 ) ) ) ) $ ( if true then true else true )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then x130 else Bool ) ) ) $ ( if true then Bool else Bool )
        d129 = if if false then false else d68 then if false then true else d57 else if false then d84 else true
        d131 : if true then if true then Bool else Bool else if false then Bool else Bool
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> if true then d14 else d28 ) ) ) $ ( if d75 then d93 else false )
        d133 : if false then if false then Bool else Bool else if true then Bool else Bool
        d133 = if if d129 then d104 else d1 then if d129 then d51 else true else if d64 then d81 else false
        d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> x136 ) ) ) $ ( x135 ) ) ) ) $ ( if false then Bool else Bool )
        d134 = if if d28 then false else d131 then if d120 then d47 else false else if true then d43 else d9
        d137 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> x140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( Bool -> Bool ) ∋ ( ( λ x139 -> x138 ) ) ) $ ( d32 ) ) ) ) $ ( if false then d74 else true )
        d142 : if false then if false then Bool else Bool else if true then Bool else Bool
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> ( ( Bool -> Bool ) ∋ ( ( λ x144 -> false ) ) ) $ ( x143 ) ) ) ) $ ( if d96 then false else d86 )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if true then x148 else x148 ) ) ) $ ( if false then Bool else Bool )
        d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> ( ( Bool -> Bool ) ∋ ( ( λ x147 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then false else d32 )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x151 -> if false then x151 else x151 ) ) ) $ ( if false then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if false then false else x150 ) ) ) $ ( if false then false else false )
        d152 : if false then if false then Bool else Bool else if true then Bool else Bool
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> if d38 then d35 else x153 ) ) ) $ ( if d1 then false else true )
        d154 : if false then if true then Bool else Bool else if false then Bool else Bool
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x155 -> if x155 then true else d60 ) ) ) $ ( if true then d100 else d28 )
        d156 : if true then if true then Bool else Bool else if false then Bool else Bool
        d156 = if if false then true else true then if d60 then d54 else true else if false then d74 else d142
        d157 : if true then if false then Bool else Bool else if true then Bool else Bool
        d157 = if if d79 then true else d48 then if false then false else true else if d129 then false else d28
        d158 : if false then if true then Bool else Bool else if false then Bool else Bool
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> if x159 then true else false ) ) ) $ ( if false then d57 else d42 )
        d160 : ( ( Set -> Set ) ∋ ( ( λ x162 -> if false then x162 else x162 ) ) ) $ ( if false then Bool else Bool )
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> if false then d104 else false ) ) ) $ ( if d111 then d131 else d4 )
        d163 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> Bool ) ) ) $ ( x164 ) ) ) ) $ ( if false then Bool else Bool )
        d163 = if if true then true else d9 then if d18 then d93 else false else if false then d24 else d13
        d166 : if false then if true then Bool else Bool else if true then Bool else Bool
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> if false then x167 else false ) ) ) $ ( if true then false else d85 )
        d168 : if false then if true then Bool else Bool else if true then Bool else Bool
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> if x169 then x169 else d104 ) ) ) $ ( if false then d160 else d134 )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> x174 ) ) ) $ ( x173 ) ) ) ) $ ( if true then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> true ) ) ) $ ( x171 ) ) ) ) $ ( if d154 then false else false )
        d175 : if false then if false then Bool else Bool else if true then Bool else Bool
        d175 = if if false then d152 else false then if false then true else d18 else if d48 then d4 else d68
        d176 : if false then if false then Bool else Bool else if false then Bool else Bool
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( Bool -> Bool ) ∋ ( ( λ x178 -> false ) ) ) $ ( d76 ) ) ) ) $ ( if true then false else d4 )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> Bool ) ) ) $ ( x180 ) ) ) ) $ ( if false then Bool else Bool )
        d179 = if if true then d68 else d163 then if d79 then d120 else d81 else if d134 then d35 else false
        d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d182 = if if d70 then true else d4 then if true then false else true else if true then d131 else true
        d185 : if false then if false then Bool else Bool else if false then Bool else Bool
        d185 = if if true then d43 else d107 then if true then d131 else true else if d86 then false else d16
        d186 : if true then if true then Bool else Bool else if true then Bool else Bool
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> if true then d103 else true ) ) ) $ ( if true then d149 else false )
        d188 : if false then if true then Bool else Bool else if true then Bool else Bool
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> if x189 then true else d31 ) ) ) $ ( if false then false else d18 )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> Bool ) ) ) $ ( x191 ) ) ) ) $ ( if false then Bool else Bool )
        d190 = if if true then true else true then if d179 then d75 else true else if true then d126 else d1
        d193 : if true then if true then Bool else Bool else if false then Bool else Bool
        d193 = if if d179 then d21 else true then if d14 then d168 else d54 else if d76 then d90 else d81
        d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> x195 ) ) ) $ ( x195 ) ) ) ) $ ( if true then Bool else Bool )
        d194 = if if d70 then false else true then if d1 then d86 else d179 else if d48 then false else d154
        d197 : ( ( Set -> Set ) ∋ ( ( λ x198 -> if true then x198 else x198 ) ) ) $ ( if false then Bool else Bool )
        d197 = if if d27 then true else d24 then if false then false else d43 else if true then true else d48
        d199 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if true then x200 else Bool ) ) ) $ ( if true then Bool else Bool )
        d199 = if if false then true else d32 then if true then d142 else d182 else if false then d48 else d71
        d201 : ( ( Set -> Set ) ∋ ( ( λ x202 -> if false then x202 else Bool ) ) ) $ ( if false then Bool else Bool )
        d201 = if if d122 then false else true then if d197 then false else d1 else if false then true else false
        d203 : if false then if true then Bool else Bool else if true then Bool else Bool
        d203 = ( ( Bool -> Bool ) ∋ ( ( λ x204 -> ( ( Bool -> Bool ) ∋ ( ( λ x205 -> d1 ) ) ) $ ( x204 ) ) ) ) $ ( if d71 then true else false )
        d206 : ( ( Set -> Set ) ∋ ( ( λ x207 -> ( ( Set -> Set ) ∋ ( ( λ x208 -> x207 ) ) ) $ ( x207 ) ) ) ) $ ( if false then Bool else Bool )
        d206 = if if d104 then d111 else d38 then if true then d64 else false else if d16 then false else d60
        d209 : ( ( Set -> Set ) ∋ ( ( λ x212 -> if true then x212 else x212 ) ) ) $ ( if false then Bool else Bool )
        d209 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x211 -> true ) ) ) $ ( x210 ) ) ) ) $ ( if d7 then d85 else true )
        d213 : ( ( Set -> Set ) ∋ ( ( λ x214 -> ( ( Set -> Set ) ∋ ( ( λ x215 -> Bool ) ) ) $ ( x214 ) ) ) ) $ ( if true then Bool else Bool )
        d213 = if if d156 then false else false then if true then true else true else if d122 then true else d71
        d216 : if false then if true then Bool else Bool else if false then Bool else Bool
        d216 = if if d9 then d182 else d163 then if d64 then d85 else false else if true then true else d1
        d217 : ( ( Set -> Set ) ∋ ( ( λ x218 -> if true then x218 else x218 ) ) ) $ ( if false then Bool else Bool )
        d217 = if if d79 then false else d14 then if d133 then true else true else if true then true else d126
        d219 : if true then if true then Bool else Bool else if false then Bool else Bool
        d219 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if false then x220 else false ) ) ) $ ( if d142 then d156 else d93 )
        d221 : ( ( Set -> Set ) ∋ ( ( λ x224 -> ( ( Set -> Set ) ∋ ( ( λ x225 -> Bool ) ) ) $ ( x224 ) ) ) ) $ ( if true then Bool else Bool )
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x222 -> ( ( Bool -> Bool ) ∋ ( ( λ x223 -> d93 ) ) ) $ ( true ) ) ) ) $ ( if d219 then d129 else d149 )
        d226 : ( ( Set -> Set ) ∋ ( ( λ x227 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d226 = if if d193 then d44 else false then if false then true else false else if true then d16 else d157
        d228 : if false then if true then Bool else Bool else if true then Bool else Bool
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x229 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> x229 ) ) ) $ ( true ) ) ) ) $ ( if d201 then false else true )
        d231 : ( ( Set -> Set ) ∋ ( ( λ x234 -> ( ( Set -> Set ) ∋ ( ( λ x235 -> x234 ) ) ) $ ( x234 ) ) ) ) $ ( if false then Bool else Bool )
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x232 -> ( ( Bool -> Bool ) ∋ ( ( λ x233 -> d190 ) ) ) $ ( x232 ) ) ) ) $ ( if false then true else true )
        d236 : if false then if false then Bool else Bool else if true then Bool else Bool
        d236 = if if false then false else false then if true then false else true else if false then d201 else d217
        d237 : ( ( Set -> Set ) ∋ ( ( λ x239 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> x240 ) ) ) $ ( x239 ) ) ) ) $ ( if true then Bool else Bool )
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x238 -> if true then x238 else d1 ) ) ) $ ( if true then false else true )
        d241 : ( ( Set -> Set ) ∋ ( ( λ x242 -> if true then Bool else x242 ) ) ) $ ( if false then Bool else Bool )
        d241 = if if d160 then d107 else true then if true then true else d185 else if false then d4 else false
        d243 : if false then if true then Bool else Bool else if true then Bool else Bool
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x244 -> ( ( Bool -> Bool ) ∋ ( ( λ x245 -> x244 ) ) ) $ ( x244 ) ) ) ) $ ( if true then d100 else true )
        d246 : if false then if true then Bool else Bool else if false then Bool else Bool
        d246 = if if true then false else d48 then if false then d175 else true else if false then d48 else false
        d247 : ( ( Set -> Set ) ∋ ( ( λ x249 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( x249 ) ) ) ) $ ( if true then Bool else Bool )
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x248 -> if true then x248 else x248 ) ) ) $ ( if d4 then d24 else d152 )
        d251 : if true then if true then Bool else Bool else if false then Bool else Bool
        d251 = if if false then d16 else d68 then if d216 then d24 else d170 else if d47 then true else true
        d252 : ( ( Set -> Set ) ∋ ( ( λ x254 -> if false then x254 else x254 ) ) ) $ ( if true then Bool else Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x253 -> if true then d129 else x253 ) ) ) $ ( if true then true else false )
        d255 : if false then if true then Bool else Bool else if false then Bool else Bool
        d255 = ( ( Bool -> Bool ) ∋ ( ( λ x256 -> if x256 then false else d100 ) ) ) $ ( if d154 then false else false )
        d257 : if true then if true then Bool else Bool else if true then Bool else Bool
        d257 = if if true then true else d241 then if true then d84 else true else if false then d116 else d103
        d258 : ( ( Set -> Set ) ∋ ( ( λ x261 -> ( ( Set -> Set ) ∋ ( ( λ x262 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d258 = ( ( Bool -> Bool ) ∋ ( ( λ x259 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> d96 ) ) ) $ ( d116 ) ) ) ) $ ( if d251 then d100 else d44 )
        d263 : if false then if true then Bool else Bool else if true then Bool else Bool
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x264 -> ( ( Bool -> Bool ) ∋ ( ( λ x265 -> d152 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d90 )
        d266 : if false then if true then Bool else Bool else if true then Bool else Bool
        d266 = if if false then false else d71 then if d194 then d21 else d129 else if d142 then true else true
        d267 : ( ( Set -> Set ) ∋ ( ( λ x269 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d267 = ( ( Bool -> Bool ) ∋ ( ( λ x268 -> if d188 then x268 else x268 ) ) ) $ ( if false then d51 else true )
        d270 : ( ( Set -> Set ) ∋ ( ( λ x272 -> ( ( Set -> Set ) ∋ ( ( λ x273 -> Bool ) ) ) $ ( x272 ) ) ) ) $ ( if true then Bool else Bool )
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x271 -> if true then x271 else x271 ) ) ) $ ( if false then true else d163 )
        d274 : ( ( Set -> Set ) ∋ ( ( λ x277 -> if true then x277 else Bool ) ) ) $ ( if true then Bool else Bool )
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x275 -> ( ( Bool -> Bool ) ∋ ( ( λ x276 -> x276 ) ) ) $ ( true ) ) ) ) $ ( if d226 then d163 else false )
        d278 : ( ( Set -> Set ) ∋ ( ( λ x281 -> if false then Bool else x281 ) ) ) $ ( if true then Bool else Bool )
        d278 = ( ( Bool -> Bool ) ∋ ( ( λ x279 -> ( ( Bool -> Bool ) ∋ ( ( λ x280 -> d13 ) ) ) $ ( x279 ) ) ) ) $ ( if true then true else d77 )
        d282 : ( ( Set -> Set ) ∋ ( ( λ x284 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d282 = ( ( Bool -> Bool ) ∋ ( ( λ x283 -> if x283 then d263 else x283 ) ) ) $ ( if true then false else false )
        d285 : if false then if false then Bool else Bool else if true then Bool else Bool
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x286 -> if x286 then d231 else false ) ) ) $ ( if false then d27 else d179 )
        d287 : ( ( Set -> Set ) ∋ ( ( λ x288 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d287 = if if false then true else d122 then if d13 then d93 else d166 else if d185 then false else d32
        d289 : ( ( Set -> Set ) ∋ ( ( λ x292 -> ( ( Set -> Set ) ∋ ( ( λ x293 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x291 -> x291 ) ) ) $ ( d188 ) ) ) ) $ ( if false then d51 else false )
        d294 : if true then if false then Bool else Bool else if false then Bool else Bool
        d294 = ( ( Bool -> Bool ) ∋ ( ( λ x295 -> if x295 then true else x295 ) ) ) $ ( if true then d57 else true )
        d296 : if true then if false then Bool else Bool else if true then Bool else Bool
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x297 -> ( ( Bool -> Bool ) ∋ ( ( λ x298 -> true ) ) ) $ ( x297 ) ) ) ) $ ( if true then d9 else d278 )
        d299 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then Bool else x300 ) ) ) $ ( if false then Bool else Bool )
        d299 = if if true then true else true then if false then d16 else d278 else if false then d219 else d247
        d301 : ( ( Set -> Set ) ∋ ( ( λ x304 -> ( ( Set -> Set ) ∋ ( ( λ x305 -> x305 ) ) ) $ ( x304 ) ) ) ) $ ( if true then Bool else Bool )
        d301 = ( ( Bool -> Bool ) ∋ ( ( λ x302 -> ( ( Bool -> Bool ) ∋ ( ( λ x303 -> d81 ) ) ) $ ( d137 ) ) ) ) $ ( if true then false else false )
        d306 : ( ( Set -> Set ) ∋ ( ( λ x307 -> if false then Bool else x307 ) ) ) $ ( if true then Bool else Bool )
        d306 = if if d285 then d154 else true then if d182 then false else d76 else if false then true else d246
        d308 : ( ( Set -> Set ) ∋ ( ( λ x309 -> ( ( Set -> Set ) ∋ ( ( λ x310 -> Bool ) ) ) $ ( x309 ) ) ) ) $ ( if false then Bool else Bool )
        d308 = if if false then d296 else d289 then if false then true else false else if false then false else true
        d311 : ( ( Set -> Set ) ∋ ( ( λ x313 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d311 = ( ( Bool -> Bool ) ∋ ( ( λ x312 -> if x312 then true else d145 ) ) ) $ ( if d247 then d142 else d157 )
        d314 : if false then if true then Bool else Bool else if false then Bool else Bool
        d314 = ( ( Bool -> Bool ) ∋ ( ( λ x315 -> ( ( Bool -> Bool ) ∋ ( ( λ x316 -> d35 ) ) ) $ ( false ) ) ) ) $ ( if d217 then true else d226 )
        d317 : if false then if false then Bool else Bool else if false then Bool else Bool
        d317 = ( ( Bool -> Bool ) ∋ ( ( λ x318 -> if d266 then false else d111 ) ) ) $ ( if d206 then d18 else d107 )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x321 -> ( ( Set -> Set ) ∋ ( ( λ x322 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if true then false else d221 ) ) ) $ ( if d79 then true else d306 )
        d323 : ( ( Set -> Set ) ∋ ( ( λ x325 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d323 = ( ( Bool -> Bool ) ∋ ( ( λ x324 -> if d201 then false else d120 ) ) ) $ ( if d308 then d149 else d221 )
        d326 : ( ( Set -> Set ) ∋ ( ( λ x328 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d326 = ( ( Bool -> Bool ) ∋ ( ( λ x327 -> if false then d219 else d27 ) ) ) $ ( if false then d86 else true )
        d329 : if true then if true then Bool else Bool else if false then Bool else Bool
        d329 = if if d285 then false else d21 then if true then true else true else if true then true else false
        d330 : ( ( Set -> Set ) ∋ ( ( λ x333 -> if false then x333 else x333 ) ) ) $ ( if false then Bool else Bool )
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x331 -> ( ( Bool -> Bool ) ∋ ( ( λ x332 -> x331 ) ) ) $ ( x331 ) ) ) ) $ ( if d76 then d247 else false )
        d334 : if false then if true then Bool else Bool else if true then Bool else Bool
        d334 = if if true then d258 else false then if d236 then d18 else d70 else if false then d323 else true
        d335 : if false then if true then Bool else Bool else if false then Bool else Bool
        d335 = if if d314 then d122 else true then if d68 then d266 else false else if d329 then d76 else d131
        d336 : ( ( Set -> Set ) ∋ ( ( λ x339 -> if true then Bool else x339 ) ) ) $ ( if true then Bool else Bool )
        d336 = ( ( Bool -> Bool ) ∋ ( ( λ x337 -> ( ( Bool -> Bool ) ∋ ( ( λ x338 -> d299 ) ) ) $ ( d335 ) ) ) ) $ ( if false then d194 else false )
        d340 : if false then if true then Bool else Bool else if false then Bool else Bool
        d340 = ( ( Bool -> Bool ) ∋ ( ( λ x341 -> ( ( Bool -> Bool ) ∋ ( ( λ x342 -> false ) ) ) $ ( d81 ) ) ) ) $ ( if d251 then true else d21 )
        d343 : ( ( Set -> Set ) ∋ ( ( λ x344 -> ( ( Set -> Set ) ∋ ( ( λ x345 -> Bool ) ) ) $ ( x344 ) ) ) ) $ ( if true then Bool else Bool )
        d343 = if if false then false else true then if d100 then true else false else if d247 then d241 else true
        d346 : if true then if true then Bool else Bool else if false then Bool else Bool
        d346 = ( ( Bool -> Bool ) ∋ ( ( λ x347 -> ( ( Bool -> Bool ) ∋ ( ( λ x348 -> d48 ) ) ) $ ( x347 ) ) ) ) $ ( if true then d133 else d213 )
        d349 : if false then if true then Bool else Bool else if true then Bool else Bool
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if false then x350 else true ) ) ) $ ( if true then true else true )
        d351 : ( ( Set -> Set ) ∋ ( ( λ x352 -> ( ( Set -> Set ) ∋ ( ( λ x353 -> x352 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d351 = if if d14 then d185 else d236 then if false then true else d255 else if d193 then d14 else d47
        d354 : ( ( Set -> Set ) ∋ ( ( λ x355 -> if true then x355 else Bool ) ) ) $ ( if true then Bool else Bool )
        d354 = if if true then d96 else false then if true then false else d336 else if true then d86 else false
        d356 : ( ( Set -> Set ) ∋ ( ( λ x359 -> if true then Bool else x359 ) ) ) $ ( if true then Bool else Bool )
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x357 -> ( ( Bool -> Bool ) ∋ ( ( λ x358 -> false ) ) ) $ ( d76 ) ) ) ) $ ( if false then true else true )
        d360 : if true then if true then Bool else Bool else if true then Bool else Bool
        d360 = if if true then true else d116 then if false then false else d349 else if false then d57 else d131
        d361 : ( ( Set -> Set ) ∋ ( ( λ x362 -> if true then x362 else x362 ) ) ) $ ( if true then Bool else Bool )
        d361 = if if false then d287 else false then if d294 then d301 else d57 else if false then false else d236
        d363 : if false then if false then Bool else Bool else if true then Bool else Bool
        d363 = ( ( Bool -> Bool ) ∋ ( ( λ x364 -> if d354 then false else true ) ) ) $ ( if d44 then d179 else false )
        d365 : if false then if true then Bool else Bool else if false then Bool else Bool
        d365 = if if d122 then false else true then if false then d221 else d44 else if false then d213 else d137
        d366 : if true then if false then Bool else Bool else if false then Bool else Bool
        d366 = ( ( Bool -> Bool ) ∋ ( ( λ x367 -> if d351 then true else false ) ) ) $ ( if true then false else d266 )
        d368 : if false then if false then Bool else Bool else if false then Bool else Bool
        d368 = if if false then d13 else d301 then if d190 then false else d13 else if false then true else d197
        d369 : ( ( Set -> Set ) ∋ ( ( λ x371 -> ( ( Set -> Set ) ∋ ( ( λ x372 -> Bool ) ) ) $ ( x371 ) ) ) ) $ ( if false then Bool else Bool )
        d369 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if d252 then d190 else true ) ) ) $ ( if d199 then false else false )
        d373 : ( ( Set -> Set ) ∋ ( ( λ x375 -> if false then x375 else Bool ) ) ) $ ( if true then Bool else Bool )
        d373 = ( ( Bool -> Bool ) ∋ ( ( λ x374 -> if d334 then true else true ) ) ) $ ( if d133 then d282 else true )
        d376 : ( ( Set -> Set ) ∋ ( ( λ x378 -> ( ( Set -> Set ) ∋ ( ( λ x379 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x377 -> if x377 then d274 else d168 ) ) ) $ ( if true then d18 else d16 )
        d380 : ( ( Set -> Set ) ∋ ( ( λ x381 -> ( ( Set -> Set ) ∋ ( ( λ x382 -> x381 ) ) ) $ ( x381 ) ) ) ) $ ( if false then Bool else Bool )
        d380 = if if false then d86 else d44 then if d323 then d203 else false else if d221 then d294 else false
        d383 : if true then if true then Bool else Bool else if true then Bool else Bool
        d383 = ( ( Bool -> Bool ) ∋ ( ( λ x384 -> ( ( Bool -> Bool ) ∋ ( ( λ x385 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then true else d64 )
        d386 : ( ( Set -> Set ) ∋ ( ( λ x387 -> if false then Bool else x387 ) ) ) $ ( if false then Bool else Bool )
        d386 = if if d351 then d383 else false then if false then d356 else d9 else if d90 then d35 else d330
        d388 : ( ( Set -> Set ) ∋ ( ( λ x391 -> if false then Bool else x391 ) ) ) $ ( if true then Bool else Bool )
        d388 = ( ( Bool -> Bool ) ∋ ( ( λ x389 -> ( ( Bool -> Bool ) ∋ ( ( λ x390 -> d160 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d392 : ( ( Set -> Set ) ∋ ( ( λ x393 -> ( ( Set -> Set ) ∋ ( ( λ x394 -> x393 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d392 = if if d236 then true else d194 then if d361 then true else false else if d44 then true else d48
        d395 : if true then if false then Bool else Bool else if true then Bool else Bool
        d395 = if if d266 then false else d308 then if false then d28 else d4 else if d142 then false else d16
        d396 : ( ( Set -> Set ) ∋ ( ( λ x397 -> if false then Bool else x397 ) ) ) $ ( if false then Bool else Bool )
        d396 = if if true then false else false then if d84 then true else false else if d343 then false else d329
        d398 : ( ( Set -> Set ) ∋ ( ( λ x400 -> if false then Bool else x400 ) ) ) $ ( if true then Bool else Bool )
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x399 -> if x399 then x399 else false ) ) ) $ ( if d120 then true else true )
        d401 : if false then if true then Bool else Bool else if true then Bool else Bool
        d401 = if if d182 then d363 else d360 then if false then true else d398 else if false then d54 else d308
        d402 : ( ( Set -> Set ) ∋ ( ( λ x403 -> if false then Bool else x403 ) ) ) $ ( if true then Bool else Bool )
        d402 = if if d319 then false else d96 then if d51 then d278 else d199 else if d120 then true else d18
        d404 : ( ( Set -> Set ) ∋ ( ( λ x405 -> ( ( Set -> Set ) ∋ ( ( λ x406 -> x406 ) ) ) $ ( x405 ) ) ) ) $ ( if true then Bool else Bool )
        d404 = if if false then true else d18 then if d201 then true else true else if true then d340 else true
        d407 : ( ( Set -> Set ) ∋ ( ( λ x409 -> if false then x409 else x409 ) ) ) $ ( if true then Bool else Bool )
        d407 = ( ( Bool -> Bool ) ∋ ( ( λ x408 -> if d257 then x408 else x408 ) ) ) $ ( if true then d252 else false )
        d410 : ( ( Set -> Set ) ∋ ( ( λ x412 -> ( ( Set -> Set ) ∋ ( ( λ x413 -> x413 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x411 -> if true then x411 else x411 ) ) ) $ ( if d133 then d319 else true )
        d414 : if true then if true then Bool else Bool else if true then Bool else Bool
        d414 = if if d351 then d86 else d14 then if d263 then false else true else if false then d366 else true
        d415 : if false then if false then Bool else Bool else if false then Bool else Bool
        d415 = ( ( Bool -> Bool ) ∋ ( ( λ x416 -> if d60 then d323 else true ) ) ) $ ( if d349 then true else false )
        d417 : if true then if false then Bool else Bool else if false then Bool else Bool
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x418 -> if true then d226 else x418 ) ) ) $ ( if d28 then d104 else false )
        d419 : ( ( Set -> Set ) ∋ ( ( λ x420 -> if true then Bool else x420 ) ) ) $ ( if true then Bool else Bool )
        d419 = if if d404 then false else d351 then if d182 then true else false else if d311 then false else d376
        d421 : if false then if false then Bool else Bool else if true then Bool else Bool
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x422 -> ( ( Bool -> Bool ) ∋ ( ( λ x423 -> true ) ) ) $ ( d287 ) ) ) ) $ ( if false then d319 else d111 )
        d424 : ( ( Set -> Set ) ∋ ( ( λ x426 -> if false then x426 else Bool ) ) ) $ ( if false then Bool else Bool )
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x425 -> if d152 then false else x425 ) ) ) $ ( if d182 then true else true )
        d427 : ( ( Set -> Set ) ∋ ( ( λ x428 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d427 = if if false then true else false then if d74 then d100 else true else if true then d166 else d142
        d429 : if true then if true then Bool else Bool else if true then Bool else Bool
        d429 = if if true then false else d158 then if false then true else false else if d35 then d296 else d44
        d430 : ( ( Set -> Set ) ∋ ( ( λ x431 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d430 = if if false then false else true then if d157 then false else d68 else if true then d314 else d28
        d432 : ( ( Set -> Set ) ∋ ( ( λ x435 -> ( ( Set -> Set ) ∋ ( ( λ x436 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x433 -> ( ( Bool -> Bool ) ∋ ( ( λ x434 -> x433 ) ) ) $ ( x433 ) ) ) ) $ ( if false then true else d201 )
        d437 : ( ( Set -> Set ) ∋ ( ( λ x439 -> ( ( Set -> Set ) ∋ ( ( λ x440 -> Bool ) ) ) $ ( x439 ) ) ) ) $ ( if false then Bool else Bool )
        d437 = ( ( Bool -> Bool ) ∋ ( ( λ x438 -> if false then false else d404 ) ) ) $ ( if d417 then true else d376 )
        d441 : if false then if false then Bool else Bool else if false then Bool else Bool
        d441 = ( ( Bool -> Bool ) ∋ ( ( λ x442 -> if d104 then x442 else x442 ) ) ) $ ( if d79 then false else d346 )
        d443 : if true then if false then Bool else Bool else if false then Bool else Bool
        d443 = ( ( Bool -> Bool ) ∋ ( ( λ x444 -> ( ( Bool -> Bool ) ∋ ( ( λ x445 -> d38 ) ) ) $ ( x444 ) ) ) ) $ ( if d343 then false else true )
        d446 : if false then if true then Bool else Bool else if true then Bool else Bool
        d446 = if if d258 then true else true then if d7 then false else d129 else if false then d31 else false
        d447 : if true then if false then Bool else Bool else if false then Bool else Bool
        d447 = if if false then d289 else d85 then if true then true else false else if false then false else false
        d448 : if false then if false then Bool else Bool else if false then Bool else Bool
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x449 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( d42 ) ) ) ) $ ( if true then false else false )
        d451 : if false then if false then Bool else Bool else if false then Bool else Bool
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x452 -> if false then x452 else false ) ) ) $ ( if true then d44 else d44 )
        d453 : if false then if false then Bool else Bool else if true then Bool else Bool
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x454 -> if x454 then x454 else true ) ) ) $ ( if d285 then d71 else d267 )
        d455 : if true then if true then Bool else Bool else if true then Bool else Bool
        d455 = if if d453 then d401 else false then if d278 then d360 else false else if false then false else d51
        d456 : if true then if true then Bool else Bool else if true then Bool else Bool
        d456 = ( ( Bool -> Bool ) ∋ ( ( λ x457 -> ( ( Bool -> Bool ) ∋ ( ( λ x458 -> d149 ) ) ) $ ( false ) ) ) ) $ ( if d361 then false else d134 )
        d459 : if true then if true then Bool else Bool else if true then Bool else Bool
        d459 = if if d226 then true else false then if d75 then false else false else if false then d18 else d14
        d460 : if true then if true then Bool else Bool else if true then Bool else Bool
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x461 -> ( ( Bool -> Bool ) ∋ ( ( λ x462 -> d258 ) ) ) $ ( true ) ) ) ) $ ( if d111 then d35 else true )
        d463 : if true then if true then Bool else Bool else if false then Bool else Bool
        d463 = ( ( Bool -> Bool ) ∋ ( ( λ x464 -> if d360 then x464 else true ) ) ) $ ( if d158 then d182 else d255 )
        d465 : ( ( Set -> Set ) ∋ ( ( λ x468 -> ( ( Set -> Set ) ∋ ( ( λ x469 -> x468 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d465 = ( ( Bool -> Bool ) ∋ ( ( λ x466 -> ( ( Bool -> Bool ) ∋ ( ( λ x467 -> d47 ) ) ) $ ( x466 ) ) ) ) $ ( if true then d326 else d251 )
        d470 : if false then if true then Bool else Bool else if false then Bool else Bool
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x471 -> if x471 then x471 else d93 ) ) ) $ ( if true then false else true )
        d472 : if true then if true then Bool else Bool else if false then Bool else Bool
        d472 = if if d85 then true else true then if true then d176 else d376 else if d103 then false else d376
        d473 : ( ( Set -> Set ) ∋ ( ( λ x476 -> ( ( Set -> Set ) ∋ ( ( λ x477 -> Bool ) ) ) $ ( x476 ) ) ) ) $ ( if true then Bool else Bool )
        d473 = ( ( Bool -> Bool ) ∋ ( ( λ x474 -> ( ( Bool -> Bool ) ∋ ( ( λ x475 -> false ) ) ) $ ( x474 ) ) ) ) $ ( if true then d126 else d90 )
        d478 : ( ( Set -> Set ) ∋ ( ( λ x480 -> if false then x480 else Bool ) ) ) $ ( if true then Bool else Bool )
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x479 -> if d456 then d441 else d154 ) ) ) $ ( if d429 then d306 else d104 )
        d481 : ( ( Set -> Set ) ∋ ( ( λ x482 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d481 = if if false then false else true then if false then d430 else true else if d152 then true else d366
        d483 : if true then if false then Bool else Bool else if false then Bool else Bool
        d483 = if if d282 then d306 else d13 then if true then d79 else d236 else if true then true else d346
        d484 : if true then if true then Bool else Bool else if true then Bool else Bool
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x485 -> ( ( Bool -> Bool ) ∋ ( ( λ x486 -> true ) ) ) $ ( x485 ) ) ) ) $ ( if d430 then d392 else false )
        d487 : if false then if false then Bool else Bool else if false then Bool else Bool
        d487 = if if true then true else d213 then if d35 then true else d197 else if d74 then d301 else d368
        d488 : ( ( Set -> Set ) ∋ ( ( λ x490 -> ( ( Set -> Set ) ∋ ( ( λ x491 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x489 -> if d213 then d446 else d314 ) ) ) $ ( if d90 then true else d193 )
        d492 : if true then if true then Bool else Bool else if false then Bool else Bool
        d492 = ( ( Bool -> Bool ) ∋ ( ( λ x493 -> if false then false else d301 ) ) ) $ ( if false then d481 else true )
        d494 : if true then if true then Bool else Bool else if false then Bool else Bool
        d494 = ( ( Bool -> Bool ) ∋ ( ( λ x495 -> if x495 then true else x495 ) ) ) $ ( if false then d38 else d306 )
        d496 : if true then if false then Bool else Bool else if true then Bool else Bool
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x497 -> ( ( Bool -> Bool ) ∋ ( ( λ x498 -> x497 ) ) ) $ ( x497 ) ) ) ) $ ( if false then true else true )
        d499 : ( ( Set -> Set ) ∋ ( ( λ x500 -> if false then x500 else Bool ) ) ) $ ( if true then Bool else Bool )
        d499 = if if d100 then d4 else d417 then if d356 then false else true else if false then true else true
        d501 : ( ( Set -> Set ) ∋ ( ( λ x502 -> ( ( Set -> Set ) ∋ ( ( λ x503 -> Bool ) ) ) $ ( x502 ) ) ) ) $ ( if true then Bool else Bool )
        d501 = if if d386 then true else false then if true then d197 else true else if d48 then false else true
        d504 : if false then if false then Bool else Bool else if false then Bool else Bool
        d504 = if if true then false else d319 then if d278 then false else d456 else if true then true else d70
        d505 : ( ( Set -> Set ) ∋ ( ( λ x508 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x506 -> ( ( Bool -> Bool ) ∋ ( ( λ x507 -> false ) ) ) $ ( x506 ) ) ) ) $ ( if true then true else d21 )
        d509 : ( ( Set -> Set ) ∋ ( ( λ x510 -> if false then Bool else x510 ) ) ) $ ( if false then Bool else Bool )
        d509 = if if d28 then d504 else d28 then if d437 then true else true else if d417 then d158 else d470
        d511 : ( ( Set -> Set ) ∋ ( ( λ x514 -> ( ( Set -> Set ) ∋ ( ( λ x515 -> x514 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d511 = ( ( Bool -> Bool ) ∋ ( ( λ x512 -> ( ( Bool -> Bool ) ∋ ( ( λ x513 -> d116 ) ) ) $ ( x512 ) ) ) ) $ ( if d116 then d255 else false )
        d516 : ( ( Set -> Set ) ∋ ( ( λ x519 -> ( ( Set -> Set ) ∋ ( ( λ x520 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d516 = ( ( Bool -> Bool ) ∋ ( ( λ x517 -> ( ( Bool -> Bool ) ∋ ( ( λ x518 -> true ) ) ) $ ( d386 ) ) ) ) $ ( if true then d201 else d360 )
        d521 : if false then if false then Bool else Bool else if false then Bool else Bool
        d521 = if if true then false else d131 then if false then true else false else if d396 then true else d398
        d522 : ( ( Set -> Set ) ∋ ( ( λ x523 -> ( ( Set -> Set ) ∋ ( ( λ x524 -> Bool ) ) ) $ ( x523 ) ) ) ) $ ( if true then Bool else Bool )
        d522 = if if d179 then d366 else d380 then if false then true else d255 else if d516 then true else d465
        d525 : ( ( Set -> Set ) ∋ ( ( λ x526 -> if false then x526 else x526 ) ) ) $ ( if false then Bool else Bool )
        d525 = if if true then d57 else true then if d398 then true else d521 else if true then d193 else d79
        d527 : if true then if true then Bool else Bool else if false then Bool else Bool
        d527 = ( ( Bool -> Bool ) ∋ ( ( λ x528 -> ( ( Bool -> Bool ) ∋ ( ( λ x529 -> x528 ) ) ) $ ( x528 ) ) ) ) $ ( if d463 then true else true )
        d530 : if false then if false then Bool else Bool else if true then Bool else Bool
        d530 = if if false then true else d157 then if d96 then false else d421 else if d427 then d415 else true
        d531 : ( ( Set -> Set ) ∋ ( ( λ x533 -> if true then x533 else Bool ) ) ) $ ( if true then Bool else Bool )
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x532 -> if true then true else d43 ) ) ) $ ( if false then false else d424 )
        d534 : if false then if false then Bool else Bool else if true then Bool else Bool
        d534 = ( ( Bool -> Bool ) ∋ ( ( λ x535 -> if false then false else d453 ) ) ) $ ( if d267 then d27 else d451 )
        d536 : ( ( Set -> Set ) ∋ ( ( λ x538 -> ( ( Set -> Set ) ∋ ( ( λ x539 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d536 = ( ( Bool -> Bool ) ∋ ( ( λ x537 -> if x537 then d326 else false ) ) ) $ ( if false then d373 else false )
        d540 : if false then if false then Bool else Bool else if true then Bool else Bool
        d540 = if if d287 then false else d70 then if d77 then d419 else d237 else if true then true else true
        d541 : if true then if true then Bool else Bool else if false then Bool else Bool
        d541 = if if d311 then d255 else d168 then if d57 then d349 else d152 else if d473 then d156 else d294
        d542 : ( ( Set -> Set ) ∋ ( ( λ x543 -> ( ( Set -> Set ) ∋ ( ( λ x544 -> x544 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d542 = if if d299 then true else d9 then if d4 then d414 else d24 else if d203 then d410 else true
        d545 : ( ( Set -> Set ) ∋ ( ( λ x548 -> if false then x548 else Bool ) ) ) $ ( if false then Bool else Bool )
        d545 = ( ( Bool -> Bool ) ∋ ( ( λ x546 -> ( ( Bool -> Bool ) ∋ ( ( λ x547 -> d54 ) ) ) $ ( true ) ) ) ) $ ( if false then d81 else d274 )
        d549 : ( ( Set -> Set ) ∋ ( ( λ x550 -> if true then x550 else Bool ) ) ) $ ( if true then Bool else Bool )
        d549 = if if d194 then d296 else d404 then if false then false else d511 else if d415 then false else true
        d551 : if true then if false then Bool else Bool else if false then Bool else Bool
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x552 -> ( ( Bool -> Bool ) ∋ ( ( λ x553 -> true ) ) ) $ ( true ) ) ) ) $ ( if d27 then d74 else false )
        d554 : if true then if false then Bool else Bool else if false then Bool else Bool
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x555 -> if true then x555 else x555 ) ) ) $ ( if true then true else d226 )
        d556 : ( ( Set -> Set ) ∋ ( ( λ x557 -> ( ( Set -> Set ) ∋ ( ( λ x558 -> x557 ) ) ) $ ( x557 ) ) ) ) $ ( if true then Bool else Bool )
        d556 = if if true then true else false then if d76 then false else true else if d294 then false else d330
        d559 : ( ( Set -> Set ) ∋ ( ( λ x562 -> ( ( Set -> Set ) ∋ ( ( λ x563 -> x563 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> ( ( Bool -> Bool ) ∋ ( ( λ x561 -> x560 ) ) ) $ ( d451 ) ) ) ) $ ( if false then false else d536 )
        d564 : ( ( Set -> Set ) ∋ ( ( λ x565 -> ( ( Set -> Set ) ∋ ( ( λ x566 -> Bool ) ) ) $ ( x565 ) ) ) ) $ ( if true then Bool else Bool )
        d564 = if if d319 then d76 else false then if false then d472 else true else if d299 then true else true
        d567 : if true then if false then Bool else Bool else if true then Bool else Bool
        d567 = ( ( Bool -> Bool ) ∋ ( ( λ x568 -> if true then x568 else x568 ) ) ) $ ( if true then true else d465 )
        d569 : if true then if true then Bool else Bool else if true then Bool else Bool
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if x570 then d85 else d522 ) ) ) $ ( if d134 then false else true )
        d571 : if false then if false then Bool else Bool else if true then Bool else Bool
        d571 = if if d478 then d129 else d188 then if false then false else d349 else if d48 then false else d329
        d572 : if true then if false then Bool else Bool else if true then Bool else Bool
        d572 = ( ( Bool -> Bool ) ∋ ( ( λ x573 -> ( ( Bool -> Bool ) ∋ ( ( λ x574 -> false ) ) ) $ ( false ) ) ) ) $ ( if d257 then d267 else d252 )
        d575 : if false then if false then Bool else Bool else if false then Bool else Bool
        d575 = if if false then d443 else d459 then if d68 then false else false else if true then d42 else true
        d576 : if false then if false then Bool else Bool else if true then Bool else Bool
        d576 = if if d401 then d330 else true then if d134 then d541 else false else if d504 then d314 else true
        d577 : ( ( Set -> Set ) ∋ ( ( λ x580 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d577 = ( ( Bool -> Bool ) ∋ ( ( λ x578 -> ( ( Bool -> Bool ) ∋ ( ( λ x579 -> true ) ) ) $ ( d463 ) ) ) ) $ ( if false then true else false )
        d581 : if true then if false then Bool else Bool else if true then Bool else Bool
        d581 = if if true then d456 else true then if true then true else d509 else if false then false else d509
        d582 : if true then if false then Bool else Bool else if false then Bool else Bool
        d582 = ( ( Bool -> Bool ) ∋ ( ( λ x583 -> if d419 then x583 else false ) ) ) $ ( if true then true else d564 )
        d584 : ( ( Set -> Set ) ∋ ( ( λ x587 -> if true then x587 else Bool ) ) ) $ ( if false then Bool else Bool )
        d584 = ( ( Bool -> Bool ) ∋ ( ( λ x585 -> ( ( Bool -> Bool ) ∋ ( ( λ x586 -> d383 ) ) ) $ ( true ) ) ) ) $ ( if d285 then d267 else true )
        d588 : if true then if false then Bool else Bool else if true then Bool else Bool
        d588 = if if true then d329 else d366 then if false then false else true else if d68 then true else d311
        d589 : if true then if false then Bool else Bool else if true then Bool else Bool
        d589 = if if d31 then false else d551 then if true then d133 else d203 else if d541 then d163 else d365
        d590 : if true then if false then Bool else Bool else if true then Bool else Bool
        d590 = if if false then false else true then if d319 then d35 else d323 else if d299 then d241 else true
        d591 : ( ( Set -> Set ) ∋ ( ( λ x594 -> ( ( Set -> Set ) ∋ ( ( λ x595 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d591 = ( ( Bool -> Bool ) ∋ ( ( λ x592 -> ( ( Bool -> Bool ) ∋ ( ( λ x593 -> true ) ) ) $ ( x592 ) ) ) ) $ ( if d168 then d157 else false )
        d596 : ( ( Set -> Set ) ∋ ( ( λ x598 -> ( ( Set -> Set ) ∋ ( ( λ x599 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d596 = ( ( Bool -> Bool ) ∋ ( ( λ x597 -> if false then d424 else d197 ) ) ) $ ( if d32 then true else d317 )
        d600 : if false then if false then Bool else Bool else if true then Bool else Bool
        d600 = if if false then d398 else d354 then if true then d554 else d582 else if false then true else d576
        d601 : ( ( Set -> Set ) ∋ ( ( λ x604 -> if false then Bool else x604 ) ) ) $ ( if false then Bool else Bool )
        d601 = ( ( Bool -> Bool ) ∋ ( ( λ x602 -> ( ( Bool -> Bool ) ∋ ( ( λ x603 -> false ) ) ) $ ( d243 ) ) ) ) $ ( if d79 then d505 else d60 )
        d605 : ( ( Set -> Set ) ∋ ( ( λ x608 -> if false then Bool else x608 ) ) ) $ ( if false then Bool else Bool )
        d605 = ( ( Bool -> Bool ) ∋ ( ( λ x606 -> ( ( Bool -> Bool ) ∋ ( ( λ x607 -> d346 ) ) ) $ ( x606 ) ) ) ) $ ( if d430 then false else d157 )
        d609 : ( ( Set -> Set ) ∋ ( ( λ x612 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d609 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> ( ( Bool -> Bool ) ∋ ( ( λ x611 -> x610 ) ) ) $ ( x610 ) ) ) ) $ ( if true then false else d343 )
        d613 : ( ( Set -> Set ) ∋ ( ( λ x616 -> ( ( Set -> Set ) ∋ ( ( λ x617 -> Bool ) ) ) $ ( x616 ) ) ) ) $ ( if true then Bool else Bool )
        d613 = ( ( Bool -> Bool ) ∋ ( ( λ x614 -> ( ( Bool -> Bool ) ∋ ( ( λ x615 -> x614 ) ) ) $ ( x614 ) ) ) ) $ ( if d145 then d609 else false )
        d618 : ( ( Set -> Set ) ∋ ( ( λ x619 -> if true then x619 else Bool ) ) ) $ ( if false then Bool else Bool )
        d618 = if if false then d213 else d417 then if true then d590 else d465 else if d317 then d473 else true
        d620 : ( ( Set -> Set ) ∋ ( ( λ x623 -> if false then x623 else x623 ) ) ) $ ( if false then Bool else Bool )
        d620 = ( ( Bool -> Bool ) ∋ ( ( λ x621 -> ( ( Bool -> Bool ) ∋ ( ( λ x622 -> false ) ) ) $ ( x621 ) ) ) ) $ ( if false then true else d84 )
        d624 : ( ( Set -> Set ) ∋ ( ( λ x627 -> ( ( Set -> Set ) ∋ ( ( λ x628 -> Bool ) ) ) $ ( x627 ) ) ) ) $ ( if true then Bool else Bool )
        d624 = ( ( Bool -> Bool ) ∋ ( ( λ x625 -> ( ( Bool -> Bool ) ∋ ( ( λ x626 -> x625 ) ) ) $ ( x625 ) ) ) ) $ ( if false then false else false )
        d629 : if true then if true then Bool else Bool else if false then Bool else Bool
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x631 -> x630 ) ) ) $ ( false ) ) ) ) $ ( if d437 then false else true )
        d632 : ( ( Set -> Set ) ∋ ( ( λ x633 -> ( ( Set -> Set ) ∋ ( ( λ x634 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d632 = if if true then false else d419 then if false then d86 else d306 else if d1 then d484 else d278
        d635 : ( ( Set -> Set ) ∋ ( ( λ x636 -> ( ( Set -> Set ) ∋ ( ( λ x637 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d635 = if if true then true else d176 then if true then true else false else if d609 then true else d459
        d638 : ( ( Set -> Set ) ∋ ( ( λ x639 -> if true then x639 else Bool ) ) ) $ ( if true then Bool else Bool )
        d638 = if if true then d156 else d609 then if d609 then true else d432 else if d16 then false else d1
        d640 : if true then if false then Bool else Bool else if false then Bool else Bool
        d640 = if if d346 then true else false then if d536 then d414 else d175 else if true then false else d185
        d641 : ( ( Set -> Set ) ∋ ( ( λ x642 -> if true then x642 else x642 ) ) ) $ ( if true then Bool else Bool )
        d641 = if if d27 then false else d116 then if d221 then d219 else true else if false then d145 else false
        d643 : ( ( Set -> Set ) ∋ ( ( λ x644 -> if false then Bool else x644 ) ) ) $ ( if true then Bool else Bool )
        d643 = if if d14 then true else d472 then if d365 then d456 else d156 else if true then d424 else false
        d645 : ( ( Set -> Set ) ∋ ( ( λ x646 -> if true then x646 else Bool ) ) ) $ ( if true then Bool else Bool )
        d645 = if if true then true else false then if false then d74 else d142 else if d334 then d496 else true
        d647 : ( ( Set -> Set ) ∋ ( ( λ x650 -> if false then Bool else x650 ) ) ) $ ( if true then Bool else Bool )
        d647 = ( ( Bool -> Bool ) ∋ ( ( λ x648 -> ( ( Bool -> Bool ) ∋ ( ( λ x649 -> x648 ) ) ) $ ( x648 ) ) ) ) $ ( if d516 then d145 else true )
        d651 : if true then if false then Bool else Bool else if true then Bool else Bool
        d651 = ( ( Bool -> Bool ) ∋ ( ( λ x652 -> if false then false else true ) ) ) $ ( if true then true else false )
        d653 : ( ( Set -> Set ) ∋ ( ( λ x656 -> ( ( Set -> Set ) ∋ ( ( λ x657 -> x657 ) ) ) $ ( x656 ) ) ) ) $ ( if false then Bool else Bool )
        d653 = ( ( Bool -> Bool ) ∋ ( ( λ x654 -> ( ( Bool -> Bool ) ∋ ( ( λ x655 -> d213 ) ) ) $ ( d60 ) ) ) ) $ ( if true then d624 else true )
        d658 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if false then Bool else x660 ) ) ) $ ( if false then Bool else Bool )
        d658 = ( ( Bool -> Bool ) ∋ ( ( λ x659 -> if false then x659 else d478 ) ) ) $ ( if true then false else true )
        d661 : ( ( Set -> Set ) ∋ ( ( λ x662 -> ( ( Set -> Set ) ∋ ( ( λ x663 -> Bool ) ) ) $ ( x662 ) ) ) ) $ ( if true then Bool else Bool )
        d661 = if if true then true else true then if d496 then false else d521 else if false then false else d368
        d664 : ( ( Set -> Set ) ∋ ( ( λ x666 -> if true then x666 else x666 ) ) ) $ ( if false then Bool else Bool )
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x665 -> if true then d257 else x665 ) ) ) $ ( if d407 then true else false )
        d667 : ( ( Set -> Set ) ∋ ( ( λ x669 -> if true then x669 else x669 ) ) ) $ ( if true then Bool else Bool )
        d667 = ( ( Bool -> Bool ) ∋ ( ( λ x668 -> if false then x668 else false ) ) ) $ ( if true then false else true )
        d670 : ( ( Set -> Set ) ∋ ( ( λ x672 -> ( ( Set -> Set ) ∋ ( ( λ x673 -> Bool ) ) ) $ ( x672 ) ) ) ) $ ( if false then Bool else Bool )
        d670 = ( ( Bool -> Bool ) ∋ ( ( λ x671 -> if d70 then false else false ) ) ) $ ( if false then d51 else d326 )
        d674 : ( ( Set -> Set ) ∋ ( ( λ x677 -> if false then x677 else x677 ) ) ) $ ( if false then Bool else Bool )
        d674 = ( ( Bool -> Bool ) ∋ ( ( λ x675 -> ( ( Bool -> Bool ) ∋ ( ( λ x676 -> false ) ) ) $ ( x675 ) ) ) ) $ ( if d667 then false else d388 )
        d678 : ( ( Set -> Set ) ∋ ( ( λ x679 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d678 = if if true then d282 else d27 then if d57 then d481 else d567 else if d4 then true else d201
        d680 : if true then if false then Bool else Bool else if false then Bool else Bool
        d680 = ( ( Bool -> Bool ) ∋ ( ( λ x681 -> if d424 then false else x681 ) ) ) $ ( if d209 then true else false )
        d682 : ( ( Set -> Set ) ∋ ( ( λ x683 -> ( ( Set -> Set ) ∋ ( ( λ x684 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d682 = if if d589 then d219 else false then if false then false else d217 else if d7 then false else d651
        d685 : ( ( Set -> Set ) ∋ ( ( λ x686 -> if false then x686 else Bool ) ) ) $ ( if true then Bool else Bool )
        d685 = if if true then false else d351 then if d441 then true else d354 else if d176 then true else d179
        d687 : ( ( Set -> Set ) ∋ ( ( λ x688 -> if true then x688 else Bool ) ) ) $ ( if false then Bool else Bool )
        d687 = if if true then true else true then if false then false else d199 else if d226 then true else d104
        d689 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x691 -> Bool ) ) ) $ ( x690 ) ) ) ) $ ( if false then Bool else Bool )
        d689 = if if true then d363 else true then if d653 then d511 else d407 else if d395 then d42 else d541
        d692 : if false then if true then Bool else Bool else if false then Bool else Bool
        d692 = if if d154 then d674 else d596 then if d7 then false else true else if true then true else d193
        d693 : if false then if false then Bool else Bool else if true then Bool else Bool
        d693 = if if d308 then d629 else d419 then if true then true else d54 else if false then false else d366
        d694 : ( ( Set -> Set ) ∋ ( ( λ x695 -> ( ( Set -> Set ) ∋ ( ( λ x696 -> x696 ) ) ) $ ( x695 ) ) ) ) $ ( if false then Bool else Bool )
        d694 = if if d453 then d407 else d179 then if true then d589 else d86 else if d674 then d21 else false
        d697 : if false then if false then Bool else Bool else if true then Bool else Bool
        d697 = ( ( Bool -> Bool ) ∋ ( ( λ x698 -> if x698 then false else false ) ) ) $ ( if d670 then d670 else true )
        d699 : ( ( Set -> Set ) ∋ ( ( λ x700 -> ( ( Set -> Set ) ∋ ( ( λ x701 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d699 = if if d219 then d170 else true then if true then false else d133 else if d122 then false else true
        d702 : ( ( Set -> Set ) ∋ ( ( λ x703 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d702 = if if true then true else true then if d90 then true else d641 else if d68 then d270 else false
        d704 : if false then if false then Bool else Bool else if true then Bool else Bool
        d704 = ( ( Bool -> Bool ) ∋ ( ( λ x705 -> ( ( Bool -> Bool ) ∋ ( ( λ x706 -> true ) ) ) $ ( d360 ) ) ) ) $ ( if d699 then true else false )
        d707 : if true then if false then Bool else Bool else if true then Bool else Bool
        d707 = if if false then d472 else false then if d600 then d527 else d591 else if d71 then true else d76
        d708 : if true then if false then Bool else Bool else if true then Bool else Bool
        d708 = ( ( Bool -> Bool ) ∋ ( ( λ x709 -> if false then false else true ) ) ) $ ( if d68 then true else true )
        d710 : ( ( Set -> Set ) ∋ ( ( λ x711 -> ( ( Set -> Set ) ∋ ( ( λ x712 -> x711 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d710 = if if false then d71 else d199 then if false then true else false else if true then true else true
        d713 : ( ( Set -> Set ) ∋ ( ( λ x716 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d713 = ( ( Bool -> Bool ) ∋ ( ( λ x714 -> ( ( Bool -> Bool ) ∋ ( ( λ x715 -> false ) ) ) $ ( x714 ) ) ) ) $ ( if true then d564 else d488 )
        d717 : if false then if false then Bool else Bool else if false then Bool else Bool
        d717 = if if false then d282 else d388 then if false then true else false else if false then true else false
        d718 : if false then if true then Bool else Bool else if true then Bool else Bool
        d718 = if if false then d455 else d9 then if true then true else true else if d521 then true else d24
        d719 : if true then if false then Bool else Bool else if false then Bool else Bool
        d719 = if if d317 then true else d175 then if d330 then d241 else d160 else if false then d340 else false
        d720 : if true then if true then Bool else Bool else if false then Bool else Bool
        d720 = ( ( Bool -> Bool ) ∋ ( ( λ x721 -> if true then d71 else d692 ) ) ) $ ( if false then true else true )
        d722 : ( ( Set -> Set ) ∋ ( ( λ x723 -> ( ( Set -> Set ) ∋ ( ( λ x724 -> x724 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d722 = if if d488 then d460 else true then if d505 then d60 else true else if d145 then d717 else true
        d725 : ( ( Set -> Set ) ∋ ( ( λ x728 -> if false then x728 else x728 ) ) ) $ ( if false then Bool else Bool )
        d725 = ( ( Bool -> Bool ) ∋ ( ( λ x726 -> ( ( Bool -> Bool ) ∋ ( ( λ x727 -> d414 ) ) ) $ ( d582 ) ) ) ) $ ( if true then d421 else d708 )
        d729 : ( ( Set -> Set ) ∋ ( ( λ x731 -> ( ( Set -> Set ) ∋ ( ( λ x732 -> Bool ) ) ) $ ( x731 ) ) ) ) $ ( if true then Bool else Bool )
        d729 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> if d301 then true else d154 ) ) ) $ ( if true then false else d243 )
        d733 : ( ( Set -> Set ) ∋ ( ( λ x734 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d733 = if if true then false else false then if d176 then true else d354 else if false then false else false
        d735 : if true then if true then Bool else Bool else if false then Bool else Bool
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x736 -> ( ( Bool -> Bool ) ∋ ( ( λ x737 -> x737 ) ) ) $ ( false ) ) ) ) $ ( if d18 then true else d460 )
        d738 : if false then if true then Bool else Bool else if true then Bool else Bool
        d738 = ( ( Bool -> Bool ) ∋ ( ( λ x739 -> ( ( Bool -> Bool ) ∋ ( ( λ x740 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then d536 else false )
        d741 : if true then if false then Bool else Bool else if true then Bool else Bool
        d741 = ( ( Bool -> Bool ) ∋ ( ( λ x742 -> ( ( Bool -> Bool ) ∋ ( ( λ x743 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then false else d9 )
        d744 : if true then if true then Bool else Bool else if true then Bool else Bool
        d744 = ( ( Bool -> Bool ) ∋ ( ( λ x745 -> ( ( Bool -> Bool ) ∋ ( ( λ x746 -> x745 ) ) ) $ ( true ) ) ) ) $ ( if d446 then d472 else d42 )
        d747 : if true then if false then Bool else Bool else if false then Bool else Bool
        d747 = if if d356 then d516 else d718 then if d446 then false else true else if d417 then d47 else false
        d748 : if false then if false then Bool else Bool else if true then Bool else Bool
        d748 = if if false then d572 else true then if d263 then d48 else d170 else if false then d722 else true
        d749 : if false then if false then Bool else Bool else if true then Bool else Bool
        d749 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( ( Bool -> Bool ) ∋ ( ( λ x751 -> d43 ) ) ) $ ( d330 ) ) ) ) $ ( if d163 then true else false )
        d752 : if true then if false then Bool else Bool else if false then Bool else Bool
        d752 = if if d278 then false else true then if false then true else d388 else if false then d255 else d414
        d753 : ( ( Set -> Set ) ∋ ( ( λ x756 -> if true then x756 else x756 ) ) ) $ ( if false then Bool else Bool )
        d753 = ( ( Bool -> Bool ) ∋ ( ( λ x754 -> ( ( Bool -> Bool ) ∋ ( ( λ x755 -> d38 ) ) ) $ ( true ) ) ) ) $ ( if d197 then false else false )
        d757 : ( ( Set -> Set ) ∋ ( ( λ x759 -> ( ( Set -> Set ) ∋ ( ( λ x760 -> x759 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x758 -> if true then d710 else false ) ) ) $ ( if false then d228 else true )
        d761 : ( ( Set -> Set ) ∋ ( ( λ x764 -> ( ( Set -> Set ) ∋ ( ( λ x765 -> Bool ) ) ) $ ( x764 ) ) ) ) $ ( if true then Bool else Bool )
        d761 = ( ( Bool -> Bool ) ∋ ( ( λ x762 -> ( ( Bool -> Bool ) ∋ ( ( λ x763 -> d542 ) ) ) $ ( true ) ) ) ) $ ( if true then d126 else d473 )
        d766 : if true then if true then Bool else Bool else if true then Bool else Bool
        d766 = if if true then d729 else false then if d647 then d584 else false else if d170 then d193 else d241
        d767 : ( ( Set -> Set ) ∋ ( ( λ x770 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d767 = ( ( Bool -> Bool ) ∋ ( ( λ x768 -> ( ( Bool -> Bool ) ∋ ( ( λ x769 -> d527 ) ) ) $ ( true ) ) ) ) $ ( if false then d525 else d9 )
        d771 : if false then if true then Bool else Bool else if false then Bool else Bool
        d771 = ( ( Bool -> Bool ) ∋ ( ( λ x772 -> ( ( Bool -> Bool ) ∋ ( ( λ x773 -> false ) ) ) $ ( d137 ) ) ) ) $ ( if d194 then true else false )
        d774 : if true then if true then Bool else Bool else if true then Bool else Bool
        d774 = if if d145 then true else false then if d154 then false else d311 else if d116 then d1 else d308
        d775 : ( ( Set -> Set ) ∋ ( ( λ x776 -> if false then x776 else Bool ) ) ) $ ( if false then Bool else Bool )
        d775 = if if false then d255 else false then if d645 then d664 else d14 else if d531 then d653 else false
        d777 : if false then if true then Bool else Bool else if true then Bool else Bool
        d777 = ( ( Bool -> Bool ) ∋ ( ( λ x778 -> if false then x778 else x778 ) ) ) $ ( if d525 then d478 else false )
        d779 : ( ( Set -> Set ) ∋ ( ( λ x780 -> ( ( Set -> Set ) ∋ ( ( λ x781 -> x781 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d779 = if if false then true else true then if d448 then false else true else if false then d236 else d366
        d782 : ( ( Set -> Set ) ∋ ( ( λ x783 -> if true then x783 else Bool ) ) ) $ ( if false then Bool else Bool )
        d782 = if if false then true else d32 then if true then d9 else false else if d407 then d704 else true
        d784 : if false then if true then Bool else Bool else if false then Bool else Bool
        d784 = if if false then d687 else false then if d717 then false else true else if d451 then true else d373
        d785 : ( ( Set -> Set ) ∋ ( ( λ x786 -> if true then x786 else x786 ) ) ) $ ( if false then Bool else Bool )
        d785 = if if d460 then true else true then if d356 then d545 else false else if true then false else d551
        d787 : if false then if false then Bool else Bool else if false then Bool else Bool
        d787 = if if d9 then d670 else d748 then if d351 then d60 else true else if d719 then true else true
        d788 : ( ( Set -> Set ) ∋ ( ( λ x791 -> if false then x791 else Bool ) ) ) $ ( if false then Bool else Bool )
        d788 = ( ( Bool -> Bool ) ∋ ( ( λ x789 -> ( ( Bool -> Bool ) ∋ ( ( λ x790 -> true ) ) ) $ ( x789 ) ) ) ) $ ( if true then d443 else d653 )
        d792 : ( ( Set -> Set ) ∋ ( ( λ x793 -> if true then x793 else Bool ) ) ) $ ( if true then Bool else Bool )
        d792 = if if true then true else d365 then if false then true else false else if d788 then false else false
        d794 : if true then if false then Bool else Bool else if false then Bool else Bool
        d794 = ( ( Bool -> Bool ) ∋ ( ( λ x795 -> ( ( Bool -> Bool ) ∋ ( ( λ x796 -> x795 ) ) ) $ ( false ) ) ) ) $ ( if true then d129 else d473 )
        d797 : if false then if true then Bool else Bool else if true then Bool else Bool
        d797 = if if false then false else false then if true then false else d157 else if d767 then false else true
        d798 : ( ( Set -> Set ) ∋ ( ( λ x799 -> ( ( Set -> Set ) ∋ ( ( λ x800 -> x799 ) ) ) $ ( x799 ) ) ) ) $ ( if false then Bool else Bool )
        d798 = if if d329 then d4 else d43 then if false then true else d368 else if d346 then d190 else d591
        d801 : if true then if true then Bool else Bool else if false then Bool else Bool
        d801 = if if d282 then d551 else true then if true then false else false else if d179 then d692 else true
        d802 : if false then if false then Bool else Bool else if false then Bool else Bool
        d802 = ( ( Bool -> Bool ) ∋ ( ( λ x803 -> ( ( Bool -> Bool ) ∋ ( ( λ x804 -> d767 ) ) ) $ ( x803 ) ) ) ) $ ( if d188 then d478 else false )
        d805 : ( ( Set -> Set ) ∋ ( ( λ x808 -> ( ( Set -> Set ) ∋ ( ( λ x809 -> Bool ) ) ) $ ( x808 ) ) ) ) $ ( if true then Bool else Bool )
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x806 -> ( ( Bool -> Bool ) ∋ ( ( λ x807 -> x807 ) ) ) $ ( d154 ) ) ) ) $ ( if false then false else false )
        d810 : if true then if false then Bool else Bool else if true then Bool else Bool
        d810 = if if true then d401 else d330 then if d7 then d531 else false else if d456 then d794 else true
        d811 : ( ( Set -> Set ) ∋ ( ( λ x812 -> ( ( Set -> Set ) ∋ ( ( λ x813 -> Bool ) ) ) $ ( x812 ) ) ) ) $ ( if false then Bool else Bool )
        d811 = if if false then d226 else d456 then if d156 then false else true else if d463 then d299 else d43
        d814 : ( ( Set -> Set ) ∋ ( ( λ x815 -> if true then Bool else x815 ) ) ) $ ( if false then Bool else Bool )
        d814 = if if false then true else d51 then if true then false else false else if d747 then true else false
        d816 : ( ( Set -> Set ) ∋ ( ( λ x817 -> ( ( Set -> Set ) ∋ ( ( λ x818 -> x817 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d816 = if if d687 then d572 else d401 then if d79 then d343 else false else if true then d620 else d314
        d819 : if true then if true then Bool else Bool else if false then Bool else Bool
        d819 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x821 -> true ) ) ) $ ( false ) ) ) ) $ ( if d584 then false else d193 )
        d822 : if false then if false then Bool else Bool else if false then Bool else Bool
        d822 = if if true then d398 else d368 then if d699 then false else true else if false then true else d68
        d823 : ( ( Set -> Set ) ∋ ( ( λ x825 -> ( ( Set -> Set ) ∋ ( ( λ x826 -> Bool ) ) ) $ ( x825 ) ) ) ) $ ( if true then Bool else Bool )
        d823 = ( ( Bool -> Bool ) ∋ ( ( λ x824 -> if false then x824 else x824 ) ) ) $ ( if d429 then false else false )
        d827 : ( ( Set -> Set ) ∋ ( ( λ x829 -> if false then x829 else x829 ) ) ) $ ( if true then Bool else Bool )
        d827 = ( ( Bool -> Bool ) ∋ ( ( λ x828 -> if x828 then d28 else x828 ) ) ) $ ( if true then d395 else d219 )
        d830 : if true then if true then Bool else Bool else if true then Bool else Bool
        d830 = if if d203 then d13 else d51 then if false then d74 else d395 else if true then false else d702
        d831 : ( ( Set -> Set ) ∋ ( ( λ x834 -> ( ( Set -> Set ) ∋ ( ( λ x835 -> Bool ) ) ) $ ( x834 ) ) ) ) $ ( if true then Bool else Bool )
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x832 -> ( ( Bool -> Bool ) ∋ ( ( λ x833 -> false ) ) ) $ ( d90 ) ) ) ) $ ( if true then d749 else true )
        d836 : if false then if true then Bool else Bool else if true then Bool else Bool
        d836 = if if d814 then d356 else d84 then if d270 then d441 else false else if d581 then d525 else false
        d837 : if true then if false then Bool else Bool else if true then Bool else Bool
        d837 = if if false then d301 else true then if d472 then d741 else false else if d757 then d682 else false
        d838 : ( ( Set -> Set ) ∋ ( ( λ x841 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d838 = ( ( Bool -> Bool ) ∋ ( ( λ x839 -> ( ( Bool -> Bool ) ∋ ( ( λ x840 -> d258 ) ) ) $ ( true ) ) ) ) $ ( if d522 then d103 else d618 )
        d842 : ( ( Set -> Set ) ∋ ( ( λ x843 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d842 = if if true then true else true then if true then true else true else if false then false else d373
        d844 : if true then if true then Bool else Bool else if true then Bool else Bool
        d844 = ( ( Bool -> Bool ) ∋ ( ( λ x845 -> if true then false else d767 ) ) ) $ ( if d185 then true else false )
        d846 : ( ( Set -> Set ) ∋ ( ( λ x847 -> ( ( Set -> Set ) ∋ ( ( λ x848 -> x848 ) ) ) $ ( x847 ) ) ) ) $ ( if false then Bool else Bool )
        d846 = if if d185 then d674 else d64 then if true then false else d488 else if false then true else d193
        d849 : ( ( Set -> Set ) ∋ ( ( λ x850 -> ( ( Set -> Set ) ∋ ( ( λ x851 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d849 = if if true then d170 else false then if true then false else d182 else if true then true else false
        d852 : if true then if true then Bool else Bool else if true then Bool else Bool
        d852 = ( ( Bool -> Bool ) ∋ ( ( λ x853 -> ( ( Bool -> Bool ) ∋ ( ( λ x854 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d822 else d590 )
        d855 : if false then if false then Bool else Bool else if false then Bool else Bool
        d855 = ( ( Bool -> Bool ) ∋ ( ( λ x856 -> ( ( Bool -> Bool ) ∋ ( ( λ x857 -> d572 ) ) ) $ ( x856 ) ) ) ) $ ( if d844 then d247 else true )
        d858 : ( ( Set -> Set ) ∋ ( ( λ x859 -> ( ( Set -> Set ) ∋ ( ( λ x860 -> x860 ) ) ) $ ( x859 ) ) ) ) $ ( if true then Bool else Bool )
        d858 = if if d221 then d301 else true then if false then d788 else d571 else if d103 then true else false
        d861 : if false then if true then Bool else Bool else if true then Bool else Bool
        d861 = ( ( Bool -> Bool ) ∋ ( ( λ x862 -> ( ( Bool -> Bool ) ∋ ( ( λ x863 -> x863 ) ) ) $ ( d231 ) ) ) ) $ ( if d499 then true else d858 )
        d864 : if true then if true then Bool else Bool else if false then Bool else Bool
        d864 = ( ( Bool -> Bool ) ∋ ( ( λ x865 -> if d407 then true else true ) ) ) $ ( if d76 then d133 else true )
        d866 : if true then if true then Bool else Bool else if true then Bool else Bool
        d866 = if if false then d564 else false then if d717 then false else d323 else if d501 then true else d816
        d867 : if true then if false then Bool else Bool else if false then Bool else Bool
        d867 = if if d643 then d57 else d4 then if false then true else d717 else if d694 then false else false
        d868 : if false then if false then Bool else Bool else if false then Bool else Bool
        d868 = if if d509 then true else true then if true then d641 else false else if true then false else true
        d869 : if false then if true then Bool else Bool else if true then Bool else Bool
        d869 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if x870 then x870 else true ) ) ) $ ( if d784 then false else true )
        d871 : ( ( Set -> Set ) ∋ ( ( λ x872 -> ( ( Set -> Set ) ∋ ( ( λ x873 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d871 = if if d522 then true else false then if d14 then true else true else if d190 then d722 else d296
        d874 : if false then if false then Bool else Bool else if true then Bool else Bool
        d874 = ( ( Bool -> Bool ) ∋ ( ( λ x875 -> ( ( Bool -> Bool ) ∋ ( ( λ x876 -> d596 ) ) ) $ ( true ) ) ) ) $ ( if d782 then d246 else true )
        d877 : if true then if false then Bool else Bool else if true then Bool else Bool
        d877 = ( ( Bool -> Bool ) ∋ ( ( λ x878 -> if d767 then true else false ) ) ) $ ( if false then d499 else d744 )
        d879 : if true then if false then Bool else Bool else if true then Bool else Bool
        d879 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> ( ( Bool -> Bool ) ∋ ( ( λ x881 -> x880 ) ) ) $ ( d591 ) ) ) ) $ ( if d401 then d203 else true )
        d882 : ( ( Set -> Set ) ∋ ( ( λ x885 -> ( ( Set -> Set ) ∋ ( ( λ x886 -> Bool ) ) ) $ ( x885 ) ) ) ) $ ( if false then Bool else Bool )
        d882 = ( ( Bool -> Bool ) ∋ ( ( λ x883 -> ( ( Bool -> Bool ) ∋ ( ( λ x884 -> d569 ) ) ) $ ( true ) ) ) ) $ ( if d761 then d396 else d134 )
        d887 : ( ( Set -> Set ) ∋ ( ( λ x889 -> ( ( Set -> Set ) ∋ ( ( λ x890 -> Bool ) ) ) $ ( x889 ) ) ) ) $ ( if false then Bool else Bool )
        d887 = ( ( Bool -> Bool ) ∋ ( ( λ x888 -> if d849 then x888 else false ) ) ) $ ( if false then d346 else d867 )
        d891 : ( ( Set -> Set ) ∋ ( ( λ x894 -> ( ( Set -> Set ) ∋ ( ( λ x895 -> x895 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d891 = ( ( Bool -> Bool ) ∋ ( ( λ x892 -> ( ( Bool -> Bool ) ∋ ( ( λ x893 -> d446 ) ) ) $ ( d749 ) ) ) ) $ ( if d158 then false else d717 )
        d896 : if false then if false then Bool else Bool else if true then Bool else Bool
        d896 = if if d122 then true else true then if true then d496 else true else if d193 then true else d93
        d897 : ( ( Set -> Set ) ∋ ( ( λ x899 -> ( ( Set -> Set ) ∋ ( ( λ x900 -> Bool ) ) ) $ ( x899 ) ) ) ) $ ( if true then Bool else Bool )
        d897 = ( ( Bool -> Bool ) ∋ ( ( λ x898 -> if x898 then false else false ) ) ) $ ( if d4 then true else false )
        d901 : if true then if true then Bool else Bool else if true then Bool else Bool
        d901 = if if true then false else false then if false then false else d549 else if false then d111 else false
        d902 : if false then if true then Bool else Bool else if false then Bool else Bool
        d902 = if if true then d134 else d866 then if true then false else d414 else if true then d182 else true
        d903 : ( ( Set -> Set ) ∋ ( ( λ x904 -> if false then x904 else x904 ) ) ) $ ( if false then Bool else Bool )
        d903 = if if false then false else false then if d7 then true else true else if d81 then false else true
        d905 : ( ( Set -> Set ) ∋ ( ( λ x906 -> if true then x906 else x906 ) ) ) $ ( if true then Bool else Bool )
        d905 = if if d536 then false else false then if false then false else d645 else if d725 then d465 else true
        d907 : if true then if false then Bool else Bool else if false then Bool else Bool
        d907 = ( ( Bool -> Bool ) ∋ ( ( λ x908 -> if d267 then false else d219 ) ) ) $ ( if d190 then true else d285 )
        d909 : ( ( Set -> Set ) ∋ ( ( λ x912 -> if true then x912 else x912 ) ) ) $ ( if true then Bool else Bool )
        d909 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> ( ( Bool -> Bool ) ∋ ( ( λ x911 -> x911 ) ) ) $ ( x910 ) ) ) ) $ ( if false then d484 else true )
        d913 : ( ( Set -> Set ) ∋ ( ( λ x916 -> if false then Bool else x916 ) ) ) $ ( if false then Bool else Bool )
        d913 = ( ( Bool -> Bool ) ∋ ( ( λ x914 -> ( ( Bool -> Bool ) ∋ ( ( λ x915 -> x914 ) ) ) $ ( x914 ) ) ) ) $ ( if true then d810 else true )
        d917 : if false then if false then Bool else Bool else if false then Bool else Bool
        d917 = if if d294 then true else false then if d787 then false else false else if d294 then d704 else true
        d918 : ( ( Set -> Set ) ∋ ( ( λ x919 -> ( ( Set -> Set ) ∋ ( ( λ x920 -> x919 ) ) ) $ ( x919 ) ) ) ) $ ( if false then Bool else Bool )
        d918 = if if d226 then d299 else true then if true then false else d541 else if false then false else false
        d921 : ( ( Set -> Set ) ∋ ( ( λ x922 -> if true then x922 else x922 ) ) ) $ ( if false then Bool else Bool )
        d921 = if if true then false else d28 then if false then d266 else d194 else if d645 then d674 else true
        d923 : if true then if false then Bool else Bool else if false then Bool else Bool
        d923 = if if d744 then d32 else d640 then if true then false else d629 else if d632 then true else d133
        d924 : if false then if false then Bool else Bool else if false then Bool else Bool
        d924 = ( ( Bool -> Bool ) ∋ ( ( λ x925 -> if d855 then d35 else x925 ) ) ) $ ( if d909 then false else false )
        d926 : ( ( Set -> Set ) ∋ ( ( λ x927 -> ( ( Set -> Set ) ∋ ( ( λ x928 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d926 = if if d685 then true else d396 then if d719 then d96 else true else if d924 then d68 else true
        d929 : if true then if true then Bool else Bool else if false then Bool else Bool
        d929 = if if true then true else true then if d186 then false else d582 else if d170 then false else d704
        d930 : ( ( Set -> Set ) ∋ ( ( λ x931 -> if true then Bool else x931 ) ) ) $ ( if true then Bool else Bool )
        d930 = if if d120 then d401 else d217 then if d32 then false else true else if d209 then d137 else true
        d932 : ( ( Set -> Set ) ∋ ( ( λ x934 -> if false then Bool else x934 ) ) ) $ ( if true then Bool else Bool )
        d932 = ( ( Bool -> Bool ) ∋ ( ( λ x933 -> if d81 then d733 else d441 ) ) ) $ ( if d74 then true else d897 )
        d935 : ( ( Set -> Set ) ∋ ( ( λ x936 -> ( ( Set -> Set ) ∋ ( ( λ x937 -> Bool ) ) ) $ ( x936 ) ) ) ) $ ( if false then Bool else Bool )
        d935 = if if true then true else d1 then if true then false else d111 else if d263 then d601 else d335
        d938 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x941 -> x941 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d938 = ( ( Bool -> Bool ) ∋ ( ( λ x939 -> if x939 then d470 else d306 ) ) ) $ ( if true then false else d421 )
        d942 : ( ( Set -> Set ) ∋ ( ( λ x944 -> if false then x944 else Bool ) ) ) $ ( if true then Bool else Bool )
        d942 = ( ( Bool -> Bool ) ∋ ( ( λ x943 -> if false then d567 else x943 ) ) ) $ ( if false then true else true )
        d945 : ( ( Set -> Set ) ∋ ( ( λ x946 -> ( ( Set -> Set ) ∋ ( ( λ x947 -> x947 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d945 = if if false then d822 else false then if true then d430 else d346 else if true then d126 else true
        d948 : ( ( Set -> Set ) ∋ ( ( λ x950 -> ( ( Set -> Set ) ∋ ( ( λ x951 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d948 = ( ( Bool -> Bool ) ∋ ( ( λ x949 -> if d722 then x949 else true ) ) ) $ ( if d877 then true else d360 )
        d952 : if false then if true then Bool else Bool else if false then Bool else Bool
        d952 = if if false then d158 else d837 then if true then false else false else if true then d168 else d577
        d953 : if false then if false then Bool else Bool else if false then Bool else Bool
        d953 = if if false then d296 else d107 then if d24 then false else d492 else if false then true else true
        d954 : ( ( Set -> Set ) ∋ ( ( λ x956 -> ( ( Set -> Set ) ∋ ( ( λ x957 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d954 = ( ( Bool -> Bool ) ∋ ( ( λ x955 -> if false then true else x955 ) ) ) $ ( if d85 then d31 else false )
        d958 : if false then if false then Bool else Bool else if true then Bool else Bool
        d958 = if if d487 then d484 else false then if d294 then false else true else if false then false else false
        d959 : if false then if false then Bool else Bool else if true then Bool else Bool
        d959 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> if true then d531 else x960 ) ) ) $ ( if false then false else d395 )
        d961 : ( ( Set -> Set ) ∋ ( ( λ x962 -> ( ( Set -> Set ) ∋ ( ( λ x963 -> x963 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d961 = if if true then true else true then if d14 then d437 else true else if d68 then true else true
        d964 : ( ( Set -> Set ) ∋ ( ( λ x965 -> ( ( Set -> Set ) ∋ ( ( λ x966 -> Bool ) ) ) $ ( x965 ) ) ) ) $ ( if false then Bool else Bool )
        d964 = if if false then d43 else true then if d285 then d392 else false else if true then true else d42
        d967 : ( ( Set -> Set ) ∋ ( ( λ x968 -> if true then x968 else Bool ) ) ) $ ( if false then Bool else Bool )
        d967 = if if d14 then d24 else true then if true then d76 else d797 else if d842 then true else d682
        d969 : ( ( Set -> Set ) ∋ ( ( λ x972 -> ( ( Set -> Set ) ∋ ( ( λ x973 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d969 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> ( ( Bool -> Bool ) ∋ ( ( λ x971 -> x970 ) ) ) $ ( false ) ) ) ) $ ( if d708 then d314 else true )
        d974 : ( ( Set -> Set ) ∋ ( ( λ x975 -> if true then x975 else Bool ) ) ) $ ( if true then Bool else Bool )
        d974 = if if d221 then d744 else true then if d182 then false else d329 else if false then d299 else d697
        d976 : if false then if false then Bool else Bool else if true then Bool else Bool
        d976 = ( ( Bool -> Bool ) ∋ ( ( λ x977 -> ( ( Bool -> Bool ) ∋ ( ( λ x978 -> d134 ) ) ) $ ( false ) ) ) ) $ ( if d577 then true else d335 )
        d979 : if false then if false then Bool else Bool else if false then Bool else Bool
        d979 = if if d877 then d314 else d541 then if false then d51 else true else if d478 then d901 else false
        d980 : ( ( Set -> Set ) ∋ ( ( λ x983 -> if true then x983 else Bool ) ) ) $ ( if false then Bool else Bool )
        d980 = ( ( Bool -> Bool ) ∋ ( ( λ x981 -> ( ( Bool -> Bool ) ∋ ( ( λ x982 -> x982 ) ) ) $ ( false ) ) ) ) $ ( if d871 then false else false )
        d984 : ( ( Set -> Set ) ∋ ( ( λ x986 -> ( ( Set -> Set ) ∋ ( ( λ x987 -> x986 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d984 = ( ( Bool -> Bool ) ∋ ( ( λ x985 -> if x985 then false else x985 ) ) ) $ ( if true then true else d924 )
        d988 : if true then if false then Bool else Bool else if false then Bool else Bool
        d988 = if if false then d84 else d9 then if d237 then false else true else if false then true else d861
        d989 : ( ( Set -> Set ) ∋ ( ( λ x990 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d989 = if if d802 then d577 else false then if d415 then d571 else d51 else if true then true else false
        d991 : if false then if false then Bool else Bool else if false then Bool else Bool
        d991 = if if true then false else true then if d369 then d163 else false else if false then false else false
        d992 : ( ( Set -> Set ) ∋ ( ( λ x995 -> if true then x995 else x995 ) ) ) $ ( if false then Bool else Bool )
        d992 = ( ( Bool -> Bool ) ∋ ( ( λ x993 -> ( ( Bool -> Bool ) ∋ ( ( λ x994 -> true ) ) ) $ ( d551 ) ) ) ) $ ( if false then false else true )
        d996 : ( ( Set -> Set ) ∋ ( ( λ x999 -> if true then x999 else x999 ) ) ) $ ( if true then Bool else Bool )
        d996 = ( ( Bool -> Bool ) ∋ ( ( λ x997 -> ( ( Bool -> Bool ) ∋ ( ( λ x998 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d1000 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1000 = if if d632 then true else true then if d959 then true else true else if true then false else d363
        d1001 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1001 = if if d913 then d501 else false then if true then d194 else d419 else if d142 then true else d958
        d1002 : ( ( Set -> Set ) ∋ ( ( λ x1005 -> if true then x1005 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1002 = ( ( Bool -> Bool ) ∋ ( ( λ x1003 -> ( ( Bool -> Bool ) ∋ ( ( λ x1004 -> d376 ) ) ) $ ( true ) ) ) ) $ ( if d267 then d930 else false )
        d1006 : ( ( Set -> Set ) ∋ ( ( λ x1009 -> ( ( Set -> Set ) ∋ ( ( λ x1010 -> Bool ) ) ) $ ( x1009 ) ) ) ) $ ( if true then Bool else Bool )
        d1006 = ( ( Bool -> Bool ) ∋ ( ( λ x1007 -> ( ( Bool -> Bool ) ∋ ( ( λ x1008 -> x1007 ) ) ) $ ( d531 ) ) ) ) $ ( if true then d197 else d682 )
        d1011 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1011 = ( ( Bool -> Bool ) ∋ ( ( λ x1012 -> ( ( Bool -> Bool ) ∋ ( ( λ x1013 -> true ) ) ) $ ( x1012 ) ) ) ) $ ( if d924 then false else d867 )
        d1014 : ( ( Set -> Set ) ∋ ( ( λ x1015 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1014 = if if true then d935 else d767 then if d71 then false else false else if d441 then false else false
        d1016 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1016 = if if false then true else true then if false then true else d182 else if false then true else false
        d1017 : ( ( Set -> Set ) ∋ ( ( λ x1018 -> if true then Bool else x1018 ) ) ) $ ( if true then Bool else Bool )
        d1017 = if if true then true else false then if d729 then d531 else d777 else if d849 then d609 else d126
        d1019 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1019 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( Bool -> Bool ) ∋ ( ( λ x1021 -> d541 ) ) ) $ ( d168 ) ) ) ) $ ( if d1002 then false else d624 )
        d1022 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1022 = if if d802 then d674 else true then if true then false else d907 else if false then d1016 else d1002
        d1023 : ( ( Set -> Set ) ∋ ( ( λ x1026 -> if true then x1026 else x1026 ) ) ) $ ( if false then Bool else Bool )
        d1023 = ( ( Bool -> Bool ) ∋ ( ( λ x1024 -> ( ( Bool -> Bool ) ∋ ( ( λ x1025 -> false ) ) ) $ ( d501 ) ) ) ) $ ( if d407 then false else d1014 )
        d1027 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1027 = ( ( Bool -> Bool ) ∋ ( ( λ x1028 -> if d137 then x1028 else true ) ) ) $ ( if false then false else d534 )
        d1029 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1029 = if if d343 then d13 else d176 then if d613 then d541 else d596 else if d534 then true else d163
        d1030 : ( ( Set -> Set ) ∋ ( ( λ x1033 -> ( ( Set -> Set ) ∋ ( ( λ x1034 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> ( ( Bool -> Bool ) ∋ ( ( λ x1032 -> d707 ) ) ) $ ( true ) ) ) ) $ ( if d311 then true else d913 )
        d1035 : ( ( Set -> Set ) ∋ ( ( λ x1036 -> ( ( Set -> Set ) ∋ ( ( λ x1037 -> x1036 ) ) ) $ ( x1036 ) ) ) ) $ ( if true then Bool else Bool )
        d1035 = if if d658 then d1006 else false then if false then true else d289 else if d336 then d1011 else d984
        d1038 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1038 = ( ( Bool -> Bool ) ∋ ( ( λ x1039 -> ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> x1040 ) ) ) $ ( true ) ) ) ) $ ( if d871 then true else d718 )
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x1042 -> if false then x1042 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1041 = if if d221 then d296 else d584 then if d505 then d653 else false else if true then false else false
        d1043 : ( ( Set -> Set ) ∋ ( ( λ x1044 -> if true then Bool else x1044 ) ) ) $ ( if false then Bool else Bool )
        d1043 = if if d693 then d559 else d852 then if d314 then false else true else if false then true else d175
        d1045 : ( ( Set -> Set ) ∋ ( ( λ x1048 -> if true then Bool else x1048 ) ) ) $ ( if false then Bool else Bool )
        d1045 = ( ( Bool -> Bool ) ∋ ( ( λ x1046 -> ( ( Bool -> Bool ) ∋ ( ( λ x1047 -> x1046 ) ) ) $ ( d693 ) ) ) ) $ ( if d483 then false else d775 )
        d1049 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1049 = if if d897 then d945 else d699 then if d572 then false else true else if d511 then true else true
        d1050 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1050 = ( ( Bool -> Bool ) ∋ ( ( λ x1051 -> if d267 then false else true ) ) ) $ ( if false then false else d188 )
        d1052 : ( ( Set -> Set ) ∋ ( ( λ x1053 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1052 = if if d336 then false else d635 then if false then false else false else if d749 then d902 else d718
        d1054 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1054 = if if false then true else true then if d521 then false else false else if false then d168 else false
        d1055 : ( ( Set -> Set ) ∋ ( ( λ x1057 -> ( ( Set -> Set ) ∋ ( ( λ x1058 -> x1058 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1055 = ( ( Bool -> Bool ) ∋ ( ( λ x1056 -> if d346 then x1056 else true ) ) ) $ ( if true then true else true )
        d1059 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1059 = if if d771 then d525 else d247 then if d505 then d787 else d685 else if d90 then true else true
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x1061 -> ( ( Set -> Set ) ∋ ( ( λ x1062 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1060 = if if true then false else false then if true then d741 else d81 else if true then false else true
        d1063 : ( ( Set -> Set ) ∋ ( ( λ x1064 -> if false then x1064 else x1064 ) ) ) $ ( if true then Bool else Bool )
        d1063 = if if d797 then d569 else true then if true then false else d710 else if false then d693 else true
        d1065 : ( ( Set -> Set ) ∋ ( ( λ x1067 -> if false then x1067 else x1067 ) ) ) $ ( if false then Bool else Bool )
        d1065 = ( ( Bool -> Bool ) ∋ ( ( λ x1066 -> if d590 then false else d601 ) ) ) $ ( if true then d383 else false )
        d1068 : ( ( Set -> Set ) ∋ ( ( λ x1071 -> ( ( Set -> Set ) ∋ ( ( λ x1072 -> Bool ) ) ) $ ( x1071 ) ) ) ) $ ( if true then Bool else Bool )
        d1068 = ( ( Bool -> Bool ) ∋ ( ( λ x1069 -> ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> d74 ) ) ) $ ( x1069 ) ) ) ) $ ( if d1063 then d632 else d380 )
        d1073 : ( ( Set -> Set ) ∋ ( ( λ x1075 -> ( ( Set -> Set ) ∋ ( ( λ x1076 -> Bool ) ) ) $ ( x1075 ) ) ) ) $ ( if false then Bool else Bool )
        d1073 = ( ( Bool -> Bool ) ∋ ( ( λ x1074 -> if true then false else d134 ) ) ) $ ( if false then d51 else d719 )
        d1077 : ( ( Set -> Set ) ∋ ( ( λ x1079 -> ( ( Set -> Set ) ∋ ( ( λ x1080 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1077 = ( ( Bool -> Bool ) ∋ ( ( λ x1078 -> if d640 then d945 else true ) ) ) $ ( if false then d1050 else d335 )
        d1081 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1081 = if if true then d719 else d559 then if false then true else false else if true then d236 else d430
        d1082 : ( ( Set -> Set ) ∋ ( ( λ x1085 -> ( ( Set -> Set ) ∋ ( ( λ x1086 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1082 = ( ( Bool -> Bool ) ∋ ( ( λ x1083 -> ( ( Bool -> Bool ) ∋ ( ( λ x1084 -> d842 ) ) ) $ ( x1083 ) ) ) ) $ ( if d976 then false else false )
        d1087 : ( ( Set -> Set ) ∋ ( ( λ x1088 -> ( ( Set -> Set ) ∋ ( ( λ x1089 -> Bool ) ) ) $ ( x1088 ) ) ) ) $ ( if true then Bool else Bool )
        d1087 = if if false then d354 else true then if d554 then false else d866 else if true then true else true
        d1090 : ( ( Set -> Set ) ∋ ( ( λ x1091 -> ( ( Set -> Set ) ∋ ( ( λ x1092 -> x1092 ) ) ) $ ( x1091 ) ) ) ) $ ( if false then Bool else Bool )
        d1090 = if if false then d221 else true then if false then d24 else false else if true then d216 else true
        d1093 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1093 = ( ( Bool -> Bool ) ∋ ( ( λ x1094 -> ( ( Bool -> Bool ) ∋ ( ( λ x1095 -> true ) ) ) $ ( false ) ) ) ) $ ( if d1041 then true else d571 )
        d1096 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1096 = ( ( Bool -> Bool ) ∋ ( ( λ x1097 -> ( ( Bool -> Bool ) ∋ ( ( λ x1098 -> x1098 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d1099 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1099 = ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> if d179 then d396 else x1100 ) ) ) $ ( if false then true else false )
        d1101 : ( ( Set -> Set ) ∋ ( ( λ x1104 -> ( ( Set -> Set ) ∋ ( ( λ x1105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1101 = ( ( Bool -> Bool ) ∋ ( ( λ x1102 -> ( ( Bool -> Bool ) ∋ ( ( λ x1103 -> false ) ) ) $ ( d100 ) ) ) ) $ ( if d811 then false else false )
        d1106 : ( ( Set -> Set ) ∋ ( ( λ x1107 -> ( ( Set -> Set ) ∋ ( ( λ x1108 -> Bool ) ) ) $ ( x1107 ) ) ) ) $ ( if false then Bool else Bool )
        d1106 = if if false then d1022 else true then if false then d241 else d814 else if true then true else d629
        d1109 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> if true then Bool else x1110 ) ) ) $ ( if true then Bool else Bool )
        d1109 = if if d160 then false else d27 then if true then d805 else true else if true then false else true
        d1111 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1111 = ( ( Bool -> Bool ) ∋ ( ( λ x1112 -> if true then false else true ) ) ) $ ( if true then false else true )
        d1113 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1113 = ( ( Bool -> Bool ) ∋ ( ( λ x1114 -> if d1043 then false else false ) ) ) $ ( if d842 then true else d1030 )
        d1115 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1115 = ( ( Bool -> Bool ) ∋ ( ( λ x1116 -> if x1116 then false else false ) ) ) $ ( if d483 then true else d396 )
        d1117 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1117 = if if true then false else d216 then if true then d651 else d455 else if d664 then d704 else true
        d1118 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1118 = ( ( Bool -> Bool ) ∋ ( ( λ x1119 -> ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> false ) ) ) $ ( false ) ) ) ) $ ( if d366 then true else false )
        d1121 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1121 = if if true then d1052 else false then if d811 then true else d369 else if false then false else false
        d1122 : ( ( Set -> Set ) ∋ ( ( λ x1123 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1122 = if if false then d79 else d346 then if d891 then d14 else false else if d455 then d891 else true
        d1124 : ( ( Set -> Set ) ∋ ( ( λ x1126 -> if false then x1126 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1124 = ( ( Bool -> Bool ) ∋ ( ( λ x1125 -> if false then x1125 else d913 ) ) ) $ ( if true then d1059 else d685 )
        d1127 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1127 = ( ( Bool -> Bool ) ∋ ( ( λ x1128 -> if d924 then x1128 else x1128 ) ) ) $ ( if false then false else true )
        d1129 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1129 = if if true then true else d1016 then if d236 then d697 else d190 else if d1045 then false else d18
        d1130 : ( ( Set -> Set ) ∋ ( ( λ x1131 -> ( ( Set -> Set ) ∋ ( ( λ x1132 -> x1131 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1130 = if if true then true else true then if d32 then d590 else d741 else if false then true else d176
        d1133 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1133 = ( ( Bool -> Bool ) ∋ ( ( λ x1134 -> ( ( Bool -> Bool ) ∋ ( ( λ x1135 -> true ) ) ) $ ( d720 ) ) ) ) $ ( if d932 then d395 else false )
        d1136 : ( ( Set -> Set ) ∋ ( ( λ x1139 -> if false then Bool else x1139 ) ) ) $ ( if true then Bool else Bool )
        d1136 = ( ( Bool -> Bool ) ∋ ( ( λ x1137 -> ( ( Bool -> Bool ) ∋ ( ( λ x1138 -> d549 ) ) ) $ ( false ) ) ) ) $ ( if true then d1077 else false )
        d1140 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1140 = if if false then d988 else d179 then if d160 then true else d346 else if false then false else d226
        d1141 : ( ( Set -> Set ) ∋ ( ( λ x1144 -> ( ( Set -> Set ) ∋ ( ( λ x1145 -> x1145 ) ) ) $ ( x1144 ) ) ) ) $ ( if false then Bool else Bool )
        d1141 = ( ( Bool -> Bool ) ∋ ( ( λ x1142 -> ( ( Bool -> Bool ) ∋ ( ( λ x1143 -> x1142 ) ) ) $ ( true ) ) ) ) $ ( if true then d907 else false )
        d1146 : ( ( Set -> Set ) ∋ ( ( λ x1147 -> ( ( Set -> Set ) ∋ ( ( λ x1148 -> x1147 ) ) ) $ ( x1147 ) ) ) ) $ ( if false then Bool else Bool )
        d1146 = if if d887 then true else false then if d984 then d401 else true else if false then d511 else true
        d1149 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> if false then x1150 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1149 = if if d1054 then d530 else true then if false then d166 else true else if d1023 then d797 else false
        d1151 : ( ( Set -> Set ) ∋ ( ( λ x1153 -> ( ( Set -> Set ) ∋ ( ( λ x1154 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1151 = ( ( Bool -> Bool ) ∋ ( ( λ x1152 -> if x1152 then d459 else x1152 ) ) ) $ ( if d651 then false else d166 )
        d1155 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1155 = ( ( Bool -> Bool ) ∋ ( ( λ x1156 -> if d258 then d488 else true ) ) ) $ ( if true then true else false )