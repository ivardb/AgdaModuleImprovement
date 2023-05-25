module Alias300Test1  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then x4 else Bool ) ) ) $ ( Bool ) )  where
        d5 : if false then if false then Bool else Bool else if true then Bool else Bool
        d5 = if if p1 then p1 else p3 then if true then false else p1 else if true then true else true
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then x9 else Bool ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> d5 ) ) ) $ ( d5 ) ) ) ) $ ( if false then true else d5 )
        d10 : if true then if false then Bool else Bool else if true then Bool else Bool
        d10 = if if false then p3 else d5 then if true then d6 else p1 else if false then p1 else p1
        d11 : if true then if false then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> false ) ) ) $ ( d10 ) ) ) ) $ ( if d5 then true else true )
        d14 : if false then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if d6 then d10 else d5 then if d10 then d6 else true else if p1 then false else p1
        d15 : if false then if false then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> false ) ) ) $ ( d6 ) ) ) ) $ ( if p3 then d6 else d10 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d18 = if if d5 then d6 else true then if d5 then p3 else p1 else if p3 then false else d11
        d21 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then x24 else x24 ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if d10 then p3 else p3 )
        d25 : if true then if false then Bool else Bool else if true then Bool else Bool
        d25 = if if false then d15 else p3 then if d10 then false else d11 else if d15 then d11 else d18
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> Bool ) ) ) $ ( x27 ) ) ) ) $ ( if false then Bool else Bool )
        d26 = if if d10 then false else d6 then if p1 then false else d25 else if d10 then true else true
        d29 : if true then if true then Bool else Bool else if false then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then false else true ) ) ) $ ( if p3 then d25 else d11 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then x34 else Bool ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> d5 ) ) ) $ ( true ) ) ) ) $ ( if false then p3 else p1 )
        d35 : if true then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d10 then d14 else p1 ) ) ) $ ( if p1 then true else d18 )
        d37 : if false then if true then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if p3 then p1 else d21 ) ) ) $ ( if d35 then d25 else d21 )
        d39 : if false then if false then Bool else Bool else if true then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> d11 ) ) ) $ ( d21 ) ) ) ) $ ( if d37 then d31 else d26 )
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> x43 ) ) ) $ ( true ) ) ) ) $ ( if p3 then p3 else p1 )
        d45 : if false then if true then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> d42 ) ) ) $ ( false ) ) ) ) $ ( if d11 then false else p3 )
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if p1 then p3 else d5 ) ) ) $ ( if d26 then p1 else false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if true then true else x51 ) ) ) $ ( if d26 then p1 else p1 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> Bool ) ) ) $ ( x56 ) ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if d5 then d50 else false ) ) ) $ ( if p3 then p1 else p1 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then x60 else Bool ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if false then false else false ) ) ) $ ( if p1 then true else d26 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( x64 ) ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> d15 ) ) ) $ ( d31 ) ) ) ) $ ( if d21 then d54 else d39 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x67 ) ) ) $ ( x67 ) ) ) ) $ ( if false then Bool else Bool )
        d66 = if if false then d31 else true then if d15 then false else d21 else if p1 then d54 else true
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if true then x71 else x71 ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if true then false else true ) ) ) $ ( if d35 then p3 else d18 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then Bool else x73 ) ) ) $ ( if false then Bool else Bool )
        d72 = if if d66 then d54 else d48 then if p1 then false else p1 else if false then d21 else p3
        d74 : if true then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if true then d42 else false )
        d77 : if true then if false then Bool else Bool else if false then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if p1 then d42 else x78 ) ) ) $ ( if false then d5 else p3 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then Bool else x80 ) ) ) $ ( if true then Bool else Bool )
        d79 = if if true then true else d25 then if true then d11 else p3 else if d21 then d26 else p3
        d81 : if false then if true then Bool else Bool else if false then Bool else Bool
        d81 = if if p1 then d74 else false then if true then p3 else p1 else if d69 then d14 else d58
        d82 : if false then if true then Bool else Bool else if true then Bool else Bool
        d82 = if if p3 then d5 else true then if d29 then p1 else d81 else if p3 then d14 else p3
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x85 ) ) ) $ ( x84 ) ) ) ) $ ( if true then Bool else Bool )
        d83 = if if false then d79 else d29 then if p3 then p3 else d82 else if d61 then d48 else true
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> true ) ) ) $ ( true ) ) ) ) $ ( if p3 then p3 else false )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d90 = if if d74 then p1 else p1 then if false then d50 else false else if true then p3 else true
        d93 : if false then if false then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( x94 ) ) ) ) $ ( if p1 then d35 else p1 )
        d96 : if false then if true then Bool else Bool else if true then Bool else Bool
        d96 = if if d66 then d42 else d35 then if p3 then true else d6 else if false then false else p1
        d97 : if true then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> true ) ) ) $ ( d39 ) ) ) ) $ ( if false then d69 else d42 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d100 = if if d90 then true else p3 then if false then d81 else p3 else if false then true else true
        d102 : if false then if false then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if x103 then d81 else true ) ) ) $ ( if d45 then d77 else d79 )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> x105 ) ) ) $ ( x105 ) ) ) ) $ ( if true then Bool else Bool )
        d104 = if if p3 then true else true then if d74 then d42 else d96 else if d77 then p3 else true
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if false then Bool else x108 ) ) ) $ ( if true then Bool else Bool )
        d107 = if if d100 then false else false then if p3 then false else d10 else if p1 then p1 else p3
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x110 ) ) ) $ ( x110 ) ) ) ) $ ( if true then Bool else Bool )
        d109 = if if d35 then true else false then if false then false else false else if true then d5 else true
        d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d112 = if if p1 then d100 else false then if p1 then p3 else p1 else if false then d81 else false
        d114 : if true then if false then Bool else Bool else if false then Bool else Bool
        d114 = if if d100 then d11 else d50 then if d37 then d97 else d61 else if false then d42 else d29
        d115 : if false then if false then Bool else Bool else if false then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> false ) ) ) $ ( d107 ) ) ) ) $ ( if p3 then false else p1 )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if false then x119 else Bool ) ) ) $ ( if true then Bool else Bool )
        d118 = if if d81 then p3 else d31 then if d72 then true else p3 else if d115 then true else d100
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( x121 ) ) ) ) $ ( if true then Bool else Bool )
        d120 = if if false then false else d102 then if d14 then p1 else d118 else if false then true else true
        d123 : if false then if false then Bool else Bool else if false then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if d82 then p1 else d82 ) ) ) $ ( if d69 then false else false )
        d125 : if true then if false then Bool else Bool else if true then Bool else Bool
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> false ) ) ) $ ( d74 ) ) ) ) $ ( if d54 then true else p3 )
        d128 : if true then if false then Bool else Bool else if true then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> if d11 then p1 else d35 ) ) ) $ ( if d86 then true else d25 )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> ( ( Set -> Set ) ∋ ( ( λ x132 -> x132 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d130 = if if p3 then p3 else true then if true then false else d29 else if false then p1 else false
        d133 : if false then if false then Bool else Bool else if true then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> if d120 then p3 else p1 ) ) ) $ ( if p3 then p1 else false )
        d135 : if false then if false then Bool else Bool else if true then Bool else Bool
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( Bool -> Bool ) ∋ ( ( λ x137 -> false ) ) ) $ ( d133 ) ) ) ) $ ( if p3 then p1 else d42 )
        d138 : if true then if true then Bool else Bool else if false then Bool else Bool
        d138 = if if d102 then d15 else d120 then if d97 then p1 else false else if p1 then false else d109
        d139 : if false then if false then Bool else Bool else if false then Bool else Bool
        d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x141 -> x140 ) ) ) $ ( p3 ) ) ) ) $ ( if d120 then p1 else true )
        d142 : if false then if false then Bool else Bool else if false then Bool else Bool
        d142 = if if true then d107 else d93 then if p1 then p3 else true else if false then d81 else true
        d143 : if true then if false then Bool else Bool else if false then Bool else Bool
        d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( Bool -> Bool ) ∋ ( ( λ x145 -> d37 ) ) ) $ ( p3 ) ) ) ) $ ( if d135 then true else p3 )
        d146 : if false then if true then Bool else Bool else if true then Bool else Bool
        d146 = if if true then d42 else p1 then if false then d96 else d66 else if p3 then p3 else p1
        d147 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( Bool -> Bool ) ∋ ( ( λ x149 -> x149 ) ) ) $ ( true ) ) ) ) $ ( if d130 then d138 else d130 )
        d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if false then Bool else x152 ) ) ) $ ( if false then Bool else Bool )
        d151 = if if d118 then true else d118 then if p3 then d86 else p1 else if d74 then false else d104
        d153 : if true then if true then Bool else Bool else if true then Bool else Bool
        d153 = if if true then p1 else d147 then if false then p3 else d5 else if p1 then d118 else p3
        d154 : if true then if true then Bool else Bool else if false then Bool else Bool
        d154 = if if p3 then true else p3 then if d25 then false else d11 else if p3 then p3 else p1
        d155 : if true then if true then Bool else Bool else if false then Bool else Bool
        d155 = if if p3 then d146 else true then if p1 then false else p1 else if true then true else false
        d156 : if false then if false then Bool else Bool else if false then Bool else Bool
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> if d115 then d135 else false ) ) ) $ ( if d96 then true else d123 )
        d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> if false then Bool else x159 ) ) ) $ ( if true then Bool else Bool )
        d158 = if if d123 then false else p3 then if p1 then false else d42 else if d153 then p1 else d107
        d160 : if true then if true then Bool else Bool else if false then Bool else Bool
        d160 = if if d143 then true else true then if d14 then p3 else p1 else if p1 then p1 else p3
        d161 : ( ( Set -> Set ) ∋ ( ( λ x162 -> if true then Bool else x162 ) ) ) $ ( if true then Bool else Bool )
        d161 = if if false then false else d96 then if d90 then p1 else p3 else if d83 then p1 else p1
        d163 : if false then if false then Bool else Bool else if true then Bool else Bool
        d163 = if if d18 then d29 else d37 then if false then p3 else false else if d18 then p3 else d160
        d164 : if true then if false then Bool else Bool else if true then Bool else Bool
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( Bool -> Bool ) ∋ ( ( λ x166 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if d11 then p3 else false )
        d167 : if false then if false then Bool else Bool else if false then Bool else Bool
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> if p1 then d14 else true ) ) ) $ ( if p3 then false else p3 )
        d169 : if true then if true then Bool else Bool else if true then Bool else Bool
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if p1 then p1 else x170 ) ) ) $ ( if d115 then false else true )
        d171 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> d6 ) ) ) $ ( d135 ) ) ) ) $ ( if d35 then d160 else d18 )
        d176 : if false then if false then Bool else Bool else if false then Bool else Bool
        d176 = if if d104 then false else p3 then if true then d158 else false else if p1 then p1 else d61
        d177 : ( ( Set -> Set ) ∋ ( ( λ x179 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> if false then d147 else true ) ) ) $ ( if d118 then p3 else p3 )
        d181 : if true then if true then Bool else Bool else if true then Bool else Bool
        d181 = if if p1 then p1 else p3 then if true then false else d15 else if false then p3 else false
        d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d182 = if if false then p1 else p3 then if d104 then true else d176 else if true then p3 else d18
        d185 : if false then if true then Bool else Bool else if false then Bool else Bool
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( Bool -> Bool ) ∋ ( ( λ x187 -> d169 ) ) ) $ ( d171 ) ) ) ) $ ( if d169 then p3 else false )
        d188 : if false then if false then Bool else Bool else if true then Bool else Bool
        d188 = if if d163 then true else true then if p3 then false else d181 else if p3 then true else d81
        d189 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if x190 then true else d14 ) ) ) $ ( if p1 then d123 else false )
        d193 : ( ( Set -> Set ) ∋ ( ( λ x194 -> ( ( Set -> Set ) ∋ ( ( λ x195 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d193 = if if p1 then p3 else true then if p3 then false else d142 else if p3 then d39 else p3
        d196 : ( ( Set -> Set ) ∋ ( ( λ x197 -> if false then Bool else x197 ) ) ) $ ( if true then Bool else Bool )
        d196 = if if true then false else false then if d83 then false else false else if d181 then false else p1
        d198 : if true then if false then Bool else Bool else if true then Bool else Bool
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x199 -> if p1 then false else x199 ) ) ) $ ( if d25 then d82 else d45 )
        d200 : ( ( Set -> Set ) ∋ ( ( λ x202 -> if true then Bool else x202 ) ) ) $ ( if true then Bool else Bool )
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x201 -> if p1 then p1 else true ) ) ) $ ( if d35 then d29 else false )
        d203 : ( ( Set -> Set ) ∋ ( ( λ x204 -> ( ( Set -> Set ) ∋ ( ( λ x205 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d203 = if if p1 then p1 else p3 then if d193 then p3 else p1 else if d37 then p1 else false
        d206 : ( ( Set -> Set ) ∋ ( ( λ x207 -> ( ( Set -> Set ) ∋ ( ( λ x208 -> Bool ) ) ) $ ( x207 ) ) ) ) $ ( if true then Bool else Bool )
        d206 = if if p3 then true else d177 then if false then d48 else p1 else if d147 then d45 else p3
        d209 : ( ( Set -> Set ) ∋ ( ( λ x210 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d209 = if if true then d82 else p1 then if false then d93 else p3 else if d139 then d206 else d100
        d211 : ( ( Set -> Set ) ∋ ( ( λ x212 -> if true then x212 else x212 ) ) ) $ ( if false then Bool else Bool )
        d211 = if if d118 then p3 else true then if d107 then d147 else d176 else if p3 then p1 else true
        d213 : if false then if true then Bool else Bool else if true then Bool else Bool
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x214 -> if x214 then d146 else d97 ) ) ) $ ( if true then p1 else true )
        d215 : if false then if false then Bool else Bool else if true then Bool else Bool
        d215 = if if p3 then false else false then if true then p3 else true else if false then d123 else false
        d216 : ( ( Set -> Set ) ∋ ( ( λ x219 -> ( ( Set -> Set ) ∋ ( ( λ x220 -> x219 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d216 = ( ( Bool -> Bool ) ∋ ( ( λ x217 -> ( ( Bool -> Bool ) ∋ ( ( λ x218 -> d171 ) ) ) $ ( p1 ) ) ) ) $ ( if d5 then d188 else d135 )
        d221 : if true then if false then Bool else Bool else if false then Bool else Bool
        d221 = if if false then d138 else p1 then if d21 then d109 else true else if d143 then p3 else d14
        d222 : if false then if true then Bool else Bool else if true then Bool else Bool
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x223 -> if d171 then x223 else false ) ) ) $ ( if true then p1 else false )
        d224 : ( ( Set -> Set ) ∋ ( ( λ x225 -> ( ( Set -> Set ) ∋ ( ( λ x226 -> x226 ) ) ) $ ( x225 ) ) ) ) $ ( if true then Bool else Bool )
        d224 = if if false then false else false then if d58 then false else p3 else if d193 then true else d161
        d227 : ( ( Set -> Set ) ∋ ( ( λ x230 -> if false then x230 else Bool ) ) ) $ ( if true then Bool else Bool )
        d227 = ( ( Bool -> Bool ) ∋ ( ( λ x228 -> ( ( Bool -> Bool ) ∋ ( ( λ x229 -> true ) ) ) $ ( false ) ) ) ) $ ( if d35 then p3 else p1 )
        d231 : if true then if false then Bool else Bool else if true then Bool else Bool
        d231 = if if d48 then false else false then if d216 then d81 else true else if p1 then p1 else p1
        d232 : ( ( Set -> Set ) ∋ ( ( λ x233 -> ( ( Set -> Set ) ∋ ( ( λ x234 -> x234 ) ) ) $ ( x233 ) ) ) ) $ ( if true then Bool else Bool )
        d232 = if if p3 then d18 else d143 then if p3 then d167 else p3 else if p1 then p1 else p3
        d235 : if true then if true then Bool else Bool else if false then Bool else Bool
        d235 = ( ( Bool -> Bool ) ∋ ( ( λ x236 -> ( ( Bool -> Bool ) ∋ ( ( λ x237 -> d42 ) ) ) $ ( false ) ) ) ) $ ( if false then d5 else d25 )
        d238 : if false then if false then Bool else Bool else if false then Bool else Bool
        d238 = if if true then true else d74 then if d182 then true else true else if p1 then d146 else p1
        d239 : if true then if true then Bool else Bool else if true then Bool else Bool
        d239 = if if true then true else d37 then if false then true else p1 else if d146 then true else false
        d240 : ( ( Set -> Set ) ∋ ( ( λ x242 -> ( ( Set -> Set ) ∋ ( ( λ x243 -> x243 ) ) ) $ ( x242 ) ) ) ) $ ( if false then Bool else Bool )
        d240 = ( ( Bool -> Bool ) ∋ ( ( λ x241 -> if false then p3 else x241 ) ) ) $ ( if d45 then d107 else d25 )
        d244 : ( ( Set -> Set ) ∋ ( ( λ x246 -> ( ( Set -> Set ) ∋ ( ( λ x247 -> x247 ) ) ) $ ( x246 ) ) ) ) $ ( if true then Bool else Bool )
        d244 = ( ( Bool -> Bool ) ∋ ( ( λ x245 -> if false then true else x245 ) ) ) $ ( if true then p3 else d102 )
        d248 : ( ( Set -> Set ) ∋ ( ( λ x249 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d248 = if if p1 then d112 else false then if p1 then p3 else p1 else if false then true else p3
        d251 : if false then if true then Bool else Bool else if false then Bool else Bool
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x252 -> if d181 then x252 else d104 ) ) ) $ ( if p3 then p1 else p3 )
        d253 : ( ( Set -> Set ) ∋ ( ( λ x256 -> ( ( Set -> Set ) ∋ ( ( λ x257 -> x256 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d253 = ( ( Bool -> Bool ) ∋ ( ( λ x254 -> ( ( Bool -> Bool ) ∋ ( ( λ x255 -> d232 ) ) ) $ ( d102 ) ) ) ) $ ( if p3 then true else p3 )
        d258 : ( ( Set -> Set ) ∋ ( ( λ x259 -> if true then x259 else x259 ) ) ) $ ( if false then Bool else Bool )
        d258 = if if p3 then d79 else p3 then if d151 then d239 else false else if d29 then false else p3
        d260 : if false then if false then Bool else Bool else if false then Bool else Bool
        d260 = if if d15 then d128 else false then if d54 then p3 else p1 else if d125 then d231 else d133
        d261 : ( ( Set -> Set ) ∋ ( ( λ x262 -> ( ( Set -> Set ) ∋ ( ( λ x263 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d261 = if if true then true else d153 then if true then d167 else p3 else if false then p1 else d155
        d264 : if false then if false then Bool else Bool else if false then Bool else Bool
        d264 = if if true then d66 else p3 then if false then d37 else d151 else if false then p1 else d14
        d265 : ( ( Set -> Set ) ∋ ( ( λ x266 -> if false then Bool else x266 ) ) ) $ ( if false then Bool else Bool )
        d265 = if if true then false else p1 then if d181 then p3 else p1 else if d79 then p3 else false
        d267 : if false then if true then Bool else Bool else if true then Bool else Bool
        d267 = ( ( Bool -> Bool ) ∋ ( ( λ x268 -> if false then false else d181 ) ) ) $ ( if false then true else p3 )
        d269 : ( ( Set -> Set ) ∋ ( ( λ x272 -> if false then x272 else Bool ) ) ) $ ( if true then Bool else Bool )
        d269 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> ( ( Bool -> Bool ) ∋ ( ( λ x271 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then p1 else d100 )
        d273 : if true then if true then Bool else Bool else if false then Bool else Bool
        d273 = ( ( Bool -> Bool ) ∋ ( ( λ x274 -> if x274 then true else d18 ) ) ) $ ( if p3 then p1 else p1 )
        d275 : if false then if false then Bool else Bool else if false then Bool else Bool
        d275 = if if p3 then p1 else p1 then if d264 then p3 else d267 else if d25 then d222 else d200
        d276 : if false then if false then Bool else Bool else if true then Bool else Bool
        d276 = if if false then d14 else d118 then if d248 then p3 else d83 else if p1 then false else false
        d277 : ( ( Set -> Set ) ∋ ( ( λ x278 -> ( ( Set -> Set ) ∋ ( ( λ x279 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d277 = if if d209 then d239 else p1 then if d104 then true else true else if true then true else d189
        d280 : if true then if true then Bool else Bool else if true then Bool else Bool
        d280 = ( ( Bool -> Bool ) ∋ ( ( λ x281 -> if d133 then d248 else false ) ) ) $ ( if d163 then d118 else d6 )
        d282 : if true then if true then Bool else Bool else if true then Bool else Bool
        d282 = ( ( Bool -> Bool ) ∋ ( ( λ x283 -> if x283 then d114 else true ) ) ) $ ( if p3 then p1 else false )
        d284 : ( ( Set -> Set ) ∋ ( ( λ x287 -> ( ( Set -> Set ) ∋ ( ( λ x288 -> x287 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x285 -> ( ( Bool -> Bool ) ∋ ( ( λ x286 -> x285 ) ) ) $ ( x285 ) ) ) ) $ ( if d86 then p1 else p1 )
        d289 : if false then if false then Bool else Bool else if false then Bool else Bool
        d289 = if if false then p3 else false then if d188 then p3 else d260 else if false then true else true
        d290 : if false then if false then Bool else Bool else if true then Bool else Bool
        d290 = ( ( Bool -> Bool ) ∋ ( ( λ x291 -> ( ( Bool -> Bool ) ∋ ( ( λ x292 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then true else d177 )
        d293 : if true then if true then Bool else Bool else if true then Bool else Bool
        d293 = ( ( Bool -> Bool ) ∋ ( ( λ x294 -> if false then d189 else true ) ) ) $ ( if false then d216 else true )
        d295 : ( ( Set -> Set ) ∋ ( ( λ x297 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d295 = ( ( Bool -> Bool ) ∋ ( ( λ x296 -> if d267 then p3 else d189 ) ) ) $ ( if false then d21 else d193 )
        d298 : if false then if true then Bool else Bool else if false then Bool else Bool
        d298 = if if d118 then false else true then if true then p3 else p3 else if d45 then d251 else p3
        d299 : ( ( Set -> Set ) ∋ ( ( λ x301 -> ( ( Set -> Set ) ∋ ( ( λ x302 -> Bool ) ) ) $ ( x301 ) ) ) ) $ ( if true then Bool else Bool )
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if p1 then p1 else d123 ) ) ) $ ( if p1 then d188 else d222 )
        d303 : ( ( Set -> Set ) ∋ ( ( λ x305 -> ( ( Set -> Set ) ∋ ( ( λ x306 -> x306 ) ) ) $ ( x305 ) ) ) ) $ ( if false then Bool else Bool )
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x304 -> if x304 then p1 else false ) ) ) $ ( if true then p3 else p1 )
        d307 : ( ( Set -> Set ) ∋ ( ( λ x308 -> ( ( Set -> Set ) ∋ ( ( λ x309 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d307 = if if p1 then p3 else true then if false then d235 else p1 else if true then d142 else p3
        d310 : if true then if true then Bool else Bool else if true then Bool else Bool
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x311 -> if x311 then false else x311 ) ) ) $ ( if false then p3 else p1 )
        d312 : ( ( Set -> Set ) ∋ ( ( λ x314 -> if true then Bool else x314 ) ) ) $ ( if false then Bool else Bool )
        d312 = ( ( Bool -> Bool ) ∋ ( ( λ x313 -> if p3 then true else d277 ) ) ) $ ( if d276 then p1 else false )
        d315 : ( ( Set -> Set ) ∋ ( ( λ x316 -> if true then x316 else Bool ) ) ) $ ( if true then Bool else Bool )
        d315 = if if false then d224 else p3 then if d267 then p1 else d58 else if d50 then p3 else d83
        d317 : if true then if false then Bool else Bool else if false then Bool else Bool
        d317 = ( ( Bool -> Bool ) ∋ ( ( λ x318 -> if d18 then d147 else d125 ) ) ) $ ( if p1 then true else p3 )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x322 -> ( ( Set -> Set ) ∋ ( ( λ x323 -> Bool ) ) ) $ ( x322 ) ) ) ) $ ( if false then Bool else Bool )
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x321 -> p1 ) ) ) $ ( d164 ) ) ) ) $ ( if p1 then p1 else d265 )
        d324 : if false then if false then Bool else Bool else if true then Bool else Bool
        d324 = ( ( Bool -> Bool ) ∋ ( ( λ x325 -> if x325 then x325 else p3 ) ) ) $ ( if true then p1 else p1 )
        d326 : if true then if true then Bool else Bool else if true then Bool else Bool
        d326 = if if true then false else false then if true then p1 else d290 else if false then d284 else p3
        d327 : ( ( Set -> Set ) ∋ ( ( λ x329 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x328 -> if p3 then false else d244 ) ) ) $ ( if d248 then d104 else false )
        d330 : if true then if true then Bool else Bool else if false then Bool else Bool
        d330 = if if d58 then p1 else d206 then if true then p1 else p1 else if d277 then true else false
        d331 : if false then if true then Bool else Bool else if false then Bool else Bool
        d331 = if if false then d125 else false then if p3 then d206 else false else if true then p1 else d290
        d332 : ( ( Set -> Set ) ∋ ( ( λ x335 -> ( ( Set -> Set ) ∋ ( ( λ x336 -> x335 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d332 = ( ( Bool -> Bool ) ∋ ( ( λ x333 -> ( ( Bool -> Bool ) ∋ ( ( λ x334 -> false ) ) ) $ ( d326 ) ) ) ) $ ( if false then d206 else p1 )
        d337 : if true then if true then Bool else Bool else if true then Bool else Bool
        d337 = ( ( Bool -> Bool ) ∋ ( ( λ x338 -> ( ( Bool -> Bool ) ∋ ( ( λ x339 -> x338 ) ) ) $ ( true ) ) ) ) $ ( if p3 then p3 else d158 )
        d340 : ( ( Set -> Set ) ∋ ( ( λ x341 -> ( ( Set -> Set ) ∋ ( ( λ x342 -> Bool ) ) ) $ ( x341 ) ) ) ) $ ( if false then Bool else Bool )
        d340 = if if d282 then d45 else true then if p1 then p1 else p1 else if false then d163 else false
        d343 : ( ( Set -> Set ) ∋ ( ( λ x345 -> ( ( Set -> Set ) ∋ ( ( λ x346 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d343 = ( ( Bool -> Bool ) ∋ ( ( λ x344 -> if false then p3 else p1 ) ) ) $ ( if false then false else false )
        d347 : ( ( Set -> Set ) ∋ ( ( λ x348 -> ( ( Set -> Set ) ∋ ( ( λ x349 -> x349 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d347 = if if d161 then p1 else p1 then if d327 then false else true else if d154 then d343 else d293
        d350 : if true then if true then Bool else Bool else if true then Bool else Bool
        d350 = ( ( Bool -> Bool ) ∋ ( ( λ x351 -> if d337 then false else false ) ) ) $ ( if d74 then d239 else true )
        d352 : ( ( Set -> Set ) ∋ ( ( λ x354 -> ( ( Set -> Set ) ∋ ( ( λ x355 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x353 -> if p3 then p1 else false ) ) ) $ ( if true then false else true )
        d356 : if true then if false then Bool else Bool else if false then Bool else Bool
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x357 -> ( ( Bool -> Bool ) ∋ ( ( λ x358 -> d130 ) ) ) $ ( d264 ) ) ) ) $ ( if p3 then true else true )
        d359 : if true then if true then Bool else Bool else if false then Bool else Bool
        d359 = if if true then true else d267 then if d69 then p3 else d327 else if true then d120 else false
        d360 : ( ( Set -> Set ) ∋ ( ( λ x363 -> if true then Bool else x363 ) ) ) $ ( if true then Bool else Bool )
        d360 = ( ( Bool -> Bool ) ∋ ( ( λ x361 -> ( ( Bool -> Bool ) ∋ ( ( λ x362 -> false ) ) ) $ ( true ) ) ) ) $ ( if p3 then d161 else p3 )
        d364 : if false then if true then Bool else Bool else if true then Bool else Bool
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x365 -> if p3 then p3 else p1 ) ) ) $ ( if false then d222 else false )
        d366 : ( ( Set -> Set ) ∋ ( ( λ x367 -> if true then x367 else Bool ) ) ) $ ( if true then Bool else Bool )
        d366 = if if false then p1 else d155 then if p3 then p3 else p1 else if d29 then true else d158
        d368 : if true then if true then Bool else Bool else if false then Bool else Bool
        d368 = if if d203 then true else p3 then if p3 then d81 else true else if d139 then d337 else true
        d369 : if true then if false then Bool else Bool else if true then Bool else Bool
        d369 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if d96 then true else true ) ) ) $ ( if d196 then true else true )
        d371 : if true then if false then Bool else Bool else if false then Bool else Bool
        d371 = if if d232 then p1 else true then if false then d310 else p3 else if false then d114 else true
        d372 : if true then if false then Bool else Bool else if true then Bool else Bool
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x373 -> if d10 then false else p3 ) ) ) $ ( if false then false else p1 )
        d374 : if true then if false then Bool else Bool else if true then Bool else Bool
        d374 = ( ( Bool -> Bool ) ∋ ( ( λ x375 -> ( ( Bool -> Bool ) ∋ ( ( λ x376 -> d193 ) ) ) $ ( false ) ) ) ) $ ( if p1 then true else p3 )
        d377 : ( ( Set -> Set ) ∋ ( ( λ x379 -> if false then x379 else Bool ) ) ) $ ( if true then Bool else Bool )
        d377 = ( ( Bool -> Bool ) ∋ ( ( λ x378 -> if p3 then d167 else p1 ) ) ) $ ( if p1 then p3 else d109 )
        d380 : if true then if false then Bool else Bool else if true then Bool else Bool
        d380 = ( ( Bool -> Bool ) ∋ ( ( λ x381 -> ( ( Bool -> Bool ) ∋ ( ( λ x382 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then d114 else p1 )
        d383 : if true then if false then Bool else Bool else if true then Bool else Bool
        d383 = ( ( Bool -> Bool ) ∋ ( ( λ x384 -> ( ( Bool -> Bool ) ∋ ( ( λ x385 -> true ) ) ) $ ( d356 ) ) ) ) $ ( if d248 then d319 else p1 )
        d386 : if true then if true then Bool else Bool else if false then Bool else Bool
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x387 -> ( ( Bool -> Bool ) ∋ ( ( λ x388 -> d209 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p3 else false )
        d389 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if true then Bool else x390 ) ) ) $ ( if false then Bool else Bool )
        d389 = if if d209 then true else p1 then if d146 then p3 else true else if p3 then p3 else p1
        d391 : if false then if true then Bool else Bool else if true then Bool else Bool
        d391 = if if p1 then true else p3 then if false then p3 else false else if d135 then true else p1
        d392 : if false then if true then Bool else Bool else if true then Bool else Bool
        d392 = if if p3 then d238 else d156 then if d227 then d90 else false else if true then p3 else true
        d393 : if false then if true then Bool else Bool else if false then Bool else Bool
        d393 = if if true then d161 else p1 then if d66 then d211 else p3 else if d277 then true else false
        d394 : if true then if true then Bool else Bool else if false then Bool else Bool
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x395 -> if true then true else true ) ) ) $ ( if true then p1 else p3 )
        d396 : ( ( Set -> Set ) ∋ ( ( λ x399 -> ( ( Set -> Set ) ∋ ( ( λ x400 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d396 = ( ( Bool -> Bool ) ∋ ( ( λ x397 -> ( ( Bool -> Bool ) ∋ ( ( λ x398 -> false ) ) ) $ ( d377 ) ) ) ) $ ( if p1 then true else p3 )
        d401 : if false then if false then Bool else Bool else if true then Bool else Bool
        d401 = ( ( Bool -> Bool ) ∋ ( ( λ x402 -> if p1 then d120 else d261 ) ) ) $ ( if d303 then d330 else false )
        d403 : if true then if false then Bool else Bool else if true then Bool else Bool
        d403 = ( ( Bool -> Bool ) ∋ ( ( λ x404 -> if d238 then d185 else true ) ) ) $ ( if true then d77 else d142 )
        d405 : if false then if false then Bool else Bool else if true then Bool else Bool
        d405 = ( ( Bool -> Bool ) ∋ ( ( λ x406 -> ( ( Bool -> Bool ) ∋ ( ( λ x407 -> p3 ) ) ) $ ( x406 ) ) ) ) $ ( if true then true else d143 )
        d408 : if true then if false then Bool else Bool else if false then Bool else Bool
        d408 = if if d221 then d386 else d11 then if d343 then false else false else if d147 then d112 else p1
        d409 : if false then if true then Bool else Bool else if false then Bool else Bool
        d409 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if d401 then d364 else d213 ) ) ) $ ( if p1 then p1 else d61 )
        d411 : ( ( Set -> Set ) ∋ ( ( λ x414 -> ( ( Set -> Set ) ∋ ( ( λ x415 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d411 = ( ( Bool -> Bool ) ∋ ( ( λ x412 -> ( ( Bool -> Bool ) ∋ ( ( λ x413 -> d15 ) ) ) $ ( true ) ) ) ) $ ( if p3 then d72 else p3 )
        d416 : ( ( Set -> Set ) ∋ ( ( λ x417 -> ( ( Set -> Set ) ∋ ( ( λ x418 -> x418 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d416 = if if p3 then true else false then if p3 then false else true else if true then false else false
        d419 : ( ( Set -> Set ) ∋ ( ( λ x420 -> ( ( Set -> Set ) ∋ ( ( λ x421 -> Bool ) ) ) $ ( x420 ) ) ) ) $ ( if false then Bool else Bool )
        d419 = if if true then p1 else p1 then if p1 then p3 else p1 else if false then d58 else false
        d422 : ( ( Set -> Set ) ∋ ( ( λ x423 -> ( ( Set -> Set ) ∋ ( ( λ x424 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d422 = if if p1 then false else p3 then if d203 then p3 else p3 else if d181 then false else p3
        d425 : ( ( Set -> Set ) ∋ ( ( λ x426 -> ( ( Set -> Set ) ∋ ( ( λ x427 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d425 = if if d216 then d253 else false then if d143 then d96 else d267 else if d231 then d181 else d393
        d428 : if false then if true then Bool else Bool else if false then Bool else Bool
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x429 -> ( ( Bool -> Bool ) ∋ ( ( λ x430 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if d42 then p3 else d282 )
        d431 : if true then if true then Bool else Bool else if true then Bool else Bool
        d431 = if if p1 then p3 else true then if d425 then d83 else d39 else if false then p1 else d29
        d432 : if true then if false then Bool else Bool else if true then Bool else Bool
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x433 -> if d48 then d396 else d135 ) ) ) $ ( if false then d164 else p1 )
        d434 : ( ( Set -> Set ) ∋ ( ( λ x435 -> ( ( Set -> Set ) ∋ ( ( λ x436 -> x435 ) ) ) $ ( x435 ) ) ) ) $ ( if false then Bool else Bool )
        d434 = if if d79 then p3 else p1 then if true then d227 else p1 else if false then true else false
        d437 : ( ( Set -> Set ) ∋ ( ( λ x438 -> ( ( Set -> Set ) ∋ ( ( λ x439 -> x438 ) ) ) $ ( x438 ) ) ) ) $ ( if false then Bool else Bool )
        d437 = if if d125 then false else p1 then if true then true else p1 else if true then true else true
        d440 : if true then if true then Bool else Bool else if false then Bool else Bool
        d440 = if if p1 then p1 else p3 then if true then true else false else if d432 then true else d188
        d441 : if true then if true then Bool else Bool else if false then Bool else Bool
        d441 = ( ( Bool -> Bool ) ∋ ( ( λ x442 -> if p3 then true else x442 ) ) ) $ ( if d360 then p3 else p1 )
        d443 : ( ( Set -> Set ) ∋ ( ( λ x446 -> if true then x446 else Bool ) ) ) $ ( if false then Bool else Bool )
        d443 = ( ( Bool -> Bool ) ∋ ( ( λ x444 -> ( ( Bool -> Bool ) ∋ ( ( λ x445 -> p3 ) ) ) $ ( d211 ) ) ) ) $ ( if p3 then d100 else false )
        d447 : if false then if false then Bool else Bool else if false then Bool else Bool
        d447 = ( ( Bool -> Bool ) ∋ ( ( λ x448 -> if false then d392 else false ) ) ) $ ( if false then d104 else p3 )
        d449 : if true then if false then Bool else Bool else if false then Bool else Bool
        d449 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if true then true else p3 ) ) ) $ ( if p1 then false else p3 )
        d451 : if false then if false then Bool else Bool else if true then Bool else Bool
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x452 -> ( ( Bool -> Bool ) ∋ ( ( λ x453 -> true ) ) ) $ ( x452 ) ) ) ) $ ( if true then d153 else d295 )
        d454 : ( ( Set -> Set ) ∋ ( ( λ x457 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d454 = ( ( Bool -> Bool ) ∋ ( ( λ x455 -> ( ( Bool -> Bool ) ∋ ( ( λ x456 -> x455 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d147 )
        d458 : if true then if false then Bool else Bool else if false then Bool else Bool
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x459 -> if p3 then p1 else d176 ) ) ) $ ( if p3 then true else true )
        d460 : if true then if false then Bool else Bool else if true then Bool else Bool
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x461 -> ( ( Bool -> Bool ) ∋ ( ( λ x462 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if d366 then d107 else p1 )
        d463 : ( ( Set -> Set ) ∋ ( ( λ x466 -> if false then x466 else x466 ) ) ) $ ( if false then Bool else Bool )
        d463 = ( ( Bool -> Bool ) ∋ ( ( λ x464 -> ( ( Bool -> Bool ) ∋ ( ( λ x465 -> d239 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d235 else true )
        d467 : if false then if false then Bool else Bool else if true then Bool else Bool
        d467 = if if d299 then d359 else d441 then if true then d273 else d224 else if d128 then p1 else d209
        d468 : if true then if true then Bool else Bool else if true then Bool else Bool
        d468 = if if d90 then d298 else false then if false then false else d307 else if p1 then p3 else false
        d469 : ( ( Set -> Set ) ∋ ( ( λ x470 -> ( ( Set -> Set ) ∋ ( ( λ x471 -> x470 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d469 = if if true then d458 else d93 then if false then p1 else p3 else if false then false else d273
        d472 : ( ( Set -> Set ) ∋ ( ( λ x473 -> ( ( Set -> Set ) ∋ ( ( λ x474 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d472 = if if d185 then d244 else p3 then if false then d391 else d307 else if d188 then d431 else p1
        d475 : ( ( Set -> Set ) ∋ ( ( λ x476 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d475 = if if p3 then false else false then if d189 then false else p1 else if d331 then p1 else p3
        d477 : if true then if true then Bool else Bool else if false then Bool else Bool
        d477 = if if p1 then d206 else d118 then if p3 then d138 else true else if p1 then false else p1
        d478 : ( ( Set -> Set ) ∋ ( ( λ x481 -> if true then x481 else Bool ) ) ) $ ( if true then Bool else Bool )
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x479 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> x479 ) ) ) $ ( p1 ) ) ) ) $ ( if false then d221 else p1 )
        d482 : ( ( Set -> Set ) ∋ ( ( λ x485 -> ( ( Set -> Set ) ∋ ( ( λ x486 -> Bool ) ) ) $ ( x485 ) ) ) ) $ ( if false then Bool else Bool )
        d482 = ( ( Bool -> Bool ) ∋ ( ( λ x483 -> ( ( Bool -> Bool ) ∋ ( ( λ x484 -> d193 ) ) ) $ ( true ) ) ) ) $ ( if d196 then false else p1 )
        d487 : if false then if true then Bool else Bool else if true then Bool else Bool
        d487 = ( ( Bool -> Bool ) ∋ ( ( λ x488 -> ( ( Bool -> Bool ) ∋ ( ( λ x489 -> p1 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then d324 else p1 )
        d490 : ( ( Set -> Set ) ∋ ( ( λ x491 -> ( ( Set -> Set ) ∋ ( ( λ x492 -> x491 ) ) ) $ ( x491 ) ) ) ) $ ( if false then Bool else Bool )
        d490 = if if d434 then true else d135 then if true then d330 else d142 else if true then p3 else true
        d493 : if false then if false then Bool else Bool else if false then Bool else Bool
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x494 -> ( ( Bool -> Bool ) ∋ ( ( λ x495 -> x495 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d200 )
        d496 : ( ( Set -> Set ) ∋ ( ( λ x498 -> if false then x498 else x498 ) ) ) $ ( if false then Bool else Bool )
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x497 -> if x497 then false else false ) ) ) $ ( if p3 then false else d102 )
        d499 : if false then if false then Bool else Bool else if true then Bool else Bool
        d499 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if p3 then x500 else d138 ) ) ) $ ( if false then d61 else p1 )
        d501 : if false then if true then Bool else Bool else if false then Bool else Bool
        d501 = if if p3 then true else true then if false then true else p3 else if p1 then p3 else p1
        d502 : if true then if false then Bool else Bool else if true then Bool else Bool
        d502 = if if p1 then true else d188 then if p3 then d403 else p3 else if true then true else p1
        d503 : if false then if true then Bool else Bool else if true then Bool else Bool
        d503 = if if p3 then p1 else d158 then if false then false else true else if p1 then p3 else true
        d504 : if true then if true then Bool else Bool else if false then Bool else Bool
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x505 -> ( ( Bool -> Bool ) ∋ ( ( λ x506 -> d216 ) ) ) $ ( p3 ) ) ) ) $ ( if d290 then d224 else false )
        d507 : if false then if false then Bool else Bool else if false then Bool else Bool
        d507 = ( ( Bool -> Bool ) ∋ ( ( λ x508 -> if p1 then true else d364 ) ) ) $ ( if p3 then false else p1 )
        d509 : if false then if false then Bool else Bool else if true then Bool else Bool
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> ( ( Bool -> Bool ) ∋ ( ( λ x511 -> p1 ) ) ) $ ( d326 ) ) ) ) $ ( if p1 then true else false )
        d512 : if true then if true then Bool else Bool else if false then Bool else Bool
        d512 = if if d238 then false else true then if d276 then p3 else d327 else if d469 then p3 else false
        d513 : if false then if false then Bool else Bool else if false then Bool else Bool
        d513 = if if true then p3 else p3 then if p1 then false else true else if d206 then false else false
        d514 : if false then if false then Bool else Bool else if true then Bool else Bool
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x515 -> ( ( Bool -> Bool ) ∋ ( ( λ x516 -> d364 ) ) ) $ ( false ) ) ) ) $ ( if d21 then p3 else true )
        d517 : ( ( Set -> Set ) ∋ ( ( λ x520 -> if true then x520 else x520 ) ) ) $ ( if true then Bool else Bool )
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x518 -> ( ( Bool -> Bool ) ∋ ( ( λ x519 -> p3 ) ) ) $ ( d392 ) ) ) ) $ ( if p1 then p3 else p3 )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x524 -> if false then Bool else x524 ) ) ) $ ( if true then Bool else Bool )
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x522 -> ( ( Bool -> Bool ) ∋ ( ( λ x523 -> d90 ) ) ) $ ( false ) ) ) ) $ ( if p3 then p1 else p3 )
        d525 : ( ( Set -> Set ) ∋ ( ( λ x528 -> if false then Bool else x528 ) ) ) $ ( if false then Bool else Bool )
        d525 = ( ( Bool -> Bool ) ∋ ( ( λ x526 -> ( ( Bool -> Bool ) ∋ ( ( λ x527 -> d232 ) ) ) $ ( d48 ) ) ) ) $ ( if p1 then p1 else d240 )
        d529 : if true then if false then Bool else Bool else if false then Bool else Bool
        d529 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> ( ( Bool -> Bool ) ∋ ( ( λ x531 -> d352 ) ) ) $ ( true ) ) ) ) $ ( if false then p3 else p3 )
        d532 : if false then if false then Bool else Bool else if true then Bool else Bool
        d532 = if if true then false else true then if d477 then p1 else true else if false then d213 else d147
        d533 : ( ( Set -> Set ) ∋ ( ( λ x534 -> ( ( Set -> Set ) ∋ ( ( λ x535 -> x535 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d533 = if if true then d79 else d193 then if p3 then d493 else true else if true then d61 else p1
        d536 : ( ( Set -> Set ) ∋ ( ( λ x539 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d536 = ( ( Bool -> Bool ) ∋ ( ( λ x537 -> ( ( Bool -> Bool ) ∋ ( ( λ x538 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if false then true else p1 )
        d540 : if true then if false then Bool else Bool else if false then Bool else Bool
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x541 -> if p3 then false else false ) ) ) $ ( if true then d216 else p3 )
        d542 : ( ( Set -> Set ) ∋ ( ( λ x543 -> ( ( Set -> Set ) ∋ ( ( λ x544 -> x544 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d542 = if if true then p3 else false then if true then d138 else p3 else if false then p1 else true
        d545 : ( ( Set -> Set ) ∋ ( ( λ x546 -> ( ( Set -> Set ) ∋ ( ( λ x547 -> Bool ) ) ) $ ( x546 ) ) ) ) $ ( if true then Bool else Bool )
        d545 = if if p3 then d66 else p3 then if d513 then p3 else false else if d514 then true else d25
        d548 : ( ( Set -> Set ) ∋ ( ( λ x549 -> if true then x549 else x549 ) ) ) $ ( if false then Bool else Bool )
        d548 = if if d405 then p1 else true then if false then false else d372 else if d112 then d513 else d177
        d550 : ( ( Set -> Set ) ∋ ( ( λ x551 -> ( ( Set -> Set ) ∋ ( ( λ x552 -> Bool ) ) ) $ ( x551 ) ) ) ) $ ( if true then Bool else Bool )
        d550 = if if false then p1 else d447 then if p1 then d231 else false else if p3 then true else p1
        d553 : ( ( Set -> Set ) ∋ ( ( λ x554 -> if false then x554 else Bool ) ) ) $ ( if false then Bool else Bool )
        d553 = if if d350 then p1 else d74 then if p3 then p1 else p3 else if p1 then false else p3
        d555 : if false then if false then Bool else Bool else if true then Bool else Bool
        d555 = if if p1 then p3 else p1 then if d475 then d258 else d475 else if d115 then p3 else d211
        d556 : if true then if true then Bool else Bool else if true then Bool else Bool
        d556 = if if p3 then d431 else p1 then if p3 then p1 else p3 else if p3 then d545 else true
        d557 : ( ( Set -> Set ) ∋ ( ( λ x558 -> if true then x558 else Bool ) ) ) $ ( if false then Bool else Bool )
        d557 = if if p1 then p1 else p3 then if true then d389 else p1 else if d193 then p3 else d269
        d559 : if false then if false then Bool else Bool else if false then Bool else Bool
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> ( ( Bool -> Bool ) ∋ ( ( λ x561 -> x560 ) ) ) $ ( false ) ) ) ) $ ( if p3 then true else false )
        d562 : ( ( Set -> Set ) ∋ ( ( λ x563 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d562 = if if true then d310 else p1 then if d487 then true else true else if false then p3 else d90
        d564 : ( ( Set -> Set ) ∋ ( ( λ x565 -> ( ( Set -> Set ) ∋ ( ( λ x566 -> x566 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d564 = if if false then true else d443 then if p1 then false else d368 else if d293 then false else false
        d567 : ( ( Set -> Set ) ∋ ( ( λ x568 -> ( ( Set -> Set ) ∋ ( ( λ x569 -> x568 ) ) ) $ ( x568 ) ) ) ) $ ( if false then Bool else Bool )
        d567 = if if d490 then false else d360 then if p3 then true else false else if false then p3 else false
        d570 : if true then if false then Bool else Bool else if true then Bool else Bool
        d570 = if if false then p3 else d185 then if false then false else true else if false then p3 else d128
        d571 : if true then if false then Bool else Bool else if true then Bool else Bool
        d571 = ( ( Bool -> Bool ) ∋ ( ( λ x572 -> if d222 then p1 else x572 ) ) ) $ ( if p1 then p3 else p3 )
        d573 : ( ( Set -> Set ) ∋ ( ( λ x574 -> ( ( Set -> Set ) ∋ ( ( λ x575 -> x575 ) ) ) $ ( x574 ) ) ) ) $ ( if false then Bool else Bool )
        d573 = if if d146 then d282 else d83 then if p1 then p1 else false else if true then p1 else true
        d576 : if false then if false then Bool else Bool else if false then Bool else Bool
        d576 = if if d193 then true else true then if p1 then p1 else false else if p3 then p3 else d112
        d577 : ( ( Set -> Set ) ∋ ( ( λ x578 -> ( ( Set -> Set ) ∋ ( ( λ x579 -> x578 ) ) ) $ ( x578 ) ) ) ) $ ( if true then Bool else Bool )
        d577 = if if p1 then true else d469 then if p3 then p1 else true else if d282 then d153 else d295
        d580 : if false then if false then Bool else Bool else if true then Bool else Bool
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x581 -> if d81 then x581 else true ) ) ) $ ( if false then p3 else d559 )
        d582 : if false then if false then Bool else Bool else if false then Bool else Bool
        d582 = if if false then true else true then if true then p1 else d130 else if d123 then false else d15
        d583 : ( ( Set -> Set ) ∋ ( ( λ x585 -> if false then x585 else Bool ) ) ) $ ( if true then Bool else Bool )
        d583 = ( ( Bool -> Bool ) ∋ ( ( λ x584 -> if d512 then d475 else p3 ) ) ) $ ( if d109 then p3 else true )
        d586 : ( ( Set -> Set ) ∋ ( ( λ x587 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d586 = if if false then d211 else d317 then if d161 then false else d401 else if p3 then d369 else p1
        d588 : if true then if true then Bool else Bool else if false then Bool else Bool
        d588 = if if d213 then false else d21 then if d273 then false else true else if p1 then p3 else false
        d589 : ( ( Set -> Set ) ∋ ( ( λ x590 -> if true then x590 else Bool ) ) ) $ ( if false then Bool else Bool )
        d589 = if if p1 then p3 else true then if true then false else p1 else if d416 then p3 else d206
        d591 : if false then if true then Bool else Bool else if true then Bool else Bool
        d591 = if if p3 then true else true then if true then p1 else false else if false then false else p1
        d592 : if false then if false then Bool else Bool else if true then Bool else Bool
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x593 -> if p3 then true else d411 ) ) ) $ ( if p3 then p1 else p1 )
        d594 : ( ( Set -> Set ) ∋ ( ( λ x596 -> if false then x596 else x596 ) ) ) $ ( if false then Bool else Bool )
        d594 = ( ( Bool -> Bool ) ∋ ( ( λ x595 -> if d82 then p3 else true ) ) ) $ ( if p1 then false else true )
        d597 : if true then if true then Bool else Bool else if false then Bool else Bool
        d597 = if if p3 then p3 else p3 then if d142 then false else d83 else if false then true else d260
        d598 : ( ( Set -> Set ) ∋ ( ( λ x599 -> ( ( Set -> Set ) ∋ ( ( λ x600 -> Bool ) ) ) $ ( x599 ) ) ) ) $ ( if true then Bool else Bool )
        d598 = if if d553 then p1 else false then if d104 then p3 else d224 else if p1 then p1 else p1
        d601 : ( ( Set -> Set ) ∋ ( ( λ x604 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d601 = ( ( Bool -> Bool ) ∋ ( ( λ x602 -> ( ( Bool -> Bool ) ∋ ( ( λ x603 -> d307 ) ) ) $ ( d576 ) ) ) ) $ ( if p3 then p3 else p3 )
        d605 : ( ( Set -> Set ) ∋ ( ( λ x607 -> ( ( Set -> Set ) ∋ ( ( λ x608 -> x607 ) ) ) $ ( x607 ) ) ) ) $ ( if true then Bool else Bool )
        d605 = ( ( Bool -> Bool ) ∋ ( ( λ x606 -> if false then p3 else d104 ) ) ) $ ( if false then p3 else p1 )
        d609 : if true then if true then Bool else Bool else if false then Bool else Bool
        d609 = if if p1 then d317 else d507 then if d514 then d368 else true else if d372 then d6 else false
        d610 : if true then if true then Bool else Bool else if false then Bool else Bool
        d610 = if if false then p1 else p1 then if p3 then d588 else p3 else if d441 then false else true
        d611 : ( ( Set -> Set ) ∋ ( ( λ x614 -> if false then Bool else x614 ) ) ) $ ( if false then Bool else Bool )
        d611 = ( ( Bool -> Bool ) ∋ ( ( λ x612 -> ( ( Bool -> Bool ) ∋ ( ( λ x613 -> d548 ) ) ) $ ( d340 ) ) ) ) $ ( if true then p3 else p3 )
        d615 : ( ( Set -> Set ) ∋ ( ( λ x616 -> ( ( Set -> Set ) ∋ ( ( λ x617 -> x617 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d615 = if if d97 then false else false then if p3 then p1 else p1 else if d118 then false else p1
        d618 : if false then if true then Bool else Bool else if false then Bool else Bool
        d618 = ( ( Bool -> Bool ) ∋ ( ( λ x619 -> ( ( Bool -> Bool ) ∋ ( ( λ x620 -> d15 ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then true else d366 )
        d621 : if true then if true then Bool else Bool else if false then Bool else Bool
        d621 = if if p3 then d240 else false then if p3 then p3 else true else if p1 then d411 else d151
        d622 : ( ( Set -> Set ) ∋ ( ( λ x623 -> ( ( Set -> Set ) ∋ ( ( λ x624 -> x623 ) ) ) $ ( x623 ) ) ) ) $ ( if false then Bool else Bool )
        d622 = if if p3 then d394 else d394 then if p1 then p1 else true else if d5 then d478 else p1
        d625 : ( ( Set -> Set ) ∋ ( ( λ x626 -> ( ( Set -> Set ) ∋ ( ( λ x627 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d625 = if if d206 then p1 else false then if d576 then p1 else p3 else if p1 then p1 else p1
        d628 : if false then if false then Bool else Bool else if false then Bool else Bool
        d628 = ( ( Bool -> Bool ) ∋ ( ( λ x629 -> ( ( Bool -> Bool ) ∋ ( ( λ x630 -> p1 ) ) ) $ ( d411 ) ) ) ) $ ( if p3 then true else true )
        d631 : if true then if true then Bool else Bool else if true then Bool else Bool
        d631 = if if false then p1 else false then if d610 then false else d405 else if false then p1 else true
        d632 : if false then if true then Bool else Bool else if false then Bool else Bool
        d632 = ( ( Bool -> Bool ) ∋ ( ( λ x633 -> ( ( Bool -> Bool ) ∋ ( ( λ x634 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then p1 else false )
        d635 : if false then if false then Bool else Bool else if false then Bool else Bool
        d635 = if if false then d583 else d211 then if false then false else true else if d319 then true else d389
        d636 : if true then if false then Bool else Bool else if false then Bool else Bool
        d636 = ( ( Bool -> Bool ) ∋ ( ( λ x637 -> if d432 then true else p3 ) ) ) $ ( if p3 then d380 else d158 )
        d638 : ( ( Set -> Set ) ∋ ( ( λ x640 -> if true then x640 else Bool ) ) ) $ ( if false then Bool else Bool )
        d638 = ( ( Bool -> Bool ) ∋ ( ( λ x639 -> if d224 then d18 else false ) ) ) $ ( if d548 then d591 else d562 )
        d641 : ( ( Set -> Set ) ∋ ( ( λ x642 -> ( ( Set -> Set ) ∋ ( ( λ x643 -> x642 ) ) ) $ ( x642 ) ) ) ) $ ( if false then Bool else Bool )
        d641 = if if d79 then p3 else d123 then if p3 then p3 else p1 else if true then p3 else true
        d644 : if true then if true then Bool else Bool else if true then Bool else Bool
        d644 = if if d372 then d431 else true then if d532 then p3 else d203 else if d171 then false else true
        d645 : ( ( Set -> Set ) ∋ ( ( λ x646 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d645 = if if d589 then d632 else d636 then if d97 then d253 else true else if p3 then false else p1
        d647 : if true then if true then Bool else Bool else if false then Bool else Bool
        d647 = ( ( Bool -> Bool ) ∋ ( ( λ x648 -> if x648 then p1 else false ) ) ) $ ( if true then d573 else d644 )
        d649 : ( ( Set -> Set ) ∋ ( ( λ x651 -> ( ( Set -> Set ) ∋ ( ( λ x652 -> x652 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d649 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> if p1 then d638 else false ) ) ) $ ( if p3 then false else p3 )
        d653 : ( ( Set -> Set ) ∋ ( ( λ x654 -> ( ( Set -> Set ) ∋ ( ( λ x655 -> Bool ) ) ) $ ( x654 ) ) ) ) $ ( if false then Bool else Bool )
        d653 = if if p3 then p1 else d580 then if d576 then d156 else true else if false then false else true
        d656 : if false then if true then Bool else Bool else if true then Bool else Bool
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x657 -> if false then d66 else p3 ) ) ) $ ( if d164 then true else d138 )
        d658 : if false then if false then Bool else Bool else if true then Bool else Bool
        d658 = if if d583 then d6 else p1 then if false then p3 else p3 else if true then d326 else p3
        d659 : if false then if true then Bool else Bool else if true then Bool else Bool
        d659 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> if p3 then true else d441 ) ) ) $ ( if p1 then p1 else p1 )
        d661 : ( ( Set -> Set ) ∋ ( ( λ x662 -> ( ( Set -> Set ) ∋ ( ( λ x663 -> x662 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d661 = if if true then true else true then if d588 then false else p1 else if d293 then true else d18
        d664 : ( ( Set -> Set ) ∋ ( ( λ x666 -> if false then Bool else x666 ) ) ) $ ( if true then Bool else Bool )
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x665 -> if d340 then d289 else false ) ) ) $ ( if p3 then p1 else d231 )
        d667 : ( ( Set -> Set ) ∋ ( ( λ x668 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d667 = if if false then false else p3 then if d401 then d658 else d364 else if p1 then p1 else true
        d669 : if true then if true then Bool else Bool else if true then Bool else Bool
        d669 = if if p3 then true else p1 then if p3 then d69 else p1 else if d628 then d517 else false
        d670 : ( ( Set -> Set ) ∋ ( ( λ x671 -> ( ( Set -> Set ) ∋ ( ( λ x672 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d670 = if if true then true else d477 then if d123 then p3 else p3 else if false then true else d164
        d673 : ( ( Set -> Set ) ∋ ( ( λ x675 -> ( ( Set -> Set ) ∋ ( ( λ x676 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d673 = ( ( Bool -> Bool ) ∋ ( ( λ x674 -> if x674 then d303 else false ) ) ) $ ( if p3 then false else p3 )
        d677 : ( ( Set -> Set ) ∋ ( ( λ x678 -> ( ( Set -> Set ) ∋ ( ( λ x679 -> Bool ) ) ) $ ( x678 ) ) ) ) $ ( if true then Bool else Bool )
        d677 = if if p1 then p1 else true then if p1 then true else p3 else if false then d653 else p3
        d680 : ( ( Set -> Set ) ∋ ( ( λ x681 -> ( ( Set -> Set ) ∋ ( ( λ x682 -> x681 ) ) ) $ ( x681 ) ) ) ) $ ( if false then Bool else Bool )
        d680 = if if p1 then p3 else d161 then if true then p3 else p3 else if false then d200 else p1
        d683 : if false then if false then Bool else Bool else if true then Bool else Bool
        d683 = ( ( Bool -> Bool ) ∋ ( ( λ x684 -> if false then x684 else p3 ) ) ) $ ( if d312 then d556 else d661 )
        d685 : ( ( Set -> Set ) ∋ ( ( λ x686 -> ( ( Set -> Set ) ∋ ( ( λ x687 -> Bool ) ) ) $ ( x686 ) ) ) ) $ ( if true then Bool else Bool )
        d685 = if if p3 then d653 else p3 then if p1 then d386 else d529 else if false then d564 else false
        d688 : if true then if true then Bool else Bool else if true then Bool else Bool
        d688 = if if p3 then d536 else d553 then if d588 then false else d468 else if false then d451 else d21
        d689 : ( ( Set -> Set ) ∋ ( ( λ x690 -> if true then Bool else x690 ) ) ) $ ( if true then Bool else Bool )
        d689 = if if d472 then true else d422 then if p3 then true else p3 else if false then d496 else d661
        d691 : if true then if true then Bool else Bool else if true then Bool else Bool
        d691 = if if p3 then false else true then if d289 then p3 else p1 else if d74 then true else p1
        d692 : if true then if false then Bool else Bool else if true then Bool else Bool
        d692 = ( ( Bool -> Bool ) ∋ ( ( λ x693 -> ( ( Bool -> Bool ) ∋ ( ( λ x694 -> x694 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d695 : ( ( Set -> Set ) ∋ ( ( λ x696 -> ( ( Set -> Set ) ∋ ( ( λ x697 -> x696 ) ) ) $ ( x696 ) ) ) ) $ ( if false then Bool else Bool )
        d695 = if if true then d182 else p3 then if d369 then d42 else d182 else if p3 then true else d533
        d698 : if true then if true then Bool else Bool else if false then Bool else Bool
        d698 = ( ( Bool -> Bool ) ∋ ( ( λ x699 -> if p1 then false else x699 ) ) ) $ ( if false then false else d647 )
        d700 : ( ( Set -> Set ) ∋ ( ( λ x701 -> ( ( Set -> Set ) ∋ ( ( λ x702 -> Bool ) ) ) $ ( x701 ) ) ) ) $ ( if true then Bool else Bool )
        d700 = if if p3 then p1 else p1 then if p1 then d656 else d216 else if false then p1 else d290
        d703 : if true then if false then Bool else Bool else if true then Bool else Bool
        d703 = ( ( Bool -> Bool ) ∋ ( ( λ x704 -> if x704 then false else p3 ) ) ) $ ( if false then d227 else d496 )
        d705 : ( ( Set -> Set ) ∋ ( ( λ x706 -> if true then x706 else Bool ) ) ) $ ( if false then Bool else Bool )
        d705 = if if p1 then p3 else d5 then if p3 then d422 else d369 else if d409 then p1 else d37
        d707 : if false then if true then Bool else Bool else if false then Bool else Bool
        d707 = if if d482 then false else p1 then if false then true else p1 else if p1 then true else true
        d708 : ( ( Set -> Set ) ∋ ( ( λ x709 -> if true then x709 else Bool ) ) ) $ ( if false then Bool else Bool )
        d708 = if if d667 then p3 else d653 then if d661 then p1 else false else if p1 then d295 else false
        d710 : ( ( Set -> Set ) ∋ ( ( λ x712 -> if false then x712 else Bool ) ) ) $ ( if false then Bool else Bool )
        d710 = ( ( Bool -> Bool ) ∋ ( ( λ x711 -> if p1 then p1 else d597 ) ) ) $ ( if d273 then false else false )
        d713 : ( ( Set -> Set ) ∋ ( ( λ x714 -> if true then x714 else x714 ) ) ) $ ( if true then Bool else Bool )
        d713 = if if d419 then true else p1 then if p3 then true else false else if d618 then d82 else d460
        d715 : ( ( Set -> Set ) ∋ ( ( λ x716 -> if true then x716 else x716 ) ) ) $ ( if true then Bool else Bool )
        d715 = if if true then true else false then if d661 then d591 else p3 else if d409 then false else d392
        d717 : if true then if true then Bool else Bool else if false then Bool else Bool
        d717 = ( ( Bool -> Bool ) ∋ ( ( λ x718 -> ( ( Bool -> Bool ) ∋ ( ( λ x719 -> false ) ) ) $ ( d710 ) ) ) ) $ ( if false then d394 else p1 )
        d720 : ( ( Set -> Set ) ∋ ( ( λ x721 -> ( ( Set -> Set ) ∋ ( ( λ x722 -> Bool ) ) ) $ ( x721 ) ) ) ) $ ( if true then Bool else Bool )
        d720 = if if false then true else false then if true then d280 else p3 else if p3 then false else p1
        d723 : if true then if false then Bool else Bool else if false then Bool else Bool
        d723 = if if false then d330 else p1 then if d571 then p3 else d164 else if p3 then false else p3
        d724 : ( ( Set -> Set ) ∋ ( ( λ x726 -> if true then x726 else x726 ) ) ) $ ( if true then Bool else Bool )
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x725 -> if d447 then p3 else true ) ) ) $ ( if d487 then p3 else p1 )
        d727 : ( ( Set -> Set ) ∋ ( ( λ x728 -> ( ( Set -> Set ) ∋ ( ( λ x729 -> x729 ) ) ) $ ( x728 ) ) ) ) $ ( if true then Bool else Bool )
        d727 = if if p1 then false else d114 then if d188 then true else false else if false then p3 else true
        d730 : if true then if true then Bool else Bool else if false then Bool else Bool
        d730 = ( ( Bool -> Bool ) ∋ ( ( λ x731 -> ( ( Bool -> Bool ) ∋ ( ( λ x732 -> d667 ) ) ) $ ( false ) ) ) ) $ ( if d79 then d477 else p3 )
    module M'  = M ( false ) 
    d733 : ( ( Set -> Set ) ∋ ( ( λ x735 -> if true then Bool else x735 ) ) ) $ ( if true then Bool else Bool )
    d733 = ( M'.d559 ) $ ( ( M'.d580 ) $ ( ( M'.d221 ) $ ( ( ( M.d347 ) $ ( ( M'.d280 ) $ ( ( ( M.d548 ) $ ( false ) ) $ ( true ) ) ) ) $ ( ( M'.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x734 -> true ) ) ) $ ( true ) ) ) ) ) )
    d736 : ( ( Set -> Set ) ∋ ( ( λ x738 -> ( ( Set -> Set ) ∋ ( ( λ x739 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d736 = ( ( Bool -> Bool ) ∋ ( ( λ x737 -> ( ( M.d601 ) $ ( if x737 then true else true ) ) $ ( if true then true else x737 ) ) ) ) $ ( if false then true else d733 )
    d740 : if true then if false then Bool else Bool else if false then Bool else Bool
    d740 = ( M'.d235 ) $ ( ( M'.d158 ) $ ( ( M'.d658 ) $ ( ( M'.d698 ) $ ( ( ( M.d401 ) $ ( ( M'.d235 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x741 -> x741 ) ) ) $ ( d736 ) ) ) ) $ ( ( ( M.d542 ) $ ( d736 ) ) $ ( d736 ) ) ) ) ) )
    d742 : if false then if false then Bool else Bool else if true then Bool else Bool
    d742 = if if d733 then d736 else true then if true then true else false else if true then d736 else d736
    d743 : ( ( Set -> Set ) ∋ ( ( λ x746 -> if false then x746 else x746 ) ) ) $ ( if true then Bool else Bool )
    d743 = ( M'.d451 ) $ ( ( M'.d310 ) $ ( ( ( M.d487 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x744 -> x744 ) ) ) $ ( false ) ) ) $ ( ( M'.d636 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x745 -> d742 ) ) ) $ ( d742 ) ) ) ) )
    d747 : ( ( Set -> Set ) ∋ ( ( λ x748 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d747 = if if d736 then false else false then if d736 then d740 else d743 else if false then d743 else true
    d749 : ( ( Set -> Set ) ∋ ( ( λ x750 -> if false then x750 else x750 ) ) ) $ ( if true then Bool else Bool )
    d749 = ( M'.d265 ) $ ( ( M'.d284 ) $ ( ( ( M.d331 ) $ ( ( M'.d605 ) $ ( if d743 then d743 else true ) ) ) $ ( ( ( M.d216 ) $ ( d736 ) ) $ ( d747 ) ) ) )
    d751 : ( ( Set -> Set ) ∋ ( ( λ x752 -> if false then Bool else x752 ) ) ) $ ( if true then Bool else Bool )
    d751 = ( M'.d589 ) $ ( ( ( M.d244 ) $ ( ( M'.d261 ) $ ( ( M'.d337 ) $ ( ( M'.d586 ) $ ( ( ( M.d469 ) $ ( false ) ) $ ( d743 ) ) ) ) ) ) $ ( ( ( M.d231 ) $ ( false ) ) $ ( true ) ) )
    d753 : ( ( Set -> Set ) ∋ ( ( λ x754 -> ( ( Set -> Set ) ∋ ( ( λ x755 -> x755 ) ) ) $ ( x754 ) ) ) ) $ ( if true then Bool else Bool )
    d753 = ( M'.d130 ) $ ( if if true then false else true then if d749 then true else true else if false then d743 else false )
    d756 : if false then if false then Bool else Bool else if true then Bool else Bool
    d756 = ( M'.d440 ) $ ( if if true then true else d753 then if d749 then true else true else if d749 then true else false )
    d757 : if false then if false then Bool else Bool else if false then Bool else Bool
    d757 = if if false then d736 else true then if true then d743 else false else if d733 then d736 else d747
    d758 : if true then if true then Bool else Bool else if true then Bool else Bool
    d758 = ( M'.d164 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x759 -> ( M'.d611 ) $ ( ( M'.d315 ) $ ( if false then x759 else true ) ) ) ) ) $ ( if d757 then d740 else false ) )
    d760 : ( ( Set -> Set ) ∋ ( ( λ x761 -> if false then x761 else Bool ) ) ) $ ( if false then Bool else Bool )
    d760 = ( M'.d118 ) $ ( ( ( M.d557 ) $ ( ( ( M.d293 ) $ ( false ) ) $ ( d743 ) ) ) $ ( ( M'.d724 ) $ ( ( ( M.d118 ) $ ( d753 ) ) $ ( true ) ) ) )
    d762 : if true then if true then Bool else Bool else if false then Bool else Bool
    d762 = ( M'.d260 ) $ ( ( ( M.d501 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x763 -> false ) ) ) $ ( d758 ) ) ) $ ( if d757 then true else true ) )
    d764 : ( ( Set -> Set ) ∋ ( ( λ x766 -> if true then Bool else x766 ) ) ) $ ( if false then Bool else Bool )
    d764 = ( ( Bool -> Bool ) ∋ ( ( λ x765 -> ( ( M.d303 ) $ ( if d749 then x765 else false ) ) $ ( if d742 then true else d743 ) ) ) ) $ ( if true then false else d758 )
    d767 : if false then if false then Bool else Bool else if true then Bool else Bool
    d767 = ( M'.d240 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x768 -> ( M'.d680 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x769 -> d749 ) ) ) $ ( d756 ) ) ) ) ) $ ( if d762 then true else true ) )
    d770 : if true then if false then Bool else Bool else if true then Bool else Bool
    d770 = ( M'.d83 ) $ ( ( M'.d469 ) $ ( ( ( M.d133 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x771 -> x771 ) ) ) $ ( false ) ) ) $ ( ( ( M.d196 ) $ ( d756 ) ) $ ( d751 ) ) ) )
    d772 : ( ( Set -> Set ) ∋ ( ( λ x774 -> ( ( Set -> Set ) ∋ ( ( λ x775 -> x774 ) ) ) $ ( x774 ) ) ) ) $ ( if true then Bool else Bool )
    d772 = ( M'.d529 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x773 -> ( M'.d601 ) $ ( if d764 then d749 else x773 ) ) ) ) $ ( if false then d747 else false ) )
    d776 : if true then if true then Bool else Bool else if true then Bool else Bool
    d776 = ( M'.d428 ) $ ( ( M'.d211 ) $ ( ( ( M.d680 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x777 -> true ) ) ) $ ( d747 ) ) ) $ ( ( M'.d244 ) $ ( ( M'.d54 ) $ ( ( M'.d688 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x778 -> x778 ) ) ) $ ( d756 ) ) ) ) ) ) )
    d779 : ( ( Set -> Set ) ∋ ( ( λ x780 -> ( ( Set -> Set ) ∋ ( ( λ x781 -> x780 ) ) ) $ ( x780 ) ) ) ) $ ( if true then Bool else Bool )
    d779 = ( M'.d303 ) $ ( ( ( M.d39 ) $ ( ( M'.d592 ) $ ( ( M'.d521 ) $ ( ( M'.d703 ) $ ( ( M'.d15 ) $ ( if d733 then d772 else false ) ) ) ) ) ) $ ( if d747 then d742 else true ) )
    d782 : ( ( Set -> Set ) ∋ ( ( λ x784 -> ( ( Set -> Set ) ∋ ( ( λ x785 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d782 = ( ( Bool -> Bool ) ∋ ( ( λ x783 -> if false then false else d770 ) ) ) $ ( if d779 then true else true )
    d786 : if false then if false then Bool else Bool else if true then Bool else Bool
    d786 = if if d764 then d760 else d756 then if true then false else d733 else if d782 then false else d753
    d787 : ( ( Set -> Set ) ∋ ( ( λ x789 -> ( ( Set -> Set ) ∋ ( ( λ x790 -> x789 ) ) ) $ ( x789 ) ) ) ) $ ( if true then Bool else Bool )
    d787 = ( M'.d509 ) $ ( ( ( M.d135 ) $ ( ( ( M.d717 ) $ ( d760 ) ) $ ( d747 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x788 -> x788 ) ) ) $ ( d758 ) ) )
    d791 : if true then if false then Bool else Bool else if true then Bool else Bool
    d791 = ( ( Bool -> Bool ) ∋ ( ( λ x792 -> ( M'.d700 ) $ ( ( M'.d434 ) $ ( ( M'.d567 ) $ ( if x792 then d762 else x792 ) ) ) ) ) ) $ ( if true then d753 else d753 )
    d793 : ( ( Set -> Set ) ∋ ( ( λ x796 -> if true then x796 else Bool ) ) ) $ ( if true then Bool else Bool )
    d793 = ( ( Bool -> Bool ) ∋ ( ( λ x794 -> ( ( Bool -> Bool ) ∋ ( ( λ x795 -> d753 ) ) ) $ ( x794 ) ) ) ) $ ( if d742 then true else d772 )
    d797 : if true then if true then Bool else Bool else if false then Bool else Bool
    d797 = ( M'.d451 ) $ ( if if false then d787 else true then if false then true else false else if d770 then true else d749 )
    d798 : if false then if false then Bool else Bool else if true then Bool else Bool
    d798 = ( M'.d177 ) $ ( ( M'.d327 ) $ ( ( ( M.d188 ) $ ( ( ( M.d343 ) $ ( d797 ) ) $ ( d733 ) ) ) $ ( if false then d757 else true ) ) )
    d799 : ( ( Set -> Set ) ∋ ( ( λ x802 -> ( ( Set -> Set ) ∋ ( ( λ x803 -> x802 ) ) ) $ ( x802 ) ) ) ) $ ( if true then Bool else Bool )
    d799 = ( M'.d440 ) $ ( ( M'.d347 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( Bool -> Bool ) ∋ ( ( λ x801 -> true ) ) ) $ ( d798 ) ) ) ) $ ( if d791 then d760 else false ) ) )
    d804 : if false then if false then Bool else Bool else if false then Bool else Bool
    d804 = ( M'.d458 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x805 -> if d743 then d799 else d733 ) ) ) $ ( if true then d797 else d767 ) )
    d806 : if false then if false then Bool else Bool else if true then Bool else Bool
    d806 = ( M'.d10 ) $ ( ( ( M.d171 ) $ ( ( M'.d548 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x807 -> x807 ) ) ) $ ( d799 ) ) ) ) $ ( ( ( M.d669 ) $ ( d770 ) ) $ ( false ) ) )
    d808 : if true then if true then Bool else Bool else if true then Bool else Bool
    d808 = if if false then d764 else d764 then if true then d733 else d804 else if false then true else false
    d809 : ( ( Set -> Set ) ∋ ( ( λ x810 -> if true then Bool else x810 ) ) ) $ ( if true then Bool else Bool )
    d809 = ( M'.d142 ) $ ( ( M'.d151 ) $ ( if if d798 then d757 else d806 then if false then d742 else d779 else if false then false else d753 ) )
    d811 : if false then if false then Bool else Bool else if false then Bool else Bool
    d811 = ( ( M.d550 ) $ ( ( ( M.d340 ) $ ( d743 ) ) $ ( d808 ) ) ) $ ( ( M'.d196 ) $ ( if false then false else false ) )
    d812 : ( ( Set -> Set ) ∋ ( ( λ x813 -> ( ( Set -> Set ) ∋ ( ( λ x814 -> Bool ) ) ) $ ( x813 ) ) ) ) $ ( if true then Bool else Bool )
    d812 = ( ( M.d58 ) $ ( ( M'.d360 ) $ ( if d757 then d772 else false ) ) ) $ ( ( ( M.d276 ) $ ( true ) ) $ ( true ) )
    d815 : if false then if false then Bool else Bool else if true then Bool else Bool
    d815 = ( ( Bool -> Bool ) ∋ ( ( λ x816 -> ( ( Bool -> Bool ) ∋ ( ( λ x817 -> x817 ) ) ) $ ( x816 ) ) ) ) $ ( if false then true else false )
    d818 : if true then if false then Bool else Bool else if true then Bool else Bool
    d818 = ( M'.d112 ) $ ( ( M'.d109 ) $ ( ( ( M.d533 ) $ ( ( M'.d550 ) $ ( ( M'.d200 ) $ ( ( ( M.d139 ) $ ( d770 ) ) $ ( false ) ) ) ) ) $ ( if true then d760 else false ) ) )
    d819 : ( ( Set -> Set ) ∋ ( ( λ x820 -> ( ( Set -> Set ) ∋ ( ( λ x821 -> Bool ) ) ) $ ( x820 ) ) ) ) $ ( if true then Bool else Bool )
    d819 = ( M'.d409 ) $ ( if if d756 then false else false then if true then d751 else true else if d740 then false else false )
    d822 : ( ( Set -> Set ) ∋ ( ( λ x823 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d822 = if if false then true else true then if d808 then d743 else d770 else if false then d733 else d786
    d824 : if false then if false then Bool else Bool else if false then Bool else Bool
    d824 = ( ( Bool -> Bool ) ∋ ( ( λ x825 -> if x825 then x825 else false ) ) ) $ ( if true then true else false )
    d826 : if true then if true then Bool else Bool else if false then Bool else Bool
    d826 = if if true then false else d756 then if true then false else false else if false then d753 else d822
    d827 : if false then if false then Bool else Bool else if true then Bool else Bool
    d827 = if if true then d799 else d756 then if d751 then d787 else false else if d733 then d787 else true
    d828 : if false then if false then Bool else Bool else if true then Bool else Bool
    d828 = ( ( M.d86 ) $ ( ( M'.d227 ) $ ( ( M'.d276 ) $ ( if d733 then false else d749 ) ) ) ) $ ( ( M'.d723 ) $ ( if d740 then d806 else d756 ) )
    d829 : ( ( Set -> Set ) ∋ ( ( λ x831 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d829 = ( M'.d576 ) $ ( ( M'.d477 ) $ ( ( ( M.d428 ) $ ( if d749 then true else d811 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x830 -> d758 ) ) ) $ ( false ) ) ) )
    d832 : ( ( Set -> Set ) ∋ ( ( λ x833 -> if true then Bool else x833 ) ) ) $ ( if false then Bool else Bool )
    d832 = ( M'.d610 ) $ ( if if d824 then d756 else d756 then if d828 then false else false else if true then d799 else d815 )
    d834 : ( ( Set -> Set ) ∋ ( ( λ x837 -> ( ( Set -> Set ) ∋ ( ( λ x838 -> x837 ) ) ) $ ( x837 ) ) ) ) $ ( if false then Bool else Bool )
    d834 = ( ( Bool -> Bool ) ∋ ( ( λ x835 -> ( ( Bool -> Bool ) ∋ ( ( λ x836 -> false ) ) ) $ ( d756 ) ) ) ) $ ( if false then d772 else d819 )
    d839 : ( ( Set -> Set ) ∋ ( ( λ x841 -> ( ( Set -> Set ) ∋ ( ( λ x842 -> x841 ) ) ) $ ( x841 ) ) ) ) $ ( if true then Bool else Bool )
    d839 = ( M'.d142 ) $ ( ( ( M.d562 ) $ ( if true then d811 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( d751 ) ) )
    d843 : ( ( Set -> Set ) ∋ ( ( λ x844 -> if true then x844 else Bool ) ) ) $ ( if false then Bool else Bool )
    d843 = ( M'.d164 ) $ ( if if false then false else d757 then if true then false else false else if false then d786 else d767 )
    d845 : ( ( Set -> Set ) ∋ ( ( λ x846 -> if false then Bool else x846 ) ) ) $ ( if true then Bool else Bool )
    d845 = if if true then d834 else d799 then if true then d815 else true else if d747 then d772 else false
    d847 : ( ( Set -> Set ) ∋ ( ( λ x848 -> if true then Bool else x848 ) ) ) $ ( if true then Bool else Bool )
    d847 = if if true then d770 else true then if true then false else true else if true then d776 else d822
    d849 : if false then if false then Bool else Bool else if true then Bool else Bool
    d849 = ( ( M.d394 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x850 -> x850 ) ) ) $ ( d770 ) ) ) $ ( ( M'.d705 ) $ ( ( ( M.d146 ) $ ( d742 ) ) $ ( false ) ) )