module Alias300Test14  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else Bool ) ) ) $ ( Bool ) ) ( p3 : if false then Bool else Bool )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> Bool ) ) ) $ ( x5 ) ) ) ) $ ( if true then Bool else Bool )
        d4 = if if p1 then p1 else p3 then if p1 then false else false else if p3 then p3 else p3
        d7 : if true then if true then Bool else Bool else if true then Bool else Bool
        d7 = if if d4 then p1 else d4 then if p1 then true else p1 else if d4 then p1 else p1
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( x9 ) ) ) ) $ ( if true then Bool else Bool )
        d8 = if if p1 then d7 else true then if true then d7 else d7 else if false then p3 else d7
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d11 = if if d7 then p3 else d7 then if true then p3 else false else if p1 then false else p1
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if d11 then p1 else p3 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x19 ) ) ) $ ( d4 ) ) ) ) $ ( if d7 then true else d4 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> d7 ) ) ) $ ( p3 ) ) ) ) $ ( if d13 then p1 else d13 )
        d28 : if false then if true then Bool else Bool else if false then Bool else Bool
        d28 = if if d11 then p3 else d13 then if true then d4 else p3 else if d8 then true else d11
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> x30 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d29 = if if p3 then false else p1 then if d18 then p3 else p1 else if d4 then false else p1
        d32 : if true then if true then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> false ) ) ) $ ( true ) ) ) ) $ ( if p1 then d7 else p1 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> d32 ) ) ) $ ( true ) ) ) ) $ ( if d23 then false else p1 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then x41 else Bool ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if p3 then p1 else x40 ) ) ) $ ( if d35 then true else false )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then x43 else x43 ) ) ) $ ( if false then Bool else Bool )
        d42 = if if false then p1 else d28 then if p1 then true else d13 else if true then d8 else true
        d44 : if true then if true then Bool else Bool else if false then Bool else Bool
        d44 = if if p1 then p1 else d42 then if p3 then p1 else p1 else if d13 then p1 else p3
        d45 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if false then Bool else x48 ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> true ) ) ) $ ( d39 ) ) ) ) $ ( if true then false else true )
        d49 : if false then if true then Bool else Bool else if true then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if true then true else x50 ) ) ) $ ( if p3 then d42 else false )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d51 = if if p3 then false else p3 then if d28 then d28 else false else if true then d44 else d18
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d53 = if if p3 then false else false then if p1 then p1 else p1 else if d4 then p1 else d44
        d56 : if false then if false then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> x57 ) ) ) $ ( true ) ) ) ) $ ( if false then d45 else p1 )
        d59 : if false then if true then Bool else Bool else if false then Bool else Bool
        d59 = if if d32 then true else p1 then if p1 then p3 else d28 else if false then true else d13
        d60 : if false then if true then Bool else Bool else if false then Bool else Bool
        d60 = if if false then false else false then if d42 then d59 else d53 else if p1 then d11 else p1
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> x62 ) ) ) $ ( x62 ) ) ) ) $ ( if true then Bool else Bool )
        d61 = if if p1 then d29 else p3 then if p3 then d23 else p3 else if p1 then d11 else false
        d64 : if true then if false then Bool else Bool else if false then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then p3 else d13 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d67 = if if true then p1 else p3 then if p3 then p3 else p3 else if d32 then p1 else true
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if true then Bool else x71 ) ) ) $ ( if false then Bool else Bool )
        d70 = if if false then false else d11 then if d61 then p1 else true else if p1 then true else p3
        d72 : if true then if true then Bool else Bool else if true then Bool else Bool
        d72 = if if p1 then p3 else p3 then if false then d42 else false else if d56 then true else d8
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if false then Bool else x75 ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if d35 then true else p1 ) ) ) $ ( if true then true else d64 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x78 ) ) ) $ ( x77 ) ) ) ) $ ( if true then Bool else Bool )
        d76 = if if true then false else p1 then if d60 then false else d35 else if d18 then true else d42
        d79 : if true then if false then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if false then p1 else p1 ) ) ) $ ( if p1 then d44 else d67 )
        d81 : if false then if true then Bool else Bool else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d28 else d67 )
        d84 : if false then if true then Bool else Bool else if false then Bool else Bool
        d84 = if if d13 then p3 else false then if p1 then p3 else p1 else if true then p1 else d23
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then x87 else Bool ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if p3 then d53 else true ) ) ) $ ( if d44 then d39 else d76 )
        d88 : if false then if true then Bool else Bool else if true then Bool else Bool
        d88 = if if d35 then false else p1 then if p3 then d67 else d59 else if p3 then true else p3
        d89 : if true then if false then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if p3 then false else p3 ) ) ) $ ( if p3 then true else p1 )
        d91 : if false then if false then Bool else Bool else if false then Bool else Bool
        d91 = if if false then p1 else d53 then if false then true else p3 else if d49 then d18 else d7
        d92 : if false then if false then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if p1 then true else false ) ) ) $ ( if true then d81 else true )
        d94 : if false then if true then Bool else Bool else if false then Bool else Bool
        d94 = if if d42 then p3 else p1 then if true then p3 else d85 else if false then p3 else p3
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> x96 ) ) ) $ ( p1 ) ) ) ) $ ( if false then false else true )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if true then x102 else x102 ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if true then false else true ) ) ) $ ( if p3 then d4 else p3 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x105 ) ) ) $ ( x104 ) ) ) ) $ ( if true then Bool else Bool )
        d103 = if if true then d44 else p1 then if p1 then true else false else if d73 then false else p3
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x108 ) ) ) $ ( x107 ) ) ) ) $ ( if true then Bool else Bool )
        d106 = if if d35 then p1 else false then if p3 then d103 else d23 else if true then d85 else d23
        d109 : if true then if true then Bool else Bool else if true then Bool else Bool
        d109 = if if p3 then p1 else d35 then if true then p1 else d51 else if true then d7 else p3
        d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then x112 else x112 ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if p1 then x111 else d95 ) ) ) $ ( if p1 then false else d42 )
        d113 : if true then if true then Bool else Bool else if false then Bool else Bool
        d113 = if if d8 then d109 else d44 then if p1 then p3 else false else if false then p1 else d7
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then x115 else Bool ) ) ) $ ( if false then Bool else Bool )
        d114 = if if p1 then false else d53 then if p3 then d56 else p3 else if p1 then false else true
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then x117 else x117 ) ) ) $ ( if false then Bool else Bool )
        d116 = if if p3 then p1 else p3 then if p3 then d49 else true else if false then false else p3
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then Bool else x119 ) ) ) $ ( if false then Bool else Bool )
        d118 = if if d64 then p3 else d79 then if p3 then p1 else p1 else if true then p1 else d89
        d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> Bool ) ) ) $ ( x122 ) ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if false then d103 else true ) ) ) $ ( if d94 then d60 else false )
        d124 : if true then if false then Bool else Bool else if false then Bool else Bool
        d124 = if if p1 then false else d118 then if p3 then p3 else d49 else if false then true else d45
        d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if false then x127 else x127 ) ) ) $ ( if false then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if x126 then d18 else false ) ) ) $ ( if p3 then p1 else p1 )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if false then Bool else x129 ) ) ) $ ( if true then Bool else Bool )
        d128 = if if p1 then d91 else d32 then if p3 then d124 else true else if false then d120 else p1
        d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> x133 ) ) ) $ ( x132 ) ) ) ) $ ( if true then Bool else Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if p1 then x131 else p3 ) ) ) $ ( if true then d73 else p1 )
        d134 : if false then if true then Bool else Bool else if false then Bool else Bool
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> if p3 then d73 else d42 ) ) ) $ ( if d45 then true else true )
        d136 : ( ( Set -> Set ) ∋ ( ( λ x137 -> ( ( Set -> Set ) ∋ ( ( λ x138 -> Bool ) ) ) $ ( x137 ) ) ) ) $ ( if true then Bool else Bool )
        d136 = if if p3 then d64 else true then if d94 then p3 else false else if d29 then true else p1
        d139 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> x140 ) ) ) $ ( x140 ) ) ) ) $ ( if true then Bool else Bool )
        d139 = if if d11 then p3 else p1 then if d116 then d67 else p3 else if d106 then p1 else true
        d142 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if true then x145 else Bool ) ) ) $ ( if true then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> ( ( Bool -> Bool ) ∋ ( ( λ x144 -> false ) ) ) $ ( true ) ) ) ) $ ( if p3 then d103 else p1 )
        d146 : ( ( Set -> Set ) ∋ ( ( λ x149 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> ( ( Bool -> Bool ) ∋ ( ( λ x148 -> false ) ) ) $ ( x147 ) ) ) ) $ ( if p1 then d67 else false )
        d151 : ( ( Set -> Set ) ∋ ( ( λ x154 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( Bool -> Bool ) ∋ ( ( λ x153 -> d72 ) ) ) $ ( d109 ) ) ) ) $ ( if false then d118 else true )
        d155 : if true then if true then Bool else Bool else if false then Bool else Bool
        d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> ( ( Bool -> Bool ) ∋ ( ( λ x157 -> p3 ) ) ) $ ( x156 ) ) ) ) $ ( if d130 then false else p3 )
        d158 : if true then if false then Bool else Bool else if false then Bool else Bool
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> if false then d13 else p1 ) ) ) $ ( if d56 then d124 else d79 )
        d160 : ( ( Set -> Set ) ∋ ( ( λ x161 -> ( ( Set -> Set ) ∋ ( ( λ x162 -> Bool ) ) ) $ ( x161 ) ) ) ) $ ( if true then Bool else Bool )
        d160 = if if false then false else p3 then if d91 then d18 else false else if false then p3 else d146
        d163 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> x165 ) ) ) $ ( x165 ) ) ) ) $ ( if false then Bool else Bool )
        d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> if true then d60 else d44 ) ) ) $ ( if d151 then true else p3 )
        d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> if false then x168 else x168 ) ) ) $ ( if true then Bool else Bool )
        d167 = if if d8 then d13 else true then if p1 then p1 else d163 else if p1 then false else d106
        d169 : if false then if true then Bool else Bool else if false then Bool else Bool
        d169 = if if d53 then d160 else d29 then if false then d103 else d79 else if p3 then p3 else p1
        d170 : if true then if false then Bool else Bool else if false then Bool else Bool
        d170 = if if d120 then d167 else d125 then if false then p3 else d61 else if p1 then p1 else d120
        d171 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if false then Bool else x174 ) ) ) $ ( if true then Bool else Bool )
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> x173 ) ) ) $ ( d124 ) ) ) ) $ ( if p3 then p3 else d32 )
        d175 : if false then if false then Bool else Bool else if true then Bool else Bool
        d175 = if if d142 then d163 else true then if p1 then p3 else d23 else if true then false else p3
        d176 : if false then if false then Bool else Bool else if true then Bool else Bool
        d176 = if if d59 then d88 else true then if d85 then d28 else true else if p1 then d151 else false
        d177 : if false then if true then Bool else Bool else if false then Bool else Bool
        d177 = if if false then d109 else p3 then if d44 then d7 else p3 else if true then true else false
        d178 : if false then if false then Bool else Bool else if false then Bool else Bool
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d44 ) ) ) $ ( d8 ) ) ) ) $ ( if d59 then p3 else d103 )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if true then Bool else x184 ) ) ) $ ( if true then Bool else Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> ( ( Bool -> Bool ) ∋ ( ( λ x183 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if d163 then true else d175 )
        d185 : if true then if false then Bool else Bool else if true then Bool else Bool
        d185 = if if true then d103 else d61 then if d11 then p1 else d125 else if d72 then p1 else p1
        d186 : if false then if true then Bool else Bool else if false then Bool else Bool
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> if p3 then d73 else d35 ) ) ) $ ( if true then true else p1 )
        d188 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> if false then p1 else false ) ) ) $ ( if d72 then d28 else false )
        d191 : if true then if true then Bool else Bool else if false then Bool else Bool
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x192 -> ( ( Bool -> Bool ) ∋ ( ( λ x193 -> d113 ) ) ) $ ( d128 ) ) ) ) $ ( if true then p3 else p3 )
        d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> if true then x195 else x195 ) ) ) $ ( if true then Bool else Bool )
        d194 = if if d61 then false else p1 then if true then d103 else p1 else if false then d53 else p1
        d196 : if true then if false then Bool else Bool else if true then Bool else Bool
        d196 = if if true then p1 else true then if p1 then false else p1 else if d84 then p1 else p3
        d197 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x201 -> x200 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> ( ( Bool -> Bool ) ∋ ( ( λ x199 -> d8 ) ) ) $ ( d45 ) ) ) ) $ ( if true then true else false )
        d202 : ( ( Set -> Set ) ∋ ( ( λ x205 -> if false then x205 else Bool ) ) ) $ ( if false then Bool else Bool )
        d202 = ( ( Bool -> Bool ) ∋ ( ( λ x203 -> ( ( Bool -> Bool ) ∋ ( ( λ x204 -> true ) ) ) $ ( false ) ) ) ) $ ( if d113 then false else p1 )
        d206 : if true then if true then Bool else Bool else if true then Bool else Bool
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> ( ( Bool -> Bool ) ∋ ( ( λ x208 -> d116 ) ) ) $ ( true ) ) ) ) $ ( if p1 then true else p1 )
        d209 : if true then if true then Bool else Bool else if false then Bool else Bool
        d209 = if if d158 then d39 else p3 then if p3 then d94 else d92 else if p3 then true else p3
        d210 : if true then if false then Bool else Bool else if false then Bool else Bool
        d210 = ( ( Bool -> Bool ) ∋ ( ( λ x211 -> if true then true else p1 ) ) ) $ ( if d116 then p3 else p1 )
        d212 : ( ( Set -> Set ) ∋ ( ( λ x213 -> ( ( Set -> Set ) ∋ ( ( λ x214 -> x213 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d212 = if if true then p1 else d116 then if p3 then d59 else d49 else if true then d128 else p1
        d215 : ( ( Set -> Set ) ∋ ( ( λ x217 -> if true then Bool else x217 ) ) ) $ ( if true then Bool else Bool )
        d215 = ( ( Bool -> Bool ) ∋ ( ( λ x216 -> if d53 then true else d139 ) ) ) $ ( if p3 then false else d106 )
        d218 : ( ( Set -> Set ) ∋ ( ( λ x219 -> if true then Bool else x219 ) ) ) $ ( if false then Bool else Bool )
        d218 = if if d113 then true else false then if true then p1 else p3 else if p1 then p1 else d170
        d220 : if false then if true then Bool else Bool else if true then Bool else Bool
        d220 = if if p3 then p3 else p1 then if p3 then p1 else true else if p1 then p3 else false
        d221 : if false then if true then Bool else Bool else if true then Bool else Bool
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x222 -> ( ( Bool -> Bool ) ∋ ( ( λ x223 -> d188 ) ) ) $ ( true ) ) ) ) $ ( if p3 then p3 else d28 )
        d224 : ( ( Set -> Set ) ∋ ( ( λ x226 -> ( ( Set -> Set ) ∋ ( ( λ x227 -> x226 ) ) ) $ ( x226 ) ) ) ) $ ( if true then Bool else Bool )
        d224 = ( ( Bool -> Bool ) ∋ ( ( λ x225 -> if false then false else d134 ) ) ) $ ( if p3 then d95 else true )
        d228 : ( ( Set -> Set ) ∋ ( ( λ x231 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x229 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> p3 ) ) ) $ ( d209 ) ) ) ) $ ( if false then p1 else d60 )
        d232 : if false then if true then Bool else Bool else if true then Bool else Bool
        d232 = if if d177 then d4 else false then if p1 then d29 else true else if p3 then d116 else false
        d233 : if true then if false then Bool else Bool else if false then Bool else Bool
        d233 = if if p1 then false else true then if p3 then false else d218 else if p3 then p3 else false
        d234 : if true then if false then Bool else Bool else if true then Bool else Bool
        d234 = if if d160 then d175 else true then if d170 then p1 else d215 else if d197 then p1 else false
        d235 : if false then if true then Bool else Bool else if true then Bool else Bool
        d235 = if if d94 then p1 else p1 then if true then true else false else if true then d94 else true
        d236 : if true then if true then Bool else Bool else if false then Bool else Bool
        d236 = if if false then true else false then if d13 then d76 else false else if d155 then p1 else p1
        d237 : ( ( Set -> Set ) ∋ ( ( λ x239 -> if true then x239 else Bool ) ) ) $ ( if true then Bool else Bool )
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x238 -> if p1 then d100 else d18 ) ) ) $ ( if p1 then d45 else d197 )
        d240 : if true then if true then Bool else Bool else if true then Bool else Bool
        d240 = if if d170 then d224 else d134 then if d151 then d116 else d235 else if p1 then true else d155
        d241 : if true then if false then Bool else Bool else if false then Bool else Bool
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x242 -> if true then p1 else x242 ) ) ) $ ( if p1 then p3 else d220 )
        d243 : ( ( Set -> Set ) ∋ ( ( λ x244 -> ( ( Set -> Set ) ∋ ( ( λ x245 -> x245 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d243 = if if d109 then p3 else p3 then if false then false else d178 else if p3 then d228 else p1
        d246 : ( ( Set -> Set ) ∋ ( ( λ x247 -> if true then x247 else x247 ) ) ) $ ( if false then Bool else Bool )
        d246 = if if d146 then d109 else p1 then if true then d170 else p1 else if p1 then false else d32
        d248 : ( ( Set -> Set ) ∋ ( ( λ x249 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> Bool ) ) ) $ ( x249 ) ) ) ) $ ( if true then Bool else Bool )
        d248 = if if true then d32 else true then if p1 then p3 else d13 else if d70 then true else false
        d251 : if true then if true then Bool else Bool else if false then Bool else Bool
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x252 -> if d175 then d246 else p3 ) ) ) $ ( if p1 then p3 else true )
        d253 : if false then if false then Bool else Bool else if true then Bool else Bool
        d253 = ( ( Bool -> Bool ) ∋ ( ( λ x254 -> ( ( Bool -> Bool ) ∋ ( ( λ x255 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if d188 then true else true )
        d256 : if false then if false then Bool else Bool else if false then Bool else Bool
        d256 = if if d49 then false else d8 then if p1 then d130 else d18 else if p1 then d49 else false
        d257 : ( ( Set -> Set ) ∋ ( ( λ x258 -> ( ( Set -> Set ) ∋ ( ( λ x259 -> Bool ) ) ) $ ( x258 ) ) ) ) $ ( if false then Bool else Bool )
        d257 = if if p1 then false else d169 then if p3 then d11 else true else if p1 then true else p3
        d260 : ( ( Set -> Set ) ∋ ( ( λ x263 -> if true then x263 else Bool ) ) ) $ ( if false then Bool else Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x261 -> ( ( Bool -> Bool ) ∋ ( ( λ x262 -> x262 ) ) ) $ ( d221 ) ) ) ) $ ( if false then false else p1 )
        d264 : ( ( Set -> Set ) ∋ ( ( λ x265 -> ( ( Set -> Set ) ∋ ( ( λ x266 -> x266 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d264 = if if p3 then false else d67 then if d114 then p3 else p3 else if false then true else p3
        d267 : ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then x270 else Bool ) ) ) $ ( if true then Bool else Bool )
        d267 = ( ( Bool -> Bool ) ∋ ( ( λ x268 -> ( ( Bool -> Bool ) ∋ ( ( λ x269 -> p1 ) ) ) $ ( d220 ) ) ) ) $ ( if p3 then p1 else d44 )
        d271 : if false then if true then Bool else Bool else if true then Bool else Bool
        d271 = if if false then true else d169 then if false then true else false else if false then false else true
        d272 : ( ( Set -> Set ) ∋ ( ( λ x273 -> ( ( Set -> Set ) ∋ ( ( λ x274 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d272 = if if true then d220 else p1 then if true then p3 else p1 else if d134 then d128 else false
        d275 : ( ( Set -> Set ) ∋ ( ( λ x276 -> ( ( Set -> Set ) ∋ ( ( λ x277 -> x277 ) ) ) $ ( x276 ) ) ) ) $ ( if true then Bool else Bool )
        d275 = if if d76 then p3 else p1 then if p1 then p1 else p1 else if false then d124 else d170
        d278 : if false then if false then Bool else Bool else if false then Bool else Bool
        d278 = if if p3 then d267 else p3 then if d209 then false else p1 else if d110 then p3 else p1
        d279 : if false then if true then Bool else Bool else if false then Bool else Bool
        d279 = if if d146 then d170 else d178 then if d178 then true else p3 else if false then p3 else d264
        d280 : if false then if false then Bool else Bool else if false then Bool else Bool
        d280 = ( ( Bool -> Bool ) ∋ ( ( λ x281 -> ( ( Bool -> Bool ) ∋ ( ( λ x282 -> x282 ) ) ) $ ( d218 ) ) ) ) $ ( if p3 then false else false )
        d283 : ( ( Set -> Set ) ∋ ( ( λ x284 -> if true then x284 else x284 ) ) ) $ ( if false then Bool else Bool )
        d283 = if if p3 then p1 else p1 then if p3 then d158 else true else if d220 then d28 else false
        d285 : ( ( Set -> Set ) ∋ ( ( λ x286 -> ( ( Set -> Set ) ∋ ( ( λ x287 -> x287 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d285 = if if p1 then false else p1 then if d209 then p3 else d279 else if p1 then p1 else d73
        d288 : if true then if true then Bool else Bool else if false then Bool else Bool
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x289 -> if d39 then p1 else false ) ) ) $ ( if false then p1 else d84 )
        d290 : ( ( Set -> Set ) ∋ ( ( λ x291 -> if true then Bool else x291 ) ) ) $ ( if true then Bool else Bool )
        d290 = if if d23 then true else d280 then if p1 then d11 else d178 else if d275 then d72 else true
        d292 : ( ( Set -> Set ) ∋ ( ( λ x293 -> ( ( Set -> Set ) ∋ ( ( λ x294 -> Bool ) ) ) $ ( x293 ) ) ) ) $ ( if false then Bool else Bool )
        d292 = if if d240 then true else d92 then if d59 then d116 else p1 else if d278 then p1 else d215
        d295 : if false then if false then Bool else Bool else if true then Bool else Bool
        d295 = if if true then d146 else true then if p3 then p1 else d169 else if p3 then p3 else true
        d296 : if true then if true then Bool else Bool else if true then Bool else Bool
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x297 -> if p1 then true else true ) ) ) $ ( if d118 then p3 else d171 )
        d298 : if true then if false then Bool else Bool else if false then Bool else Bool
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x299 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> d11 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then d185 else true )
        d301 : if true then if false then Bool else Bool else if true then Bool else Bool
        d301 = if if d110 then d196 else d32 then if p3 then d298 else d288 else if false then false else p3
        d302 : ( ( Set -> Set ) ∋ ( ( λ x305 -> ( ( Set -> Set ) ∋ ( ( λ x306 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d302 = ( ( Bool -> Bool ) ∋ ( ( λ x303 -> ( ( Bool -> Bool ) ∋ ( ( λ x304 -> d70 ) ) ) $ ( d275 ) ) ) ) $ ( if p1 then d197 else d237 )
        d307 : if false then if true then Bool else Bool else if true then Bool else Bool
        d307 = ( ( Bool -> Bool ) ∋ ( ( λ x308 -> ( ( Bool -> Bool ) ∋ ( ( λ x309 -> true ) ) ) $ ( true ) ) ) ) $ ( if d114 then p3 else p1 )
        d310 : ( ( Set -> Set ) ∋ ( ( λ x312 -> ( ( Set -> Set ) ∋ ( ( λ x313 -> x313 ) ) ) $ ( x312 ) ) ) ) $ ( if false then Bool else Bool )
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x311 -> if d307 then true else false ) ) ) $ ( if true then d42 else false )
        d314 : if false then if true then Bool else Bool else if false then Bool else Bool
        d314 = ( ( Bool -> Bool ) ∋ ( ( λ x315 -> if p1 then false else p3 ) ) ) $ ( if d264 then d251 else d49 )
        d316 : if false then if true then Bool else Bool else if false then Bool else Bool
        d316 = if if false then d260 else p3 then if d134 then d32 else false else if d290 then true else p1
        d317 : ( ( Set -> Set ) ∋ ( ( λ x318 -> ( ( Set -> Set ) ∋ ( ( λ x319 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d317 = if if d251 then d76 else false then if p1 then true else d114 else if true then true else p1
        d320 : ( ( Set -> Set ) ∋ ( ( λ x323 -> ( ( Set -> Set ) ∋ ( ( λ x324 -> x323 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x321 -> ( ( Bool -> Bool ) ∋ ( ( λ x322 -> d11 ) ) ) $ ( d290 ) ) ) ) $ ( if false then d67 else false )
        d325 : if true then if false then Bool else Bool else if false then Bool else Bool
        d325 = ( ( Bool -> Bool ) ∋ ( ( λ x326 -> if d178 then d84 else d45 ) ) ) $ ( if false then d320 else p1 )
        d327 : ( ( Set -> Set ) ∋ ( ( λ x329 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x328 -> if d298 then d167 else d72 ) ) ) $ ( if true then p3 else true )
        d330 : if false then if true then Bool else Bool else if true then Bool else Bool
        d330 = if if true then d298 else d267 then if p1 then d59 else false else if d181 then p3 else d95
        d331 : if false then if false then Bool else Bool else if true then Bool else Bool
        d331 = ( ( Bool -> Bool ) ∋ ( ( λ x332 -> if p1 then false else d248 ) ) ) $ ( if d146 then p3 else d11 )
        d333 : ( ( Set -> Set ) ∋ ( ( λ x334 -> if false then x334 else x334 ) ) ) $ ( if true then Bool else Bool )
        d333 = if if true then d32 else d72 then if false then false else p1 else if p1 then false else d32
        d335 : ( ( Set -> Set ) ∋ ( ( λ x336 -> ( ( Set -> Set ) ∋ ( ( λ x337 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d335 = if if false then false else false then if d109 then d181 else p1 else if d146 then p1 else d264
        d338 : ( ( Set -> Set ) ∋ ( ( λ x339 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d338 = if if d73 then d146 else d56 then if false then d221 else false else if p3 then p1 else p1
        d340 : if false then if true then Bool else Bool else if true then Bool else Bool
        d340 = if if false then false else d109 then if true then false else p3 else if d338 then d94 else d234
        d341 : ( ( Set -> Set ) ∋ ( ( λ x342 -> ( ( Set -> Set ) ∋ ( ( λ x343 -> x342 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d341 = if if d209 then false else d301 then if true then p3 else p1 else if p3 then d118 else d335
        d344 : if true then if true then Bool else Bool else if true then Bool else Bool
        d344 = if if false then true else p1 then if p3 then p1 else d320 else if d240 then false else d64
        d345 : if true then if true then Bool else Bool else if false then Bool else Bool
        d345 = if if false then true else false then if d314 then p3 else p3 else if d130 then true else p1
        d346 : if false then if false then Bool else Bool else if false then Bool else Bool
        d346 = if if true then p3 else true then if d118 then p1 else p1 else if true then d45 else d60
        d347 : ( ( Set -> Set ) ∋ ( ( λ x349 -> if false then x349 else x349 ) ) ) $ ( if false then Bool else Bool )
        d347 = ( ( Bool -> Bool ) ∋ ( ( λ x348 -> if false then false else true ) ) ) $ ( if true then true else d335 )
        d350 : ( ( Set -> Set ) ∋ ( ( λ x351 -> ( ( Set -> Set ) ∋ ( ( λ x352 -> x352 ) ) ) $ ( x351 ) ) ) ) $ ( if false then Bool else Bool )
        d350 = if if d283 then d188 else false then if false then p3 else false else if true then d280 else p1
        d353 : if true then if false then Bool else Bool else if true then Bool else Bool
        d353 = ( ( Bool -> Bool ) ∋ ( ( λ x354 -> ( ( Bool -> Bool ) ∋ ( ( λ x355 -> d76 ) ) ) $ ( false ) ) ) ) $ ( if true then d81 else true )
        d356 : ( ( Set -> Set ) ∋ ( ( λ x359 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( x359 ) ) ) ) $ ( if true then Bool else Bool )
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x357 -> ( ( Bool -> Bool ) ∋ ( ( λ x358 -> x357 ) ) ) $ ( true ) ) ) ) $ ( if false then p1 else p1 )
        d361 : if true then if false then Bool else Bool else if true then Bool else Bool
        d361 = if if d257 then d51 else d73 then if d44 then d330 else d218 else if false then false else false
        d362 : if false then if true then Bool else Bool else if true then Bool else Bool
        d362 = ( ( Bool -> Bool ) ∋ ( ( λ x363 -> ( ( Bool -> Bool ) ∋ ( ( λ x364 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if d327 then d59 else d4 )
        d365 : ( ( Set -> Set ) ∋ ( ( λ x367 -> if false then Bool else x367 ) ) ) $ ( if false then Bool else Bool )
        d365 = ( ( Bool -> Bool ) ∋ ( ( λ x366 -> if false then true else d340 ) ) ) $ ( if p1 then d350 else d330 )
        d368 : ( ( Set -> Set ) ∋ ( ( λ x370 -> if true then x370 else Bool ) ) ) $ ( if false then Bool else Bool )
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x369 -> if true then p1 else d59 ) ) ) $ ( if d251 then false else true )
        d371 : if false then if false then Bool else Bool else if false then Bool else Bool
        d371 = ( ( Bool -> Bool ) ∋ ( ( λ x372 -> if p3 then d186 else d341 ) ) ) $ ( if true then d11 else d241 )
        d373 : if false then if true then Bool else Bool else if true then Bool else Bool
        d373 = if if p3 then d118 else p3 then if p1 then true else p3 else if p3 then d353 else p3
        d374 : if true then if true then Bool else Bool else if false then Bool else Bool
        d374 = ( ( Bool -> Bool ) ∋ ( ( λ x375 -> if d60 then d94 else d290 ) ) ) $ ( if d72 then false else d194 )
        d376 : ( ( Set -> Set ) ∋ ( ( λ x377 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d376 = if if d365 then d340 else true then if d353 then d202 else false else if d338 then p3 else p3
        d378 : ( ( Set -> Set ) ∋ ( ( λ x379 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d378 = if if p3 then p1 else d236 then if p1 then d290 else d85 else if true then d353 else false
        d380 : ( ( Set -> Set ) ∋ ( ( λ x383 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d380 = ( ( Bool -> Bool ) ∋ ( ( λ x381 -> ( ( Bool -> Bool ) ∋ ( ( λ x382 -> p3 ) ) ) $ ( d130 ) ) ) ) $ ( if d340 then d285 else true )
        d384 : ( ( Set -> Set ) ∋ ( ( λ x385 -> ( ( Set -> Set ) ∋ ( ( λ x386 -> Bool ) ) ) $ ( x385 ) ) ) ) $ ( if false then Bool else Bool )
        d384 = if if d94 then false else p3 then if d285 then false else true else if d151 then p3 else p1
        d387 : ( ( Set -> Set ) ∋ ( ( λ x389 -> ( ( Set -> Set ) ∋ ( ( λ x390 -> Bool ) ) ) $ ( x389 ) ) ) ) $ ( if true then Bool else Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x388 -> if d241 then false else x388 ) ) ) $ ( if p3 then p3 else d301 )
        d391 : ( ( Set -> Set ) ∋ ( ( λ x392 -> ( ( Set -> Set ) ∋ ( ( λ x393 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d391 = if if p1 then p1 else true then if true then p1 else true else if true then p3 else d333
        d394 : ( ( Set -> Set ) ∋ ( ( λ x397 -> if true then x397 else x397 ) ) ) $ ( if true then Bool else Bool )
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x395 -> ( ( Bool -> Bool ) ∋ ( ( λ x396 -> d267 ) ) ) $ ( d61 ) ) ) ) $ ( if d103 then p3 else p3 )
        d398 : ( ( Set -> Set ) ∋ ( ( λ x400 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x399 -> if d72 then p1 else x399 ) ) ) $ ( if d202 then d178 else true )
        d401 : ( ( Set -> Set ) ∋ ( ( λ x402 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d401 = if if false then p3 else d212 then if d295 then false else false else if false then false else p1
        d403 : ( ( Set -> Set ) ∋ ( ( λ x404 -> if false then x404 else x404 ) ) ) $ ( if false then Bool else Bool )
        d403 = if if d340 then true else false then if d280 then p1 else p3 else if p3 then d320 else d310
        d405 : if false then if false then Bool else Bool else if true then Bool else Bool
        d405 = if if d53 then false else d191 then if p3 then false else d401 else if d67 then true else d4
        d406 : ( ( Set -> Set ) ∋ ( ( λ x409 -> ( ( Set -> Set ) ∋ ( ( λ x410 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x407 -> ( ( Bool -> Bool ) ∋ ( ( λ x408 -> d210 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then p1 else d356 )
        d411 : if true then if true then Bool else Bool else if true then Bool else Bool
        d411 = ( ( Bool -> Bool ) ∋ ( ( λ x412 -> ( ( Bool -> Bool ) ∋ ( ( λ x413 -> x412 ) ) ) $ ( x412 ) ) ) ) $ ( if true then true else p3 )
        d414 : ( ( Set -> Set ) ∋ ( ( λ x415 -> if true then x415 else x415 ) ) ) $ ( if false then Bool else Bool )
        d414 = if if p1 then d394 else d84 then if p3 then d191 else d177 else if d347 then false else d116
        d416 : if false then if true then Bool else Bool else if false then Bool else Bool
        d416 = ( ( Bool -> Bool ) ∋ ( ( λ x417 -> ( ( Bool -> Bool ) ∋ ( ( λ x418 -> d267 ) ) ) $ ( x417 ) ) ) ) $ ( if d42 then d116 else false )
        d419 : if false then if true then Bool else Bool else if true then Bool else Bool
        d419 = if if p3 then true else p1 then if d67 then d92 else true else if true then false else true
        d420 : ( ( Set -> Set ) ∋ ( ( λ x423 -> ( ( Set -> Set ) ∋ ( ( λ x424 -> Bool ) ) ) $ ( x423 ) ) ) ) $ ( if true then Bool else Bool )
        d420 = ( ( Bool -> Bool ) ∋ ( ( λ x421 -> ( ( Bool -> Bool ) ∋ ( ( λ x422 -> x422 ) ) ) $ ( d233 ) ) ) ) $ ( if false then p3 else p3 )
        d425 : if false then if true then Bool else Bool else if false then Bool else Bool
        d425 = ( ( Bool -> Bool ) ∋ ( ( λ x426 -> if d212 then d7 else d232 ) ) ) $ ( if p1 then d278 else d387 )
        d427 : ( ( Set -> Set ) ∋ ( ( λ x430 -> ( ( Set -> Set ) ∋ ( ( λ x431 -> Bool ) ) ) $ ( x430 ) ) ) ) $ ( if true then Bool else Bool )
        d427 = ( ( Bool -> Bool ) ∋ ( ( λ x428 -> ( ( Bool -> Bool ) ∋ ( ( λ x429 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then p3 else p3 )
        d432 : if false then if false then Bool else Bool else if false then Bool else Bool
        d432 = if if d124 then d310 else p1 then if p3 then d185 else p1 else if p1 then d79 else d376
        d433 : ( ( Set -> Set ) ∋ ( ( λ x435 -> ( ( Set -> Set ) ∋ ( ( λ x436 -> Bool ) ) ) $ ( x435 ) ) ) ) $ ( if true then Bool else Bool )
        d433 = ( ( Bool -> Bool ) ∋ ( ( λ x434 -> if d260 then p1 else true ) ) ) $ ( if true then p1 else false )
        d437 : if false then if true then Bool else Bool else if false then Bool else Bool
        d437 = ( ( Bool -> Bool ) ∋ ( ( λ x438 -> if true then d191 else false ) ) ) $ ( if d89 then true else p3 )
        d439 : ( ( Set -> Set ) ∋ ( ( λ x440 -> if true then x440 else Bool ) ) ) $ ( if true then Bool else Bool )
        d439 = if if d228 then d176 else d209 then if true then d433 else false else if p1 then p1 else p1
        d441 : if false then if true then Bool else Bool else if false then Bool else Bool
        d441 = ( ( Bool -> Bool ) ∋ ( ( λ x442 -> if false then p1 else d169 ) ) ) $ ( if false then p3 else d209 )
        d443 : if true then if false then Bool else Bool else if false then Bool else Bool
        d443 = ( ( Bool -> Bool ) ∋ ( ( λ x444 -> ( ( Bool -> Bool ) ∋ ( ( λ x445 -> p1 ) ) ) $ ( x444 ) ) ) ) $ ( if p1 then d251 else p1 )
        d446 : if true then if false then Bool else Bool else if false then Bool else Bool
        d446 = if if p3 then true else p3 then if true then d220 else false else if false then p1 else p3
        d447 : ( ( Set -> Set ) ∋ ( ( λ x448 -> ( ( Set -> Set ) ∋ ( ( λ x449 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d447 = if if false then p1 else p1 then if true then false else true else if d401 then false else d298
        d450 : if true then if false then Bool else Bool else if false then Bool else Bool
        d450 = ( ( Bool -> Bool ) ∋ ( ( λ x451 -> ( ( Bool -> Bool ) ∋ ( ( λ x452 -> d160 ) ) ) $ ( false ) ) ) ) $ ( if false then d116 else true )
        d453 : if false then if false then Bool else Bool else if false then Bool else Bool
        d453 = if if p3 then d241 else true then if d67 then p1 else true else if d89 then p3 else p1
        d454 : ( ( Set -> Set ) ∋ ( ( λ x457 -> ( ( Set -> Set ) ∋ ( ( λ x458 -> x458 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d454 = ( ( Bool -> Bool ) ∋ ( ( λ x455 -> ( ( Bool -> Bool ) ∋ ( ( λ x456 -> d51 ) ) ) $ ( d253 ) ) ) ) $ ( if true then p3 else p3 )
        d459 : ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x461 -> x460 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d459 = if if d450 then d28 else p1 then if p1 then true else false else if false then false else d333
        d462 : if true then if true then Bool else Bool else if false then Bool else Bool
        d462 = ( ( Bool -> Bool ) ∋ ( ( λ x463 -> ( ( Bool -> Bool ) ∋ ( ( λ x464 -> p3 ) ) ) $ ( d53 ) ) ) ) $ ( if d209 then p1 else false )
        d465 : if true then if false then Bool else Bool else if false then Bool else Bool
        d465 = if if d188 then d280 else d215 then if false then p3 else true else if d403 then d378 else d453
        d466 : ( ( Set -> Set ) ∋ ( ( λ x468 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x467 -> if true then p3 else d272 ) ) ) $ ( if p1 then d167 else d302 )
        d469 : ( ( Set -> Set ) ∋ ( ( λ x470 -> if false then x470 else x470 ) ) ) $ ( if true then Bool else Bool )
        d469 = if if p1 then true else true then if d427 then d361 else false else if false then true else p1
        d471 : if false then if false then Bool else Bool else if false then Bool else Bool
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x472 -> ( ( Bool -> Bool ) ∋ ( ( λ x473 -> x472 ) ) ) $ ( true ) ) ) ) $ ( if p3 then d114 else p3 )
        d474 : ( ( Set -> Set ) ∋ ( ( λ x477 -> if true then x477 else x477 ) ) ) $ ( if false then Bool else Bool )
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x475 -> ( ( Bool -> Bool ) ∋ ( ( λ x476 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if d272 then d109 else d325 )
        d478 : if false then if true then Bool else Bool else if false then Bool else Bool
        d478 = if if p1 then d163 else p1 then if p1 then d169 else p3 else if true then d361 else true
        d479 : ( ( Set -> Set ) ∋ ( ( λ x480 -> if true then x480 else x480 ) ) ) $ ( if true then Bool else Bool )
        d479 = if if d197 then p3 else false then if p1 then p3 else p3 else if false then p1 else true
        d481 : ( ( Set -> Set ) ∋ ( ( λ x483 -> ( ( Set -> Set ) ∋ ( ( λ x484 -> Bool ) ) ) $ ( x483 ) ) ) ) $ ( if false then Bool else Bool )
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x482 -> if d453 then d169 else d218 ) ) ) $ ( if d361 then d437 else p1 )
        d485 : if true then if false then Bool else Bool else if true then Bool else Bool
        d485 = if if p3 then p1 else true then if d73 then p1 else p3 else if false then d462 else true
        d486 : ( ( Set -> Set ) ∋ ( ( λ x487 -> ( ( Set -> Set ) ∋ ( ( λ x488 -> x488 ) ) ) $ ( x487 ) ) ) ) $ ( if false then Bool else Bool )
        d486 = if if true then p1 else p3 then if true then false else p3 else if p1 then p3 else p3
        d489 : ( ( Set -> Set ) ∋ ( ( λ x492 -> ( ( Set -> Set ) ∋ ( ( λ x493 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d489 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> ( ( Bool -> Bool ) ∋ ( ( λ x491 -> d446 ) ) ) $ ( d462 ) ) ) ) $ ( if true then p3 else false )
        d494 : if false then if true then Bool else Bool else if false then Bool else Bool
        d494 = ( ( Bool -> Bool ) ∋ ( ( λ x495 -> if p3 then d459 else d394 ) ) ) $ ( if false then false else p3 )
        d496 : ( ( Set -> Set ) ∋ ( ( λ x499 -> ( ( Set -> Set ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( x499 ) ) ) ) $ ( if false then Bool else Bool )
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x497 -> ( ( Bool -> Bool ) ∋ ( ( λ x498 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then p3 else false )
        d501 : ( ( Set -> Set ) ∋ ( ( λ x502 -> ( ( Set -> Set ) ∋ ( ( λ x503 -> x502 ) ) ) $ ( x502 ) ) ) ) $ ( if true then Bool else Bool )
        d501 = if if false then d88 else p1 then if true then false else d95 else if d171 then d84 else d471
        d504 : if false then if false then Bool else Bool else if true then Bool else Bool
        d504 = if if p1 then p3 else false then if p3 then false else d279 else if false then false else d236
        d505 : ( ( Set -> Set ) ∋ ( ( λ x508 -> if false then Bool else x508 ) ) ) $ ( if true then Bool else Bool )
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x506 -> ( ( Bool -> Bool ) ∋ ( ( λ x507 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then p1 else p1 )
        d509 : ( ( Set -> Set ) ∋ ( ( λ x510 -> ( ( Set -> Set ) ∋ ( ( λ x511 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d509 = if if p3 then p1 else p1 then if false then d11 else p1 else if true then false else d206
        d512 : ( ( Set -> Set ) ∋ ( ( λ x515 -> if true then x515 else Bool ) ) ) $ ( if false then Bool else Bool )
        d512 = ( ( Bool -> Bool ) ∋ ( ( λ x513 -> ( ( Bool -> Bool ) ∋ ( ( λ x514 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d411 then d486 else p1 )
        d516 : if true then if false then Bool else Bool else if false then Bool else Bool
        d516 = ( ( Bool -> Bool ) ∋ ( ( λ x517 -> ( ( Bool -> Bool ) ∋ ( ( λ x518 -> d295 ) ) ) $ ( p1 ) ) ) ) $ ( if true then p3 else false )
        d519 : if true then if false then Bool else Bool else if false then Bool else Bool
        d519 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if false then false else d106 ) ) ) $ ( if true then true else p1 )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x522 -> ( ( Set -> Set ) ∋ ( ( λ x523 -> x522 ) ) ) $ ( x522 ) ) ) ) $ ( if true then Bool else Bool )
        d521 = if if p3 then true else p3 then if d496 then d433 else d350 else if p1 then d61 else p1
        d524 : ( ( Set -> Set ) ∋ ( ( λ x525 -> if true then x525 else Bool ) ) ) $ ( if false then Bool else Bool )
        d524 = if if p3 then false else d253 then if d453 then d450 else true else if p3 then false else p3
        d526 : if false then if false then Bool else Bool else if true then Bool else Bool
        d526 = ( ( Bool -> Bool ) ∋ ( ( λ x527 -> if d70 then true else x527 ) ) ) $ ( if p1 then d479 else d243 )
        d528 : ( ( Set -> Set ) ∋ ( ( λ x530 -> ( ( Set -> Set ) ∋ ( ( λ x531 -> x531 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d528 = ( ( Bool -> Bool ) ∋ ( ( λ x529 -> if true then false else p1 ) ) ) $ ( if d459 then p1 else p1 )
        d532 : if false then if true then Bool else Bool else if true then Bool else Bool
        d532 = if if true then p3 else false then if p1 then p1 else false else if p3 then true else false
        d533 : ( ( Set -> Set ) ∋ ( ( λ x536 -> if true then x536 else Bool ) ) ) $ ( if false then Bool else Bool )
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x534 -> ( ( Bool -> Bool ) ∋ ( ( λ x535 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if false then true else p1 )
        d537 : ( ( Set -> Set ) ∋ ( ( λ x539 -> if false then x539 else Bool ) ) ) $ ( if false then Bool else Bool )
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x538 -> if true then false else p1 ) ) ) $ ( if p1 then d128 else true )
        d540 : ( ( Set -> Set ) ∋ ( ( λ x541 -> if true then x541 else x541 ) ) ) $ ( if true then Bool else Bool )
        d540 = if if p1 then d103 else p1 then if true then p3 else p1 else if p3 then true else d439
        d542 : ( ( Set -> Set ) ∋ ( ( λ x543 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d542 = if if d512 then p1 else false then if true then d7 else false else if p1 then p1 else p1
        d544 : ( ( Set -> Set ) ∋ ( ( λ x547 -> if true then x547 else Bool ) ) ) $ ( if true then Bool else Bool )
        d544 = ( ( Bool -> Bool ) ∋ ( ( λ x545 -> ( ( Bool -> Bool ) ∋ ( ( λ x546 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if p3 then p1 else true )
        d548 : if false then if true then Bool else Bool else if false then Bool else Bool
        d548 = if if false then p1 else false then if d362 then d116 else p3 else if true then p1 else true
        d549 : if true then if false then Bool else Bool else if true then Bool else Bool
        d549 = if if false then d414 else false then if p1 then d301 else false else if p1 then d296 else p1
        d550 : ( ( Set -> Set ) ∋ ( ( λ x551 -> if true then Bool else x551 ) ) ) $ ( if true then Bool else Bool )
        d550 = if if p3 then p3 else d374 then if d233 then false else d478 else if p1 then d32 else d169
        d552 : if false then if false then Bool else Bool else if true then Bool else Bool
        d552 = ( ( Bool -> Bool ) ∋ ( ( λ x553 -> ( ( Bool -> Bool ) ∋ ( ( λ x554 -> p1 ) ) ) $ ( d158 ) ) ) ) $ ( if d175 then p3 else true )
        d555 : if true then if false then Bool else Bool else if true then Bool else Bool
        d555 = ( ( Bool -> Bool ) ∋ ( ( λ x556 -> if p1 then false else d504 ) ) ) $ ( if p1 then d317 else d469 )
        d557 : ( ( Set -> Set ) ∋ ( ( λ x558 -> ( ( Set -> Set ) ∋ ( ( λ x559 -> x559 ) ) ) $ ( x558 ) ) ) ) $ ( if false then Bool else Bool )
        d557 = if if p3 then p3 else p1 then if d279 then false else d346 else if d95 then d419 else d489
        d560 : ( ( Set -> Set ) ∋ ( ( λ x561 -> ( ( Set -> Set ) ∋ ( ( λ x562 -> x562 ) ) ) $ ( x561 ) ) ) ) $ ( if false then Bool else Bool )
        d560 = if if d89 then d169 else d526 then if p3 then p1 else p3 else if p3 then p3 else true
        d563 : if false then if true then Bool else Bool else if true then Bool else Bool
        d563 = ( ( Bool -> Bool ) ∋ ( ( λ x564 -> ( ( Bool -> Bool ) ∋ ( ( λ x565 -> true ) ) ) $ ( d72 ) ) ) ) $ ( if d94 then true else p3 )
        d566 : ( ( Set -> Set ) ∋ ( ( λ x568 -> ( ( Set -> Set ) ∋ ( ( λ x569 -> x569 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d566 = ( ( Bool -> Bool ) ∋ ( ( λ x567 -> if d560 then x567 else false ) ) ) $ ( if p1 then p3 else true )
        d570 : if true then if true then Bool else Bool else if false then Bool else Bool
        d570 = if if d89 then p1 else p3 then if true then false else d13 else if p1 then d533 else d420
        d571 : ( ( Set -> Set ) ∋ ( ( λ x572 -> ( ( Set -> Set ) ∋ ( ( λ x573 -> x573 ) ) ) $ ( x572 ) ) ) ) $ ( if true then Bool else Bool )
        d571 = if if p1 then true else p3 then if p1 then d420 else p3 else if d462 then d94 else d29
        d574 : ( ( Set -> Set ) ∋ ( ( λ x575 -> if false then x575 else x575 ) ) ) $ ( if true then Bool else Bool )
        d574 = if if d437 then p3 else true then if false then d290 else false else if d486 then d433 else p1
        d576 : if false then if true then Bool else Bool else if false then Bool else Bool
        d576 = if if d73 then p1 else d353 then if false then d100 else false else if d220 then p3 else p1
        d577 : if true then if false then Bool else Bool else if true then Bool else Bool
        d577 = ( ( Bool -> Bool ) ∋ ( ( λ x578 -> ( ( Bool -> Bool ) ∋ ( ( λ x579 -> d314 ) ) ) $ ( x578 ) ) ) ) $ ( if p3 then true else true )
        d580 : if false then if false then Bool else Bool else if false then Bool else Bool
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x581 -> if d128 then false else false ) ) ) $ ( if true then false else d267 )
        d582 : ( ( Set -> Set ) ∋ ( ( λ x584 -> ( ( Set -> Set ) ∋ ( ( λ x585 -> x585 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d582 = ( ( Bool -> Bool ) ∋ ( ( λ x583 -> if false then p1 else d209 ) ) ) $ ( if false then p3 else d233 )
        d586 : if false then if false then Bool else Bool else if false then Bool else Bool
        d586 = ( ( Bool -> Bool ) ∋ ( ( λ x587 -> ( ( Bool -> Bool ) ∋ ( ( λ x588 -> x588 ) ) ) $ ( p3 ) ) ) ) $ ( if true then true else d243 )
        d589 : if false then if true then Bool else Bool else if false then Bool else Bool
        d589 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if x590 then d441 else d194 ) ) ) $ ( if d146 then d353 else p3 )
        d591 : if false then if true then Bool else Bool else if false then Bool else Bool
        d591 = ( ( Bool -> Bool ) ∋ ( ( λ x592 -> ( ( Bool -> Bool ) ∋ ( ( λ x593 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if d555 then p3 else p3 )
        d594 : if false then if false then Bool else Bool else if true then Bool else Bool
        d594 = ( ( Bool -> Bool ) ∋ ( ( λ x595 -> if false then d544 else d582 ) ) ) $ ( if p1 then d586 else p3 )
        d596 : if false then if false then Bool else Bool else if true then Bool else Bool
        d596 = ( ( Bool -> Bool ) ∋ ( ( λ x597 -> ( ( Bool -> Bool ) ∋ ( ( λ x598 -> false ) ) ) $ ( true ) ) ) ) $ ( if p1 then d340 else false )
        d599 : ( ( Set -> Set ) ∋ ( ( λ x601 -> ( ( Set -> Set ) ∋ ( ( λ x602 -> Bool ) ) ) $ ( x601 ) ) ) ) $ ( if false then Bool else Bool )
        d599 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> if d271 then d56 else x600 ) ) ) $ ( if false then false else p1 )
        d603 : ( ( Set -> Set ) ∋ ( ( λ x606 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d603 = ( ( Bool -> Bool ) ∋ ( ( λ x604 -> ( ( Bool -> Bool ) ∋ ( ( λ x605 -> false ) ) ) $ ( d425 ) ) ) ) $ ( if p3 then d272 else p3 )
        d607 : if true then if false then Bool else Bool else if false then Bool else Bool
        d607 = ( ( Bool -> Bool ) ∋ ( ( λ x608 -> ( ( Bool -> Bool ) ∋ ( ( λ x609 -> x609 ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then p3 else true )
        d610 : if true then if false then Bool else Bool else if false then Bool else Bool
        d610 = if if true then p3 else d73 then if p3 then p3 else d89 else if false then false else p3
        d611 : if false then if true then Bool else Bool else if true then Bool else Bool
        d611 = if if true then false else false then if d433 then true else p1 else if d380 then false else d427
        d612 : ( ( Set -> Set ) ∋ ( ( λ x613 -> if false then x613 else Bool ) ) ) $ ( if false then Bool else Bool )
        d612 = if if d411 then d232 else p3 then if d114 then d248 else p1 else if p3 then d432 else true
        d614 : if false then if true then Bool else Bool else if false then Bool else Bool
        d614 = ( ( Bool -> Bool ) ∋ ( ( λ x615 -> if p1 then x615 else false ) ) ) $ ( if p1 then p1 else d580 )
        d616 : if false then if true then Bool else Bool else if false then Bool else Bool
        d616 = if if p3 then p3 else d512 then if p3 then d89 else d256 else if d563 then true else p3
        d617 : ( ( Set -> Set ) ∋ ( ( λ x619 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d617 = ( ( Bool -> Bool ) ∋ ( ( λ x618 -> if p3 then d310 else p1 ) ) ) $ ( if false then d555 else true )
        d620 : if false then if true then Bool else Bool else if false then Bool else Bool
        d620 = ( ( Bool -> Bool ) ∋ ( ( λ x621 -> if true then p3 else false ) ) ) $ ( if d516 then p1 else p1 )
        d622 : if true then if true then Bool else Bool else if true then Bool else Bool
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x623 -> if false then x623 else p1 ) ) ) $ ( if d106 then d206 else d60 )
        d624 : ( ( Set -> Set ) ∋ ( ( λ x625 -> ( ( Set -> Set ) ∋ ( ( λ x626 -> x626 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d624 = if if false then false else p1 then if p3 then p3 else d142 else if p1 then d171 else d253
        d627 : ( ( Set -> Set ) ∋ ( ( λ x630 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d627 = ( ( Bool -> Bool ) ∋ ( ( λ x628 -> ( ( Bool -> Bool ) ∋ ( ( λ x629 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d631 : if false then if true then Bool else Bool else if true then Bool else Bool
        d631 = if if p1 then true else false then if true then true else p3 else if p3 then p3 else true
        d632 : if false then if true then Bool else Bool else if false then Bool else Bool
        d632 = ( ( Bool -> Bool ) ∋ ( ( λ x633 -> if p1 then d302 else true ) ) ) $ ( if d72 then p1 else p1 )
        d634 : if false then if false then Bool else Bool else if false then Bool else Bool
        d634 = ( ( Bool -> Bool ) ∋ ( ( λ x635 -> ( ( Bool -> Bool ) ∋ ( ( λ x636 -> x636 ) ) ) $ ( p1 ) ) ) ) $ ( if true then false else d89 )
        d637 : if false then if false then Bool else Bool else if false then Bool else Bool
        d637 = ( ( Bool -> Bool ) ∋ ( ( λ x638 -> ( ( Bool -> Bool ) ∋ ( ( λ x639 -> true ) ) ) $ ( d196 ) ) ) ) $ ( if false then p3 else p3 )
        d640 : ( ( Set -> Set ) ∋ ( ( λ x641 -> ( ( Set -> Set ) ∋ ( ( λ x642 -> Bool ) ) ) $ ( x641 ) ) ) ) $ ( if true then Bool else Bool )
        d640 = if if p1 then d617 else d185 then if p3 then d243 else d338 else if true then p3 else false
        d643 : if true then if false then Bool else Bool else if false then Bool else Bool
        d643 = if if false then p1 else d637 then if true then p3 else p1 else if false then p1 else d60
        d644 : ( ( Set -> Set ) ∋ ( ( λ x647 -> ( ( Set -> Set ) ∋ ( ( λ x648 -> x647 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d644 = ( ( Bool -> Bool ) ∋ ( ( λ x645 -> ( ( Bool -> Bool ) ∋ ( ( λ x646 -> x645 ) ) ) $ ( x645 ) ) ) ) $ ( if p3 then p1 else p1 )
        d649 : if true then if false then Bool else Bool else if false then Bool else Bool
        d649 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> ( ( Bool -> Bool ) ∋ ( ( λ x651 -> x651 ) ) ) $ ( d11 ) ) ) ) $ ( if true then p1 else d256 )
        d652 : ( ( Set -> Set ) ∋ ( ( λ x655 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d652 = ( ( Bool -> Bool ) ∋ ( ( λ x653 -> ( ( Bool -> Bool ) ∋ ( ( λ x654 -> d560 ) ) ) $ ( d188 ) ) ) ) $ ( if p3 then false else p1 )
        d656 : ( ( Set -> Set ) ∋ ( ( λ x659 -> ( ( Set -> Set ) ∋ ( ( λ x660 -> x659 ) ) ) $ ( x659 ) ) ) ) $ ( if false then Bool else Bool )
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x657 -> ( ( Bool -> Bool ) ∋ ( ( λ x658 -> d197 ) ) ) $ ( true ) ) ) ) $ ( if d142 then p3 else d432 )
        d661 : if true then if true then Bool else Bool else if true then Bool else Bool
        d661 = ( ( Bool -> Bool ) ∋ ( ( λ x662 -> if d92 then x662 else false ) ) ) $ ( if d35 then true else true )
        d663 : if false then if false then Bool else Bool else if true then Bool else Bool
        d663 = if if false then p3 else p1 then if d574 then d406 else p3 else if d296 then p3 else d160
        d664 : if true then if false then Bool else Bool else if false then Bool else Bool
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x665 -> ( ( Bool -> Bool ) ∋ ( ( λ x666 -> d560 ) ) ) $ ( d160 ) ) ) ) $ ( if d178 then false else d42 )
        d667 : ( ( Set -> Set ) ∋ ( ( λ x669 -> ( ( Set -> Set ) ∋ ( ( λ x670 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d667 = ( ( Bool -> Bool ) ∋ ( ( λ x668 -> if false then d196 else x668 ) ) ) $ ( if d453 then true else p3 )
        d671 : ( ( Set -> Set ) ∋ ( ( λ x674 -> ( ( Set -> Set ) ∋ ( ( λ x675 -> x674 ) ) ) $ ( x674 ) ) ) ) $ ( if false then Bool else Bool )
        d671 = ( ( Bool -> Bool ) ∋ ( ( λ x672 -> ( ( Bool -> Bool ) ∋ ( ( λ x673 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if d644 then p1 else d432 )
        d676 : ( ( Set -> Set ) ∋ ( ( λ x678 -> ( ( Set -> Set ) ∋ ( ( λ x679 -> x678 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d676 = ( ( Bool -> Bool ) ∋ ( ( λ x677 -> if false then x677 else true ) ) ) $ ( if false then false else false )
        d680 : if true then if false then Bool else Bool else if false then Bool else Bool
        d680 = ( ( Bool -> Bool ) ∋ ( ( λ x681 -> ( ( Bool -> Bool ) ∋ ( ( λ x682 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d151 else d296 )
        d683 : if true then if true then Bool else Bool else if true then Bool else Bool
        d683 = ( ( Bool -> Bool ) ∋ ( ( λ x684 -> ( ( Bool -> Bool ) ∋ ( ( λ x685 -> false ) ) ) $ ( d557 ) ) ) ) $ ( if p1 then d580 else p3 )
        d686 : if false then if false then Bool else Bool else if true then Bool else Bool
        d686 = ( ( Bool -> Bool ) ∋ ( ( λ x687 -> ( ( Bool -> Bool ) ∋ ( ( λ x688 -> d160 ) ) ) $ ( d612 ) ) ) ) $ ( if p1 then p3 else true )
        d689 : if true then if false then Bool else Bool else if true then Bool else Bool
        d689 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> if d233 then d441 else false ) ) ) $ ( if true then d616 else d128 )
        d691 : ( ( Set -> Set ) ∋ ( ( λ x694 -> if true then x694 else x694 ) ) ) $ ( if true then Bool else Bool )
        d691 = ( ( Bool -> Bool ) ∋ ( ( λ x692 -> ( ( Bool -> Bool ) ∋ ( ( λ x693 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then false else p3 )
        d695 : if false then if false then Bool else Bool else if true then Bool else Bool
        d695 = if if true then d574 else p3 then if p1 then false else d130 else if true then d465 else true
        d696 : ( ( Set -> Set ) ∋ ( ( λ x699 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( x699 ) ) ) ) $ ( if true then Bool else Bool )
        d696 = ( ( Bool -> Bool ) ∋ ( ( λ x697 -> ( ( Bool -> Bool ) ∋ ( ( λ x698 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d49 then p1 else d570 )
        d701 : if true then if false then Bool else Bool else if true then Bool else Bool
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x702 -> if d644 then false else x702 ) ) ) $ ( if p1 then d302 else p1 )
        d703 : ( ( Set -> Set ) ∋ ( ( λ x704 -> ( ( Set -> Set ) ∋ ( ( λ x705 -> x704 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d703 = if if false then d479 else p3 then if p1 then p3 else d109 else if true then true else true
        d706 : ( ( Set -> Set ) ∋ ( ( λ x709 -> if true then x709 else Bool ) ) ) $ ( if true then Bool else Bool )
        d706 = ( ( Bool -> Bool ) ∋ ( ( λ x707 -> ( ( Bool -> Bool ) ∋ ( ( λ x708 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if d563 then p1 else true )
        d710 : if true then if false then Bool else Bool else if false then Bool else Bool
        d710 = if if p1 then p1 else false then if true then p1 else d450 else if d486 then d241 else p3
        d711 : if true then if false then Bool else Bool else if false then Bool else Bool
        d711 = ( ( Bool -> Bool ) ∋ ( ( λ x712 -> ( ( Bool -> Bool ) ∋ ( ( λ x713 -> true ) ) ) $ ( d8 ) ) ) ) $ ( if d79 then false else p1 )
        d714 : ( ( Set -> Set ) ∋ ( ( λ x715 -> ( ( Set -> Set ) ∋ ( ( λ x716 -> Bool ) ) ) $ ( x715 ) ) ) ) $ ( if true then Bool else Bool )
        d714 = if if false then d427 else d454 then if true then p1 else true else if d8 then p1 else true
        d717 : if true then if true then Bool else Bool else if true then Bool else Bool
        d717 = if if false then d465 else d701 then if d450 then d439 else false else if d512 then d194 else true
        d718 : ( ( Set -> Set ) ∋ ( ( λ x719 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> Bool ) ) ) $ ( x719 ) ) ) ) $ ( if true then Bool else Bool )
        d718 = if if p1 then p1 else true then if d264 then d290 else p3 else if p1 then false else false
        d721 : if false then if false then Bool else Bool else if false then Bool else Bool
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x722 -> ( ( Bool -> Bool ) ∋ ( ( λ x723 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then p3 else false )
        d724 : ( ( Set -> Set ) ∋ ( ( λ x725 -> ( ( Set -> Set ) ∋ ( ( λ x726 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d724 = if if p3 then d661 else false then if d72 then true else d232 else if true then false else p3
        d727 : if false then if true then Bool else Bool else if false then Bool else Bool
        d727 = ( ( Bool -> Bool ) ∋ ( ( λ x728 -> ( ( Bool -> Bool ) ∋ ( ( λ x729 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if p3 then true else d479 )
        d730 : if false then if true then Bool else Bool else if true then Bool else Bool
        d730 = if if p1 then p1 else d571 then if p3 then true else d552 else if d296 then false else p3
        d731 : if true then if true then Bool else Bool else if false then Bool else Bool
        d731 = if if false then d387 else true then if true then true else false else if true then d571 else false
        d732 : ( ( Set -> Set ) ∋ ( ( λ x733 -> ( ( Set -> Set ) ∋ ( ( λ x734 -> x734 ) ) ) $ ( x733 ) ) ) ) $ ( if false then Bool else Bool )
        d732 = if if false then p3 else d175 then if d228 then false else d218 else if true then false else p3
        d735 : if true then if true then Bool else Bool else if false then Bool else Bool
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x736 -> ( ( Bool -> Bool ) ∋ ( ( λ x737 -> d92 ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else d169 )
        d738 : if true then if true then Bool else Bool else if false then Bool else Bool
        d738 = if if false then true else p1 then if false then true else true else if true then false else p1
        d739 : ( ( Set -> Set ) ∋ ( ( λ x742 -> ( ( Set -> Set ) ∋ ( ( λ x743 -> x742 ) ) ) $ ( x742 ) ) ) ) $ ( if false then Bool else Bool )
        d739 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> ( ( Bool -> Bool ) ∋ ( ( λ x741 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then d362 else true )
        d744 : ( ( Set -> Set ) ∋ ( ( λ x747 -> if false then x747 else Bool ) ) ) $ ( if false then Bool else Bool )
        d744 = ( ( Bool -> Bool ) ∋ ( ( λ x745 -> ( ( Bool -> Bool ) ∋ ( ( λ x746 -> d454 ) ) ) $ ( d210 ) ) ) ) $ ( if p1 then d433 else false )
        d748 : ( ( Set -> Set ) ∋ ( ( λ x749 -> ( ( Set -> Set ) ∋ ( ( λ x750 -> x749 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d748 = if if d731 then p1 else true then if p3 then p3 else d680 else if false then d594 else true
        d751 : ( ( Set -> Set ) ∋ ( ( λ x752 -> if true then x752 else Bool ) ) ) $ ( if false then Bool else Bool )
        d751 = if if d661 then d643 else d264 then if d35 then p1 else d594 else if p1 then p1 else d51
        d753 : ( ( Set -> Set ) ∋ ( ( λ x754 -> if false then Bool else x754 ) ) ) $ ( if true then Bool else Bool )
        d753 = if if p1 then true else d411 then if false then false else p3 else if p1 then d462 else p3
        d755 : if false then if false then Bool else Bool else if false then Bool else Bool
        d755 = ( ( Bool -> Bool ) ∋ ( ( λ x756 -> if p1 then d542 else x756 ) ) ) $ ( if false then d28 else true )
        d757 : if false then if true then Bool else Bool else if false then Bool else Bool
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x758 -> if false then true else true ) ) ) $ ( if p1 then p1 else true )
        d759 : if true then if false then Bool else Bool else if true then Bool else Bool
        d759 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if p3 then false else d394 ) ) ) $ ( if d53 then p3 else d471 )
        d761 : ( ( Set -> Set ) ∋ ( ( λ x762 -> if true then x762 else x762 ) ) ) $ ( if false then Bool else Bool )
        d761 = if if true then true else d401 then if d316 then d485 else true else if p1 then true else d260
        d763 : if false then if false then Bool else Bool else if false then Bool else Bool
        d763 = ( ( Bool -> Bool ) ∋ ( ( λ x764 -> ( ( Bool -> Bool ) ∋ ( ( λ x765 -> d571 ) ) ) $ ( p3 ) ) ) ) $ ( if d516 then p1 else d727 )
        d766 : if true then if false then Bool else Bool else if true then Bool else Bool
        d766 = if if p1 then d664 else d532 then if p3 then p1 else true else if p3 then p1 else false
        d767 : ( ( Set -> Set ) ∋ ( ( λ x768 -> ( ( Set -> Set ) ∋ ( ( λ x769 -> x769 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d767 = if if false then p3 else p1 then if d724 then true else true else if d233 then d671 else p3
        d770 : if false then if true then Bool else Bool else if true then Bool else Bool
        d770 = ( ( Bool -> Bool ) ∋ ( ( λ x771 -> ( ( Bool -> Bool ) ∋ ( ( λ x772 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if d566 then false else d365 )
    module M'  = M ( true ) 
    d773 : if true then if false then Bool else Bool else if true then Bool else Bool
    d773 = ( M'.d450 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x774 -> ( ( Bool -> Bool ) ∋ ( ( λ x775 -> false ) ) ) $ ( x774 ) ) ) ) $ ( if false then false else false ) )
    d776 : ( ( Set -> Set ) ∋ ( ( λ x777 -> ( ( Set -> Set ) ∋ ( ( λ x778 -> x778 ) ) ) $ ( x777 ) ) ) ) $ ( if false then Bool else Bool )
    d776 = if if d773 then true else d773 then if false then d773 else true else if d773 then true else d773
    d779 : ( ( Set -> Set ) ∋ ( ( λ x781 -> if false then x781 else Bool ) ) ) $ ( if false then Bool else Bool )
    d779 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> ( ( M.d526 ) $ ( if d773 then x780 else d773 ) ) $ ( if d773 then d773 else x780 ) ) ) ) $ ( if false then d773 else d773 )
    d782 : ( ( Set -> Set ) ∋ ( ( λ x784 -> ( ( Set -> Set ) ∋ ( ( λ x785 -> Bool ) ) ) $ ( x784 ) ) ) ) $ ( if false then Bool else Bool )
    d782 = ( ( Bool -> Bool ) ∋ ( ( λ x783 -> ( ( M.d345 ) $ ( if x783 then false else true ) ) $ ( if x783 then x783 else false ) ) ) ) $ ( if d773 then d776 else false )
    d786 : ( ( Set -> Set ) ∋ ( ( λ x788 -> ( ( Set -> Set ) ∋ ( ( λ x789 -> Bool ) ) ) $ ( x788 ) ) ) ) $ ( if true then Bool else Bool )
    d786 = ( M'.d206 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x787 -> ( M'.d603 ) $ ( ( M'.d496 ) $ ( ( ( M.d478 ) $ ( if false then false else d779 ) ) $ ( if x787 then false else d779 ) ) ) ) ) ) $ ( if false then d779 else d782 ) )
    d790 : ( ( Set -> Set ) ∋ ( ( λ x791 -> ( ( Set -> Set ) ∋ ( ( λ x792 -> Bool ) ) ) $ ( x791 ) ) ) ) $ ( if true then Bool else Bool )
    d790 = ( M'.d246 ) $ ( ( M'.d454 ) $ ( if if true then true else false then if false then d782 else false else if d786 then true else true ) )
    d793 : if false then if true then Bool else Bool else if true then Bool else Bool
    d793 = ( M'.d594 ) $ ( if if false then d776 else d790 then if true then false else false else if d782 then true else false )
    d794 : ( ( Set -> Set ) ∋ ( ( λ x797 -> ( ( Set -> Set ) ∋ ( ( λ x798 -> Bool ) ) ) $ ( x797 ) ) ) ) $ ( if true then Bool else Bool )
    d794 = ( ( M.d338 ) $ ( ( M'.d279 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x795 -> true ) ) ) $ ( d793 ) ) ) ) $ ( ( M'.d236 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x796 -> d790 ) ) ) $ ( d782 ) ) )
    d799 : if true then if true then Bool else Bool else if false then Bool else Bool
    d799 = ( M'.d691 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if x800 then false else d786 ) ) ) $ ( if true then d773 else true ) )
    d801 : if true then if true then Bool else Bool else if false then Bool else Bool
    d801 = ( M'.d443 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x802 -> ( M'.d550 ) $ ( if d799 then x802 else x802 ) ) ) ) $ ( if d776 then d799 else d790 ) )
    d803 : ( ( Set -> Set ) ∋ ( ( λ x804 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d803 = if if d786 then d786 else d779 then if false then true else d779 else if d801 then true else d790
    d805 : if false then if true then Bool else Bool else if true then Bool else Bool
    d805 = ( ( Bool -> Bool ) ∋ ( ( λ x806 -> ( M'.d169 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x807 -> x807 ) ) ) $ ( x806 ) ) ) ) ) $ ( if d801 then d776 else d793 )
    d808 : ( ( Set -> Set ) ∋ ( ( λ x810 -> ( ( Set -> Set ) ∋ ( ( λ x811 -> x811 ) ) ) $ ( x810 ) ) ) ) $ ( if false then Bool else Bool )
    d808 = ( ( M.d489 ) $ ( ( ( M.d18 ) $ ( d779 ) ) $ ( false ) ) ) $ ( ( M'.d696 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x809 -> true ) ) ) $ ( d803 ) ) )
    d812 : if false then if false then Bool else Bool else if false then Bool else Bool
    d812 = ( M'.d178 ) $ ( ( M'.d521 ) $ ( ( M'.d94 ) $ ( ( M'.d617 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x813 -> ( ( M.d368 ) $ ( if x813 then false else x813 ) ) $ ( if d786 then false else x813 ) ) ) ) $ ( if true then d794 else d794 ) ) ) ) )
    d814 : ( ( Set -> Set ) ∋ ( ( λ x816 -> ( ( Set -> Set ) ∋ ( ( λ x817 -> Bool ) ) ) $ ( x816 ) ) ) ) $ ( if false then Bool else Bool )
    d814 = ( ( M.d439 ) $ ( ( M'.d295 ) $ ( ( ( M.d469 ) $ ( true ) ) $ ( d799 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x815 -> x815 ) ) ) $ ( d794 ) )
    d818 : if true then if true then Bool else Bool else if true then Bool else Bool
    d818 = ( ( M.d761 ) $ ( ( M'.d338 ) $ ( ( M'.d414 ) $ ( if d805 then true else d790 ) ) ) ) $ ( ( ( M.d634 ) $ ( false ) ) $ ( true ) )
    d819 : ( ( Set -> Set ) ∋ ( ( λ x820 -> ( ( Set -> Set ) ∋ ( ( λ x821 -> Bool ) ) ) $ ( x820 ) ) ) ) $ ( if false then Bool else Bool )
    d819 = if if d779 then d773 else true then if d812 then true else d782 else if false then d779 else d793
    d822 : if false then if true then Bool else Bool else if true then Bool else Bool
    d822 = if if d776 then d776 else d805 then if false then false else d801 else if false then true else false
    d823 : if false then if true then Bool else Bool else if false then Bool else Bool
    d823 = if if true then d786 else false then if true then d808 else d779 else if d793 then d779 else d822
    d824 : ( ( Set -> Set ) ∋ ( ( λ x826 -> ( ( Set -> Set ) ∋ ( ( λ x827 -> Bool ) ) ) $ ( x826 ) ) ) ) $ ( if false then Bool else Bool )
    d824 = ( ( Bool -> Bool ) ∋ ( ( λ x825 -> ( M'.d656 ) $ ( if d819 then d799 else false ) ) ) ) $ ( if true then d799 else d794 )
    d828 : ( ( Set -> Set ) ∋ ( ( λ x829 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d828 = ( ( M.d391 ) $ ( ( M'.d251 ) $ ( ( ( M.d56 ) $ ( d801 ) ) $ ( false ) ) ) ) $ ( if false then d801 else d808 )
    d830 : ( ( Set -> Set ) ∋ ( ( λ x831 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d830 = ( M'.d751 ) $ ( if if false then d822 else false then if d803 then true else d814 else if true then true else true )
    d832 : ( ( Set -> Set ) ∋ ( ( λ x834 -> ( ( Set -> Set ) ∋ ( ( λ x835 -> Bool ) ) ) $ ( x834 ) ) ) ) $ ( if true then Bool else Bool )
    d832 = ( ( Bool -> Bool ) ∋ ( ( λ x833 -> ( ( M.d124 ) $ ( if x833 then d819 else x833 ) ) $ ( if true then true else x833 ) ) ) ) $ ( if d776 then d812 else true )
    d836 : ( ( Set -> Set ) ∋ ( ( λ x837 -> ( ( Set -> Set ) ∋ ( ( λ x838 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d836 = ( M'.d307 ) $ ( if if false then true else true then if d790 then true else false else if d773 then true else d822 )
    d839 : ( ( Set -> Set ) ∋ ( ( λ x841 -> if true then x841 else Bool ) ) ) $ ( if true then Bool else Bool )
    d839 = ( M'.d549 ) $ ( ( M'.d228 ) $ ( ( M'.d450 ) $ ( ( ( M.d350 ) $ ( ( M'.d537 ) $ ( if d786 then false else false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x840 -> d803 ) ) ) $ ( false ) ) ) ) )
    d842 : ( ( Set -> Set ) ∋ ( ( λ x844 -> ( ( Set -> Set ) ∋ ( ( λ x845 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d842 = ( M'.d671 ) $ ( ( M'.d643 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x843 -> if x843 then true else x843 ) ) ) $ ( if false then d790 else d836 ) ) )
    d846 : if true then if false then Bool else Bool else if false then Bool else Bool
    d846 = ( ( M.d589 ) $ ( ( ( M.d376 ) $ ( d801 ) ) $ ( d839 ) ) ) $ ( if true then d803 else d799 )
    d847 : if true then if false then Bool else Bool else if true then Bool else Bool
    d847 = ( ( Bool -> Bool ) ∋ ( ( λ x848 -> ( ( Bool -> Bool ) ∋ ( ( λ x849 -> x848 ) ) ) $ ( false ) ) ) ) $ ( if d790 then d842 else true )
    d850 : ( ( Set -> Set ) ∋ ( ( λ x853 -> if true then x853 else Bool ) ) ) $ ( if false then Bool else Bool )
    d850 = ( M'.d215 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x851 -> ( ( Bool -> Bool ) ∋ ( ( λ x852 -> x851 ) ) ) $ ( x851 ) ) ) ) $ ( if false then true else d799 ) )
    d854 : ( ( Set -> Set ) ∋ ( ( λ x855 -> if false then x855 else Bool ) ) ) $ ( if false then Bool else Bool )
    d854 = if if d779 then d779 else false then if d808 then d832 else false else if d776 then d822 else d803
    d856 : ( ( Set -> Set ) ∋ ( ( λ x857 -> ( ( Set -> Set ) ∋ ( ( λ x858 -> x857 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d856 = if if false then d854 else true then if false then true else d799 else if false then false else d823
    d859 : if true then if false then Bool else Bool else if false then Bool else Bool
    d859 = ( ( M.d209 ) $ ( ( ( M.d59 ) $ ( true ) ) $ ( d839 ) ) ) $ ( ( M'.d603 ) $ ( ( M'.d236 ) $ ( ( ( M.d373 ) $ ( d779 ) ) $ ( true ) ) ) )
    d860 : ( ( Set -> Set ) ∋ ( ( λ x861 -> ( ( Set -> Set ) ∋ ( ( λ x862 -> x862 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d860 = if if false then d850 else true then if d794 then d812 else d793 else if d776 then d794 else d794
    d863 : ( ( Set -> Set ) ∋ ( ( λ x865 -> ( ( Set -> Set ) ∋ ( ( λ x866 -> Bool ) ) ) $ ( x865 ) ) ) ) $ ( if true then Bool else Bool )
    d863 = ( M'.d580 ) $ ( ( M'.d327 ) $ ( ( ( M.d378 ) $ ( ( ( M.d494 ) $ ( false ) ) $ ( true ) ) ) $ ( ( M'.d285 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x864 -> d794 ) ) ) $ ( d836 ) ) ) ) )
    d867 : ( ( Set -> Set ) ∋ ( ( λ x869 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> x869 ) ) ) $ ( x869 ) ) ) ) $ ( if false then Bool else Bool )
    d867 = ( ( Bool -> Bool ) ∋ ( ( λ x868 -> ( M'.d94 ) $ ( ( ( M.d763 ) $ ( if x868 then false else x868 ) ) $ ( if false then d805 else x868 ) ) ) ) ) $ ( if d856 then false else true )
    d871 : if false then if true then Bool else Bool else if false then Bool else Bool
    d871 = if if d822 then true else d801 then if true then true else d836 else if d801 then d794 else false
    d872 : ( ( Set -> Set ) ∋ ( ( λ x873 -> ( ( Set -> Set ) ∋ ( ( λ x874 -> x874 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d872 = ( M'.d280 ) $ ( if if d814 then true else false then if d836 then d779 else false else if false then false else d812 )
    d875 : if false then if false then Bool else Bool else if true then Bool else Bool
    d875 = ( ( M.d236 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x876 -> d850 ) ) ) $ ( true ) ) ) $ ( ( ( M.d196 ) $ ( d801 ) ) $ ( d839 ) )
    d877 : if true then if false then Bool else Bool else if false then Bool else Bool
    d877 = ( M'.d296 ) $ ( ( ( M.d465 ) $ ( ( M'.d267 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x878 -> true ) ) ) $ ( true ) ) ) ) $ ( ( M'.d661 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x879 -> x879 ) ) ) $ ( d832 ) ) ) )
    d880 : ( ( Set -> Set ) ∋ ( ( λ x881 -> ( ( Set -> Set ) ∋ ( ( λ x882 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d880 = ( M'.d32 ) $ ( if if d839 then true else false then if true then d823 else d819 else if true then d776 else d819 )
    d883 : ( ( Set -> Set ) ∋ ( ( λ x885 -> if false then x885 else Bool ) ) ) $ ( if true then Bool else Bool )
    d883 = ( ( Bool -> Bool ) ∋ ( ( λ x884 -> ( ( M.d45 ) $ ( if true then true else x884 ) ) $ ( if x884 then d801 else d808 ) ) ) ) $ ( if d871 then d846 else true )
    d886 : if true then if false then Bool else Bool else if true then Bool else Bool
    d886 = ( ( M.d72 ) $ ( ( M'.d632 ) $ ( ( M'.d139 ) $ ( if d776 then d832 else d793 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x887 -> x887 ) ) ) $ ( d867 ) )
    d888 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x891 -> x891 ) ) ) $ ( x890 ) ) ) ) $ ( if true then Bool else Bool )
    d888 = ( ( M.d194 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x889 -> true ) ) ) $ ( d871 ) ) ) $ ( ( ( M.d744 ) $ ( d824 ) ) $ ( false ) )
    d892 : if true then if true then Bool else Bool else if true then Bool else Bool
    d892 = ( M'.d634 ) $ ( if if false then d860 else d854 then if d801 then false else true else if true then true else d880 )
    d893 : if true then if false then Bool else Bool else if false then Bool else Bool
    d893 = if if false then d808 else false then if true then false else true else if d877 then true else d786
    d894 : ( ( Set -> Set ) ∋ ( ( λ x895 -> if true then Bool else x895 ) ) ) $ ( if false then Bool else Bool )
    d894 = ( M'.d185 ) $ ( ( ( M.d634 ) $ ( if d773 then d828 else d786 ) ) $ ( ( ( M.d11 ) $ ( d871 ) ) $ ( d830 ) ) )
    d896 : if false then if true then Bool else Bool else if true then Bool else Bool
    d896 = ( M'.d471 ) $ ( ( ( M.d563 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x897 -> true ) ) ) $ ( d880 ) ) ) $ ( ( ( M.d373 ) $ ( d886 ) ) $ ( false ) ) )
    d898 : if false then if false then Bool else Bool else if false then Bool else Bool
    d898 = ( M'.d394 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x899 -> ( ( M.d314 ) $ ( if d828 then x899 else x899 ) ) $ ( if d883 then true else d830 ) ) ) ) $ ( if false then d819 else true ) )
    d900 : if true then if true then Bool else Bool else if true then Bool else Bool
    d900 = ( M'.d163 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x901 -> ( M'.d298 ) $ ( if false then d790 else true ) ) ) ) $ ( if d880 then true else d819 ) )
    d902 : ( ( Set -> Set ) ∋ ( ( λ x905 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d902 = ( M'.d432 ) $ ( ( M'.d325 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x903 -> ( M'.d643 ) $ ( ( M'.d39 ) $ ( ( M'.d371 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x904 -> x903 ) ) ) $ ( d824 ) ) ) ) ) ) ) $ ( if d886 then false else d854 ) ) )