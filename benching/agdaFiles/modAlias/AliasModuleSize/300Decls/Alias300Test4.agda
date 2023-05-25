module Alias300Test4  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else Bool ) ) ) $ ( Bool ) ) ( p3 : if true then Bool else Bool )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then x5 else Bool ) ) ) $ ( if true then Bool else Bool )
        d4 = if if false then p3 else true then if true then true else true else if p3 then true else false
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then x7 else Bool ) ) ) $ ( if true then Bool else Bool )
        d6 = if if false then p3 else d4 then if d4 then false else p1 else if d4 then p3 else d4
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then Bool else x9 ) ) ) $ ( if false then Bool else Bool )
        d8 = if if p1 then true else true then if true then d6 else false else if d6 then true else false
        d10 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then x12 else Bool ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if d4 then d6 else x11 ) ) ) $ ( if true then p3 else p3 )
        d13 : if true then if false then Bool else Bool else if true then Bool else Bool
        d13 = if if d8 then false else true then if d8 then d4 else d10 else if false then true else p3
        d14 : if true then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if true then true else d13 then if d8 then p1 else false else if false then d13 else d13
        d15 : if false then if false then Bool else Bool else if true then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if d4 then p3 else true ) ) ) $ ( if d6 then p1 else d6 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> x19 ) ) ) $ ( x19 ) ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if p1 then x18 else true ) ) ) $ ( if p3 then false else false )
        d21 : if true then if true then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if d6 then x22 else d8 ) ) ) $ ( if p1 then d4 else p3 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d23 = if if d10 then d10 else p3 then if false then true else d6 else if p1 then d8 else false
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d26 = if if d23 then p1 else false then if d13 then p1 else d13 else if d10 then d17 else true
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if false then x29 else x29 ) ) ) $ ( if false then Bool else Bool )
        d28 = if if p3 then d15 else p3 then if d23 then d15 else d15 else if d4 then false else p1
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then Bool else x31 ) ) ) $ ( if true then Bool else Bool )
        d30 = if if p3 then d28 else p1 then if true then d21 else true else if true then true else d15
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if true then Bool else Bool )
        d32 = if if false then d10 else d6 then if p3 then p3 else d4 else if false then p3 else p1
        d35 : if false then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d23 then d4 else d32 ) ) ) $ ( if p1 then d32 else p1 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then x39 else x39 ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if x38 then false else d35 ) ) ) $ ( if true then true else d8 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> Bool ) ) ) $ ( x41 ) ) ) ) $ ( if true then Bool else Bool )
        d40 = if if d13 then p3 else true then if d8 then p1 else p1 else if false then true else false
        d43 : if false then if true then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> false ) ) ) $ ( false ) ) ) ) $ ( if p1 then d23 else d28 )
        d46 : if true then if true then Bool else Bool else if false then Bool else Bool
        d46 = if if p1 then d30 else d30 then if false then d17 else p1 else if d15 then true else p1
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = if if p3 then p3 else p1 then if false then true else p1 else if p3 then true else p1
        d48 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> p1 ) ) ) $ ( d40 ) ) ) ) $ ( if false then d17 else true )
        d53 : if false then if false then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> d23 ) ) ) $ ( d15 ) ) ) ) $ ( if d23 then p1 else false )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d56 = if if p3 then false else d13 then if false then false else false else if d14 then p1 else d40
        d58 : if true then if false then Bool else Bool else if true then Bool else Bool
        d58 = if if d40 then false else false then if true then d26 else d32 else if true then false else true
        d59 : if false then if false then Bool else Bool else if true then Bool else Bool
        d59 = if if true then d14 else p1 then if true then p3 else p3 else if d48 then false else p3
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if d21 then true else true ) ) ) $ ( if p1 then p1 else false )
        d64 : if false then if false then Bool else Bool else if true then Bool else Bool
        d64 = if if true then p3 else p3 then if d53 then false else false else if true then d58 else p3
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> Bool ) ) ) $ ( x67 ) ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if x66 then false else p1 ) ) ) $ ( if p1 then p3 else d53 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x71 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if x70 then d30 else d37 ) ) ) $ ( if d28 then d28 else false )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d73 = if if false then p3 else p3 then if p3 then p3 else p3 else if p1 then p3 else p3
        d76 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> x79 ) ) ) $ ( x78 ) ) ) ) $ ( if true then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d73 then x77 else d73 ) ) ) $ ( if p3 then p1 else p3 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x82 ) ) ) $ ( x81 ) ) ) ) $ ( if true then Bool else Bool )
        d80 = if if true then d23 else true then if d43 then false else true else if p1 then true else p1
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if false then x84 else Bool ) ) ) $ ( if false then Bool else Bool )
        d83 = if if false then p1 else d4 then if p1 then true else p3 else if d14 then d48 else d64
        d85 : if true then if false then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if p3 then x86 else d80 ) ) ) $ ( if p3 then false else d21 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then Bool else x90 ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> x89 ) ) ) $ ( d64 ) ) ) ) $ ( if d4 then p1 else d30 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then Bool else x92 ) ) ) $ ( if false then Bool else Bool )
        d91 = if if p3 then d13 else d6 then if d80 then d69 else d35 else if true then true else true
        d93 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> false ) ) ) $ ( d14 ) ) ) ) $ ( if d21 then d59 else false )
        d98 : if false then if false then Bool else Bool else if true then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( d32 ) ) ) ) $ ( if d37 then d8 else p3 )
        d101 : if true then if true then Bool else Bool else if false then Bool else Bool
        d101 = if if p3 then d28 else d35 then if p1 then true else p3 else if p1 then d85 else false
        d102 : if true then if false then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> d65 ) ) ) $ ( d101 ) ) ) ) $ ( if d64 then true else d15 )
        d105 : if true then if true then Bool else Bool else if false then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if p1 then d58 else p1 ) ) ) $ ( if false then p1 else false )
        d107 : if false then if true then Bool else Bool else if true then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> true ) ) ) $ ( true ) ) ) ) $ ( if p1 then p3 else d91 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then x112 else Bool ) ) ) $ ( if false then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if d17 then true else d53 ) ) ) $ ( if true then d85 else p1 )
        d113 : if false then if true then Bool else Bool else if true then Bool else Bool
        d113 = if if p3 then p1 else p3 then if p3 then false else p1 else if true then d76 else p3
        d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if false then x116 else Bool ) ) ) $ ( if true then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if p1 then d21 else false ) ) ) $ ( if p1 then d8 else p1 )
        d117 : if false then if true then Bool else Bool else if false then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> d47 ) ) ) $ ( d47 ) ) ) ) $ ( if p3 then d73 else false )
        d120 : if false then if false then Bool else Bool else if false then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if p1 then p3 else x121 ) ) ) $ ( if d56 then d35 else d56 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if false then true else d60 ) ) ) $ ( if d56 then d107 else d114 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> Bool ) ) ) $ ( x126 ) ) ) ) $ ( if true then Bool else Bool )
        d125 = if if p1 then p1 else false then if p3 then true else d53 else if d14 then d105 else p3
        d128 : if false then if true then Bool else Bool else if true then Bool else Bool
        d128 = if if p3 then false else p1 then if p1 then p3 else d69 else if p3 then d23 else true
        d129 : ( ( Set -> Set ) ∋ ( ( λ x131 -> ( ( Set -> Set ) ∋ ( ( λ x132 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if x130 then d76 else x130 ) ) ) $ ( if d17 then d93 else p1 )
        d133 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if true then Bool else x136 ) ) ) $ ( if true then Bool else Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> true ) ) ) $ ( x134 ) ) ) ) $ ( if false then p3 else true )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if true then Bool else x139 ) ) ) $ ( if false then Bool else Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> if p1 then p3 else false ) ) ) $ ( if p1 then false else true )
        d140 : if true then if true then Bool else Bool else if false then Bool else Bool
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> if d76 then d47 else d35 ) ) ) $ ( if false then false else d60 )
        d142 : if true then if false then Bool else Bool else if true then Bool else Bool
        d142 = if if d140 then p3 else d120 then if d102 then d40 else true else if p1 then false else true
        d143 : ( ( Set -> Set ) ∋ ( ( λ x146 -> ( ( Set -> Set ) ∋ ( ( λ x147 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( Bool -> Bool ) ∋ ( ( λ x145 -> d125 ) ) ) $ ( true ) ) ) ) $ ( if p1 then p1 else d59 )
        d148 : if true then if false then Bool else Bool else if false then Bool else Bool
        d148 = if if d35 then d98 else p1 then if p3 then d53 else true else if d80 then d129 else p1
        d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d149 = if if d43 then false else true then if d114 then p3 else p1 else if p1 then true else p3
        d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> ( ( Set -> Set ) ∋ ( ( λ x153 -> x152 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d151 = if if p3 then p3 else d40 then if true then d105 else d122 else if true then p1 else true
        d154 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if true then Bool else x157 ) ) ) $ ( if true then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x155 -> ( ( Bool -> Bool ) ∋ ( ( λ x156 -> d120 ) ) ) $ ( p3 ) ) ) ) $ ( if d65 then false else p1 )
        d158 : if false then if false then Bool else Bool else if false then Bool else Bool
        d158 = if if false then d143 else d28 then if p3 then true else p3 else if p1 then d110 else p3
        d159 : if true then if true then Bool else Bool else if false then Bool else Bool
        d159 = if if d113 then true else false then if d154 then true else p3 else if true then true else false
        d160 : ( ( Set -> Set ) ∋ ( ( λ x161 -> if false then x161 else Bool ) ) ) $ ( if true then Bool else Bool )
        d160 = if if p1 then p1 else d17 then if d15 then true else false else if p3 then d120 else d113
        d162 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> Bool ) ) ) $ ( x165 ) ) ) ) $ ( if false then Bool else Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> ( ( Bool -> Bool ) ∋ ( ( λ x164 -> false ) ) ) $ ( x163 ) ) ) ) $ ( if false then p1 else d17 )
        d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> Bool ) ) ) $ ( x168 ) ) ) ) $ ( if true then Bool else Bool )
        d167 = if if d142 then d28 else p3 then if p3 then p3 else false else if true then false else true
        d170 : ( ( Set -> Set ) ∋ ( ( λ x171 -> ( ( Set -> Set ) ∋ ( ( λ x172 -> x172 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d170 = if if true then d113 else p3 then if d128 then p3 else true else if p3 then false else false
        d173 : if false then if true then Bool else Bool else if true then Bool else Bool
        d173 = ( ( Bool -> Bool ) ∋ ( ( λ x174 -> ( ( Bool -> Bool ) ∋ ( ( λ x175 -> d133 ) ) ) $ ( d6 ) ) ) ) $ ( if p1 then true else p3 )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x179 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( x179 ) ) ) ) $ ( if false then Bool else Bool )
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( Bool -> Bool ) ∋ ( ( λ x178 -> d151 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else p1 )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x182 -> if false then x182 else x182 ) ) ) $ ( if true then Bool else Bool )
        d181 = if if false then false else d140 then if d35 then p3 else d122 else if p1 then p3 else d43
        d183 : if false then if true then Bool else Bool else if false then Bool else Bool
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x184 -> if d133 then x184 else false ) ) ) $ ( if false then d159 else d83 )
        d185 : if false then if false then Bool else Bool else if true then Bool else Bool
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> if p3 then false else p1 ) ) ) $ ( if d158 then p1 else true )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if false then x188 else Bool ) ) ) $ ( if false then Bool else Bool )
        d187 = if if p3 then p1 else p1 then if p1 then d58 else false else if false then false else d69
        d189 : if true then if true then Bool else Bool else if true then Bool else Bool
        d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if d91 then p3 else true ) ) ) $ ( if p1 then p3 else d159 )
        d191 : ( ( Set -> Set ) ∋ ( ( λ x194 -> ( ( Set -> Set ) ∋ ( ( λ x195 -> Bool ) ) ) $ ( x194 ) ) ) ) $ ( if true then Bool else Bool )
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x192 -> ( ( Bool -> Bool ) ∋ ( ( λ x193 -> d26 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then true else d10 )
        d196 : ( ( Set -> Set ) ∋ ( ( λ x199 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d196 = ( ( Bool -> Bool ) ∋ ( ( λ x197 -> ( ( Bool -> Bool ) ∋ ( ( λ x198 -> false ) ) ) $ ( true ) ) ) ) $ ( if p3 then true else true )
        d200 : if true then if false then Bool else Bool else if false then Bool else Bool
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x201 -> ( ( Bool -> Bool ) ∋ ( ( λ x202 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if true then p1 else p3 )
        d203 : ( ( Set -> Set ) ∋ ( ( λ x206 -> ( ( Set -> Set ) ∋ ( ( λ x207 -> x206 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d203 = ( ( Bool -> Bool ) ∋ ( ( λ x204 -> ( ( Bool -> Bool ) ∋ ( ( λ x205 -> d35 ) ) ) $ ( true ) ) ) ) $ ( if false then p1 else true )
        d208 : if false then if true then Bool else Bool else if false then Bool else Bool
        d208 = if if true then d102 else p1 then if p3 then p1 else p3 else if p1 then d176 else true
        d209 : if false then if true then Bool else Bool else if false then Bool else Bool
        d209 = if if p3 then false else false then if false then false else d101 else if false then false else p1
        d210 : if true then if false then Bool else Bool else if true then Bool else Bool
        d210 = ( ( Bool -> Bool ) ∋ ( ( λ x211 -> if x211 then true else x211 ) ) ) $ ( if d196 then false else d122 )
        d212 : if true then if true then Bool else Bool else if true then Bool else Bool
        d212 = if if p1 then false else false then if d59 then d110 else p1 else if p1 then d17 else true
        d213 : if true then if false then Bool else Bool else if false then Bool else Bool
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x214 -> ( ( Bool -> Bool ) ∋ ( ( λ x215 -> d203 ) ) ) $ ( p1 ) ) ) ) $ ( if true then d46 else d191 )
        d216 : if false then if false then Bool else Bool else if true then Bool else Bool
        d216 = if if p3 then p1 else true then if true then p3 else d73 else if p3 then d21 else false
        d217 : ( ( Set -> Set ) ∋ ( ( λ x218 -> ( ( Set -> Set ) ∋ ( ( λ x219 -> x219 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d217 = if if d143 then true else false then if d80 then d69 else p3 else if p1 then d102 else false
        d220 : ( ( Set -> Set ) ∋ ( ( λ x222 -> if false then x222 else Bool ) ) ) $ ( if false then Bool else Bool )
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x221 -> if p1 then p1 else p1 ) ) ) $ ( if p1 then true else d35 )
        d223 : ( ( Set -> Set ) ∋ ( ( λ x226 -> if true then x226 else Bool ) ) ) $ ( if true then Bool else Bool )
        d223 = ( ( Bool -> Bool ) ∋ ( ( λ x224 -> ( ( Bool -> Bool ) ∋ ( ( λ x225 -> true ) ) ) $ ( false ) ) ) ) $ ( if d143 then p1 else p1 )
        d227 : if true then if false then Bool else Bool else if true then Bool else Bool
        d227 = if if true then d120 else false then if p3 then d76 else p1 else if p1 then false else false
        d228 : ( ( Set -> Set ) ∋ ( ( λ x229 -> ( ( Set -> Set ) ∋ ( ( λ x230 -> x229 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d228 = if if true then false else false then if p3 then p1 else true else if false then true else d173
        d231 : if false then if false then Bool else Bool else if false then Bool else Bool
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x232 -> ( ( Bool -> Bool ) ∋ ( ( λ x233 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if d40 then true else false )
        d234 : ( ( Set -> Set ) ∋ ( ( λ x235 -> ( ( Set -> Set ) ∋ ( ( λ x236 -> x235 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d234 = if if d15 then true else d159 then if d15 then true else d114 else if d43 then p1 else false
        d237 : ( ( Set -> Set ) ∋ ( ( λ x240 -> ( ( Set -> Set ) ∋ ( ( λ x241 -> Bool ) ) ) $ ( x240 ) ) ) ) $ ( if false then Bool else Bool )
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x238 -> ( ( Bool -> Bool ) ∋ ( ( λ x239 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then false else p1 )
        d242 : ( ( Set -> Set ) ∋ ( ( λ x244 -> if false then x244 else Bool ) ) ) $ ( if false then Bool else Bool )
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x243 -> if p1 then x243 else true ) ) ) $ ( if false then p1 else false )
        d245 : ( ( Set -> Set ) ∋ ( ( λ x246 -> ( ( Set -> Set ) ∋ ( ( λ x247 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d245 = if if true then p3 else p3 then if p1 then d217 else true else if true then p1 else d183
        d248 : ( ( Set -> Set ) ∋ ( ( λ x249 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d248 = if if p1 then true else true then if d8 then p3 else true else if true then false else true
        d251 : if false then if true then Bool else Bool else if true then Bool else Bool
        d251 = if if p3 then false else p3 then if false then p1 else false else if p3 then p3 else p1
        d252 : if true then if true then Bool else Bool else if false then Bool else Bool
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x253 -> ( ( Bool -> Bool ) ∋ ( ( λ x254 -> x254 ) ) ) $ ( p3 ) ) ) ) $ ( if d47 then d48 else false )
        d255 : ( ( Set -> Set ) ∋ ( ( λ x256 -> if false then x256 else Bool ) ) ) $ ( if false then Bool else Bool )
        d255 = if if d220 then d110 else d248 then if d91 then p3 else d122 else if false then p3 else false
        d257 : ( ( Set -> Set ) ∋ ( ( λ x259 -> if false then Bool else x259 ) ) ) $ ( if false then Bool else Bool )
        d257 = ( ( Bool -> Bool ) ∋ ( ( λ x258 -> if p1 then p3 else false ) ) ) $ ( if true then d148 else true )
        d260 : if false then if true then Bool else Bool else if true then Bool else Bool
        d260 = if if true then d107 else false then if p1 then d76 else true else if d32 then p3 else d212
        d261 : if false then if true then Bool else Bool else if false then Bool else Bool
        d261 = ( ( Bool -> Bool ) ∋ ( ( λ x262 -> ( ( Bool -> Bool ) ∋ ( ( λ x263 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if true then p3 else p3 )
        d264 : if true then if false then Bool else Bool else if true then Bool else Bool
        d264 = if if d159 then p3 else true then if d43 then d87 else d14 else if d187 then false else p1
        d265 : if true then if true then Bool else Bool else if false then Bool else Bool
        d265 = if if p1 then d47 else d125 then if p3 then p3 else p1 else if p1 then p3 else true
        d266 : if true then if false then Bool else Bool else if false then Bool else Bool
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x267 -> if p1 then d242 else p3 ) ) ) $ ( if p3 then p1 else true )
        d268 : ( ( Set -> Set ) ∋ ( ( λ x269 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> x269 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d268 = if if false then true else d4 then if false then true else p3 else if false then p3 else p3
        d271 : ( ( Set -> Set ) ∋ ( ( λ x274 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d271 = ( ( Bool -> Bool ) ∋ ( ( λ x272 -> ( ( Bool -> Bool ) ∋ ( ( λ x273 -> d17 ) ) ) $ ( true ) ) ) ) $ ( if d47 then d102 else true )
        d275 : if true then if false then Bool else Bool else if false then Bool else Bool
        d275 = if if p3 then d117 else p1 then if d160 then p3 else d32 else if p3 then d213 else d122
        d276 : ( ( Set -> Set ) ∋ ( ( λ x279 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( x279 ) ) ) ) $ ( if true then Bool else Bool )
        d276 = ( ( Bool -> Bool ) ∋ ( ( λ x277 -> ( ( Bool -> Bool ) ∋ ( ( λ x278 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then true else true )
        d281 : if true then if true then Bool else Bool else if false then Bool else Bool
        d281 = if if true then d257 else d275 then if true then p3 else true else if p1 then p1 else d58
        d282 : if true then if true then Bool else Bool else if true then Bool else Bool
        d282 = if if true then p3 else d58 then if d242 then p1 else d237 else if true then d220 else false
        d283 : if false then if true then Bool else Bool else if true then Bool else Bool
        d283 = if if false then p3 else p1 then if d176 then false else p3 else if p1 then p1 else p3
        d284 : ( ( Set -> Set ) ∋ ( ( λ x285 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d284 = if if p3 then d129 else false then if true then d183 else false else if p1 then true else d113
        d286 : ( ( Set -> Set ) ∋ ( ( λ x288 -> ( ( Set -> Set ) ∋ ( ( λ x289 -> Bool ) ) ) $ ( x288 ) ) ) ) $ ( if true then Bool else Bool )
        d286 = ( ( Bool -> Bool ) ∋ ( ( λ x287 -> if d159 then d251 else false ) ) ) $ ( if false then true else p3 )
        d290 : if false then if true then Bool else Bool else if true then Bool else Bool
        d290 = ( ( Bool -> Bool ) ∋ ( ( λ x291 -> if true then false else true ) ) ) $ ( if false then p1 else p1 )
        d292 : if false then if false then Bool else Bool else if true then Bool else Bool
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x293 -> ( ( Bool -> Bool ) ∋ ( ( λ x294 -> false ) ) ) $ ( d85 ) ) ) ) $ ( if true then p3 else true )
        d295 : ( ( Set -> Set ) ∋ ( ( λ x297 -> if true then x297 else x297 ) ) ) $ ( if false then Bool else Bool )
        d295 = ( ( Bool -> Bool ) ∋ ( ( λ x296 -> if p3 then p3 else false ) ) ) $ ( if d110 then p3 else true )
        d298 : if false then if false then Bool else Bool else if true then Bool else Bool
        d298 = if if d151 then p3 else true then if p1 then true else d148 else if d4 then d154 else d102
        d299 : if false then if false then Bool else Bool else if true then Bool else Bool
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x301 -> true ) ) ) $ ( false ) ) ) ) $ ( if d35 then d213 else d282 )
        d302 : ( ( Set -> Set ) ∋ ( ( λ x305 -> ( ( Set -> Set ) ∋ ( ( λ x306 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d302 = ( ( Bool -> Bool ) ∋ ( ( λ x303 -> ( ( Bool -> Bool ) ∋ ( ( λ x304 -> true ) ) ) $ ( d276 ) ) ) ) $ ( if p3 then true else d217 )
        d307 : if true then if false then Bool else Bool else if false then Bool else Bool
        d307 = if if d117 then p1 else d15 then if d167 then d15 else true else if false then d264 else p3
        d308 : if true then if true then Bool else Bool else if true then Bool else Bool
        d308 = if if d290 then false else p3 then if d183 then false else d255 else if d248 then false else false
        d309 : ( ( Set -> Set ) ∋ ( ( λ x312 -> if false then x312 else Bool ) ) ) $ ( if true then Bool else Bool )
        d309 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> ( ( Bool -> Bool ) ∋ ( ( λ x311 -> d160 ) ) ) $ ( x310 ) ) ) ) $ ( if false then d107 else d37 )
        d313 : if true then if true then Bool else Bool else if false then Bool else Bool
        d313 = ( ( Bool -> Bool ) ∋ ( ( λ x314 -> if x314 then p3 else false ) ) ) $ ( if false then d275 else p1 )
        d315 : ( ( Set -> Set ) ∋ ( ( λ x318 -> ( ( Set -> Set ) ∋ ( ( λ x319 -> x319 ) ) ) $ ( x318 ) ) ) ) $ ( if true then Bool else Bool )
        d315 = ( ( Bool -> Bool ) ∋ ( ( λ x316 -> ( ( Bool -> Bool ) ∋ ( ( λ x317 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if p3 then false else true )
        d320 : if true then if false then Bool else Bool else if false then Bool else Bool
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x321 -> ( ( Bool -> Bool ) ∋ ( ( λ x322 -> d248 ) ) ) $ ( true ) ) ) ) $ ( if p3 then p3 else false )
        d323 : ( ( Set -> Set ) ∋ ( ( λ x324 -> if true then x324 else x324 ) ) ) $ ( if false then Bool else Bool )
        d323 = if if true then false else true then if p1 then d212 else p1 else if d114 then d154 else p1
        d325 : ( ( Set -> Set ) ∋ ( ( λ x326 -> ( ( Set -> Set ) ∋ ( ( λ x327 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d325 = if if false then true else false then if true then true else d185 else if d13 then true else d120
        d328 : if true then if false then Bool else Bool else if false then Bool else Bool
        d328 = ( ( Bool -> Bool ) ∋ ( ( λ x329 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x329 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p1 else p1 )
        d331 : ( ( Set -> Set ) ∋ ( ( λ x334 -> if true then x334 else Bool ) ) ) $ ( if false then Bool else Bool )
        d331 = ( ( Bool -> Bool ) ∋ ( ( λ x332 -> ( ( Bool -> Bool ) ∋ ( ( λ x333 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if p3 then false else false )
        d335 : if false then if true then Bool else Bool else if true then Bool else Bool
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x336 -> ( ( Bool -> Bool ) ∋ ( ( λ x337 -> x337 ) ) ) $ ( x336 ) ) ) ) $ ( if true then d302 else p3 )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x339 -> if d133 then d284 else p3 ) ) ) $ ( if true then p3 else d87 )
        d341 : if false then if false then Bool else Bool else if false then Bool else Bool
        d341 = if if d261 then false else p3 then if false then false else d209 else if d148 then true else p3
        d342 : if false then if true then Bool else Bool else if false then Bool else Bool
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x343 -> ( ( Bool -> Bool ) ∋ ( ( λ x344 -> d69 ) ) ) $ ( d69 ) ) ) ) $ ( if true then d191 else false )
        d345 : if true then if false then Bool else Bool else if true then Bool else Bool
        d345 = if if false then true else d15 then if p3 then d128 else false else if p1 then p3 else true
        d346 : ( ( Set -> Set ) ∋ ( ( λ x349 -> ( ( Set -> Set ) ∋ ( ( λ x350 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d346 = ( ( Bool -> Bool ) ∋ ( ( λ x347 -> ( ( Bool -> Bool ) ∋ ( ( λ x348 -> x348 ) ) ) $ ( false ) ) ) ) $ ( if p3 then d216 else d320 )
        d351 : ( ( Set -> Set ) ∋ ( ( λ x353 -> ( ( Set -> Set ) ∋ ( ( λ x354 -> Bool ) ) ) $ ( x353 ) ) ) ) $ ( if true then Bool else Bool )
        d351 = ( ( Bool -> Bool ) ∋ ( ( λ x352 -> if x352 then d283 else d128 ) ) ) $ ( if p1 then true else p3 )
        d355 : ( ( Set -> Set ) ∋ ( ( λ x356 -> if true then Bool else x356 ) ) ) $ ( if true then Bool else Bool )
        d355 = if if d69 then d265 else false then if true then p1 else p3 else if d290 then d110 else false
        d357 : if false then if false then Bool else Bool else if true then Bool else Bool
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x358 -> ( ( Bool -> Bool ) ∋ ( ( λ x359 -> true ) ) ) $ ( d80 ) ) ) ) $ ( if d187 then true else false )
        d360 : if true then if true then Bool else Bool else if true then Bool else Bool
        d360 = if if false then p1 else p1 then if p3 then p3 else p1 else if false then p3 else d4
        d361 : if true then if false then Bool else Bool else if true then Bool else Bool
        d361 = ( ( Bool -> Bool ) ∋ ( ( λ x362 -> if d40 then d282 else d105 ) ) ) $ ( if d43 then p1 else p1 )
        d363 : if false then if false then Bool else Bool else if true then Bool else Bool
        d363 = if if true then d48 else p3 then if p1 then true else d351 else if true then p1 else p3
        d364 : if true then if true then Bool else Bool else if false then Bool else Bool
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x365 -> if p1 then p1 else x365 ) ) ) $ ( if p1 then false else d268 )
        d366 : if false then if true then Bool else Bool else if false then Bool else Bool
        d366 = ( ( Bool -> Bool ) ∋ ( ( λ x367 -> ( ( Bool -> Bool ) ∋ ( ( λ x368 -> d315 ) ) ) $ ( p3 ) ) ) ) $ ( if d260 then d69 else p1 )
        d369 : ( ( Set -> Set ) ∋ ( ( λ x370 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d369 = if if p3 then p1 else p1 then if d366 then d91 else p1 else if p3 then false else d93
        d371 : ( ( Set -> Set ) ∋ ( ( λ x372 -> ( ( Set -> Set ) ∋ ( ( λ x373 -> x373 ) ) ) $ ( x372 ) ) ) ) $ ( if true then Bool else Bool )
        d371 = if if d338 then p3 else p3 then if p1 then d85 else p3 else if d360 then d181 else p3
        d374 : ( ( Set -> Set ) ∋ ( ( λ x375 -> if true then x375 else x375 ) ) ) $ ( if false then Bool else Bool )
        d374 = if if d366 then false else false then if p1 then false else p3 else if d43 then p1 else p3
        d376 : ( ( Set -> Set ) ∋ ( ( λ x379 -> if false then x379 else x379 ) ) ) $ ( if true then Bool else Bool )
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x377 -> ( ( Bool -> Bool ) ∋ ( ( λ x378 -> false ) ) ) $ ( d216 ) ) ) ) $ ( if d170 then d191 else p3 )
        d380 : ( ( Set -> Set ) ∋ ( ( λ x382 -> ( ( Set -> Set ) ∋ ( ( λ x383 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d380 = ( ( Bool -> Bool ) ∋ ( ( λ x381 -> if x381 then false else true ) ) ) $ ( if true then p3 else d83 )
        d384 : if true then if false then Bool else Bool else if true then Bool else Bool
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x385 -> if p1 then d56 else p1 ) ) ) $ ( if p1 then d245 else d323 )
        d386 : if true then if true then Bool else Bool else if false then Bool else Bool
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x387 -> ( ( Bool -> Bool ) ∋ ( ( λ x388 -> d125 ) ) ) $ ( d30 ) ) ) ) $ ( if true then true else p1 )
        d389 : if false then if false then Bool else Bool else if false then Bool else Bool
        d389 = if if false then d133 else p1 then if true then true else d364 else if d183 then false else true
        d390 : if false then if false then Bool else Bool else if true then Bool else Bool
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x391 -> ( ( Bool -> Bool ) ∋ ( ( λ x392 -> false ) ) ) $ ( true ) ) ) ) $ ( if p1 then d143 else false )
        d393 : ( ( Set -> Set ) ∋ ( ( λ x396 -> ( ( Set -> Set ) ∋ ( ( λ x397 -> Bool ) ) ) $ ( x396 ) ) ) ) $ ( if true then Bool else Bool )
        d393 = ( ( Bool -> Bool ) ∋ ( ( λ x394 -> ( ( Bool -> Bool ) ∋ ( ( λ x395 -> d331 ) ) ) $ ( d200 ) ) ) ) $ ( if p3 then p3 else p3 )
        d398 : if true then if true then Bool else Bool else if true then Bool else Bool
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x399 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> false ) ) ) $ ( true ) ) ) ) $ ( if d276 then d64 else p3 )
        d401 : ( ( Set -> Set ) ∋ ( ( λ x402 -> ( ( Set -> Set ) ∋ ( ( λ x403 -> Bool ) ) ) $ ( x402 ) ) ) ) $ ( if true then Bool else Bool )
        d401 = if if d23 then true else p1 then if d93 then p1 else p1 else if p3 then false else p3
        d404 : ( ( Set -> Set ) ∋ ( ( λ x405 -> if false then x405 else x405 ) ) ) $ ( if false then Bool else Bool )
        d404 = if if d299 then d252 else false then if d154 then true else d76 else if d46 then p3 else p3
        d406 : ( ( Set -> Set ) ∋ ( ( λ x407 -> if false then x407 else Bool ) ) ) $ ( if false then Bool else Bool )
        d406 = if if false then d142 else d223 then if d189 then d299 else false else if true then d325 else false
        d408 : ( ( Set -> Set ) ∋ ( ( λ x409 -> ( ( Set -> Set ) ∋ ( ( λ x410 -> Bool ) ) ) $ ( x409 ) ) ) ) $ ( if true then Bool else Bool )
        d408 = if if p3 then d91 else d64 then if p1 then true else false else if d167 then d345 else p1
        d411 : if false then if false then Bool else Bool else if false then Bool else Bool
        d411 = if if d143 then d298 else d282 then if true then p1 else p3 else if d32 then false else p1
        d412 : ( ( Set -> Set ) ∋ ( ( λ x413 -> ( ( Set -> Set ) ∋ ( ( λ x414 -> x414 ) ) ) $ ( x413 ) ) ) ) $ ( if true then Bool else Bool )
        d412 = if if d223 then p3 else false then if d355 then false else true else if d342 then false else p3
        d415 : if false then if true then Bool else Bool else if false then Bool else Bool
        d415 = ( ( Bool -> Bool ) ∋ ( ( λ x416 -> if false then d21 else p3 ) ) ) $ ( if false then d87 else true )
        d417 : if true then if false then Bool else Bool else if false then Bool else Bool
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x418 -> ( ( Bool -> Bool ) ∋ ( ( λ x419 -> true ) ) ) $ ( d48 ) ) ) ) $ ( if p1 then p1 else d295 )
        d420 : ( ( Set -> Set ) ∋ ( ( λ x423 -> ( ( Set -> Set ) ∋ ( ( λ x424 -> x424 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d420 = ( ( Bool -> Bool ) ∋ ( ( λ x421 -> ( ( Bool -> Bool ) ∋ ( ( λ x422 -> x421 ) ) ) $ ( p3 ) ) ) ) $ ( if false then d284 else p3 )
        d425 : if true then if true then Bool else Bool else if true then Bool else Bool
        d425 = if if d151 then false else true then if true then d393 else p3 else if true then false else p3
        d426 : if true then if true then Bool else Bool else if true then Bool else Bool
        d426 = ( ( Bool -> Bool ) ∋ ( ( λ x427 -> if false then true else d148 ) ) ) $ ( if d404 then p1 else true )
        d428 : if true then if true then Bool else Bool else if true then Bool else Bool
        d428 = if if d159 then false else p3 then if d390 then d217 else p1 else if p1 then d216 else d143
        d429 : if true then if false then Bool else Bool else if false then Bool else Bool
        d429 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if d158 then d328 else d176 ) ) ) $ ( if d85 then p1 else d191 )
        d431 : if true then if false then Bool else Bool else if false then Bool else Bool
        d431 = if if p3 then p3 else p1 then if d408 then d220 else p1 else if p3 then false else false
        d432 : if true then if true then Bool else Bool else if true then Bool else Bool
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x433 -> ( ( Bool -> Bool ) ∋ ( ( λ x434 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if true then d170 else d140 )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x436 -> ( ( Set -> Set ) ∋ ( ( λ x437 -> x437 ) ) ) $ ( x436 ) ) ) ) $ ( if false then Bool else Bool )
        d435 = if if false then d271 else p1 then if p1 then p3 else d428 else if true then p3 else p1
        d438 : if true then if false then Bool else Bool else if true then Bool else Bool
        d438 = if if d309 then p3 else true then if p1 then d173 else p1 else if false then d276 else p3
        d439 : if true then if false then Bool else Bool else if true then Bool else Bool
        d439 = if if true then d133 else d415 then if p3 then p1 else d435 else if p1 then true else d158
        d440 : if false then if true then Bool else Bool else if false then Bool else Bool
        d440 = if if true then p1 else p1 then if d255 then d228 else p1 else if true then p3 else p3
        d441 : ( ( Set -> Set ) ∋ ( ( λ x442 -> ( ( Set -> Set ) ∋ ( ( λ x443 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d441 = if if d191 then p3 else d15 then if d231 then p3 else p1 else if false then d15 else false
        d444 : if true then if true then Bool else Bool else if true then Bool else Bool
        d444 = ( ( Bool -> Bool ) ∋ ( ( λ x445 -> if d176 then d401 else d386 ) ) ) $ ( if true then false else d271 )
        d446 : if false then if true then Bool else Bool else if false then Bool else Bool
        d446 = ( ( Bool -> Bool ) ∋ ( ( λ x447 -> ( ( Bool -> Bool ) ∋ ( ( λ x448 -> true ) ) ) $ ( true ) ) ) ) $ ( if p1 then d105 else p3 )
        d449 : if true then if true then Bool else Bool else if false then Bool else Bool
        d449 = if if d183 then d69 else p1 then if true then false else false else if p3 then p3 else p3
        d450 : if true then if true then Bool else Bool else if false then Bool else Bool
        d450 = ( ( Bool -> Bool ) ∋ ( ( λ x451 -> ( ( Bool -> Bool ) ∋ ( ( λ x452 -> true ) ) ) $ ( d216 ) ) ) ) $ ( if d292 then p1 else p1 )
        d453 : ( ( Set -> Set ) ∋ ( ( λ x455 -> if true then Bool else x455 ) ) ) $ ( if true then Bool else Bool )
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x454 -> if true then true else false ) ) ) $ ( if p3 then p1 else p1 )
        d456 : ( ( Set -> Set ) ∋ ( ( λ x457 -> ( ( Set -> Set ) ∋ ( ( λ x458 -> Bool ) ) ) $ ( x457 ) ) ) ) $ ( if true then Bool else Bool )
        d456 = if if false then p1 else d83 then if p1 then d196 else false else if p1 then p1 else d325
        d459 : if false then if false then Bool else Bool else if false then Bool else Bool
        d459 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x461 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then true else p3 )
        d462 : ( ( Set -> Set ) ∋ ( ( λ x463 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d462 = if if false then false else d282 then if d438 then d87 else d14 else if d398 then d183 else p1
        d464 : ( ( Set -> Set ) ∋ ( ( λ x466 -> ( ( Set -> Set ) ∋ ( ( λ x467 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d464 = ( ( Bool -> Bool ) ∋ ( ( λ x465 -> if x465 then p3 else false ) ) ) $ ( if p3 then d47 else true )
        d468 : ( ( Set -> Set ) ∋ ( ( λ x469 -> if false then Bool else x469 ) ) ) $ ( if false then Bool else Bool )
        d468 = if if true then true else p1 then if p3 then p3 else false else if false then false else p3
        d470 : if true then if true then Bool else Bool else if true then Bool else Bool
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x471 -> if true then true else d10 ) ) ) $ ( if false then p3 else false )
        d472 : ( ( Set -> Set ) ∋ ( ( λ x475 -> ( ( Set -> Set ) ∋ ( ( λ x476 -> x476 ) ) ) $ ( x475 ) ) ) ) $ ( if true then Bool else Bool )
        d472 = ( ( Bool -> Bool ) ∋ ( ( λ x473 -> ( ( Bool -> Bool ) ∋ ( ( λ x474 -> false ) ) ) $ ( false ) ) ) ) $ ( if d275 then p3 else p3 )
        d477 : if false then if true then Bool else Bool else if false then Bool else Bool
        d477 = if if true then p3 else p3 then if false then p1 else p3 else if false then p1 else true
        d478 : ( ( Set -> Set ) ∋ ( ( λ x481 -> ( ( Set -> Set ) ∋ ( ( λ x482 -> x482 ) ) ) $ ( x481 ) ) ) ) $ ( if false then Bool else Bool )
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x479 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if p1 then d462 else true )
        d483 : ( ( Set -> Set ) ∋ ( ( λ x484 -> if true then x484 else x484 ) ) ) $ ( if false then Bool else Bool )
        d483 = if if d266 then true else true then if p3 then p3 else p3 else if true then false else d8
        d485 : ( ( Set -> Set ) ∋ ( ( λ x486 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d485 = if if false then false else d390 then if p1 then true else p3 else if d369 then p3 else d58
        d487 : if false then if false then Bool else Bool else if true then Bool else Bool
        d487 = if if p3 then p1 else p3 then if d114 then false else d10 else if d252 then d8 else p1
        d488 : if true then if true then Bool else Bool else if true then Bool else Bool
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x489 -> ( ( Bool -> Bool ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then d275 else d149 )
        d491 : if false then if false then Bool else Bool else if false then Bool else Bool
        d491 = ( ( Bool -> Bool ) ∋ ( ( λ x492 -> ( ( Bool -> Bool ) ∋ ( ( λ x493 -> x492 ) ) ) $ ( d93 ) ) ) ) $ ( if p1 then p1 else p3 )
        d494 : if false then if false then Bool else Bool else if false then Bool else Bool
        d494 = if if p3 then true else p3 then if p1 then p3 else d117 else if p1 then d237 else p1
        d495 : ( ( Set -> Set ) ∋ ( ( λ x498 -> ( ( Set -> Set ) ∋ ( ( λ x499 -> x498 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d495 = ( ( Bool -> Bool ) ∋ ( ( λ x496 -> ( ( Bool -> Bool ) ∋ ( ( λ x497 -> d444 ) ) ) $ ( true ) ) ) ) $ ( if d183 then p1 else false )
        d500 : if true then if true then Bool else Bool else if true then Bool else Bool
        d500 = ( ( Bool -> Bool ) ∋ ( ( λ x501 -> ( ( Bool -> Bool ) ∋ ( ( λ x502 -> true ) ) ) $ ( d113 ) ) ) ) $ ( if d56 then p3 else d125 )
        d503 : if true then if false then Bool else Bool else if true then Bool else Bool
        d503 = if if false then p1 else p1 then if d120 then d181 else false else if d425 then p3 else false
        d504 : if false then if true then Bool else Bool else if false then Bool else Bool
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x505 -> ( ( Bool -> Bool ) ∋ ( ( λ x506 -> d76 ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else false )
        d507 : if true then if false then Bool else Bool else if true then Bool else Bool
        d507 = if if p3 then true else true then if d137 then p3 else d212 else if false then p3 else false
        d508 : ( ( Set -> Set ) ∋ ( ( λ x511 -> if false then x511 else Bool ) ) ) $ ( if false then Bool else Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x509 -> ( ( Bool -> Bool ) ∋ ( ( λ x510 -> false ) ) ) $ ( d128 ) ) ) ) $ ( if p1 then d404 else d384 )
        d512 : if true then if true then Bool else Bool else if false then Bool else Bool
        d512 = if if d56 then p1 else d464 then if d488 then d335 else d374 else if d361 then d320 else true
        d513 : if false then if true then Bool else Bool else if false then Bool else Bool
        d513 = if if d485 then d173 else false then if d495 then true else false else if false then false else d28
        d514 : ( ( Set -> Set ) ∋ ( ( λ x517 -> ( ( Set -> Set ) ∋ ( ( λ x518 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x515 -> ( ( Bool -> Bool ) ∋ ( ( λ x516 -> d504 ) ) ) $ ( d91 ) ) ) ) $ ( if p1 then false else d271 )
        d519 : if true then if false then Bool else Bool else if true then Bool else Bool
        d519 = if if false then d159 else d389 then if p3 then p1 else false else if d60 then false else false
        d520 : if true then if false then Bool else Bool else if false then Bool else Bool
        d520 = if if d35 then p1 else true then if true then p1 else false else if p3 then d151 else d58
        d521 : if false then if false then Bool else Bool else if true then Bool else Bool
        d521 = if if p1 then d307 else true then if d261 then p3 else d110 else if p1 then p1 else d30
        d522 : if true then if false then Bool else Bool else if false then Bool else Bool
        d522 = ( ( Bool -> Bool ) ∋ ( ( λ x523 -> if true then x523 else d408 ) ) ) $ ( if d113 then d30 else d408 )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x525 -> if true then x525 else Bool ) ) ) $ ( if false then Bool else Bool )
        d524 = if if p1 then d271 else d248 then if d438 then true else true else if d508 then true else p3
        d526 : if false then if false then Bool else Bool else if true then Bool else Bool
        d526 = if if false then p3 else p1 then if d325 then true else false else if false then p1 else p3
        d527 : if true then if true then Bool else Bool else if false then Bool else Bool
        d527 = ( ( Bool -> Bool ) ∋ ( ( λ x528 -> ( ( Bool -> Bool ) ∋ ( ( λ x529 -> x528 ) ) ) $ ( d200 ) ) ) ) $ ( if true then p3 else d341 )
        d530 : ( ( Set -> Set ) ∋ ( ( λ x531 -> if false then Bool else x531 ) ) ) $ ( if false then Bool else Bool )
        d530 = if if true then d351 else d315 then if p3 then d351 else p1 else if d28 then false else false
        d532 : ( ( Set -> Set ) ∋ ( ( λ x533 -> ( ( Set -> Set ) ∋ ( ( λ x534 -> x534 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d532 = if if d237 then false else false then if true then p1 else d390 else if true then p3 else d308
        d535 : ( ( Set -> Set ) ∋ ( ( λ x537 -> ( ( Set -> Set ) ∋ ( ( λ x538 -> x537 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d535 = ( ( Bool -> Bool ) ∋ ( ( λ x536 -> if d346 then true else x536 ) ) ) $ ( if false then p3 else p1 )
        d539 : if false then if true then Bool else Bool else if true then Bool else Bool
        d539 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> if d200 then p1 else false ) ) ) $ ( if d290 then p3 else p3 )
        d541 : if false then if false then Bool else Bool else if true then Bool else Bool
        d541 = ( ( Bool -> Bool ) ∋ ( ( λ x542 -> ( ( Bool -> Bool ) ∋ ( ( λ x543 -> d264 ) ) ) $ ( true ) ) ) ) $ ( if d257 then true else p3 )
        d544 : if false then if true then Bool else Bool else if true then Bool else Bool
        d544 = if if d519 then d228 else d102 then if d331 then d245 else true else if d508 then d102 else p3
        d545 : if true then if true then Bool else Bool else if true then Bool else Bool
        d545 = ( ( Bool -> Bool ) ∋ ( ( λ x546 -> if false then false else false ) ) ) $ ( if d345 then false else d360 )
        d547 : if false then if true then Bool else Bool else if true then Bool else Bool
        d547 = ( ( Bool -> Bool ) ∋ ( ( λ x548 -> if true then false else x548 ) ) ) $ ( if p3 then d271 else true )
        d549 : if false then if false then Bool else Bool else if false then Bool else Bool
        d549 = if if false then p3 else false then if true then p3 else true else if true then true else d69
        d550 : if false then if true then Bool else Bool else if false then Bool else Bool
        d550 = ( ( Bool -> Bool ) ∋ ( ( λ x551 -> if true then true else p1 ) ) ) $ ( if d158 then d295 else p3 )
        d552 : if true then if false then Bool else Bool else if false then Bool else Bool
        d552 = if if p3 then d401 else true then if p3 then p1 else false else if p1 then p3 else d495
        d553 : if false then if true then Bool else Bool else if false then Bool else Bool
        d553 = ( ( Bool -> Bool ) ∋ ( ( λ x554 -> ( ( Bool -> Bool ) ∋ ( ( λ x555 -> d185 ) ) ) $ ( p1 ) ) ) ) $ ( if false then d415 else p3 )
        d556 : ( ( Set -> Set ) ∋ ( ( λ x557 -> ( ( Set -> Set ) ∋ ( ( λ x558 -> x558 ) ) ) $ ( x557 ) ) ) ) $ ( if true then Bool else Bool )
        d556 = if if false then d143 else true then if p1 then d142 else false else if d15 then p1 else false
        d559 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x561 -> x561 ) ) ) $ ( x560 ) ) ) ) $ ( if false then Bool else Bool )
        d559 = if if false then true else d539 then if p1 then p1 else d342 else if p1 then d125 else d364
        d562 : ( ( Set -> Set ) ∋ ( ( λ x563 -> if true then x563 else x563 ) ) ) $ ( if false then Bool else Bool )
        d562 = if if p1 then true else d48 then if d102 then false else true else if false then p3 else false
        d564 : ( ( Set -> Set ) ∋ ( ( λ x567 -> ( ( Set -> Set ) ∋ ( ( λ x568 -> x568 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d564 = ( ( Bool -> Bool ) ∋ ( ( λ x565 -> ( ( Bool -> Bool ) ∋ ( ( λ x566 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d346 else p3 )
        d569 : if false then if false then Bool else Bool else if true then Bool else Bool
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if d281 then d271 else false ) ) ) $ ( if false then false else d503 )
        d571 : if false then if true then Bool else Bool else if true then Bool else Bool
        d571 = if if true then p1 else d40 then if d237 then d105 else false else if false then d346 else p1
        d572 : if false then if true then Bool else Bool else if true then Bool else Bool
        d572 = if if true then false else p3 then if false then false else true else if d187 then p3 else p3
        d573 : if false then if true then Bool else Bool else if true then Bool else Bool
        d573 = ( ( Bool -> Bool ) ∋ ( ( λ x574 -> if true then d559 else false ) ) ) $ ( if d408 then false else p1 )
        d575 : ( ( Set -> Set ) ∋ ( ( λ x577 -> ( ( Set -> Set ) ∋ ( ( λ x578 -> x577 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d575 = ( ( Bool -> Bool ) ∋ ( ( λ x576 -> if false then x576 else false ) ) ) $ ( if true then p1 else d450 )
        d579 : if true then if true then Bool else Bool else if false then Bool else Bool
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x581 -> x580 ) ) ) $ ( d110 ) ) ) ) $ ( if p3 then false else d143 )
        d582 : if true then if false then Bool else Bool else if true then Bool else Bool
        d582 = if if true then d360 else p3 then if false then d255 else d522 else if true then d101 else true
        d583 : if false then if true then Bool else Bool else if false then Bool else Bool
        d583 = ( ( Bool -> Bool ) ∋ ( ( λ x584 -> ( ( Bool -> Bool ) ∋ ( ( λ x585 -> d167 ) ) ) $ ( d14 ) ) ) ) $ ( if d389 then p1 else p3 )
        d586 : ( ( Set -> Set ) ∋ ( ( λ x587 -> ( ( Set -> Set ) ∋ ( ( λ x588 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d586 = if if p1 then false else true then if p1 then p3 else d571 else if false then p3 else p3
        d589 : if false then if false then Bool else Bool else if true then Bool else Bool
        d589 = if if p3 then p3 else true then if false then false else true else if d412 then true else p3
        d590 : ( ( Set -> Set ) ∋ ( ( λ x593 -> if false then Bool else x593 ) ) ) $ ( if true then Bool else Bool )
        d590 = ( ( Bool -> Bool ) ∋ ( ( λ x591 -> ( ( Bool -> Bool ) ∋ ( ( λ x592 -> x592 ) ) ) $ ( x591 ) ) ) ) $ ( if false then d284 else p3 )
        d594 : ( ( Set -> Set ) ∋ ( ( λ x596 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d594 = ( ( Bool -> Bool ) ∋ ( ( λ x595 -> if d464 then d449 else false ) ) ) $ ( if d342 then d183 else true )
        d597 : if true then if true then Bool else Bool else if false then Bool else Bool
        d597 = ( ( Bool -> Bool ) ∋ ( ( λ x598 -> if true then true else d28 ) ) ) $ ( if p1 then false else d521 )
        d599 : if false then if true then Bool else Bool else if true then Bool else Bool
        d599 = if if p3 then p1 else p3 then if p1 then d325 else p1 else if true then p3 else p3
        d600 : ( ( Set -> Set ) ∋ ( ( λ x601 -> ( ( Set -> Set ) ∋ ( ( λ x602 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d600 = if if d107 then p1 else d302 then if p1 then p3 else true else if d187 then d260 else p1
        d603 : if false then if true then Bool else Bool else if false then Bool else Bool
        d603 = if if d302 then d586 else false then if true then p3 else false else if d209 then p1 else false
        d604 : ( ( Set -> Set ) ∋ ( ( λ x607 -> if true then Bool else x607 ) ) ) $ ( if false then Bool else Bool )
        d604 = ( ( Bool -> Bool ) ∋ ( ( λ x605 -> ( ( Bool -> Bool ) ∋ ( ( λ x606 -> true ) ) ) $ ( d295 ) ) ) ) $ ( if d255 then true else d128 )
        d608 : ( ( Set -> Set ) ∋ ( ( λ x609 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( x609 ) ) ) ) $ ( if true then Bool else Bool )
        d608 = if if false then d105 else p1 then if p1 then true else true else if p1 then p1 else false
        d611 : if false then if false then Bool else Bool else if false then Bool else Bool
        d611 = if if p3 then true else d541 then if p1 then false else true else if d532 then p1 else d345
        d612 : ( ( Set -> Set ) ∋ ( ( λ x614 -> ( ( Set -> Set ) ∋ ( ( λ x615 -> x615 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d612 = ( ( Bool -> Bool ) ∋ ( ( λ x613 -> if d342 then false else true ) ) ) $ ( if true then p3 else false )
        d616 : ( ( Set -> Set ) ∋ ( ( λ x617 -> ( ( Set -> Set ) ∋ ( ( λ x618 -> x617 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d616 = if if false then p1 else d357 then if d85 then true else p1 else if p1 then true else p1
        d619 : if true then if false then Bool else Bool else if false then Bool else Bool
        d619 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x621 -> x620 ) ) ) $ ( d390 ) ) ) ) $ ( if p1 then d160 else p1 )
        d622 : ( ( Set -> Set ) ∋ ( ( λ x625 -> if false then Bool else x625 ) ) ) $ ( if false then Bool else Bool )
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x623 -> ( ( Bool -> Bool ) ∋ ( ( λ x624 -> d110 ) ) ) $ ( p1 ) ) ) ) $ ( if d456 then false else false )
        d626 : if true then if false then Bool else Bool else if true then Bool else Bool
        d626 = if if d491 then p3 else d495 then if true then p3 else d431 else if true then d520 else false
        d627 : if true then if false then Bool else Bool else if false then Bool else Bool
        d627 = if if p3 then false else false then if true then d468 else p3 else if true then d234 else d242
        d628 : if false then if true then Bool else Bool else if false then Bool else Bool
        d628 = if if p1 then d411 else true then if false then true else d187 else if false then d345 else p3
        d629 : if true then if false then Bool else Bool else if false then Bool else Bool
        d629 = if if p3 then p3 else d8 then if d181 then false else true else if d223 then p1 else d346
        d630 : ( ( Set -> Set ) ∋ ( ( λ x633 -> ( ( Set -> Set ) ∋ ( ( λ x634 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d630 = ( ( Bool -> Bool ) ∋ ( ( λ x631 -> ( ( Bool -> Bool ) ∋ ( ( λ x632 -> p1 ) ) ) $ ( x631 ) ) ) ) $ ( if d341 then p3 else false )
        d635 : if false then if false then Bool else Bool else if true then Bool else Bool
        d635 = if if false then d374 else p3 then if d284 then false else d355 else if d271 then p1 else d553
        d636 : if false then if false then Bool else Bool else if false then Bool else Bool
        d636 = if if false then p3 else d53 then if p3 then d128 else d380 else if d612 then p1 else d521
        d637 : if false then if false then Bool else Bool else if true then Bool else Bool
        d637 = if if p1 then d559 else false then if p1 then d231 else false else if d338 then p1 else true
        d638 : ( ( Set -> Set ) ∋ ( ( λ x641 -> ( ( Set -> Set ) ∋ ( ( λ x642 -> Bool ) ) ) $ ( x641 ) ) ) ) $ ( if true then Bool else Bool )
        d638 = ( ( Bool -> Bool ) ∋ ( ( λ x639 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> p3 ) ) ) $ ( x639 ) ) ) ) $ ( if d331 then d519 else p3 )
        d643 : ( ( Set -> Set ) ∋ ( ( λ x644 -> if true then x644 else Bool ) ) ) $ ( if false then Bool else Bool )
        d643 = if if false then d105 else p1 then if d181 then false else false else if false then d102 else d83
        d645 : ( ( Set -> Set ) ∋ ( ( λ x647 -> if false then x647 else Bool ) ) ) $ ( if true then Bool else Bool )
        d645 = ( ( Bool -> Bool ) ∋ ( ( λ x646 -> if true then d477 else d110 ) ) ) $ ( if p3 then p3 else true )
        d648 : ( ( Set -> Set ) ∋ ( ( λ x649 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( x649 ) ) ) ) $ ( if true then Bool else Bool )
        d648 = if if p3 then d209 else false then if p1 then d597 else true else if false then p1 else d456
        d651 : ( ( Set -> Set ) ∋ ( ( λ x652 -> if false then Bool else x652 ) ) ) $ ( if false then Bool else Bool )
        d651 = if if true then d23 else false then if d559 then d438 else p3 else if false then d323 else true
        d653 : if false then if true then Bool else Bool else if true then Bool else Bool
        d653 = ( ( Bool -> Bool ) ∋ ( ( λ x654 -> ( ( Bool -> Bool ) ∋ ( ( λ x655 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if true then p3 else true )
        d656 : ( ( Set -> Set ) ∋ ( ( λ x659 -> if true then Bool else x659 ) ) ) $ ( if true then Bool else Bool )
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x657 -> ( ( Bool -> Bool ) ∋ ( ( λ x658 -> false ) ) ) $ ( d435 ) ) ) ) $ ( if true then false else p1 )
        d660 : if false then if true then Bool else Bool else if true then Bool else Bool
        d660 = if if d282 then true else false then if true then p1 else d133 else if d360 then d210 else false
        d661 : if true then if false then Bool else Bool else if true then Bool else Bool
        d661 = ( ( Bool -> Bool ) ∋ ( ( λ x662 -> ( ( Bool -> Bool ) ∋ ( ( λ x663 -> d453 ) ) ) $ ( false ) ) ) ) $ ( if true then d341 else false )
        d664 : if false then if false then Bool else Bool else if false then Bool else Bool
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x665 -> if true then d181 else d415 ) ) ) $ ( if true then false else d251 )
        d666 : ( ( Set -> Set ) ∋ ( ( λ x668 -> ( ( Set -> Set ) ∋ ( ( λ x669 -> Bool ) ) ) $ ( x668 ) ) ) ) $ ( if false then Bool else Bool )
        d666 = ( ( Bool -> Bool ) ∋ ( ( λ x667 -> if d459 then d284 else false ) ) ) $ ( if d56 then p1 else d286 )
        d670 : ( ( Set -> Set ) ∋ ( ( λ x671 -> ( ( Set -> Set ) ∋ ( ( λ x672 -> x672 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d670 = if if d393 then false else p3 then if d503 then d653 else p1 else if d487 then p1 else false
        d673 : if false then if true then Bool else Bool else if false then Bool else Bool
        d673 = if if p1 then p1 else p3 then if true then p1 else p1 else if p1 then d129 else p1
        d674 : if false then if false then Bool else Bool else if true then Bool else Bool
        d674 = ( ( Bool -> Bool ) ∋ ( ( λ x675 -> ( ( Bool -> Bool ) ∋ ( ( λ x676 -> false ) ) ) $ ( true ) ) ) ) $ ( if d257 then false else d569 )
        d677 : if true then if true then Bool else Bool else if true then Bool else Bool
        d677 = if if p3 then true else d281 then if p1 then false else d627 else if p3 then d384 else true
        d678 : ( ( Set -> Set ) ∋ ( ( λ x679 -> ( ( Set -> Set ) ∋ ( ( λ x680 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d678 = if if d521 then p1 else p1 then if true then true else d666 else if d390 then false else true
        d681 : ( ( Set -> Set ) ∋ ( ( λ x682 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d681 = if if d366 then p3 else false then if false then d389 else p3 else if p3 then true else p3
        d683 : ( ( Set -> Set ) ∋ ( ( λ x684 -> if true then Bool else x684 ) ) ) $ ( if false then Bool else Bool )
        d683 = if if false then true else false then if false then p1 else d154 else if d98 then p1 else d637
        d685 : if true then if false then Bool else Bool else if true then Bool else Bool
        d685 = ( ( Bool -> Bool ) ∋ ( ( λ x686 -> if x686 then p3 else d26 ) ) ) $ ( if p1 then p1 else p3 )
        d687 : if false then if true then Bool else Bool else if true then Bool else Bool
        d687 = ( ( Bool -> Bool ) ∋ ( ( λ x688 -> if false then d227 else d550 ) ) ) $ ( if p1 then d521 else p1 )
        d689 : if false then if true then Bool else Bool else if true then Bool else Bool
        d689 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> ( ( Bool -> Bool ) ∋ ( ( λ x691 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d58 then d80 else true )
        d692 : ( ( Set -> Set ) ∋ ( ( λ x693 -> if true then x693 else Bool ) ) ) $ ( if true then Bool else Bool )
        d692 = if if p3 then d167 else true then if false then true else p3 else if d266 then d167 else p1
        d694 : ( ( Set -> Set ) ∋ ( ( λ x697 -> ( ( Set -> Set ) ∋ ( ( λ x698 -> Bool ) ) ) $ ( x697 ) ) ) ) $ ( if false then Bool else Bool )
        d694 = ( ( Bool -> Bool ) ∋ ( ( λ x695 -> ( ( Bool -> Bool ) ∋ ( ( λ x696 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if d6 then p3 else true )
        d699 : ( ( Set -> Set ) ∋ ( ( λ x700 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d699 = if if d53 then p1 else false then if p1 then false else true else if p3 then d627 else false
        d701 : if false then if false then Bool else Bool else if true then Bool else Bool
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x702 -> ( ( Bool -> Bool ) ∋ ( ( λ x703 -> d299 ) ) ) $ ( p1 ) ) ) ) $ ( if d196 then true else p3 )
        d704 : ( ( Set -> Set ) ∋ ( ( λ x705 -> if false then x705 else x705 ) ) ) $ ( if true then Bool else Bool )
        d704 = if if p1 then d309 else false then if p1 then true else p3 else if d283 then p3 else false
        d706 : if true then if false then Bool else Bool else if false then Bool else Bool
        d706 = ( ( Bool -> Bool ) ∋ ( ( λ x707 -> ( ( Bool -> Bool ) ∋ ( ( λ x708 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if p1 then true else p3 )
        d709 : if false then if false then Bool else Bool else if true then Bool else Bool
        d709 = if if p1 then p3 else p3 then if p3 then p1 else d583 else if d527 then p1 else false
        d710 : ( ( Set -> Set ) ∋ ( ( λ x711 -> ( ( Set -> Set ) ∋ ( ( λ x712 -> x712 ) ) ) $ ( x711 ) ) ) ) $ ( if true then Bool else Bool )
        d710 = if if d355 then p3 else false then if d65 then p3 else p3 else if d189 then false else false
        d713 : ( ( Set -> Set ) ∋ ( ( λ x716 -> ( ( Set -> Set ) ∋ ( ( λ x717 -> x716 ) ) ) $ ( x716 ) ) ) ) $ ( if true then Bool else Bool )
        d713 = ( ( Bool -> Bool ) ∋ ( ( λ x714 -> ( ( Bool -> Bool ) ∋ ( ( λ x715 -> x715 ) ) ) $ ( d470 ) ) ) ) $ ( if p3 then d636 else d524 )
        d718 : if true then if true then Bool else Bool else if false then Bool else Bool
        d718 = if if d257 then false else p1 then if p1 then false else p3 else if p1 then d120 else false
        d719 : ( ( Set -> Set ) ∋ ( ( λ x720 -> if false then x720 else x720 ) ) ) $ ( if false then Bool else Bool )
        d719 = if if p1 then true else p1 then if p3 then d472 else true else if false then p1 else true
        d721 : ( ( Set -> Set ) ∋ ( ( λ x723 -> if true then x723 else Bool ) ) ) $ ( if true then Bool else Bool )
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x722 -> if false then d562 else d519 ) ) ) $ ( if d677 then d242 else d187 )
        d724 : ( ( Set -> Set ) ∋ ( ( λ x727 -> ( ( Set -> Set ) ∋ ( ( λ x728 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x725 -> ( ( Bool -> Bool ) ∋ ( ( λ x726 -> x725 ) ) ) $ ( d220 ) ) ) ) $ ( if d453 then p1 else p3 )
        d729 : ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then Bool else x730 ) ) ) $ ( if true then Bool else Bool )
        d729 = if if p1 then d122 else d446 then if false then d626 else p1 else if d275 then d40 else false
        d731 : ( ( Set -> Set ) ∋ ( ( λ x732 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d731 = if if true then d645 else d338 then if p3 then p1 else d15 else if d485 then true else false
        d733 : if true then if false then Bool else Bool else if true then Bool else Bool
        d733 = ( ( Bool -> Bool ) ∋ ( ( λ x734 -> ( ( Bool -> Bool ) ∋ ( ( λ x735 -> p1 ) ) ) $ ( d420 ) ) ) ) $ ( if d320 then p1 else d674 )
        d736 : if true then if false then Bool else Bool else if false then Bool else Bool
        d736 = ( ( Bool -> Bool ) ∋ ( ( λ x737 -> if true then false else d441 ) ) ) $ ( if d47 then true else d83 )
        d738 : ( ( Set -> Set ) ∋ ( ( λ x741 -> if true then x741 else x741 ) ) ) $ ( if true then Bool else Bool )
        d738 = ( ( Bool -> Bool ) ∋ ( ( λ x739 -> ( ( Bool -> Bool ) ∋ ( ( λ x740 -> d450 ) ) ) $ ( d83 ) ) ) ) $ ( if false then d685 else d462 )
        d742 : if false then if true then Bool else Bool else if true then Bool else Bool
        d742 = if if p1 then p1 else p3 then if true then true else d170 else if false then true else d604
        d743 : if true then if false then Bool else Bool else if false then Bool else Bool
        d743 = if if d357 then true else p1 then if p1 then d411 else true else if false then p3 else d426
        d744 : ( ( Set -> Set ) ∋ ( ( λ x745 -> if false then Bool else x745 ) ) ) $ ( if false then Bool else Bool )
        d744 = if if true then d113 else p3 then if false then d122 else true else if p1 then false else d503
        d746 : if true then if true then Bool else Bool else if false then Bool else Bool
        d746 = if if p1 then d472 else d176 then if d412 then true else false else if d643 then false else d637
        d747 : if true then if false then Bool else Bool else if true then Bool else Bool
        d747 = ( ( Bool -> Bool ) ∋ ( ( λ x748 -> if true then p1 else d98 ) ) ) $ ( if p3 then p3 else p3 )
    module M'  = M ( false ) 
    d749 : if false then if false then Bool else Bool else if false then Bool else Bool
    d749 = ( M'.d223 ) $ ( ( M'.d30 ) $ ( ( M'.d549 ) $ ( ( ( M.d261 ) $ ( ( M'.d257 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( false ) ) ) ) $ ( ( M'.d603 ) $ ( ( M'.d283 ) $ ( if true then false else true ) ) ) ) ) )
    d751 : if false then if true then Bool else Bool else if false then Bool else Bool
    d751 = ( ( M.d283 ) $ ( if false then d749 else false ) ) $ ( if d749 then false else d749 )
    d752 : ( ( Set -> Set ) ∋ ( ( λ x753 -> if true then x753 else x753 ) ) ) $ ( if true then Bool else Bool )
    d752 = if if d751 then d749 else d751 then if d749 then false else true else if false then d751 else d751
    d754 : ( ( Set -> Set ) ∋ ( ( λ x755 -> if false then Bool else x755 ) ) ) $ ( if true then Bool else Bool )
    d754 = ( M'.d742 ) $ ( ( ( M.d439 ) $ ( ( M'.d264 ) $ ( ( ( M.d556 ) $ ( d751 ) ) $ ( d751 ) ) ) ) $ ( ( M'.d313 ) $ ( if false then d749 else false ) ) )
    d756 : ( ( Set -> Set ) ∋ ( ( λ x757 -> ( ( Set -> Set ) ∋ ( ( λ x758 -> x758 ) ) ) $ ( x757 ) ) ) ) $ ( if true then Bool else Bool )
    d756 = ( M'.d411 ) $ ( ( ( M.d167 ) $ ( if false then true else d754 ) ) $ ( if d749 then d749 else true ) )
    d759 : if false then if true then Bool else Bool else if true then Bool else Bool
    d759 = ( M'.d582 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x760 -> ( M'.d23 ) $ ( ( M'.d468 ) $ ( ( M'.d733 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x761 -> d751 ) ) ) $ ( true ) ) ) ) ) ) ) $ ( if false then true else d756 ) )
    d762 : ( ( Set -> Set ) ∋ ( ( λ x763 -> if true then x763 else x763 ) ) ) $ ( if false then Bool else Bool )
    d762 = if if true then false else false then if d752 then false else d759 else if false then true else d756
    d764 : ( ( Set -> Set ) ∋ ( ( λ x765 -> ( ( Set -> Set ) ∋ ( ( λ x766 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d764 = if if d759 then true else true then if false then false else false else if true then d762 else true
    d767 : if false then if false then Bool else Bool else if false then Bool else Bool
    d767 = ( M'.d637 ) $ ( ( ( M.d59 ) $ ( if d752 then true else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x768 -> x768 ) ) ) $ ( d751 ) ) )
    d769 : if true then if true then Bool else Bool else if false then Bool else Bool
    d769 = ( ( M.d699 ) $ ( ( M'.d137 ) $ ( ( ( M.d113 ) $ ( false ) ) $ ( true ) ) ) ) $ ( ( M'.d627 ) $ ( if false then d762 else false ) )
    d770 : if false then if false then Bool else Bool else if true then Bool else Bool
    d770 = ( ( M.d539 ) $ ( ( ( M.d17 ) $ ( d749 ) ) $ ( d754 ) ) ) $ ( ( M'.d234 ) $ ( ( M'.d76 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x771 -> d754 ) ) ) $ ( true ) ) ) )
    d772 : ( ( Set -> Set ) ∋ ( ( λ x773 -> if true then x773 else x773 ) ) ) $ ( if false then Bool else Bool )
    d772 = if if d762 then d756 else true then if false then d762 else d759 else if d749 then false else false
    d774 : if true then if true then Bool else Bool else if false then Bool else Bool
    d774 = ( M'.d426 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x775 -> ( ( Bool -> Bool ) ∋ ( ( λ x776 -> d756 ) ) ) $ ( false ) ) ) ) $ ( if false then d772 else true ) )
    d777 : if true then if false then Bool else Bool else if false then Bool else Bool
    d777 = ( M'.d213 ) $ ( ( ( M.d438 ) $ ( ( M'.d351 ) $ ( ( M'.d26 ) $ ( if true then d764 else false ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x778 -> false ) ) ) $ ( true ) ) )
    d779 : ( ( Set -> Set ) ∋ ( ( λ x780 -> if true then Bool else x780 ) ) ) $ ( if false then Bool else Bool )
    d779 = ( M'.d268 ) $ ( ( M'.d673 ) $ ( ( ( M.d261 ) $ ( ( ( M.d701 ) $ ( false ) ) $ ( d754 ) ) ) $ ( ( ( M.d271 ) $ ( d774 ) ) $ ( true ) ) ) )
    d781 : ( ( Set -> Set ) ∋ ( ( λ x782 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d781 = ( ( M.d390 ) $ ( ( M'.d520 ) $ ( ( ( M.d562 ) $ ( d754 ) ) $ ( true ) ) ) ) $ ( if d764 then d769 else d767 )
    d783 : if false then if false then Bool else Bool else if false then Bool else Bool
    d783 = if if d762 then d751 else true then if d779 then d777 else d774 else if d779 then d751 else true
    d784 : ( ( Set -> Set ) ∋ ( ( λ x786 -> ( ( Set -> Set ) ∋ ( ( λ x787 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d784 = ( ( Bool -> Bool ) ∋ ( ( λ x785 -> if x785 then x785 else d767 ) ) ) $ ( if d751 then d749 else true )
    d788 : ( ( Set -> Set ) ∋ ( ( λ x790 -> if true then x790 else Bool ) ) ) $ ( if true then Bool else Bool )
    d788 = ( ( M.d93 ) $ ( ( M'.d173 ) $ ( if d752 then false else d764 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x789 -> d783 ) ) ) $ ( true ) )
    d791 : ( ( Set -> Set ) ∋ ( ( λ x793 -> if true then Bool else x793 ) ) ) $ ( if false then Bool else Bool )
    d791 = ( ( M.d143 ) $ ( ( M'.d522 ) $ ( ( M'.d60 ) $ ( ( M'.d15 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x792 -> x792 ) ) ) $ ( false ) ) ) ) ) ) $ ( ( M'.d713 ) $ ( ( M'.d681 ) $ ( ( M'.d176 ) $ ( ( M'.d47 ) $ ( ( M'.d527 ) $ ( ( M'.d283 ) $ ( ( M'.d619 ) $ ( ( M'.d80 ) $ ( ( ( M.d257 ) $ ( d769 ) ) $ ( true ) ) ) ) ) ) ) ) ) )
    d794 : ( ( Set -> Set ) ∋ ( ( λ x796 -> if true then x796 else Bool ) ) ) $ ( if true then Bool else Bool )
    d794 = ( M'.d553 ) $ ( ( M'.d366 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x795 -> ( M'.d114 ) $ ( if x795 then d770 else x795 ) ) ) ) $ ( if true then d788 else false ) ) )
    d797 : ( ( Set -> Set ) ∋ ( ( λ x798 -> ( ( Set -> Set ) ∋ ( ( λ x799 -> x798 ) ) ) $ ( x798 ) ) ) ) $ ( if true then Bool else Bool )
    d797 = ( M'.d65 ) $ ( ( ( M.d545 ) $ ( if true then d752 else d774 ) ) $ ( ( ( M.d637 ) $ ( true ) ) $ ( d791 ) ) )
    d800 : ( ( Set -> Set ) ∋ ( ( λ x802 -> if true then Bool else x802 ) ) ) $ ( if true then Bool else Bool )
    d800 = ( M'.d209 ) $ ( ( ( M.d582 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x801 -> d781 ) ) ) $ ( false ) ) ) $ ( ( M'.d645 ) $ ( ( M'.d176 ) $ ( ( ( M.d530 ) $ ( d770 ) ) $ ( true ) ) ) ) )
    d803 : ( ( Set -> Set ) ∋ ( ( λ x804 -> ( ( Set -> Set ) ∋ ( ( λ x805 -> Bool ) ) ) $ ( x804 ) ) ) ) $ ( if true then Bool else Bool )
    d803 = if if true then true else d777 then if true then true else true else if false then d800 else false
    d806 : if true then if true then Bool else Bool else if false then Bool else Bool
    d806 = ( ( Bool -> Bool ) ∋ ( ( λ x807 -> if d762 then false else x807 ) ) ) $ ( if true then d774 else d767 )
    d808 : if false then if false then Bool else Bool else if false then Bool else Bool
    d808 = if if d767 then true else true then if d784 then d774 else false else if d772 then true else false
    d809 : ( ( Set -> Set ) ∋ ( ( λ x811 -> ( ( Set -> Set ) ∋ ( ( λ x812 -> x811 ) ) ) $ ( x811 ) ) ) ) $ ( if false then Bool else Bool )
    d809 = ( M'.d670 ) $ ( ( M'.d357 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( M'.d143 ) $ ( ( ( M.d302 ) $ ( if d762 then d767 else false ) ) $ ( if x810 then d762 else x810 ) ) ) ) ) $ ( if false then d749 else d751 ) ) )
    d813 : ( ( Set -> Set ) ∋ ( ( λ x815 -> ( ( Set -> Set ) ∋ ( ( λ x816 -> x816 ) ) ) $ ( x815 ) ) ) ) $ ( if false then Bool else Bool )
    d813 = ( ( Bool -> Bool ) ∋ ( ( λ x814 -> ( M'.d309 ) $ ( if true then x814 else false ) ) ) ) $ ( if true then false else d756 )
    d817 : ( ( Set -> Set ) ∋ ( ( λ x819 -> if false then x819 else x819 ) ) ) $ ( if false then Bool else Bool )
    d817 = ( ( Bool -> Bool ) ∋ ( ( λ x818 -> if true then true else d764 ) ) ) $ ( if false then d764 else false )
    d820 : ( ( Set -> Set ) ∋ ( ( λ x821 -> if false then x821 else Bool ) ) ) $ ( if true then Bool else Bool )
    d820 = ( M'.d283 ) $ ( if if true then d749 else d756 then if true then true else d770 else if d774 then false else false )
    d822 : ( ( Set -> Set ) ∋ ( ( λ x823 -> if false then Bool else x823 ) ) ) $ ( if true then Bool else Bool )
    d822 = ( M'.d653 ) $ ( ( M'.d571 ) $ ( ( M'.d102 ) $ ( if if d779 then false else d781 then if d800 then true else true else if true then false else d813 ) ) )
    d824 : ( ( Set -> Set ) ∋ ( ( λ x825 -> ( ( Set -> Set ) ∋ ( ( λ x826 -> x825 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d824 = if if true then d788 else true then if d754 then d822 else d754 else if d797 then d770 else d764
    d827 : ( ( Set -> Set ) ∋ ( ( λ x829 -> if false then x829 else x829 ) ) ) $ ( if true then Bool else Bool )
    d827 = ( ( M.d355 ) $ ( ( M'.d611 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x828 -> x828 ) ) ) $ ( d756 ) ) ) ) $ ( if d797 then false else d762 )
    d830 : if true then if true then Bool else Bool else if true then Bool else Bool
    d830 = if if true then d822 else d764 then if d774 then false else d762 else if true then d756 else false
    d831 : if true then if true then Bool else Bool else if true then Bool else Bool
    d831 = ( M'.d245 ) $ ( if if false then d752 else true then if d824 then d803 else d803 else if d756 then true else true )
    d832 : ( ( Set -> Set ) ∋ ( ( λ x833 -> if false then x833 else x833 ) ) ) $ ( if false then Bool else Bool )
    d832 = ( M'.d432 ) $ ( ( M'.d60 ) $ ( ( ( M.d15 ) $ ( ( ( M.d500 ) $ ( d759 ) ) $ ( false ) ) ) $ ( ( ( M.d380 ) $ ( false ) ) $ ( false ) ) ) )
    d834 : ( ( Set -> Set ) ∋ ( ( λ x836 -> ( ( Set -> Set ) ∋ ( ( λ x837 -> Bool ) ) ) $ ( x836 ) ) ) ) $ ( if false then Bool else Bool )
    d834 = ( M'.d512 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x835 -> ( M'.d216 ) $ ( ( M'.d449 ) $ ( ( M'.d415 ) $ ( if d806 then true else false ) ) ) ) ) ) $ ( if false then false else d794 ) )
    d838 : if false then if false then Bool else Bool else if true then Bool else Bool
    d838 = ( M'.d83 ) $ ( ( ( M.d583 ) $ ( ( ( M.d521 ) $ ( true ) ) $ ( d756 ) ) ) $ ( ( M'.d203 ) $ ( ( M'.d507 ) $ ( ( M'.d331 ) $ ( ( M'.d308 ) $ ( ( M'.d30 ) $ ( ( ( M.d148 ) $ ( false ) ) $ ( true ) ) ) ) ) ) ) )
    d839 : ( ( Set -> Set ) ∋ ( ( λ x840 -> if false then Bool else x840 ) ) ) $ ( if true then Bool else Bool )
    d839 = ( M'.d133 ) $ ( if if d784 then true else d779 then if d752 then d762 else false else if d822 then false else d764 )
    d841 : ( ( Set -> Set ) ∋ ( ( λ x843 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d841 = ( M'.d507 ) $ ( ( M'.d255 ) $ ( ( ( M.d459 ) $ ( ( M'.d440 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x842 -> true ) ) ) $ ( d794 ) ) ) ) $ ( ( M'.d203 ) $ ( ( ( M.d435 ) $ ( false ) ) $ ( false ) ) ) ) )
    d844 : ( ( Set -> Set ) ∋ ( ( λ x847 -> ( ( Set -> Set ) ∋ ( ( λ x848 -> Bool ) ) ) $ ( x847 ) ) ) ) $ ( if true then Bool else Bool )
    d844 = ( ( M.d575 ) $ ( ( M'.d689 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x845 -> x845 ) ) ) $ ( false ) ) ) ) $ ( ( M'.d264 ) $ ( ( M'.d325 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x846 -> d832 ) ) ) $ ( true ) ) ) )
    d849 : ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then x850 else Bool ) ) ) $ ( if false then Bool else Bool )
    d849 = if if d762 then true else d832 then if true then d788 else d781 else if false then d831 else d839
    d851 : ( ( Set -> Set ) ∋ ( ( λ x853 -> if true then x853 else x853 ) ) ) $ ( if true then Bool else Bool )
    d851 = ( M'.d742 ) $ ( ( M'.d185 ) $ ( ( M'.d744 ) $ ( ( M'.d323 ) $ ( ( M'.d719 ) $ ( ( M'.d227 ) $ ( ( ( M.d308 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x852 -> true ) ) ) $ ( d783 ) ) ) $ ( ( ( M.d603 ) $ ( d791 ) ) $ ( true ) ) ) ) ) ) ) )
    d854 : ( ( Set -> Set ) ∋ ( ( λ x855 -> ( ( Set -> Set ) ∋ ( ( λ x856 -> x856 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d854 = ( M'.d661 ) $ ( if if true then d834 else true then if d752 then d759 else d794 else if d839 then d803 else false )
    d857 : if false then if true then Bool else Bool else if false then Bool else Bool
    d857 = ( ( Bool -> Bool ) ∋ ( ( λ x858 -> ( ( Bool -> Bool ) ∋ ( ( λ x859 -> d839 ) ) ) $ ( d827 ) ) ) ) $ ( if false then d767 else d779 )
    d860 : ( ( Set -> Set ) ∋ ( ( λ x863 -> ( ( Set -> Set ) ∋ ( ( λ x864 -> Bool ) ) ) $ ( x863 ) ) ) ) $ ( if false then Bool else Bool )
    d860 = ( ( Bool -> Bool ) ∋ ( ( λ x861 -> ( ( Bool -> Bool ) ∋ ( ( λ x862 -> true ) ) ) $ ( x861 ) ) ) ) $ ( if d839 then false else false )
    d865 : ( ( Set -> Set ) ∋ ( ( λ x868 -> ( ( Set -> Set ) ∋ ( ( λ x869 -> Bool ) ) ) $ ( x868 ) ) ) ) $ ( if false then Bool else Bool )
    d865 = ( M'.d478 ) $ ( ( M'.d58 ) $ ( ( M'.d689 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x866 -> ( M'.d586 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x867 -> x866 ) ) ) $ ( d769 ) ) ) ) ) $ ( if d751 then true else false ) ) ) )
    d870 : ( ( Set -> Set ) ∋ ( ( λ x871 -> if false then x871 else Bool ) ) ) $ ( if true then Bool else Bool )
    d870 = ( M'.d704 ) $ ( ( M'.d535 ) $ ( ( M'.d125 ) $ ( ( M'.d513 ) $ ( if if true then d764 else d831 then if true then false else false else if d756 then true else true ) ) ) )
    d872 : ( ( Set -> Set ) ∋ ( ( λ x874 -> ( ( Set -> Set ) ∋ ( ( λ x875 -> x875 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d872 = ( ( M.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x873 -> true ) ) ) $ ( d839 ) ) ) $ ( if d824 then true else false )
    d876 : ( ( Set -> Set ) ∋ ( ( λ x877 -> ( ( Set -> Set ) ∋ ( ( λ x878 -> x877 ) ) ) $ ( x877 ) ) ) ) $ ( if true then Bool else Bool )
    d876 = ( M'.d40 ) $ ( if if d813 then d806 else true then if true then d783 else true else if d754 then d849 else false )