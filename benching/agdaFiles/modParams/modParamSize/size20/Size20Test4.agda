module Size20Test4  where
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

    module M ( p1 : if true then ( ( Set -> Set ) ∋ ( ( λ x2 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool ) ( p3 : if true then if true then Bool else Bool else if true then Bool else Bool )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if true then x5 else false ) ) ) $ ( if false then true else p3 )
        d8 : if true then if false then Bool else Bool else if false then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else true )
        d11 : if true then if false then Bool else Bool else if false then Bool else Bool
        d11 = if if true then d8 else p3 then if d8 then true else false else if d4 then d4 else p3
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> Bool ) ) ) $ ( x13 ) ) ) ) $ ( if true then Bool else Bool )
        d12 = if if p1 then p3 else d4 then if p3 then true else p3 else if p1 then d11 else p3
        d15 : if true then if true then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> d12 ) ) ) $ ( true ) ) ) ) $ ( if p3 then d12 else p1 )
        d18 : if true then if true then Bool else Bool else if true then Bool else Bool
        d18 = if if d12 then true else false then if p1 then true else p1 else if true then true else p1
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if false then Bool else x22 ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> d4 ) ) ) $ ( p1 ) ) ) ) $ ( if d11 then false else d4 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d23 = if if false then p1 else d12 then if d12 then false else true else if false then false else false
        d26 : if true then if true then Bool else Bool else if false then Bool else Bool
        d26 = if if d19 then false else p3 then if true then p1 else p1 else if d4 then d12 else d23
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else x28 ) ) ) $ ( if true then Bool else Bool )
        d27 = if if false then p3 else d19 then if p3 then p1 else false else if true then d8 else false
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then x31 else Bool ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if p1 then false else false ) ) ) $ ( if p3 then p3 else false )
        d32 : if false then if true then Bool else Bool else if true then Bool else Bool
        d32 = if if p3 then p1 else false then if true then p1 else d18 else if d11 then p3 else d8
        d33 : if true then if false then Bool else Bool else if false then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if d15 then d29 else false )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then x37 else Bool ) ) ) $ ( if true then Bool else Bool )
        d36 = if if p3 then p1 else false then if false then p3 else p3 else if d23 then d19 else d23
        d38 : if false then if true then Bool else Bool else if false then Bool else Bool
        d38 = if if d8 then false else false then if true then p3 else p1 else if d36 then d27 else true
        d39 : if false then if false then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if false then d29 else x40 ) ) ) $ ( if d26 then p3 else d15 )
        d41 : if false then if true then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> d4 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p1 else false )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x47 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if d38 then d33 else p3 ) ) ) $ ( if p3 then d8 else d36 )
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if d11 then false else p1 ) ) ) $ ( if p3 then false else p1 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> false ) ) ) $ ( d23 ) ) ) ) $ ( if p3 then d11 else p1 )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x57 ) ) ) $ ( x56 ) ) ) ) $ ( if true then Bool else Bool )
        d55 = if if true then true else d36 then if p3 then d23 else d4 else if true then p1 else true
        d58 : if true then if false then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if d36 then d32 else false ) ) ) $ ( if true then p1 else true )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if x61 then x61 else true ) ) ) $ ( if p3 then false else true )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( x65 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = if if d33 then p1 else true then if d44 then p3 else d32 else if p1 then d8 else d11
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d67 = if if p1 then true else p3 then if false then true else p1 else if d4 then p1 else d39
        d69 : if false then if false then Bool else Bool else if true then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if true then true else p3 ) ) ) $ ( if p1 then true else d23 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( x74 ) ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> x73 ) ) ) $ ( true ) ) ) ) $ ( if false then d33 else d67 )
        d76 : if true then if false then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d71 then true else false ) ) ) $ ( if d33 then d38 else p1 )
        d78 : if false then if true then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> false ) ) ) $ ( d8 ) ) ) ) $ ( if false then true else d69 )
        d81 : if true then if true then Bool else Bool else if false then Bool else Bool
        d81 = if if true then d4 else true then if p3 then p3 else d29 else if d39 then d4 else d55
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( x83 ) ) ) ) $ ( if true then Bool else Bool )
        d82 = if if p1 then p1 else p3 then if d29 then false else d41 else if d41 then p1 else d50
        d85 : if false then if true then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if x86 then p1 else d33 ) ) ) $ ( if p3 then d11 else d36 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if false then x88 else x88 ) ) ) $ ( if true then Bool else Bool )
        d87 = if if p3 then p1 else false then if false then p1 else p3 else if d32 then d11 else p1
        d89 : if true then if true then Bool else Bool else if false then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d76 then false else d50 )
        d92 : if false then if false then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if d36 then p1 else d23 ) ) ) $ ( if false then p3 else d32 )
        d94 : if false then if true then Bool else Bool else if true then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> d15 ) ) ) $ ( false ) ) ) ) $ ( if p1 then d82 else p1 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if false then x99 else Bool ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if x98 then false else false ) ) ) $ ( if true then true else true )
        d100 : if true then if true then Bool else Bool else if false then Bool else Bool
        d100 = if if d4 then d23 else true then if true then p1 else p1 else if p1 then d48 else d58
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d101 = if if d18 then d92 else p1 then if true then true else p1 else if d39 then p1 else true
        d103 : if false then if true then Bool else Bool else if true then Bool else Bool
        d103 = if if d78 then p1 else p1 then if d11 then d12 else false else if d33 then d87 else false
    d104 : if false then if true then Bool else Bool else if true then Bool else Bool
    d104 = ( ( M.d44 ) $ ( if false then false else true ) ) $ ( ( ( M.d82 ) $ ( true ) ) $ ( false ) )
    d105 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if false then x108 else Bool ) ) ) $ ( if false then Bool else Bool )
    d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> d104 ) ) ) $ ( x106 ) ) ) ) $ ( if true then false else false )
    d109 : if true then if false then Bool else Bool else if false then Bool else Bool
    d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> true ) ) ) $ ( d104 ) ) ) ) $ ( if true then true else false )
    d112 : if false then if true then Bool else Bool else if true then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d109 ) ) ) $ ( x113 ) ) ) ) $ ( if true then false else false )
    d115 : if true then if false then Bool else Bool else if false then Bool else Bool
    d115 = if if true then d104 else true then if false then false else false else if d105 then d104 else true
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then Bool else x117 ) ) ) $ ( if true then Bool else Bool )
    d116 = ( ( M.d36 ) $ ( if d105 then false else d112 ) ) $ ( if d105 then d109 else d105 )
    d118 : if true then if true then Bool else Bool else if false then Bool else Bool
    d118 = ( ( M.d58 ) $ ( if d109 then false else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x119 -> d115 ) ) ) $ ( false ) )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> x123 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if x121 then x121 else d116 ) ) ) $ ( if d104 then false else false )
    d124 : if false then if false then Bool else Bool else if false then Bool else Bool
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> ( ( M.d101 ) $ ( if x125 then d115 else true ) ) $ ( if d118 then false else x125 ) ) ) ) $ ( if false then d105 else d104 )
    d126 : if false then if true then Bool else Bool else if false then Bool else Bool
    d126 = if if false then true else d118 then if false then d109 else d124 else if false then false else false
    d127 : if false then if true then Bool else Bool else if true then Bool else Bool
    d127 = if if true then true else d116 then if true then false else true else if true then true else d126
    d128 : if false then if false then Bool else Bool else if false then Bool else Bool
    d128 = ( ( M.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x129 -> x129 ) ) ) $ ( false ) ) ) $ ( ( ( M.d60 ) $ ( false ) ) $ ( d112 ) )
    d130 : if true then if false then Bool else Bool else if true then Bool else Bool
    d130 = ( ( M.d11 ) $ ( ( ( M.d67 ) $ ( true ) ) $ ( d124 ) ) ) $ ( ( ( M.d89 ) $ ( true ) ) $ ( true ) )
    d131 : if true then if false then Bool else Bool else if false then Bool else Bool
    d131 = ( ( M.d78 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x132 -> true ) ) ) $ ( true ) ) ) $ ( if d109 then true else d109 )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if false then Bool else x135 ) ) ) $ ( if true then Bool else Bool )
    d133 = ( ( M.d85 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x134 -> true ) ) ) $ ( d120 ) ) ) $ ( if d124 then d115 else false )
    d136 : if false then if false then Bool else Bool else if true then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( Bool -> Bool ) ∋ ( ( λ x138 -> false ) ) ) $ ( d105 ) ) ) ) $ ( if d109 then d126 else true )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if false then x142 else x142 ) ) ) $ ( if true then Bool else Bool )
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x141 -> x140 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d105 )
    d143 : if true then if true then Bool else Bool else if false then Bool else Bool
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( M.d26 ) $ ( if x144 then false else d120 ) ) $ ( if x144 then x144 else d127 ) ) ) ) $ ( if d124 then false else true )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x148 -> ( ( Set -> Set ) ∋ ( ( λ x149 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> ( ( Bool -> Bool ) ∋ ( ( λ x147 -> d143 ) ) ) $ ( true ) ) ) ) $ ( if true then d139 else false )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> x152 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d150 = if if d116 then false else false then if true then true else d115 else if true then false else false
    d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d153 = ( ( M.d82 ) $ ( ( ( M.d92 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d26 ) $ ( false ) ) $ ( false ) )
    d156 : if true then if false then Bool else Bool else if true then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( M.d15 ) $ ( if d128 then false else false ) ) $ ( if x157 then d126 else false ) ) ) ) $ ( if d133 then true else d139 )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> if false then x159 else x159 ) ) ) $ ( if false then Bool else Bool )
    d158 = if if d124 then d131 else d126 then if true then false else false else if true then false else true
    d160 : ( ( Set -> Set ) ∋ ( ( λ x163 -> ( ( Set -> Set ) ∋ ( ( λ x164 -> x164 ) ) ) $ ( x163 ) ) ) ) $ ( if true then Bool else Bool )
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( Bool -> Bool ) ∋ ( ( λ x162 -> d131 ) ) ) $ ( d127 ) ) ) ) $ ( if false then d112 else d104 )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> Bool ) ) ) $ ( x168 ) ) ) ) $ ( if true then Bool else Bool )
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> ( ( Bool -> Bool ) ∋ ( ( λ x167 -> d128 ) ) ) $ ( d130 ) ) ) ) $ ( if true then true else d130 )
    d170 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> x174 ) ) ) $ ( x173 ) ) ) ) $ ( if true then Bool else Bool )
    d170 = ( ( M.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x171 -> d139 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x172 -> true ) ) ) $ ( d158 ) )
    d175 : if false then if true then Bool else Bool else if true then Bool else Bool
    d175 = ( ( M.d41 ) $ ( ( ( M.d89 ) $ ( d131 ) ) $ ( false ) ) ) $ ( if false then d109 else d104 )
    d176 : if false then if true then Bool else Bool else if false then Bool else Bool
    d176 = ( ( M.d89 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x177 -> true ) ) ) $ ( true ) ) ) $ ( ( ( M.d89 ) $ ( false ) ) $ ( true ) )
    d178 : if true then if false then Bool else Bool else if false then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> ( ( M.d76 ) $ ( if d145 then true else d116 ) ) $ ( if d124 then false else x179 ) ) ) ) $ ( if d105 then true else true )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x182 -> if true then x182 else Bool ) ) ) $ ( if true then Bool else Bool )
    d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> if x181 then false else d160 ) ) ) $ ( if d165 then d112 else d175 )
    d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if false then x184 else Bool ) ) ) $ ( if false then Bool else Bool )
    d183 = if if d104 then true else true then if d176 then d118 else d130 else if d109 then d150 else d150
    d185 : if false then if false then Bool else Bool else if false then Bool else Bool
    d185 = ( ( M.d89 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x186 -> d170 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x187 -> false ) ) ) $ ( d178 ) )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x191 -> x190 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d188 = ( ( M.d94 ) $ ( ( ( M.d29 ) $ ( d153 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x189 -> false ) ) ) $ ( true ) )
    d192 : if false then if true then Bool else Bool else if false then Bool else Bool
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> ( ( M.d36 ) $ ( if true then d124 else x193 ) ) $ ( if d160 then d115 else false ) ) ) ) $ ( if d126 then true else d153 )
    d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d194 = if if true then d160 else d188 then if d115 then true else d133 else if d115 then true else d158
    d197 : ( ( Set -> Set ) ∋ ( ( λ x199 -> if false then x199 else x199 ) ) ) $ ( if true then Bool else Bool )
    d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> ( ( M.d4 ) $ ( if false then x198 else d118 ) ) $ ( if d176 then d192 else x198 ) ) ) ) $ ( if true then d194 else false )
    d200 : if false then if true then Bool else Bool else if true then Bool else Bool
    d200 = if if true then false else false then if true then d158 else d136 else if false then d118 else d136
    d201 : if false then if true then Bool else Bool else if false then Bool else Bool
    d201 = ( ( Bool -> Bool ) ∋ ( ( λ x202 -> ( ( Bool -> Bool ) ∋ ( ( λ x203 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then true else d160 )
    d204 : if true then if true then Bool else Bool else if true then Bool else Bool
    d204 = ( ( M.d67 ) $ ( ( ( M.d48 ) $ ( d165 ) ) $ ( d116 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x205 -> d183 ) ) ) $ ( true ) )
    d206 : ( ( Set -> Set ) ∋ ( ( λ x207 -> if false then x207 else Bool ) ) ) $ ( if false then Bool else Bool )
    d206 = ( ( M.d94 ) $ ( ( ( M.d82 ) $ ( false ) ) $ ( d153 ) ) ) $ ( ( ( M.d71 ) $ ( true ) ) $ ( d158 ) )