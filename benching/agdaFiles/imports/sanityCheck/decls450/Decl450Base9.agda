module Decl450Base9  where
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
        d1 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1 = if if true then true else true then if true then false else false else if true then true else false
        d2 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then x5 else x5 ) ) ) $ ( if false then Bool else Bool )
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> ( ( Bool -> Bool ) ∋ ( ( λ x4 -> x3 ) ) ) $ ( d1 ) ) ) ) $ ( if d1 then false else true )
        d6 : if true then if false then Bool else Bool else if false then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if x7 then false else d2 ) ) ) $ ( if d1 then false else false )
        d8 : if true then if false then Bool else Bool else if false then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if false then d2 else d2 ) ) ) $ ( if false then true else false )
        d10 : if true then if false then Bool else Bool else if true then Bool else Bool
        d10 = if if true then d1 else d2 then if d6 then d8 else false else if d2 then d1 else true
        d11 : if false then if true then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> x12 ) ) ) $ ( x12 ) ) ) ) $ ( if d10 then false else d6 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if d2 then false else d10 ) ) ) $ ( if true then d1 else d2 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then Bool else x19 ) ) ) $ ( if true then Bool else Bool )
        d18 = if if true then true else d1 then if false then true else false else if true then true else d11
        d20 : if false then if true then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d1 else true )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d23 = if if d2 then d20 else d10 then if false then true else d11 else if true then d18 else true
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then x28 else Bool ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> true ) ) ) $ ( x26 ) ) ) ) $ ( if d10 then d23 else false )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then x30 else d25 ) ) ) $ ( if d14 then true else false )
        d32 : if false then if false then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> x34 ) ) ) $ ( false ) ) ) ) $ ( if d1 then d20 else d20 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( x36 ) ) ) ) $ ( if true then Bool else Bool )
        d35 = if if d1 then false else false then if false then true else d14 else if d1 then false else false
        d38 : if true then if true then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( d10 ) ) ) ) $ ( if true then false else d2 )
        d41 : if true then if true then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> false ) ) ) $ ( true ) ) ) ) $ ( if d20 then d20 else d6 )
        d44 : if true then if false then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> true ) ) ) $ ( x45 ) ) ) ) $ ( if true then d1 else d8 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x48 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if false then d18 else false then if d8 then true else d8 else if true then d32 else false
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if true then Bool else x51 ) ) ) $ ( if false then Bool else Bool )
        d50 = if if false then true else d8 then if true then d11 else d29 else if d10 then d35 else false
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> d23 ) ) ) $ ( false ) ) ) ) $ ( if false then d32 else true )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> x57 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if x56 then d11 else d1 ) ) ) $ ( if true then d50 else d32 )
        d59 : if true then if true then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if x60 then x60 else d52 ) ) ) $ ( if d35 then true else true )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> x64 ) ) ) $ ( x63 ) ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if x62 then false else x62 ) ) ) $ ( if false then d35 else false )
        d65 : if false then if false then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if false then false else d23 ) ) ) $ ( if d35 then d44 else d8 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if false then Bool else x68 ) ) ) $ ( if true then Bool else Bool )
        d67 = if if false then false else d20 then if true then false else d10 else if d47 then d11 else d47
        d69 : if true then if false then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if true then x70 else true ) ) ) $ ( if d18 then d67 else false )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then x72 else x72 ) ) ) $ ( if false then Bool else Bool )
        d71 = if if d38 then d14 else d65 then if d6 then d47 else d47 else if d59 then true else false
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> x75 ) ) ) $ ( x75 ) ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if true then x74 else x74 ) ) ) $ ( if d10 then true else false )
        d77 : if true then if false then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> d35 ) ) ) $ ( x78 ) ) ) ) $ ( if true then false else d71 )
        d80 : if true then if true then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d69 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x84 ) ) ) $ ( x84 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = if if d23 then d35 else true then if true then d8 else d47 else if false then false else true
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> true ) ) ) $ ( d61 ) ) ) ) $ ( if true then true else d65 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then Bool else x93 ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if false then x92 else d18 ) ) ) $ ( if d50 then d20 else d86 )
        d94 : if true then if true then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if x95 then x95 else x95 ) ) ) $ ( if d6 then true else true )
        d96 : if true then if true then Bool else Bool else if false then Bool else Bool
        d96 = if if true then false else d52 then if true then false else false else if d71 then d69 else false
        d97 : if true then if true then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> d96 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d100 = if if d32 then true else true then if false then d14 else false else if true then true else false
        d103 : if true then if false then Bool else Bool else if false then Bool else Bool
        d103 = if if d80 then d29 else true then if false then d96 else d94 else if d86 then true else d50
        d104 : if false then if false then Bool else Bool else if true then Bool else Bool
        d104 = if if true then d29 else true then if false then true else true else if d6 then true else d96
        d105 : if true then if true then Bool else Bool else if false then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if true then x106 else x106 ) ) ) $ ( if false then d73 else false )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> true ) ) ) $ ( d67 ) ) ) ) $ ( if d44 then d103 else false )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if false then x113 else x113 ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if d97 then d94 else false ) ) ) $ ( if true then false else d83 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> x116 ) ) ) $ ( x115 ) ) ) ) $ ( if true then Bool else Bool )
        d114 = if if true then d80 else false then if d1 then d67 else true else if false then d55 else false
        d117 : if false then if false then Bool else Bool else if true then Bool else Bool
        d117 = if if false then d25 else true then if true then d80 else true else if d2 then true else d29
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( x119 ) ) ) ) $ ( if false then Bool else Bool )
        d118 = if if d6 then false else false then if true then d91 else d65 else if d104 then true else true
        d121 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> x123 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if true then x122 else d73 ) ) ) $ ( if true then d25 else false )
        d125 : if true then if true then Bool else Bool else if true then Bool else Bool
        d125 = if if d69 then d86 else true then if true then d41 else false else if false then d11 else d96
        d126 : if true then if true then Bool else Bool else if false then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if false then x127 else d59 ) ) ) $ ( if false then false else false )
        d128 : if true then if true then Bool else Bool else if false then Bool else Bool
        d128 = if if true then d47 else d32 then if d86 then d111 else d50 else if d20 then d117 else d25
        d129 : if true then if false then Bool else Bool else if false then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if false then x130 else x130 ) ) ) $ ( if d10 then d11 else false )
        d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if false then x132 else Bool ) ) ) $ ( if true then Bool else Bool )
        d131 = if if true then true else false then if d50 then d25 else false else if false then false else true
        d133 : if false then if true then Bool else Bool else if false then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> x135 ) ) ) $ ( x134 ) ) ) ) $ ( if true then true else false )
        d136 : if false then if false then Bool else Bool else if false then Bool else Bool
        d136 = if if true then false else true then if d20 then d126 else false else if d11 then d131 else true
        d137 : if true then if false then Bool else Bool else if true then Bool else Bool
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> if x138 then d61 else x138 ) ) ) $ ( if d41 then true else d23 )
        d139 : if true then if false then Bool else Bool else if true then Bool else Bool
        d139 = if if d69 then d73 else false then if true then true else d20 else if false then true else false
        d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> if true then x141 else x141 ) ) ) $ ( if true then Bool else Bool )
        d140 = if if true then d86 else d14 then if d103 then true else true else if d25 then d67 else d91
        d142 : ( ( Set -> Set ) ∋ ( ( λ x145 -> ( ( Set -> Set ) ∋ ( ( λ x146 -> Bool ) ) ) $ ( x145 ) ) ) ) $ ( if true then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> ( ( Bool -> Bool ) ∋ ( ( λ x144 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then d129 else true )
        d147 : if false then if true then Bool else Bool else if true then Bool else Bool
        d147 = if if d114 then d35 else d105 then if d126 then d6 else true else if false then d23 else d77
        d148 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> x151 ) ) ) $ ( x150 ) ) ) ) $ ( if false then Bool else Bool )
        d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> if x149 then x149 else x149 ) ) ) $ ( if d100 then d59 else d61 )
        d152 : if false then if false then Bool else Bool else if true then Bool else Bool
        d152 = if if false then false else d126 then if d35 then false else false else if false then d77 else true
        d153 : if false then if false then Bool else Bool else if true then Bool else Bool
        d153 = if if d131 then true else false then if false then false else true else if true then false else d147
        d154 : if false then if true then Bool else Bool else if true then Bool else Bool
        d154 = if if true then d96 else d91 then if false then d23 else false else if true then d52 else d83
        d155 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> x158 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> if d41 then x156 else true ) ) ) $ ( if d154 then d103 else true )
        d159 : if false then if true then Bool else Bool else if true then Bool else Bool
        d159 = if if true then false else false then if false then false else d83 else if d105 then d65 else d44
        d160 : ( ( Set -> Set ) ∋ ( ( λ x163 -> ( ( Set -> Set ) ∋ ( ( λ x164 -> x164 ) ) ) $ ( x163 ) ) ) ) $ ( if true then Bool else Bool )
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( Bool -> Bool ) ∋ ( ( λ x162 -> x162 ) ) ) $ ( d118 ) ) ) ) $ ( if true then false else true )
        d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> x168 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> if x166 then x166 else false ) ) ) $ ( if false then d103 else false )
        d169 : ( ( Set -> Set ) ∋ ( ( λ x172 -> ( ( Set -> Set ) ∋ ( ( λ x173 -> x173 ) ) ) $ ( x172 ) ) ) ) $ ( if true then Bool else Bool )
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x171 -> false ) ) ) $ ( x170 ) ) ) ) $ ( if false then d20 else false )
        d174 : if true then if true then Bool else Bool else if false then Bool else Bool
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> ( ( Bool -> Bool ) ∋ ( ( λ x176 -> false ) ) ) $ ( x175 ) ) ) ) $ ( if d77 then d147 else false )
        d177 : ( ( Set -> Set ) ∋ ( ( λ x178 -> if true then Bool else x178 ) ) ) $ ( if false then Bool else Bool )
        d177 = if if true then d86 else d128 then if d107 then d41 else d47 else if d136 then false else d131
        d179 : if false then if false then Bool else Bool else if false then Bool else Bool
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if false then d47 else false ) ) ) $ ( if true then d32 else true )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if true then x183 else x183 ) ) ) $ ( if true then Bool else Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> if true then x182 else true ) ) ) $ ( if false then true else true )
        d184 : if false then if true then Bool else Bool else if false then Bool else Bool
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> ( ( Bool -> Bool ) ∋ ( ( λ x186 -> false ) ) ) $ ( false ) ) ) ) $ ( if d155 then false else false )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if true then Bool else x188 ) ) ) $ ( if false then Bool else Bool )
        d187 = if if false then false else true then if d96 then false else true else if true then d18 else true
        d189 : if false then if false then Bool else Bool else if true then Bool else Bool
        d189 = if if d165 then false else true then if d179 then d94 else true else if d103 then d153 else true
        d190 : ( ( Set -> Set ) ∋ ( ( λ x193 -> if false then x193 else x193 ) ) ) $ ( if true then Bool else Bool )
        d190 = ( ( Bool -> Bool ) ∋ ( ( λ x191 -> ( ( Bool -> Bool ) ∋ ( ( λ x192 -> x192 ) ) ) $ ( true ) ) ) ) $ ( if d25 then d41 else d107 )
        d194 : if true then if false then Bool else Bool else if false then Bool else Bool
        d194 = if if false then false else true then if d77 then true else true else if d59 then false else d50
        d195 : ( ( Set -> Set ) ∋ ( ( λ x196 -> if true then Bool else x196 ) ) ) $ ( if false then Bool else Bool )
        d195 = if if d86 then d77 else d184 then if d169 then false else false else if d41 then d129 else d35
        d197 : if false then if false then Bool else Bool else if true then Bool else Bool
        d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> if d174 then d152 else true ) ) ) $ ( if true then false else false )
        d199 : if true then if true then Bool else Bool else if false then Bool else Bool
        d199 = if if d148 then d195 else true then if d189 then false else d133 else if true then true else true
        d200 : ( ( Set -> Set ) ∋ ( ( λ x201 -> ( ( Set -> Set ) ∋ ( ( λ x202 -> x201 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d200 = if if d107 then true else true then if d2 then d104 else false else if true then d140 else d23
        d203 : ( ( Set -> Set ) ∋ ( ( λ x205 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d203 = ( ( Bool -> Bool ) ∋ ( ( λ x204 -> if d111 then true else x204 ) ) ) $ ( if d11 then d55 else false )
        d206 : ( ( Set -> Set ) ∋ ( ( λ x209 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> Bool ) ) ) $ ( x209 ) ) ) ) $ ( if true then Bool else Bool )
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> ( ( Bool -> Bool ) ∋ ( ( λ x208 -> d2 ) ) ) $ ( d187 ) ) ) ) $ ( if false then d152 else true )
        d211 : if false then if true then Bool else Bool else if true then Bool else Bool
        d211 = if if d206 then true else d187 then if d189 then false else d118 else if true then true else d152
        d212 : ( ( Set -> Set ) ∋ ( ( λ x215 -> ( ( Set -> Set ) ∋ ( ( λ x216 -> x215 ) ) ) $ ( x215 ) ) ) ) $ ( if false then Bool else Bool )
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x213 -> ( ( Bool -> Bool ) ∋ ( ( λ x214 -> x214 ) ) ) $ ( x213 ) ) ) ) $ ( if d206 then false else true )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x220 -> ( ( Set -> Set ) ∋ ( ( λ x221 -> x221 ) ) ) $ ( x220 ) ) ) ) $ ( if false then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x218 -> ( ( Bool -> Bool ) ∋ ( ( λ x219 -> x218 ) ) ) $ ( x218 ) ) ) ) $ ( if d61 then d148 else d23 )
        d222 : ( ( Set -> Set ) ∋ ( ( λ x224 -> if false then Bool else x224 ) ) ) $ ( if true then Bool else Bool )
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x223 -> if false then d194 else x223 ) ) ) $ ( if true then true else d29 )
        d225 : ( ( Set -> Set ) ∋ ( ( λ x226 -> ( ( Set -> Set ) ∋ ( ( λ x227 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d225 = if if d114 then true else d148 then if true then false else false else if true then false else false
        d228 : ( ( Set -> Set ) ∋ ( ( λ x229 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d228 = if if d140 then d41 else d194 then if d197 then true else d195 else if d38 then d6 else true
        d230 : if true then if true then Bool else Bool else if false then Bool else Bool
        d230 = if if d71 then true else false then if false then true else d11 else if false then d187 else d228
        d231 : if true then if false then Bool else Bool else if true then Bool else Bool
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x232 -> if x232 then false else false ) ) ) $ ( if d142 then d86 else d140 )
        d233 : if true then if true then Bool else Bool else if false then Bool else Bool
        d233 = if if d103 then true else true then if d47 then true else false else if d25 then true else d29
        d234 : ( ( Set -> Set ) ∋ ( ( λ x235 -> ( ( Set -> Set ) ∋ ( ( λ x236 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d234 = if if true then true else false then if d230 then d153 else d52 else if false then d117 else true
        d237 : ( ( Set -> Set ) ∋ ( ( λ x240 -> ( ( Set -> Set ) ∋ ( ( λ x241 -> x240 ) ) ) $ ( x240 ) ) ) ) $ ( if true then Bool else Bool )
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x238 -> ( ( Bool -> Bool ) ∋ ( ( λ x239 -> true ) ) ) $ ( d181 ) ) ) ) $ ( if false then true else false )
        d242 : ( ( Set -> Set ) ∋ ( ( λ x245 -> ( ( Set -> Set ) ∋ ( ( λ x246 -> Bool ) ) ) $ ( x245 ) ) ) ) $ ( if false then Bool else Bool )
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x243 -> ( ( Bool -> Bool ) ∋ ( ( λ x244 -> x244 ) ) ) $ ( x243 ) ) ) ) $ ( if true then d100 else d41 )
        d247 : if false then if true then Bool else Bool else if true then Bool else Bool
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x248 -> if d100 then x248 else true ) ) ) $ ( if d199 then false else d8 )
        d249 : if false then if false then Bool else Bool else if false then Bool else Bool
        d249 = if if d203 then true else d212 then if d111 then d47 else true else if d41 then d29 else d83
        d250 : if false then if false then Bool else Bool else if false then Bool else Bool
        d250 = if if false then d59 else false then if true then d184 else true else if true then d179 else false
        d251 : if false then if false then Bool else Bool else if true then Bool else Bool
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x252 -> if d50 then false else x252 ) ) ) $ ( if d29 then false else d147 )
        d253 : if false then if false then Bool else Bool else if true then Bool else Bool
        d253 = ( ( Bool -> Bool ) ∋ ( ( λ x254 -> ( ( Bool -> Bool ) ∋ ( ( λ x255 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then false else d154 )
        d256 : if true then if false then Bool else Bool else if false then Bool else Bool
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x257 -> ( ( Bool -> Bool ) ∋ ( ( λ x258 -> d44 ) ) ) $ ( true ) ) ) ) $ ( if false then d97 else d136 )
        d259 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x261 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d259 = if if d103 then d35 else true then if true then false else true else if true then true else false
        d262 : if true then if false then Bool else Bool else if true then Bool else Bool
        d262 = ( ( Bool -> Bool ) ∋ ( ( λ x263 -> ( ( Bool -> Bool ) ∋ ( ( λ x264 -> x263 ) ) ) $ ( true ) ) ) ) $ ( if d65 then d107 else true )
        d265 : if true then if false then Bool else Bool else if false then Bool else Bool
        d265 = if if d29 then d200 else d52 then if false then true else true else if d259 then d125 else d65
        d266 : ( ( Set -> Set ) ∋ ( ( λ x269 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> Bool ) ) ) $ ( x269 ) ) ) ) $ ( if false then Bool else Bool )
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x267 -> ( ( Bool -> Bool ) ∋ ( ( λ x268 -> x267 ) ) ) $ ( true ) ) ) ) $ ( if d262 then true else d2 )
        d271 : ( ( Set -> Set ) ∋ ( ( λ x272 -> if true then x272 else x272 ) ) ) $ ( if true then Bool else Bool )
        d271 = if if true then true else false then if true then d194 else true else if true then d103 else d131
        d273 : if true then if true then Bool else Bool else if false then Bool else Bool
        d273 = ( ( Bool -> Bool ) ∋ ( ( λ x274 -> if d250 then d100 else true ) ) ) $ ( if d174 then false else d228 )
        d275 : if true then if true then Bool else Bool else if false then Bool else Bool
        d275 = if if true then true else true then if true then false else d225 else if true then false else false
        d276 : ( ( Set -> Set ) ∋ ( ( λ x278 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d276 = ( ( Bool -> Bool ) ∋ ( ( λ x277 -> if d266 then false else true ) ) ) $ ( if false then d52 else true )
        d279 : if true then if true then Bool else Bool else if true then Bool else Bool
        d279 = if if d14 then d61 else true then if false then d259 else d77 else if d83 then true else d165
        d280 : ( ( Set -> Set ) ∋ ( ( λ x281 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d280 = if if false then d2 else false then if d14 then true else true else if false then false else d251
        d282 : ( ( Set -> Set ) ∋ ( ( λ x285 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d282 = ( ( Bool -> Bool ) ∋ ( ( λ x283 -> ( ( Bool -> Bool ) ∋ ( ( λ x284 -> d225 ) ) ) $ ( x283 ) ) ) ) $ ( if d271 then d276 else d91 )
        d286 : if false then if true then Bool else Bool else if true then Bool else Bool
        d286 = if if false then d118 else false then if true then d111 else d69 else if d189 then d65 else false
        d287 : ( ( Set -> Set ) ∋ ( ( λ x289 -> ( ( Set -> Set ) ∋ ( ( λ x290 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d287 = ( ( Bool -> Bool ) ∋ ( ( λ x288 -> if false then d206 else false ) ) ) $ ( if d126 then d105 else d233 )
        d291 : if false then if true then Bool else Bool else if true then Bool else Bool
        d291 = if if d125 then true else false then if true then false else d206 else if true then true else d142
        d292 : ( ( Set -> Set ) ∋ ( ( λ x293 -> ( ( Set -> Set ) ∋ ( ( λ x294 -> x294 ) ) ) $ ( x293 ) ) ) ) $ ( if false then Bool else Bool )
        d292 = if if d125 then d199 else true then if false then d59 else d197 else if d6 then false else true
        d295 : ( ( Set -> Set ) ∋ ( ( λ x296 -> ( ( Set -> Set ) ∋ ( ( λ x297 -> x296 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d295 = if if true then true else d126 then if true then false else d262 else if false then false else false
        d298 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if true then x300 else x300 ) ) ) $ ( if true then Bool else Bool )
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x299 -> if x299 then false else x299 ) ) ) $ ( if d69 then false else d242 )
        d301 : ( ( Set -> Set ) ∋ ( ( λ x302 -> ( ( Set -> Set ) ∋ ( ( λ x303 -> Bool ) ) ) $ ( x302 ) ) ) ) $ ( if true then Bool else Bool )
        d301 = if if false then false else d65 then if false then true else d96 else if false then d129 else true
        d304 : if false then if false then Bool else Bool else if true then Bool else Bool
        d304 = if if true then d266 else d206 then if d111 then true else false else if d155 then d271 else d103
        d305 : if false then if true then Bool else Bool else if false then Bool else Bool
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x306 -> if x306 then true else d96 ) ) ) $ ( if true then true else d184 )
        d307 : ( ( Set -> Set ) ∋ ( ( λ x308 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d307 = if if true then false else d131 then if d304 then d187 else d94 else if d6 then d282 else d187
        d309 : if false then if false then Bool else Bool else if true then Bool else Bool
        d309 = if if d47 then false else d291 then if d249 then true else d152 else if true then true else d86
        d310 : if false then if false then Bool else Bool else if false then Bool else Bool
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x311 -> ( ( Bool -> Bool ) ∋ ( ( λ x312 -> d230 ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d313 : ( ( Set -> Set ) ∋ ( ( λ x316 -> ( ( Set -> Set ) ∋ ( ( λ x317 -> Bool ) ) ) $ ( x316 ) ) ) ) $ ( if true then Bool else Bool )
        d313 = ( ( Bool -> Bool ) ∋ ( ( λ x314 -> ( ( Bool -> Bool ) ∋ ( ( λ x315 -> x314 ) ) ) $ ( true ) ) ) ) $ ( if d211 then d23 else true )
        d318 : ( ( Set -> Set ) ∋ ( ( λ x321 -> ( ( Set -> Set ) ∋ ( ( λ x322 -> x322 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d318 = ( ( Bool -> Bool ) ∋ ( ( λ x319 -> ( ( Bool -> Bool ) ∋ ( ( λ x320 -> true ) ) ) $ ( d301 ) ) ) ) $ ( if d291 then d230 else false )
        d323 : if true then if false then Bool else Bool else if true then Bool else Bool
        d323 = ( ( Bool -> Bool ) ∋ ( ( λ x324 -> ( ( Bool -> Bool ) ∋ ( ( λ x325 -> d77 ) ) ) $ ( false ) ) ) ) $ ( if false then d179 else true )
        d326 : if true then if false then Bool else Bool else if true then Bool else Bool
        d326 = if if d271 then d59 else false then if d140 then d184 else true else if true then true else false
        d327 : ( ( Set -> Set ) ∋ ( ( λ x328 -> ( ( Set -> Set ) ∋ ( ( λ x329 -> x329 ) ) ) $ ( x328 ) ) ) ) $ ( if false then Bool else Bool )
        d327 = if if true then d136 else true then if d190 then true else true else if d197 then true else d313
        d330 : ( ( Set -> Set ) ∋ ( ( λ x331 -> ( ( Set -> Set ) ∋ ( ( λ x332 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d330 = if if true then false else d44 then if d304 then d94 else true else if d125 then d25 else d230
        d333 : ( ( Set -> Set ) ∋ ( ( λ x335 -> if true then Bool else x335 ) ) ) $ ( if false then Bool else Bool )
        d333 = ( ( Bool -> Bool ) ∋ ( ( λ x334 -> if d305 then false else x334 ) ) ) $ ( if false then false else false )
        d336 : ( ( Set -> Set ) ∋ ( ( λ x337 -> if false then Bool else x337 ) ) ) $ ( if false then Bool else Bool )
        d336 = if if d181 then false else d273 then if true then true else d237 else if false then false else false
        d338 : if true then if false then Bool else Bool else if true then Bool else Bool
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x339 -> ( ( Bool -> Bool ) ∋ ( ( λ x340 -> true ) ) ) $ ( x339 ) ) ) ) $ ( if d97 then false else d305 )
        d341 : if true then if true then Bool else Bool else if false then Bool else Bool
        d341 = if if true then d91 else d152 then if false then true else d2 else if d307 then false else d94
        d342 : if false then if true then Bool else Bool else if false then Bool else Bool
        d342 = if if d148 then d330 else false then if d265 then d148 else d139 else if d336 then d155 else d291
        d343 : ( ( Set -> Set ) ∋ ( ( λ x344 -> ( ( Set -> Set ) ∋ ( ( λ x345 -> Bool ) ) ) $ ( x344 ) ) ) ) $ ( if true then Bool else Bool )
        d343 = if if true then false else d65 then if d200 then d142 else true else if true then true else d280
        d346 : ( ( Set -> Set ) ∋ ( ( λ x348 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d346 = ( ( Bool -> Bool ) ∋ ( ( λ x347 -> if x347 then x347 else d326 ) ) ) $ ( if false then true else false )
        d349 : if true then if false then Bool else Bool else if false then Bool else Bool
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if x350 then d107 else x350 ) ) ) $ ( if false then d206 else d341 )
        d351 : if false then if false then Bool else Bool else if true then Bool else Bool
        d351 = if if d256 then false else d148 then if false then d67 else true else if true then d159 else d237
        d352 : if true then if false then Bool else Bool else if true then Bool else Bool
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x353 -> ( ( Bool -> Bool ) ∋ ( ( λ x354 -> false ) ) ) $ ( false ) ) ) ) $ ( if d237 then false else true )
        d355 : if false then if false then Bool else Bool else if false then Bool else Bool
        d355 = if if d179 then d77 else d29 then if d318 then false else d233 else if d341 then d103 else true
        d356 : ( ( Set -> Set ) ∋ ( ( λ x357 -> if false then x357 else x357 ) ) ) $ ( if false then Bool else Bool )
        d356 = if if false then false else d271 then if false then true else d217 else if d83 then d169 else d259
        d358 : ( ( Set -> Set ) ∋ ( ( λ x359 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> x359 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d358 = if if false then d212 else d153 then if false then d47 else false else if d137 then false else d279
        d361 : if true then if true then Bool else Bool else if false then Bool else Bool
        d361 = ( ( Bool -> Bool ) ∋ ( ( λ x362 -> ( ( Bool -> Bool ) ∋ ( ( λ x363 -> false ) ) ) $ ( d355 ) ) ) ) $ ( if d117 then false else d8 )
        d364 : if false then if false then Bool else Bool else if true then Bool else Bool
        d364 = if if false then false else false then if d309 then true else d194 else if d228 then true else true
        d365 : if false then if false then Bool else Bool else if false then Bool else Bool
        d365 = if if d333 then false else d41 then if d20 then d211 else true else if d91 then d181 else true
        d366 : if true then if true then Bool else Bool else if false then Bool else Bool
        d366 = ( ( Bool -> Bool ) ∋ ( ( λ x367 -> ( ( Bool -> Bool ) ∋ ( ( λ x368 -> x368 ) ) ) $ ( d1 ) ) ) ) $ ( if true then false else true )
        d369 : ( ( Set -> Set ) ∋ ( ( λ x372 -> if true then Bool else x372 ) ) ) $ ( if true then Bool else Bool )
        d369 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> ( ( Bool -> Bool ) ∋ ( ( λ x371 -> x371 ) ) ) $ ( x370 ) ) ) ) $ ( if d118 then d14 else false )
        d373 : ( ( Set -> Set ) ∋ ( ( λ x374 -> if false then x374 else x374 ) ) ) $ ( if false then Bool else Bool )
        d373 = if if false then true else d181 then if d103 then d365 else false else if false then false else d160
        d375 : ( ( Set -> Set ) ∋ ( ( λ x376 -> ( ( Set -> Set ) ∋ ( ( λ x377 -> x377 ) ) ) $ ( x376 ) ) ) ) $ ( if true then Bool else Bool )
        d375 = if if d298 then d25 else d327 then if false then true else false else if true then d356 else false
        d378 : ( ( Set -> Set ) ∋ ( ( λ x380 -> ( ( Set -> Set ) ∋ ( ( λ x381 -> Bool ) ) ) $ ( x380 ) ) ) ) $ ( if true then Bool else Bool )
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x379 -> if x379 then x379 else false ) ) ) $ ( if d50 then true else false )
        d382 : ( ( Set -> Set ) ∋ ( ( λ x383 -> ( ( Set -> Set ) ∋ ( ( λ x384 -> x384 ) ) ) $ ( x383 ) ) ) ) $ ( if true then Bool else Bool )
        d382 = if if d228 then d154 else d242 then if d159 then true else d160 else if false then d35 else true
        d385 : if false then if false then Bool else Bool else if true then Bool else Bool
        d385 = if if d365 then d179 else false then if false then d361 else true else if true then d2 else d179
        d386 : ( ( Set -> Set ) ∋ ( ( λ x389 -> if true then Bool else x389 ) ) ) $ ( if false then Bool else Bool )
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x387 -> ( ( Bool -> Bool ) ∋ ( ( λ x388 -> false ) ) ) $ ( d131 ) ) ) ) $ ( if true then d187 else false )
        d390 : if false then if true then Bool else Bool else if true then Bool else Bool
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x391 -> ( ( Bool -> Bool ) ∋ ( ( λ x392 -> false ) ) ) $ ( x391 ) ) ) ) $ ( if true then false else d50 )
        d393 : if true then if false then Bool else Bool else if true then Bool else Bool
        d393 = ( ( Bool -> Bool ) ∋ ( ( λ x394 -> if true then false else x394 ) ) ) $ ( if d104 then false else d83 )
        d395 : ( ( Set -> Set ) ∋ ( ( λ x398 -> ( ( Set -> Set ) ∋ ( ( λ x399 -> Bool ) ) ) $ ( x398 ) ) ) ) $ ( if true then Bool else Bool )
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x396 -> ( ( Bool -> Bool ) ∋ ( ( λ x397 -> x397 ) ) ) $ ( d390 ) ) ) ) $ ( if false then false else true )
        d400 : if false then if true then Bool else Bool else if false then Bool else Bool
        d400 = if if d50 then d177 else true then if d265 then false else true else if d104 then true else false
        d401 : ( ( Set -> Set ) ∋ ( ( λ x402 -> ( ( Set -> Set ) ∋ ( ( λ x403 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d401 = if if false then d189 else false then if false then d94 else d341 else if false then true else false
        d404 : if true then if false then Bool else Bool else if false then Bool else Bool
        d404 = ( ( Bool -> Bool ) ∋ ( ( λ x405 -> if d159 then true else true ) ) ) $ ( if false then d152 else true )
        d406 : if true then if false then Bool else Bool else if false then Bool else Bool
        d406 = if if d59 then d309 else d50 then if d291 then false else d67 else if d292 then d103 else d313
        d407 : ( ( Set -> Set ) ∋ ( ( λ x408 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d407 = if if d155 then d140 else d69 then if false then d366 else d1 else if true then d279 else true
        d409 : if false then if true then Bool else Bool else if true then Bool else Bool
        d409 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> ( ( Bool -> Bool ) ∋ ( ( λ x411 -> d206 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d412 : if true then if true then Bool else Bool else if false then Bool else Bool
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x413 -> if x413 then x413 else true ) ) ) $ ( if d265 then false else d65 )
        d414 : ( ( Set -> Set ) ∋ ( ( λ x416 -> if true then x416 else Bool ) ) ) $ ( if false then Bool else Bool )
        d414 = ( ( Bool -> Bool ) ∋ ( ( λ x415 -> if x415 then x415 else x415 ) ) ) $ ( if false then false else true )
        d417 : ( ( Set -> Set ) ∋ ( ( λ x419 -> if true then x419 else x419 ) ) ) $ ( if true then Bool else Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x418 -> if d10 then d1 else d373 ) ) ) $ ( if false then d366 else true )
        d420 : if true then if true then Bool else Bool else if false then Bool else Bool
        d420 = ( ( Bool -> Bool ) ∋ ( ( λ x421 -> ( ( Bool -> Bool ) ∋ ( ( λ x422 -> d55 ) ) ) $ ( d407 ) ) ) ) $ ( if false then false else d358 )
        d423 : if true then if true then Bool else Bool else if true then Bool else Bool
        d423 = ( ( Bool -> Bool ) ∋ ( ( λ x424 -> ( ( Bool -> Bool ) ∋ ( ( λ x425 -> d406 ) ) ) $ ( x424 ) ) ) ) $ ( if true then true else d91 )
        d426 : if false then if false then Bool else Bool else if true then Bool else Bool
        d426 = ( ( Bool -> Bool ) ∋ ( ( λ x427 -> ( ( Bool -> Bool ) ∋ ( ( λ x428 -> d104 ) ) ) $ ( d139 ) ) ) ) $ ( if false then d159 else d96 )
        d429 : if true then if false then Bool else Bool else if true then Bool else Bool
        d429 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if true then d309 else d393 ) ) ) $ ( if d271 then true else d365 )
        d431 : if true then if false then Bool else Bool else if true then Bool else Bool
        d431 = if if d310 then true else d11 then if true then false else false else if d310 then d382 else d197
        d432 : ( ( Set -> Set ) ∋ ( ( λ x435 -> if false then x435 else Bool ) ) ) $ ( if false then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x433 -> ( ( Bool -> Bool ) ∋ ( ( λ x434 -> x434 ) ) ) $ ( x433 ) ) ) ) $ ( if d211 then true else true )
        d436 : if true then if true then Bool else Bool else if false then Bool else Bool
        d436 = ( ( Bool -> Bool ) ∋ ( ( λ x437 -> ( ( Bool -> Bool ) ∋ ( ( λ x438 -> d333 ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
        d439 : ( ( Set -> Set ) ∋ ( ( λ x442 -> ( ( Set -> Set ) ∋ ( ( λ x443 -> x443 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d439 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x441 -> d222 ) ) ) $ ( x440 ) ) ) ) $ ( if true then true else true )
        d444 : if false then if false then Bool else Bool else if true then Bool else Bool
        d444 = ( ( Bool -> Bool ) ∋ ( ( λ x445 -> ( ( Bool -> Bool ) ∋ ( ( λ x446 -> x445 ) ) ) $ ( false ) ) ) ) $ ( if true then d38 else false )
        d447 : if false then if true then Bool else Bool else if false then Bool else Bool
        d447 = ( ( Bool -> Bool ) ∋ ( ( λ x448 -> ( ( Bool -> Bool ) ∋ ( ( λ x449 -> x448 ) ) ) $ ( x448 ) ) ) ) $ ( if false then false else true )
        d450 : ( ( Set -> Set ) ∋ ( ( λ x452 -> if false then x452 else Bool ) ) ) $ ( if false then Bool else Bool )
        d450 = ( ( Bool -> Bool ) ∋ ( ( λ x451 -> if d266 then d44 else d228 ) ) ) $ ( if true then d273 else d153 )
        d453 : if true then if false then Bool else Bool else if false then Bool else Bool
        d453 = if if d341 then false else true then if d103 then d11 else d1 else if false then d18 else false
        d454 : if false then if true then Bool else Bool else if false then Bool else Bool
        d454 = if if true then d338 else false then if d417 then true else true else if false then d200 else false
        d455 : ( ( Set -> Set ) ∋ ( ( λ x456 -> ( ( Set -> Set ) ∋ ( ( λ x457 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d455 = if if d105 then true else false then if false then false else false else if d287 then d179 else d409
        d458 : ( ( Set -> Set ) ∋ ( ( λ x459 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d458 = if if true then true else d55 then if d203 then d38 else false else if d326 then d136 else true
        d460 : if false then if true then Bool else Bool else if true then Bool else Bool
        d460 = if if d121 then d96 else d2 then if true then d336 else d237 else if false then true else true
        d461 : ( ( Set -> Set ) ∋ ( ( λ x463 -> if false then Bool else x463 ) ) ) $ ( if false then Bool else Bool )
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x462 -> if x462 then x462 else d107 ) ) ) $ ( if true then d103 else false )
        d464 : if true then if true then Bool else Bool else if true then Bool else Bool
        d464 = if if false then d14 else d351 then if d273 then true else d338 else if d107 then d249 else d423
        d465 : ( ( Set -> Set ) ∋ ( ( λ x466 -> if false then Bool else x466 ) ) ) $ ( if true then Bool else Bool )
        d465 = if if d464 then d77 else true then if d342 then d139 else d378 else if true then d97 else true
        d467 : if true then if false then Bool else Bool else if true then Bool else Bool
        d467 = ( ( Bool -> Bool ) ∋ ( ( λ x468 -> ( ( Bool -> Bool ) ∋ ( ( λ x469 -> x469 ) ) ) $ ( true ) ) ) ) $ ( if true then d154 else d365 )
        d470 : ( ( Set -> Set ) ∋ ( ( λ x473 -> ( ( Set -> Set ) ∋ ( ( λ x474 -> x473 ) ) ) $ ( x473 ) ) ) ) $ ( if true then Bool else Bool )
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x471 -> ( ( Bool -> Bool ) ∋ ( ( λ x472 -> d206 ) ) ) $ ( true ) ) ) ) $ ( if d429 then d199 else true )
        d475 : ( ( Set -> Set ) ∋ ( ( λ x476 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d475 = if if false then true else true then if true then false else false else if d47 then true else true
        d477 : ( ( Set -> Set ) ∋ ( ( λ x479 -> ( ( Set -> Set ) ∋ ( ( λ x480 -> x479 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d477 = ( ( Bool -> Bool ) ∋ ( ( λ x478 -> if true then x478 else d222 ) ) ) $ ( if d152 then true else d356 )
        d481 : ( ( Set -> Set ) ∋ ( ( λ x483 -> if false then x483 else x483 ) ) ) $ ( if false then Bool else Bool )
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x482 -> if x482 then x482 else true ) ) ) $ ( if true then d242 else d47 )
        d484 : ( ( Set -> Set ) ∋ ( ( λ x487 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x485 -> ( ( Bool -> Bool ) ∋ ( ( λ x486 -> d142 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d280 )
        d488 : if false then if true then Bool else Bool else if true then Bool else Bool
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x489 -> ( ( Bool -> Bool ) ∋ ( ( λ x490 -> true ) ) ) $ ( d249 ) ) ) ) $ ( if true then d8 else d69 )
        d491 : if false then if true then Bool else Bool else if false then Bool else Bool
        d491 = if if d83 then d249 else d439 then if true then d111 else d364 else if d77 then false else d407
        d492 : if false then if false then Bool else Bool else if true then Bool else Bool
        d492 = ( ( Bool -> Bool ) ∋ ( ( λ x493 -> if false then d298 else x493 ) ) ) $ ( if true then d174 else d460 )
        d494 : if false then if false then Bool else Bool else if true then Bool else Bool
        d494 = if if d280 then d338 else d129 then if true then false else d286 else if true then true else d467
        d495 : if false then if false then Bool else Bool else if false then Bool else Bool
        d495 = ( ( Bool -> Bool ) ∋ ( ( λ x496 -> if x496 then d492 else x496 ) ) ) $ ( if d231 then false else false )
        d497 : ( ( Set -> Set ) ∋ ( ( λ x499 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x498 -> if true then d228 else d454 ) ) ) $ ( if true then d343 else d50 )
        d500 : ( ( Set -> Set ) ∋ ( ( λ x501 -> ( ( Set -> Set ) ∋ ( ( λ x502 -> x502 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d500 = if if d318 then d406 else d295 then if d385 then false else d234 else if d349 then d495 else d280
        d503 : ( ( Set -> Set ) ∋ ( ( λ x504 -> ( ( Set -> Set ) ∋ ( ( λ x505 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d503 = if if d447 then false else d35 then if d444 then d154 else d458 else if d181 then true else d338
        d506 : if true then if false then Bool else Bool else if false then Bool else Bool
        d506 = ( ( Bool -> Bool ) ∋ ( ( λ x507 -> ( ( Bool -> Bool ) ∋ ( ( λ x508 -> x508 ) ) ) $ ( x507 ) ) ) ) $ ( if d55 then d470 else false )
        d509 : ( ( Set -> Set ) ∋ ( ( λ x512 -> ( ( Set -> Set ) ∋ ( ( λ x513 -> x513 ) ) ) $ ( x512 ) ) ) ) $ ( if false then Bool else Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> ( ( Bool -> Bool ) ∋ ( ( λ x511 -> true ) ) ) $ ( d107 ) ) ) ) $ ( if d25 then d38 else false )
        d514 : ( ( Set -> Set ) ∋ ( ( λ x515 -> ( ( Set -> Set ) ∋ ( ( λ x516 -> Bool ) ) ) $ ( x515 ) ) ) ) $ ( if true then Bool else Bool )
        d514 = if if d73 then d431 else d35 then if d375 then false else true else if d382 then d231 else d117
        d517 : ( ( Set -> Set ) ∋ ( ( λ x519 -> ( ( Set -> Set ) ∋ ( ( λ x520 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x518 -> if x518 then x518 else true ) ) ) $ ( if d234 then d305 else true )
        d521 : if true then if true then Bool else Bool else if true then Bool else Bool
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x522 -> ( ( Bool -> Bool ) ∋ ( ( λ x523 -> d390 ) ) ) $ ( d327 ) ) ) ) $ ( if false then d103 else false )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x527 -> if true then x527 else x527 ) ) ) $ ( if false then Bool else Bool )
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x525 -> ( ( Bool -> Bool ) ∋ ( ( λ x526 -> x525 ) ) ) $ ( false ) ) ) ) $ ( if false then d2 else false )
        d528 : if false then if false then Bool else Bool else if true then Bool else Bool
        d528 = if if d365 then true else false then if d103 then true else true else if true then true else d465
        d529 : ( ( Set -> Set ) ∋ ( ( λ x530 -> ( ( Set -> Set ) ∋ ( ( λ x531 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d529 = if if d228 then false else d503 then if false then d400 else true else if true then d497 else d152
        d532 : if true then if true then Bool else Bool else if false then Bool else Bool
        d532 = if if d503 then d111 else d404 then if d199 then d291 else false else if d382 then d409 else d470
        d533 : ( ( Set -> Set ) ∋ ( ( λ x534 -> ( ( Set -> Set ) ∋ ( ( λ x535 -> x534 ) ) ) $ ( x534 ) ) ) ) $ ( if false then Bool else Bool )
        d533 = if if d234 then d177 else d279 then if d382 then false else true else if d395 then d364 else true
        d536 : ( ( Set -> Set ) ∋ ( ( λ x539 -> ( ( Set -> Set ) ∋ ( ( λ x540 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d536 = ( ( Bool -> Bool ) ∋ ( ( λ x537 -> ( ( Bool -> Bool ) ∋ ( ( λ x538 -> x537 ) ) ) $ ( x537 ) ) ) ) $ ( if true then true else d275 )
        d541 : ( ( Set -> Set ) ∋ ( ( λ x543 -> ( ( Set -> Set ) ∋ ( ( λ x544 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d541 = ( ( Bool -> Bool ) ∋ ( ( λ x542 -> if false then x542 else d262 ) ) ) $ ( if true then false else d407 )
        d545 : ( ( Set -> Set ) ∋ ( ( λ x546 -> if true then Bool else x546 ) ) ) $ ( if true then Bool else Bool )
        d545 = if if d330 then d184 else d470 then if d450 then d454 else false else if d295 then true else true
        d547 : if true then if true then Bool else Bool else if true then Bool else Bool
        d547 = ( ( Bool -> Bool ) ∋ ( ( λ x548 -> ( ( Bool -> Bool ) ∋ ( ( λ x549 -> x548 ) ) ) $ ( x548 ) ) ) ) $ ( if d73 then d475 else true )
        d550 : ( ( Set -> Set ) ∋ ( ( λ x551 -> if false then Bool else x551 ) ) ) $ ( if false then Bool else Bool )
        d550 = if if d330 then true else d44 then if true then d461 else d38 else if d67 then d282 else d323
        d552 : if false then if true then Bool else Bool else if false then Bool else Bool
        d552 = if if true then d450 else false then if d291 then d91 else d262 else if false then true else d453
        d553 : ( ( Set -> Set ) ∋ ( ( λ x554 -> ( ( Set -> Set ) ∋ ( ( λ x555 -> Bool ) ) ) $ ( x554 ) ) ) ) $ ( if false then Bool else Bool )
        d553 = if if d80 then true else false then if d401 then d2 else false else if d96 then d250 else d390
        d556 : ( ( Set -> Set ) ∋ ( ( λ x559 -> ( ( Set -> Set ) ∋ ( ( λ x560 -> x560 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x557 -> ( ( Bool -> Bool ) ∋ ( ( λ x558 -> d385 ) ) ) $ ( false ) ) ) ) $ ( if true then d304 else d165 )
        d561 : if true then if true then Bool else Bool else if true then Bool else Bool
        d561 = ( ( Bool -> Bool ) ∋ ( ( λ x562 -> if true then d495 else d20 ) ) ) $ ( if d514 then d159 else d375 )
        d563 : ( ( Set -> Set ) ∋ ( ( λ x566 -> if true then x566 else Bool ) ) ) $ ( if false then Bool else Bool )
        d563 = ( ( Bool -> Bool ) ∋ ( ( λ x564 -> ( ( Bool -> Bool ) ∋ ( ( λ x565 -> d305 ) ) ) $ ( d184 ) ) ) ) $ ( if d107 then true else d323 )
        d567 : ( ( Set -> Set ) ∋ ( ( λ x568 -> ( ( Set -> Set ) ∋ ( ( λ x569 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d567 = if if d61 then false else d280 then if false then d494 else d280 else if d103 then d455 else true
        d570 : if false then if true then Bool else Bool else if false then Bool else Bool
        d570 = if if true then d25 else d366 then if false then d298 else d111 else if false then false else d495
        d571 : if true then if false then Bool else Bool else if false then Bool else Bool
        d571 = ( ( Bool -> Bool ) ∋ ( ( λ x572 -> ( ( Bool -> Bool ) ∋ ( ( λ x573 -> x572 ) ) ) $ ( d140 ) ) ) ) $ ( if false then false else false )
        d574 : if true then if true then Bool else Bool else if true then Bool else Bool
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x575 -> if x575 then false else true ) ) ) $ ( if true then d431 else true )
        d576 : ( ( Set -> Set ) ∋ ( ( λ x577 -> if true then Bool else x577 ) ) ) $ ( if true then Bool else Bool )
        d576 = if if false then false else false then if false then true else false else if false then d439 else false
        d578 : if true then if true then Bool else Bool else if false then Bool else Bool
        d578 = if if true then true else true then if false then false else d467 else if false then d139 else d217
        d579 : if false then if true then Bool else Bool else if true then Bool else Bool
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> if false then x580 else d287 ) ) ) $ ( if false then d287 else d481 )
        d581 : ( ( Set -> Set ) ∋ ( ( λ x584 -> ( ( Set -> Set ) ∋ ( ( λ x585 -> x585 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d581 = ( ( Bool -> Bool ) ∋ ( ( λ x582 -> ( ( Bool -> Bool ) ∋ ( ( λ x583 -> false ) ) ) $ ( d114 ) ) ) ) $ ( if false then d532 else d14 )
        d586 : ( ( Set -> Set ) ∋ ( ( λ x589 -> ( ( Set -> Set ) ∋ ( ( λ x590 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d586 = ( ( Bool -> Bool ) ∋ ( ( λ x587 -> ( ( Bool -> Bool ) ∋ ( ( λ x588 -> x587 ) ) ) $ ( d488 ) ) ) ) $ ( if d6 then d454 else d310 )
        d591 : if true then if true then Bool else Bool else if false then Bool else Bool
        d591 = ( ( Bool -> Bool ) ∋ ( ( λ x592 -> if x592 then x592 else x592 ) ) ) $ ( if false then true else false )
        d593 : ( ( Set -> Set ) ∋ ( ( λ x596 -> ( ( Set -> Set ) ∋ ( ( λ x597 -> Bool ) ) ) $ ( x596 ) ) ) ) $ ( if true then Bool else Bool )
        d593 = ( ( Bool -> Bool ) ∋ ( ( λ x594 -> ( ( Bool -> Bool ) ∋ ( ( λ x595 -> true ) ) ) $ ( x594 ) ) ) ) $ ( if d401 then true else false )
        d598 : ( ( Set -> Set ) ∋ ( ( λ x599 -> if true then x599 else x599 ) ) ) $ ( if true then Bool else Bool )
        d598 = if if d83 then false else false then if false then false else false else if d142 then d2 else d159
        d600 : if true then if true then Bool else Bool else if true then Bool else Bool
        d600 = ( ( Bool -> Bool ) ∋ ( ( λ x601 -> ( ( Bool -> Bool ) ∋ ( ( λ x602 -> x602 ) ) ) $ ( true ) ) ) ) $ ( if d211 then false else true )
        d603 : if false then if false then Bool else Bool else if false then Bool else Bool
        d603 = if if d199 then true else d276 then if true then true else true else if false then true else d310
        d604 : ( ( Set -> Set ) ∋ ( ( λ x605 -> ( ( Set -> Set ) ∋ ( ( λ x606 -> x606 ) ) ) $ ( x605 ) ) ) ) $ ( if false then Bool else Bool )
        d604 = if if d532 then d491 else d600 then if d364 then false else true else if false then d147 else d356
        d607 : ( ( Set -> Set ) ∋ ( ( λ x610 -> ( ( Set -> Set ) ∋ ( ( λ x611 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d607 = ( ( Bool -> Bool ) ∋ ( ( λ x608 -> ( ( Bool -> Bool ) ∋ ( ( λ x609 -> x608 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d552 )
        d612 : ( ( Set -> Set ) ∋ ( ( λ x614 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d612 = ( ( Bool -> Bool ) ∋ ( ( λ x613 -> if x613 then x613 else false ) ) ) $ ( if d464 then true else d251 )
        d615 : ( ( Set -> Set ) ∋ ( ( λ x616 -> ( ( Set -> Set ) ∋ ( ( λ x617 -> x616 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d615 = if if d287 then false else d579 then if false then d494 else d346 else if d121 then false else false
        d618 : if false then if true then Bool else Bool else if true then Bool else Bool
        d618 = if if false then false else true then if true then false else d69 else if false then d225 else false
        d619 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if true then Bool else x620 ) ) ) $ ( if false then Bool else Bool )
        d619 = if if true then false else d455 then if true then true else true else if d454 then d298 else d35
        d621 : if false then if true then Bool else Bool else if false then Bool else Bool
        d621 = if if true then d426 else false then if d65 then d103 else true else if true then false else d615
        d622 : ( ( Set -> Set ) ∋ ( ( λ x623 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d622 = if if true then d195 else d497 then if false then false else false else if true then d234 else true
        d624 : ( ( Set -> Set ) ∋ ( ( λ x626 -> ( ( Set -> Set ) ∋ ( ( λ x627 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d624 = ( ( Bool -> Bool ) ∋ ( ( λ x625 -> if d117 then d249 else false ) ) ) $ ( if d529 then true else false )
        d628 : ( ( Set -> Set ) ∋ ( ( λ x629 -> if true then x629 else x629 ) ) ) $ ( if false then Bool else Bool )
        d628 = if if d369 then d604 else d417 then if true then d140 else d494 else if true then true else true
        d630 : ( ( Set -> Set ) ∋ ( ( λ x631 -> if true then x631 else x631 ) ) ) $ ( if true then Bool else Bool )
        d630 = if if true then d307 else d280 then if d222 then false else d287 else if d298 then true else d8
        d632 : if true then if false then Bool else Bool else if false then Bool else Bool
        d632 = ( ( Bool -> Bool ) ∋ ( ( λ x633 -> ( ( Bool -> Bool ) ∋ ( ( λ x634 -> d203 ) ) ) $ ( x633 ) ) ) ) $ ( if false then false else d550 )
        d635 : if true then if true then Bool else Bool else if true then Bool else Bool
        d635 = ( ( Bool -> Bool ) ∋ ( ( λ x636 -> if x636 then d571 else d400 ) ) ) $ ( if false then false else d495 )
        d637 : ( ( Set -> Set ) ∋ ( ( λ x638 -> if false then Bool else x638 ) ) ) $ ( if true then Bool else Bool )
        d637 = if if d407 then d160 else d567 then if d352 then false else false else if d107 then d338 else true
        d639 : ( ( Set -> Set ) ∋ ( ( λ x640 -> if true then x640 else Bool ) ) ) $ ( if true then Bool else Bool )
        d639 = if if d203 then d262 else d301 then if true then true else d154 else if false then d190 else d351
        d641 : ( ( Set -> Set ) ∋ ( ( λ x643 -> ( ( Set -> Set ) ∋ ( ( λ x644 -> Bool ) ) ) $ ( x643 ) ) ) ) $ ( if true then Bool else Bool )
        d641 = ( ( Bool -> Bool ) ∋ ( ( λ x642 -> if d247 then d393 else d203 ) ) ) $ ( if d506 then d29 else d52 )
        d645 : ( ( Set -> Set ) ∋ ( ( λ x646 -> if false then x646 else Bool ) ) ) $ ( if true then Bool else Bool )
        d645 = if if d197 then d514 else false then if d105 then true else false else if d304 then false else true
        d647 : if true then if true then Bool else Bool else if true then Bool else Bool
        d647 = ( ( Bool -> Bool ) ∋ ( ( λ x648 -> if true then d203 else false ) ) ) $ ( if d574 then d524 else true )
        d649 : ( ( Set -> Set ) ∋ ( ( λ x651 -> if false then Bool else x651 ) ) ) $ ( if false then Bool else Bool )
        d649 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> if x650 then d426 else x650 ) ) ) $ ( if d100 then true else true )
        d652 : if true then if false then Bool else Bool else if false then Bool else Bool
        d652 = ( ( Bool -> Bool ) ∋ ( ( λ x653 -> if d436 then x653 else true ) ) ) $ ( if true then d203 else false )
        d654 : if true then if true then Bool else Bool else if true then Bool else Bool
        d654 = ( ( Bool -> Bool ) ∋ ( ( λ x655 -> if false then d52 else d313 ) ) ) $ ( if true then false else true )
        d656 : if false then if true then Bool else Bool else if true then Bool else Bool
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x657 -> ( ( Bool -> Bool ) ∋ ( ( λ x658 -> x658 ) ) ) $ ( x657 ) ) ) ) $ ( if false then d470 else d20 )
        d659 : if true then if false then Bool else Bool else if true then Bool else Bool
        d659 = if if true then d200 else d624 then if d346 then true else false else if true then true else true
        d660 : if true then if true then Bool else Bool else if true then Bool else Bool
        d660 = ( ( Bool -> Bool ) ∋ ( ( λ x661 -> ( ( Bool -> Bool ) ∋ ( ( λ x662 -> x662 ) ) ) $ ( d94 ) ) ) ) $ ( if true then d365 else false )
        d663 : ( ( Set -> Set ) ∋ ( ( λ x664 -> if false then x664 else Bool ) ) ) $ ( if true then Bool else Bool )
        d663 = if if d481 then d533 else false then if d117 then d553 else d23 else if d536 then d129 else d225
        d665 : ( ( Set -> Set ) ∋ ( ( λ x666 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d665 = if if d148 then true else true then if d2 then true else d96 else if true then d461 else d282
        d667 : ( ( Set -> Set ) ∋ ( ( λ x669 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d667 = ( ( Bool -> Bool ) ∋ ( ( λ x668 -> if true then true else d125 ) ) ) $ ( if true then d77 else d492 )
        d670 : if false then if false then Bool else Bool else if false then Bool else Bool
        d670 = if if true then false else d591 then if false then true else d44 else if true then d128 else true
        d671 : ( ( Set -> Set ) ∋ ( ( λ x674 -> ( ( Set -> Set ) ∋ ( ( λ x675 -> x674 ) ) ) $ ( x674 ) ) ) ) $ ( if true then Bool else Bool )
        d671 = ( ( Bool -> Bool ) ∋ ( ( λ x672 -> ( ( Bool -> Bool ) ∋ ( ( λ x673 -> true ) ) ) $ ( false ) ) ) ) $ ( if d259 then d591 else d197 )
        d676 : if true then if false then Bool else Bool else if true then Bool else Bool
        d676 = ( ( Bool -> Bool ) ∋ ( ( λ x677 -> ( ( Bool -> Bool ) ∋ ( ( λ x678 -> x677 ) ) ) $ ( d309 ) ) ) ) $ ( if true then d273 else d593 )
        d679 : ( ( Set -> Set ) ∋ ( ( λ x680 -> ( ( Set -> Set ) ∋ ( ( λ x681 -> Bool ) ) ) $ ( x680 ) ) ) ) $ ( if true then Bool else Bool )
        d679 = if if d401 then d630 else false then if d417 then true else true else if d553 then true else d32
        d682 : ( ( Set -> Set ) ∋ ( ( λ x685 -> ( ( Set -> Set ) ∋ ( ( λ x686 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d682 = ( ( Bool -> Bool ) ∋ ( ( λ x683 -> ( ( Bool -> Bool ) ∋ ( ( λ x684 -> d256 ) ) ) $ ( x683 ) ) ) ) $ ( if d55 then d619 else true )
        d687 : ( ( Set -> Set ) ∋ ( ( λ x688 -> ( ( Set -> Set ) ∋ ( ( λ x689 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d687 = if if d579 then d545 else false then if false then true else d206 else if true then d591 else false
        d690 : ( ( Set -> Set ) ∋ ( ( λ x691 -> ( ( Set -> Set ) ∋ ( ( λ x692 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d690 = if if d211 then true else true then if false then d364 else d67 else if d165 then d630 else true
        d693 : ( ( Set -> Set ) ∋ ( ( λ x694 -> ( ( Set -> Set ) ∋ ( ( λ x695 -> Bool ) ) ) $ ( x694 ) ) ) ) $ ( if false then Bool else Bool )
        d693 = if if false then false else d454 then if true then true else d52 else if d532 then true else d373
        d696 : ( ( Set -> Set ) ∋ ( ( λ x697 -> ( ( Set -> Set ) ∋ ( ( λ x698 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d696 = if if d52 then d292 else true then if false then d670 else d517 else if d464 then d654 else true
        d699 : if true then if false then Bool else Bool else if true then Bool else Bool
        d699 = if if false then false else true then if false then true else d231 else if true then true else d59
        d700 : ( ( Set -> Set ) ∋ ( ( λ x701 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d700 = if if true then d61 else d273 then if d676 then d637 else d645 else if d142 then d32 else d280
        d702 : if true then if true then Bool else Bool else if true then Bool else Bool
        d702 = if if true then false else d111 then if d94 then false else d117 else if false then true else d576
        d703 : if true then if true then Bool else Bool else if true then Bool else Bool
        d703 = ( ( Bool -> Bool ) ∋ ( ( λ x704 -> ( ( Bool -> Bool ) ∋ ( ( λ x705 -> d621 ) ) ) $ ( d114 ) ) ) ) $ ( if d579 then false else d20 )
        d706 : if true then if true then Bool else Bool else if false then Bool else Bool
        d706 = ( ( Bool -> Bool ) ∋ ( ( λ x707 -> ( ( Bool -> Bool ) ∋ ( ( λ x708 -> true ) ) ) $ ( x707 ) ) ) ) $ ( if true then false else d117 )
        d709 : if true then if false then Bool else Bool else if false then Bool else Bool
        d709 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( ( Bool -> Bool ) ∋ ( ( λ x711 -> d576 ) ) ) $ ( x710 ) ) ) ) $ ( if true then false else false )
        d712 : if true then if true then Bool else Bool else if false then Bool else Bool
        d712 = ( ( Bool -> Bool ) ∋ ( ( λ x713 -> if false then x713 else x713 ) ) ) $ ( if true then false else d484 )
        d714 : ( ( Set -> Set ) ∋ ( ( λ x715 -> if true then Bool else x715 ) ) ) $ ( if true then Bool else Bool )
        d714 = if if false then d654 else true then if true then d529 else d663 else if d553 then true else d273
        d716 : if false then if true then Bool else Bool else if true then Bool else Bool
        d716 = if if d647 then false else d552 then if d358 then d521 else d465 else if false then true else false
        d717 : if true then if false then Bool else Bool else if true then Bool else Bool
        d717 = ( ( Bool -> Bool ) ∋ ( ( λ x718 -> if false then x718 else x718 ) ) ) $ ( if true then d406 else true )
        d719 : ( ( Set -> Set ) ∋ ( ( λ x722 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d719 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> ( ( Bool -> Bool ) ∋ ( ( λ x721 -> d491 ) ) ) $ ( d197 ) ) ) ) $ ( if d266 then false else false )
        d723 : if false then if true then Bool else Bool else if true then Bool else Bool
        d723 = ( ( Bool -> Bool ) ∋ ( ( λ x724 -> if d702 then d453 else d385 ) ) ) $ ( if false then d687 else true )
        d725 : ( ( Set -> Set ) ∋ ( ( λ x726 -> ( ( Set -> Set ) ∋ ( ( λ x727 -> x727 ) ) ) $ ( x726 ) ) ) ) $ ( if false then Bool else Bool )
        d725 = if if d301 then d160 else d529 then if false then d259 else d607 else if true then d291 else d420
        d728 : if false then if false then Bool else Bool else if true then Bool else Bool
        d728 = ( ( Bool -> Bool ) ∋ ( ( λ x729 -> ( ( Bool -> Bool ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( x729 ) ) ) ) $ ( if false then d706 else d390 )
        d731 : ( ( Set -> Set ) ∋ ( ( λ x734 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d731 = ( ( Bool -> Bool ) ∋ ( ( λ x732 -> ( ( Bool -> Bool ) ∋ ( ( λ x733 -> d639 ) ) ) $ ( x732 ) ) ) ) $ ( if d385 then false else d719 )
        d735 : if true then if false then Bool else Bool else if true then Bool else Bool
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x736 -> if d47 then false else d702 ) ) ) $ ( if d341 then d682 else d333 )
        d737 : ( ( Set -> Set ) ∋ ( ( λ x739 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d737 = ( ( Bool -> Bool ) ∋ ( ( λ x738 -> if d199 then true else x738 ) ) ) $ ( if false then true else d417 )
        d741 : if false then if true then Bool else Bool else if false then Bool else Bool
        d741 = if if d406 then d385 else d635 then if d528 then d603 else true else if d147 then d628 else true
        d742 : ( ( Set -> Set ) ∋ ( ( λ x743 -> if true then Bool else x743 ) ) ) $ ( if false then Bool else Bool )
        d742 = if if d409 then d327 else false then if d20 then d659 else true else if d32 then d96 else d358
        d744 : ( ( Set -> Set ) ∋ ( ( λ x745 -> ( ( Set -> Set ) ∋ ( ( λ x746 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d744 = if if true then d23 else d352 then if d65 then d181 else false else if d1 then false else d742
        d747 : ( ( Set -> Set ) ∋ ( ( λ x748 -> ( ( Set -> Set ) ∋ ( ( λ x749 -> x748 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d747 = if if true then d488 else true then if d23 then d593 else d189 else if true then true else d194
        d750 : if true then if true then Bool else Bool else if true then Bool else Bool
        d750 = ( ( Bool -> Bool ) ∋ ( ( λ x751 -> ( ( Bool -> Bool ) ∋ ( ( λ x752 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d292 else true )
        d753 : ( ( Set -> Set ) ∋ ( ( λ x756 -> if false then x756 else x756 ) ) ) $ ( if true then Bool else Bool )
        d753 = ( ( Bool -> Bool ) ∋ ( ( λ x754 -> ( ( Bool -> Bool ) ∋ ( ( λ x755 -> false ) ) ) $ ( d647 ) ) ) ) $ ( if d313 then false else false )
        d757 : ( ( Set -> Set ) ∋ ( ( λ x759 -> ( ( Set -> Set ) ∋ ( ( λ x760 -> Bool ) ) ) $ ( x759 ) ) ) ) $ ( if true then Bool else Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x758 -> if false then x758 else x758 ) ) ) $ ( if false then true else true )
        d761 : ( ( Set -> Set ) ∋ ( ( λ x763 -> if true then x763 else Bool ) ) ) $ ( if true then Bool else Bool )
        d761 = ( ( Bool -> Bool ) ∋ ( ( λ x762 -> if d107 then x762 else d470 ) ) ) $ ( if true then d169 else true )
        d764 : if true then if true then Bool else Bool else if true then Bool else Bool
        d764 = if if true then true else d10 then if true then true else true else if false then d189 else true
        d765 : ( ( Set -> Set ) ∋ ( ( λ x768 -> if false then x768 else Bool ) ) ) $ ( if true then Bool else Bool )
        d765 = ( ( Bool -> Bool ) ∋ ( ( λ x766 -> ( ( Bool -> Bool ) ∋ ( ( λ x767 -> false ) ) ) $ ( false ) ) ) ) $ ( if d6 then d206 else false )
        d769 : if false then if true then Bool else Bool else if false then Bool else Bool
        d769 = if if d349 then true else d358 then if true then true else d266 else if false then true else d282
        d770 : ( ( Set -> Set ) ∋ ( ( λ x771 -> ( ( Set -> Set ) ∋ ( ( λ x772 -> x771 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d770 = if if d401 then d517 else true then if d719 then false else false else if false then false else true
        d773 : ( ( Set -> Set ) ∋ ( ( λ x774 -> ( ( Set -> Set ) ∋ ( ( λ x775 -> x775 ) ) ) $ ( x774 ) ) ) ) $ ( if true then Bool else Bool )
        d773 = if if d491 then true else d117 then if d619 then true else d757 else if d211 then d361 else d148
        d776 : ( ( Set -> Set ) ∋ ( ( λ x779 -> ( ( Set -> Set ) ∋ ( ( λ x780 -> Bool ) ) ) $ ( x779 ) ) ) ) $ ( if true then Bool else Bool )
        d776 = ( ( Bool -> Bool ) ∋ ( ( λ x777 -> ( ( Bool -> Bool ) ∋ ( ( λ x778 -> false ) ) ) $ ( x777 ) ) ) ) $ ( if d641 then d454 else false )
        d781 : ( ( Set -> Set ) ∋ ( ( λ x782 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d781 = if if false then true else false then if d703 then false else false else if true then true else d635
        d783 : if true then if true then Bool else Bool else if false then Bool else Bool
        d783 = ( ( Bool -> Bool ) ∋ ( ( λ x784 -> ( ( Bool -> Bool ) ∋ ( ( λ x785 -> d128 ) ) ) $ ( d492 ) ) ) ) $ ( if d719 then d761 else d593 )
        d786 : ( ( Set -> Set ) ∋ ( ( λ x788 -> if false then x788 else x788 ) ) ) $ ( if true then Bool else Bool )
        d786 = ( ( Bool -> Bool ) ∋ ( ( λ x787 -> if d728 then true else d361 ) ) ) $ ( if true then true else d552 )
        d789 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x791 -> x790 ) ) ) $ ( x790 ) ) ) ) $ ( if false then Bool else Bool )
        d789 = if if false then true else true then if d50 then d20 else d136 else if false then d395 else false
        d792 : ( ( Set -> Set ) ∋ ( ( λ x795 -> if true then Bool else x795 ) ) ) $ ( if true then Bool else Bool )
        d792 = ( ( Bool -> Bool ) ∋ ( ( λ x793 -> ( ( Bool -> Bool ) ∋ ( ( λ x794 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then d160 else d118 )
        d796 : ( ( Set -> Set ) ∋ ( ( λ x798 -> ( ( Set -> Set ) ∋ ( ( λ x799 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d796 = ( ( Bool -> Bool ) ∋ ( ( λ x797 -> if x797 then d103 else d776 ) ) ) $ ( if d488 then true else d271 )
        d800 : if true then if true then Bool else Bool else if false then Bool else Bool
        d800 = ( ( Bool -> Bool ) ∋ ( ( λ x801 -> ( ( Bool -> Bool ) ∋ ( ( λ x802 -> d624 ) ) ) $ ( d712 ) ) ) ) $ ( if d545 then true else d412 )
        d803 : ( ( Set -> Set ) ∋ ( ( λ x804 -> if false then x804 else Bool ) ) ) $ ( if true then Bool else Bool )
        d803 = if if true then false else d453 then if false then d495 else true else if true then true else false
        d805 : ( ( Set -> Set ) ∋ ( ( λ x806 -> if true then Bool else x806 ) ) ) $ ( if true then Bool else Bool )
        d805 = if if true then d282 else true then if false then false else false else if false then false else true
        d807 : ( ( Set -> Set ) ∋ ( ( λ x808 -> if true then x808 else x808 ) ) ) $ ( if true then Bool else Bool )
        d807 = if if d256 then d552 else d203 then if d630 then d73 else true else if true then d545 else false
        d809 : ( ( Set -> Set ) ∋ ( ( λ x810 -> if false then x810 else Bool ) ) ) $ ( if false then Bool else Bool )
        d809 = if if true then d346 else d652 then if d670 then true else d1 else if d338 then true else d212
        d811 : ( ( Set -> Set ) ∋ ( ( λ x814 -> ( ( Set -> Set ) ∋ ( ( λ x815 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d811 = ( ( Bool -> Bool ) ∋ ( ( λ x812 -> ( ( Bool -> Bool ) ∋ ( ( λ x813 -> false ) ) ) $ ( true ) ) ) ) $ ( if d280 then d105 else d624 )
        d816 : ( ( Set -> Set ) ∋ ( ( λ x817 -> if true then Bool else x817 ) ) ) $ ( if true then Bool else Bool )
        d816 = if if true then false else d20 then if d100 then false else d805 else if d287 then d83 else d809
        d818 : ( ( Set -> Set ) ∋ ( ( λ x821 -> ( ( Set -> Set ) ∋ ( ( λ x822 -> x822 ) ) ) $ ( x821 ) ) ) ) $ ( if false then Bool else Bool )
        d818 = ( ( Bool -> Bool ) ∋ ( ( λ x819 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then false else d152 )
        d823 : ( ( Set -> Set ) ∋ ( ( λ x825 -> ( ( Set -> Set ) ∋ ( ( λ x826 -> Bool ) ) ) $ ( x825 ) ) ) ) $ ( if true then Bool else Bool )
        d823 = ( ( Bool -> Bool ) ∋ ( ( λ x824 -> if d165 then d107 else d310 ) ) ) $ ( if d461 then true else true )
        d827 : ( ( Set -> Set ) ∋ ( ( λ x828 -> if false then x828 else Bool ) ) ) $ ( if true then Bool else Bool )
        d827 = if if d200 then false else d553 then if true then d693 else d41 else if true then d349 else true
        d829 : if false then if false then Bool else Bool else if false then Bool else Bool
        d829 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> ( ( Bool -> Bool ) ∋ ( ( λ x831 -> d142 ) ) ) $ ( d295 ) ) ) ) $ ( if false then d514 else d494 )
        d832 : if true then if false then Bool else Bool else if false then Bool else Bool
        d832 = ( ( Bool -> Bool ) ∋ ( ( λ x833 -> if true then false else x833 ) ) ) $ ( if true then true else d364 )
        d834 : if false then if false then Bool else Bool else if false then Bool else Bool
        d834 = if if d67 then d586 else false then if d528 then true else false else if d41 then d286 else true
        d835 : ( ( Set -> Set ) ∋ ( ( λ x837 -> if true then x837 else Bool ) ) ) $ ( if true then Bool else Bool )
        d835 = ( ( Bool -> Bool ) ∋ ( ( λ x836 -> if true then x836 else false ) ) ) $ ( if true then true else d280 )
        d838 : if true then if true then Bool else Bool else if false then Bool else Bool
        d838 = if if d706 then true else d792 then if d139 then d137 else d545 else if d436 then false else true
        d839 : if true then if false then Bool else Bool else if false then Bool else Bool
        d839 = if if d805 then d581 else d100 then if false then d100 else true else if true then false else d635
        d840 : ( ( Set -> Set ) ∋ ( ( λ x841 -> ( ( Set -> Set ) ∋ ( ( λ x842 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d840 = if if true then false else true then if true then false else true else if false then false else d628
        d843 : ( ( Set -> Set ) ∋ ( ( λ x844 -> ( ( Set -> Set ) ∋ ( ( λ x845 -> Bool ) ) ) $ ( x844 ) ) ) ) $ ( if false then Bool else Bool )
        d843 = if if d69 then d133 else d528 then if d59 then d665 else true else if false then d524 else d364
        d846 : ( ( Set -> Set ) ∋ ( ( λ x847 -> ( ( Set -> Set ) ∋ ( ( λ x848 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d846 = if if false then true else true then if d514 then true else false else if d217 then true else d533
        d849 : if false then if false then Bool else Bool else if true then Bool else Bool
        d849 = if if d165 then false else d455 then if true then d65 else true else if true then d521 else false
        d850 : if true then if true then Bool else Bool else if true then Bool else Bool
        d850 = ( ( Bool -> Bool ) ∋ ( ( λ x851 -> if x851 then d305 else true ) ) ) $ ( if d10 then false else false )
        d852 : if false then if true then Bool else Bool else if false then Bool else Bool
        d852 = ( ( Bool -> Bool ) ∋ ( ( λ x853 -> if d358 then d598 else false ) ) ) $ ( if false then d91 else true )
        d854 : if true then if false then Bool else Bool else if true then Bool else Bool
        d854 = if if d645 then true else d563 then if false then d253 else d702 else if d553 then d276 else d247
        d855 : if false then if false then Bool else Bool else if true then Bool else Bool
        d855 = if if false then d670 else true then if true then d318 else d55 else if true then d273 else true
        d856 : if false then if true then Bool else Bool else if false then Bool else Bool
        d856 = ( ( Bool -> Bool ) ∋ ( ( λ x857 -> ( ( Bool -> Bool ) ∋ ( ( λ x858 -> x857 ) ) ) $ ( x857 ) ) ) ) $ ( if true then true else d553 )
        d859 : ( ( Set -> Set ) ∋ ( ( λ x862 -> if true then x862 else x862 ) ) ) $ ( if true then Bool else Bool )
        d859 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> ( ( Bool -> Bool ) ∋ ( ( λ x861 -> x860 ) ) ) $ ( d20 ) ) ) ) $ ( if d390 then d154 else d318 )
        d863 : if false then if false then Bool else Bool else if true then Bool else Bool
        d863 = ( ( Bool -> Bool ) ∋ ( ( λ x864 -> ( ( Bool -> Bool ) ∋ ( ( λ x865 -> x865 ) ) ) $ ( d160 ) ) ) ) $ ( if true then d679 else d509 )
        d866 : if false then if false then Bool else Bool else if true then Bool else Bool
        d866 = if if d361 then d757 else true then if true then d404 else true else if d789 then d390 else d318
        d867 : if true then if true then Bool else Bool else if false then Bool else Bool
        d867 = if if d465 then d667 else true then if d654 then false else false else if d231 then true else true
        d868 : ( ( Set -> Set ) ∋ ( ( λ x869 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d868 = if if d850 then d667 else false then if false then false else true else if false then true else true
        d871 : ( ( Set -> Set ) ∋ ( ( λ x872 -> ( ( Set -> Set ) ∋ ( ( λ x873 -> Bool ) ) ) $ ( x872 ) ) ) ) $ ( if false then Bool else Bool )
        d871 = if if false then d276 else d553 then if d827 then false else d305 else if false then d148 else true
        d874 : if false then if true then Bool else Bool else if true then Bool else Bool
        d874 = if if true then d849 else d454 then if d458 then d91 else false else if d91 then false else true
        d875 : ( ( Set -> Set ) ∋ ( ( λ x878 -> ( ( Set -> Set ) ∋ ( ( λ x879 -> x879 ) ) ) $ ( x878 ) ) ) ) $ ( if true then Bool else Bool )
        d875 = ( ( Bool -> Bool ) ∋ ( ( λ x876 -> ( ( Bool -> Bool ) ∋ ( ( λ x877 -> x877 ) ) ) $ ( true ) ) ) ) $ ( if false then d212 else d687 )
        d880 : if false then if true then Bool else Bool else if true then Bool else Bool
        d880 = ( ( Bool -> Bool ) ∋ ( ( λ x881 -> ( ( Bool -> Bool ) ∋ ( ( λ x882 -> false ) ) ) $ ( d719 ) ) ) ) $ ( if false then true else d663 )
        d883 : if true then if false then Bool else Bool else if true then Bool else Bool
        d883 = if if d395 then d567 else false then if false then false else false else if true then d426 else d291
        d884 : ( ( Set -> Set ) ∋ ( ( λ x887 -> if true then Bool else x887 ) ) ) $ ( if false then Bool else Bool )
        d884 = ( ( Bool -> Bool ) ∋ ( ( λ x885 -> ( ( Bool -> Bool ) ∋ ( ( λ x886 -> x885 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d888 : if true then if false then Bool else Bool else if false then Bool else Bool
        d888 = if if d840 then d834 else d607 then if true then true else d663 else if true then true else false
        d889 : ( ( Set -> Set ) ∋ ( ( λ x892 -> if false then Bool else x892 ) ) ) $ ( if true then Bool else Bool )
        d889 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> ( ( Bool -> Bool ) ∋ ( ( λ x891 -> d323 ) ) ) $ ( x890 ) ) ) ) $ ( if true then d349 else d477 )
        d893 : ( ( Set -> Set ) ∋ ( ( λ x896 -> ( ( Set -> Set ) ∋ ( ( λ x897 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d893 = ( ( Bool -> Bool ) ∋ ( ( λ x894 -> ( ( Bool -> Bool ) ∋ ( ( λ x895 -> true ) ) ) $ ( x894 ) ) ) ) $ ( if d97 then true else d373 )
        d898 : ( ( Set -> Set ) ∋ ( ( λ x901 -> ( ( Set -> Set ) ∋ ( ( λ x902 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d898 = ( ( Bool -> Bool ) ∋ ( ( λ x899 -> ( ( Bool -> Bool ) ∋ ( ( λ x900 -> x899 ) ) ) $ ( x899 ) ) ) ) $ ( if false then false else d699 )
        d903 : if true then if true then Bool else Bool else if false then Bool else Bool
        d903 = ( ( Bool -> Bool ) ∋ ( ( λ x904 -> ( ( Bool -> Bool ) ∋ ( ( λ x905 -> true ) ) ) $ ( d624 ) ) ) ) $ ( if d702 then d400 else true )
        d906 : if true then if true then Bool else Bool else if false then Bool else Bool
        d906 = ( ( Bool -> Bool ) ∋ ( ( λ x907 -> ( ( Bool -> Bool ) ∋ ( ( λ x908 -> x908 ) ) ) $ ( false ) ) ) ) $ ( if d871 then true else false )
        d909 : ( ( Set -> Set ) ∋ ( ( λ x912 -> if true then x912 else Bool ) ) ) $ ( if true then Bool else Bool )
        d909 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> ( ( Bool -> Bool ) ∋ ( ( λ x911 -> x911 ) ) ) $ ( x910 ) ) ) ) $ ( if d607 then false else true )
        d913 : if true then if false then Bool else Bool else if false then Bool else Bool
        d913 = if if d338 then false else d225 then if d728 then d781 else false else if d217 then false else true
        d914 : ( ( Set -> Set ) ∋ ( ( λ x916 -> ( ( Set -> Set ) ∋ ( ( λ x917 -> Bool ) ) ) $ ( x916 ) ) ) ) $ ( if true then Bool else Bool )
        d914 = ( ( Bool -> Bool ) ∋ ( ( λ x915 -> if d358 then true else false ) ) ) $ ( if false then d889 else true )
        d918 : ( ( Set -> Set ) ∋ ( ( λ x921 -> if false then x921 else x921 ) ) ) $ ( if true then Bool else Bool )
        d918 = ( ( Bool -> Bool ) ∋ ( ( λ x919 -> ( ( Bool -> Bool ) ∋ ( ( λ x920 -> d2 ) ) ) $ ( x919 ) ) ) ) $ ( if d781 then d286 else true )
        d922 : ( ( Set -> Set ) ∋ ( ( λ x924 -> ( ( Set -> Set ) ∋ ( ( λ x925 -> Bool ) ) ) $ ( x924 ) ) ) ) $ ( if true then Bool else Bool )
        d922 = ( ( Bool -> Bool ) ∋ ( ( λ x923 -> if false then false else false ) ) ) $ ( if d211 then false else d660 )
        d926 : if false then if false then Bool else Bool else if true then Bool else Bool
        d926 = ( ( Bool -> Bool ) ∋ ( ( λ x927 -> if true then true else false ) ) ) $ ( if d342 then d488 else d716 )
        d928 : ( ( Set -> Set ) ∋ ( ( λ x931 -> if true then x931 else Bool ) ) ) $ ( if false then Bool else Bool )
        d928 = ( ( Bool -> Bool ) ∋ ( ( λ x929 -> ( ( Bool -> Bool ) ∋ ( ( λ x930 -> d94 ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
        d932 : ( ( Set -> Set ) ∋ ( ( λ x933 -> ( ( Set -> Set ) ∋ ( ( λ x934 -> x933 ) ) ) $ ( x933 ) ) ) ) $ ( if true then Bool else Bool )
        d932 = if if d839 then true else true then if d867 then d875 else false else if true then d492 else d211
        d935 : ( ( Set -> Set ) ∋ ( ( λ x938 -> ( ( Set -> Set ) ∋ ( ( λ x939 -> x939 ) ) ) $ ( x938 ) ) ) ) $ ( if false then Bool else Bool )
        d935 = ( ( Bool -> Bool ) ∋ ( ( λ x936 -> ( ( Bool -> Bool ) ∋ ( ( λ x937 -> true ) ) ) $ ( true ) ) ) ) $ ( if d199 then d615 else false )
        d940 : ( ( Set -> Set ) ∋ ( ( λ x941 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d940 = if if true then d140 else false then if d533 then false else false else if true then true else d52
        d942 : if false then if true then Bool else Bool else if true then Bool else Bool
        d942 = if if false then false else d439 then if d304 then d44 else d764 else if false then true else true
        d943 : if true then if false then Bool else Bool else if false then Bool else Bool
        d943 = ( ( Bool -> Bool ) ∋ ( ( λ x944 -> if x944 then x944 else true ) ) ) $ ( if true then true else d533 )
        d945 : if false then if false then Bool else Bool else if true then Bool else Bool
        d945 = if if d59 then true else d32 then if d266 then false else true else if d386 then false else true
        d946 : if true then if false then Bool else Bool else if true then Bool else Bool
        d946 = ( ( Bool -> Bool ) ∋ ( ( λ x947 -> ( ( Bool -> Bool ) ∋ ( ( λ x948 -> false ) ) ) $ ( d282 ) ) ) ) $ ( if d765 then d50 else d20 )
        d949 : ( ( Set -> Set ) ∋ ( ( λ x952 -> ( ( Set -> Set ) ∋ ( ( λ x953 -> x952 ) ) ) $ ( x952 ) ) ) ) $ ( if false then Bool else Bool )
        d949 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> ( ( Bool -> Bool ) ∋ ( ( λ x951 -> false ) ) ) $ ( false ) ) ) ) $ ( if d231 then d503 else false )
        d954 : if false then if true then Bool else Bool else if true then Bool else Bool
        d954 = ( ( Bool -> Bool ) ∋ ( ( λ x955 -> if x955 then x955 else false ) ) ) $ ( if false then false else d671 )
        d956 : if false then if false then Bool else Bool else if false then Bool else Bool
        d956 = if if true then d273 else d576 then if true then d576 else false else if d249 then true else d455
        d957 : ( ( Set -> Set ) ∋ ( ( λ x959 -> if false then x959 else Bool ) ) ) $ ( if true then Bool else Bool )
        d957 = ( ( Bool -> Bool ) ∋ ( ( λ x958 -> if x958 then d632 else x958 ) ) ) $ ( if d514 then false else d404 )
        d960 : ( ( Set -> Set ) ∋ ( ( λ x961 -> ( ( Set -> Set ) ∋ ( ( λ x962 -> Bool ) ) ) $ ( x961 ) ) ) ) $ ( if true then Bool else Bool )
        d960 = if if d889 then false else true then if false then false else d750 else if d550 then true else true
        d963 : if true then if false then Bool else Bool else if true then Bool else Bool
        d963 = ( ( Bool -> Bool ) ∋ ( ( λ x964 -> ( ( Bool -> Bool ) ∋ ( ( λ x965 -> false ) ) ) $ ( x964 ) ) ) ) $ ( if false then false else true )
        d966 : ( ( Set -> Set ) ∋ ( ( λ x967 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d966 = if if d696 then d604 else true then if d323 then d838 else false else if true then d44 else true
        d968 : ( ( Set -> Set ) ∋ ( ( λ x969 -> if false then x969 else Bool ) ) ) $ ( if true then Bool else Bool )
        d968 = if if d77 then false else true then if d444 then d875 else d265 else if false then true else d222
        d970 : if false then if false then Bool else Bool else if true then Bool else Bool
        d970 = if if d532 then d129 else d47 then if d514 then false else false else if true then d373 else d465
        d971 : if false then if false then Bool else Bool else if true then Bool else Bool
        d971 = if if false then d165 else d273 then if d341 then false else d153 else if d129 then true else d450
        d972 : ( ( Set -> Set ) ∋ ( ( λ x974 -> ( ( Set -> Set ) ∋ ( ( λ x975 -> x974 ) ) ) $ ( x974 ) ) ) ) $ ( if true then Bool else Bool )
        d972 = ( ( Bool -> Bool ) ∋ ( ( λ x973 -> if x973 then x973 else d918 ) ) ) $ ( if d305 then d960 else true )
        d976 : ( ( Set -> Set ) ∋ ( ( λ x977 -> ( ( Set -> Set ) ∋ ( ( λ x978 -> Bool ) ) ) $ ( x977 ) ) ) ) $ ( if true then Bool else Bool )
        d976 = if if d854 then true else true then if d83 then true else d275 else if d470 then d47 else true
        d979 : ( ( Set -> Set ) ∋ ( ( λ x982 -> ( ( Set -> Set ) ∋ ( ( λ x983 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d979 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> ( ( Bool -> Bool ) ∋ ( ( λ x981 -> true ) ) ) $ ( d906 ) ) ) ) $ ( if d687 then d301 else false )
        d984 : if true then if false then Bool else Bool else if true then Bool else Bool
        d984 = ( ( Bool -> Bool ) ∋ ( ( λ x985 -> ( ( Bool -> Bool ) ∋ ( ( λ x986 -> false ) ) ) $ ( x985 ) ) ) ) $ ( if d556 then false else d517 )
        d987 : ( ( Set -> Set ) ∋ ( ( λ x989 -> if false then Bool else x989 ) ) ) $ ( if true then Bool else Bool )
        d987 = ( ( Bool -> Bool ) ∋ ( ( λ x988 -> if x988 then false else d265 ) ) ) $ ( if d401 then d725 else d604 )
        d990 : ( ( Set -> Set ) ∋ ( ( λ x993 -> ( ( Set -> Set ) ∋ ( ( λ x994 -> Bool ) ) ) $ ( x993 ) ) ) ) $ ( if false then Bool else Bool )
        d990 = ( ( Bool -> Bool ) ∋ ( ( λ x991 -> ( ( Bool -> Bool ) ∋ ( ( λ x992 -> false ) ) ) $ ( x991 ) ) ) ) $ ( if d598 then true else true )
        d995 : if true then if true then Bool else Bool else if true then Bool else Bool
        d995 = if if false then d757 else d262 then if true then true else false else if false then true else d581
        d996 : if false then if true then Bool else Bool else if false then Bool else Bool
        d996 = ( ( Bool -> Bool ) ∋ ( ( λ x997 -> if d271 then x997 else true ) ) ) $ ( if d333 then d369 else false )
        d998 : ( ( Set -> Set ) ∋ ( ( λ x999 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d998 = if if d304 then d412 else d346 then if d259 then true else true else if true then true else false
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x1001 -> if false then Bool else x1001 ) ) ) $ ( if true then Bool else Bool )
        d1000 = if if false then d59 else d484 then if false then d50 else false else if false then d909 else d14
        d1002 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1002 = if if d521 then d816 else false then if false then false else d1000 else if false then d807 else d742
        d1003 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1003 = if if d671 then false else d637 then if d273 then true else true else if d301 then d179 else d242
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x1005 -> if false then x1005 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1004 = if if d935 then true else d966 then if false then d385 else false else if false then d50 else false
        d1006 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1006 = if if true then d591 else true then if true then d179 else true else if d563 then false else d741
        d1007 : ( ( Set -> Set ) ∋ ( ( λ x1008 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1007 = if if false then d97 else false then if d292 then true else d714 else if false then d181 else true
        d1009 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1009 = if if d703 then d14 else d242 then if true then false else d690 else if d942 then d390 else false
        d1010 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1010 = if if d455 then true else d69 then if false then true else d932 else if true then d671 else d333
        d1011 : ( ( Set -> Set ) ∋ ( ( λ x1014 -> ( ( Set -> Set ) ∋ ( ( λ x1015 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1011 = ( ( Bool -> Bool ) ∋ ( ( λ x1012 -> ( ( Bool -> Bool ) ∋ ( ( λ x1013 -> d1009 ) ) ) $ ( d835 ) ) ) ) $ ( if true then d355 else d984 )
        d1016 : ( ( Set -> Set ) ∋ ( ( λ x1017 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1016 = if if false then false else true then if false then true else d571 else if d298 then d8 else false
        d1018 : ( ( Set -> Set ) ∋ ( ( λ x1019 -> ( ( Set -> Set ) ∋ ( ( λ x1020 -> Bool ) ) ) $ ( x1019 ) ) ) ) $ ( if true then Bool else Bool )
        d1018 = if if false then d712 else d586 then if true then false else true else if true then d253 else true
        d1021 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1021 = ( ( Bool -> Bool ) ∋ ( ( λ x1022 -> ( ( Bool -> Bool ) ∋ ( ( λ x1023 -> d250 ) ) ) $ ( false ) ) ) ) $ ( if d753 then true else d776 )
        d1024 : ( ( Set -> Set ) ∋ ( ( λ x1026 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1024 = ( ( Bool -> Bool ) ∋ ( ( λ x1025 -> if false then x1025 else d942 ) ) ) $ ( if true then false else d291 )
        d1027 : ( ( Set -> Set ) ∋ ( ( λ x1028 -> if true then x1028 else x1028 ) ) ) $ ( if true then Bool else Bool )
        d1027 = if if false then true else false then if d160 then d455 else false else if true then false else true
        d1029 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1029 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> x1031 ) ) ) $ ( d41 ) ) ) ) $ ( if true then false else true )
        d1032 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1032 = if if true then d593 else d10 then if d10 then d604 else false else if true then d291 else d880
        d1033 : ( ( Set -> Set ) ∋ ( ( λ x1034 -> if true then Bool else x1034 ) ) ) $ ( if false then Bool else Bool )
        d1033 = if if d38 then false else true then if d866 then d849 else true else if d467 then false else true
        d1035 : ( ( Set -> Set ) ∋ ( ( λ x1038 -> if true then x1038 else x1038 ) ) ) $ ( if false then Bool else Bool )
        d1035 = ( ( Bool -> Bool ) ∋ ( ( λ x1036 -> ( ( Bool -> Bool ) ∋ ( ( λ x1037 -> x1036 ) ) ) $ ( d148 ) ) ) ) $ ( if d326 then false else true )
        d1039 : ( ( Set -> Set ) ∋ ( ( λ x1042 -> if false then x1042 else x1042 ) ) ) $ ( if true then Bool else Bool )
        d1039 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> ( ( Bool -> Bool ) ∋ ( ( λ x1041 -> d282 ) ) ) $ ( x1040 ) ) ) ) $ ( if d2 then false else d946 )
        d1043 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1043 = ( ( Bool -> Bool ) ∋ ( ( λ x1044 -> if x1044 then x1044 else x1044 ) ) ) $ ( if d545 then false else true )
        d1045 : ( ( Set -> Set ) ∋ ( ( λ x1047 -> ( ( Set -> Set ) ∋ ( ( λ x1048 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1045 = ( ( Bool -> Bool ) ∋ ( ( λ x1046 -> if x1046 then x1046 else d1021 ) ) ) $ ( if d932 then false else d291 )
        d1049 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1049 = if if d703 then false else d429 then if d494 then d843 else true else if d475 then false else true
        d1050 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1050 = if if d495 then false else d65 then if false then d712 else d622 else if true then true else false
        d1051 : ( ( Set -> Set ) ∋ ( ( λ x1052 -> ( ( Set -> Set ) ∋ ( ( λ x1053 -> Bool ) ) ) $ ( x1052 ) ) ) ) $ ( if true then Bool else Bool )
        d1051 = if if true then d153 else d725 then if d665 then true else d450 else if false then d850 else d979
        d1054 : ( ( Set -> Set ) ∋ ( ( λ x1055 -> if false then Bool else x1055 ) ) ) $ ( if true then Bool else Bool )
        d1054 = if if d731 then true else false then if false then d593 else true else if d667 then false else d735
        d1056 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1056 = if if true then d250 else d454 then if true then true else false else if false then true else d621
        d1057 : ( ( Set -> Set ) ∋ ( ( λ x1058 -> ( ( Set -> Set ) ∋ ( ( λ x1059 -> x1058 ) ) ) $ ( x1058 ) ) ) ) $ ( if true then Bool else Bool )
        d1057 = if if d103 then false else true then if false then d330 else false else if d719 then d386 else d1051
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x1061 -> ( ( Set -> Set ) ∋ ( ( λ x1062 -> x1061 ) ) ) $ ( x1061 ) ) ) ) $ ( if false then Bool else Bool )
        d1060 = if if d682 then true else d770 then if d874 then false else true else if d8 then true else d231
        d1063 : ( ( Set -> Set ) ∋ ( ( λ x1064 -> ( ( Set -> Set ) ∋ ( ( λ x1065 -> x1064 ) ) ) $ ( x1064 ) ) ) ) $ ( if false then Bool else Bool )
        d1063 = if if true then false else d570 then if d918 then true else false else if d6 then true else d291
        d1066 : ( ( Set -> Set ) ∋ ( ( λ x1067 -> ( ( Set -> Set ) ∋ ( ( λ x1068 -> x1068 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1066 = if if true then d69 else d401 then if d757 then d591 else d1051 else if d990 then d717 else true
        d1069 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> if true then x1070 else x1070 ) ) ) $ ( if false then Bool else Bool )
        d1069 = if if d855 then true else d404 then if false then d696 else false else if d14 then d358 else d570
        d1071 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1071 = ( ( Bool -> Bool ) ∋ ( ( λ x1072 -> if d35 then x1072 else true ) ) ) $ ( if d137 then d637 else false )
        d1073 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1073 = if if true then d875 else d556 then if true then true else d607 else if true then false else d550
        d1074 : ( ( Set -> Set ) ∋ ( ( λ x1076 -> ( ( Set -> Set ) ∋ ( ( λ x1077 -> x1076 ) ) ) $ ( x1076 ) ) ) ) $ ( if true then Bool else Bool )
        d1074 = ( ( Bool -> Bool ) ∋ ( ( λ x1075 -> if x1075 then false else false ) ) ) $ ( if false then d153 else d990 )
        d1078 : ( ( Set -> Set ) ∋ ( ( λ x1079 -> if true then Bool else x1079 ) ) ) $ ( if true then Bool else Bool )
        d1078 = if if true then d761 else true then if d764 then true else d840 else if true then false else false
        d1080 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1080 = ( ( Bool -> Bool ) ∋ ( ( λ x1081 -> if d647 then x1081 else true ) ) ) $ ( if d607 then d77 else d343 )
        d1082 : ( ( Set -> Set ) ∋ ( ( λ x1085 -> if true then x1085 else x1085 ) ) ) $ ( if true then Bool else Bool )
        d1082 = ( ( Bool -> Bool ) ∋ ( ( λ x1083 -> ( ( Bool -> Bool ) ∋ ( ( λ x1084 -> false ) ) ) $ ( x1083 ) ) ) ) $ ( if d843 then false else false )
        d1086 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1086 = ( ( Bool -> Bool ) ∋ ( ( λ x1087 -> if x1087 then true else x1087 ) ) ) $ ( if false then d671 else false )
        d1088 : ( ( Set -> Set ) ∋ ( ( λ x1089 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1088 = if if true then true else false then if d1080 then d231 else true else if false then false else true
        d1090 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1090 = if if true then true else true then if true then true else d1002 else if d765 then true else d866
        d1091 : ( ( Set -> Set ) ∋ ( ( λ x1094 -> if true then Bool else x1094 ) ) ) $ ( if true then Bool else Bool )
        d1091 = ( ( Bool -> Bool ) ∋ ( ( λ x1092 -> ( ( Bool -> Bool ) ∋ ( ( λ x1093 -> x1092 ) ) ) $ ( d286 ) ) ) ) $ ( if d133 then false else d292 )
        d1095 : ( ( Set -> Set ) ∋ ( ( λ x1097 -> ( ( Set -> Set ) ∋ ( ( λ x1098 -> x1097 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1095 = ( ( Bool -> Bool ) ∋ ( ( λ x1096 -> if d1043 then x1096 else x1096 ) ) ) $ ( if d333 then d940 else true )
        d1099 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1099 = if if d506 then true else true then if true then true else false else if d65 then d461 else false
        d1100 : ( ( Set -> Set ) ∋ ( ( λ x1102 -> ( ( Set -> Set ) ∋ ( ( λ x1103 -> x1102 ) ) ) $ ( x1102 ) ) ) ) $ ( if true then Bool else Bool )
        d1100 = ( ( Bool -> Bool ) ∋ ( ( λ x1101 -> if d231 then d282 else true ) ) ) $ ( if d136 then true else false )
        d1104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1104 = ( ( Bool -> Bool ) ∋ ( ( λ x1105 -> if x1105 then x1105 else d65 ) ) ) $ ( if d1099 then false else false )
        d1106 : ( ( Set -> Set ) ∋ ( ( λ x1107 -> if true then x1107 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1106 = if if false then true else true then if d18 then d298 else false else if true then false else d898
        d1108 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1108 = ( ( Bool -> Bool ) ∋ ( ( λ x1109 -> ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> true ) ) ) $ ( d228 ) ) ) ) $ ( if d129 then true else false )
        d1111 : ( ( Set -> Set ) ∋ ( ( λ x1113 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1111 = ( ( Bool -> Bool ) ∋ ( ( λ x1112 -> if d194 then x1112 else false ) ) ) $ ( if d256 then false else false )
        d1114 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1114 = if if d1006 then true else true then if true then d654 else d203 else if false then true else true
        d1115 : ( ( Set -> Set ) ∋ ( ( λ x1116 -> if true then x1116 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1115 = if if false then true else false then if d576 then d753 else d995 else if true then d426 else true
        d1117 : ( ( Set -> Set ) ∋ ( ( λ x1119 -> if true then x1119 else x1119 ) ) ) $ ( if false then Bool else Bool )
        d1117 = ( ( Bool -> Bool ) ∋ ( ( λ x1118 -> if d118 then d181 else x1118 ) ) ) $ ( if d139 then d665 else false )
        d1120 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1120 = ( ( Bool -> Bool ) ∋ ( ( λ x1121 -> if d984 then x1121 else d639 ) ) ) $ ( if d656 then false else d407 )
        d1122 : ( ( Set -> Set ) ∋ ( ( λ x1123 -> ( ( Set -> Set ) ∋ ( ( λ x1124 -> Bool ) ) ) $ ( x1123 ) ) ) ) $ ( if false then Bool else Bool )
        d1122 = if if d753 then d776 else d550 then if d222 then d444 else d889 else if true then false else false
        d1125 : ( ( Set -> Set ) ∋ ( ( λ x1126 -> if false then Bool else x1126 ) ) ) $ ( if true then Bool else Bool )
        d1125 = if if false then false else d866 then if false then false else false else if d414 then true else d160
        d1127 : ( ( Set -> Set ) ∋ ( ( λ x1128 -> ( ( Set -> Set ) ∋ ( ( λ x1129 -> Bool ) ) ) $ ( x1128 ) ) ) ) $ ( if true then Bool else Bool )
        d1127 = if if true then d361 else d744 then if d871 then d744 else true else if d556 then d105 else false
        d1130 : ( ( Set -> Set ) ∋ ( ( λ x1132 -> if true then Bool else x1132 ) ) ) $ ( if true then Bool else Bool )
        d1130 = ( ( Bool -> Bool ) ∋ ( ( λ x1131 -> if d942 then d346 else d996 ) ) ) $ ( if true then false else d624 )
        d1133 : ( ( Set -> Set ) ∋ ( ( λ x1134 -> if false then x1134 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1133 = if if d475 then d153 else true then if false then false else d1032 else if true then d639 else true
        d1135 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1135 = if if true then d73 else false then if d852 then d1127 else false else if true then d152 else false
        d1136 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1136 = ( ( Bool -> Bool ) ∋ ( ( λ x1137 -> ( ( Bool -> Bool ) ∋ ( ( λ x1138 -> d1104 ) ) ) $ ( d147 ) ) ) ) $ ( if d547 then true else d829 )
        d1139 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1139 = if if d811 then d155 else true then if true then d190 else true else if false then false else true
        d1140 : ( ( Set -> Set ) ∋ ( ( λ x1141 -> if false then x1141 else x1141 ) ) ) $ ( if true then Bool else Bool )
        d1140 = if if true then true else d514 then if d35 then true else d765 else if d576 then d871 else d1043
        d1142 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1142 = if if true then false else false then if true then d249 else d741 else if d996 then false else false
        d1143 : ( ( Set -> Set ) ∋ ( ( λ x1145 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1143 = ( ( Bool -> Bool ) ∋ ( ( λ x1144 -> if false then x1144 else d61 ) ) ) $ ( if true then true else d313 )
        d1146 : ( ( Set -> Set ) ∋ ( ( λ x1147 -> ( ( Set -> Set ) ∋ ( ( λ x1148 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1146 = if if true then false else false then if false then d1104 else false else if d464 then d612 else true
        d1149 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1149 = if if d307 then d237 else d301 then if d460 then true else false else if true then false else d832
        d1151 : ( ( Set -> Set ) ∋ ( ( λ x1154 -> ( ( Set -> Set ) ∋ ( ( λ x1155 -> x1155 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1151 = ( ( Bool -> Bool ) ∋ ( ( λ x1152 -> ( ( Bool -> Bool ) ∋ ( ( λ x1153 -> d703 ) ) ) $ ( x1152 ) ) ) ) $ ( if d1117 then d903 else d420 )
        d1156 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1156 = ( ( Bool -> Bool ) ∋ ( ( λ x1157 -> if x1157 then x1157 else d133 ) ) ) $ ( if d477 then d228 else false )
        d1158 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1158 = if if false then d792 else d792 then if true then d404 else d639 else if d553 then d488 else true
        d1159 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1159 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if true then false else x1160 ) ) ) $ ( if true then true else false )
        d1161 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1161 = ( ( Bool -> Bool ) ∋ ( ( λ x1162 -> ( ( Bool -> Bool ) ∋ ( ( λ x1163 -> d470 ) ) ) $ ( x1162 ) ) ) ) $ ( if false then true else d761 )