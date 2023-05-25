module Size10Test2  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then x3 else Bool ) ) ) $ ( Bool ) )  where
        d4 : if true then if false then Bool else Bool else if true then Bool else Bool
        d4 = if if false then false else false then if p1 then p1 else p1 else if p1 then p2 else false
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> x7 ) ) ) $ ( x7 ) ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if d4 then p2 else d4 ) ) ) $ ( if d4 then true else d4 )
        d9 : if true then if true then Bool else Bool else if true then Bool else Bool
        d9 = if if p1 then p2 else false then if p1 then d4 else p2 else if p2 then p1 else p2
        d10 : if false then if true then Bool else Bool else if true then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if true then p1 else true ) ) ) $ ( if p1 then false else p1 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> Bool ) ) ) $ ( x13 ) ) ) ) $ ( if false then Bool else Bool )
        d12 = if if p1 then false else p1 then if d10 then false else p1 else if d10 then false else true
        d15 : if true then if true then Bool else Bool else if true then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if true then x16 else true ) ) ) $ ( if d9 then false else false )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x21 ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> x19 ) ) ) $ ( d5 ) ) ) ) $ ( if p1 then d9 else p2 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( x23 ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if if d17 then d9 else p2 then if p2 then p1 else p1 else if d15 then false else p2
        d25 : if true then if true then Bool else Bool else if false then Bool else Bool
        d25 = if if true then d10 else d17 then if true then d4 else false else if p2 then false else p1
        d26 : if false then if true then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if p2 then d17 else false ) ) ) $ ( if true then p1 else p2 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else x30 ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if d12 then d9 else true ) ) ) $ ( if false then p1 else true )
        d31 : if false then if false then Bool else Bool else if false then Bool else Bool
        d31 = if if p1 then p1 else false then if true then d28 else false else if p1 then p2 else false
        d32 : if true then if false then Bool else Bool else if true then Bool else Bool
        d32 = if if p1 then false else false then if d31 then d26 else p1 else if p2 then d31 else p2
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if true then x36 else x36 ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> d22 ) ) ) $ ( d26 ) ) ) ) $ ( if true then p2 else true )
        d37 : if false then if false then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if d25 then p1 else false ) ) ) $ ( if p1 then p1 else p2 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> Bool ) ) ) $ ( x41 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if false then p2 else p1 ) ) ) $ ( if false then d5 else true )
        d43 : if false then if true then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if true then d25 else d4 ) ) ) $ ( if d33 then false else p1 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if false then false else p1 ) ) ) $ ( if d22 then d9 else p1 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then x50 else x50 ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if d37 then false else true ) ) ) $ ( if p2 then d32 else d22 )
        d51 : if false then if false then Bool else Bool else if true then Bool else Bool
        d51 = if if false then p1 else false then if p2 then false else p2 else if d31 then p2 else true
        d52 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( x54 ) ) ) ) $ ( if true then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if false then false else d37 ) ) ) $ ( if d15 then true else d31 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then Bool else x57 ) ) ) $ ( if false then Bool else Bool )
        d56 = if if false then d22 else d28 then if d9 then false else true else if d15 then d5 else true
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d62 : if false then if false then Bool else Bool else if true then Bool else Bool
        d62 = if if p2 then d12 else p1 then if p2 then false else true else if p1 then p2 else p1
        d63 : if false then if true then Bool else Bool else if false then Bool else Bool
        d63 = if if d9 then d28 else p2 then if p1 then d51 else p2 else if true then true else p1
        d64 : if true then if true then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> false ) ) ) $ ( d63 ) ) ) ) $ ( if p1 then true else p1 )
        d67 : if true then if false then Bool else Bool else if true then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> x69 ) ) ) $ ( x68 ) ) ) ) $ ( if p2 then d4 else p2 )
        d70 : if false then if true then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> true ) ) ) $ ( d43 ) ) ) ) $ ( if d67 then d25 else false )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> x76 ) ) ) $ ( x75 ) ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if false then false else x74 ) ) ) $ ( if p2 then d62 else false )
        d77 : if false then if false then Bool else Bool else if false then Bool else Bool
        d77 = if if p2 then p2 else false then if true then p2 else d56 else if d10 then false else d37
        d78 : if true then if false then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if p2 then d26 else false ) ) ) $ ( if p2 then p1 else p1 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> Bool ) ) ) $ ( x81 ) ) ) ) $ ( if false then Bool else Bool )
        d80 = if if true then d31 else p1 then if false then d63 else d25 else if true then p2 else d9
        d83 : if false then if false then Bool else Bool else if true then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if false then d48 else false ) ) ) $ ( if false then true else d22 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if false then x86 else Bool ) ) ) $ ( if false then Bool else Bool )
        d85 = if if p1 then false else true then if true then d43 else d31 else if false then true else d25
        d87 : if false then if false then Bool else Bool else if false then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if false then d62 else true ) ) ) $ ( if d58 then p1 else p2 )
        d89 : if false then if true then Bool else Bool else if true then Bool else Bool
        d89 = if if p1 then p2 else false then if false then false else d37 else if p1 then d26 else p1
        d90 : if true then if false then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if true then p2 else false ) ) ) $ ( if true then d43 else false )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x93 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d92 = if if p2 then p2 else d43 then if d26 then true else true else if d37 then d15 else p2
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x96 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d95 = if if d28 then false else d15 then if p2 then p1 else p2 else if d15 then d87 else p1
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> true ) ) ) $ ( true ) ) ) ) $ ( if p1 then d12 else false )
    d102 : if true then if true then Bool else Bool else if true then Bool else Bool
    d102 = ( ( M.d45 ) $ ( ( ( M.d58 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x103 -> x103 ) ) ) $ ( false ) )
    d104 : if true then if true then Bool else Bool else if true then Bool else Bool
    d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if true then x105 else x105 ) ) ) $ ( if true then d102 else false )
    d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x107 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d106 = if if true then d102 else d104 then if d104 then d104 else d102 else if false then d102 else d102
    d109 : if false then if true then Bool else Bool else if false then Bool else Bool
    d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if false then d104 else x110 ) ) ) $ ( if d104 then d104 else false )
    d111 : if false then if true then Bool else Bool else if true then Bool else Bool
    d111 = ( ( M.d51 ) $ ( if d109 then false else d109 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> true ) ) ) $ ( d109 ) )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> false ) ) ) $ ( x114 ) ) ) ) $ ( if d111 then true else true )
    d118 : if true then if false then Bool else Bool else if true then Bool else Bool
    d118 = ( ( M.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( d102 ) ) ) $ ( ( ( M.d51 ) $ ( d113 ) ) $ ( true ) )
    d120 : if false then if false then Bool else Bool else if true then Bool else Bool
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if true then d113 else x121 ) ) ) $ ( if true then false else false )
    d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d122 = if if d118 then d109 else d104 then if d104 then false else d104 else if d120 then true else false
    d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> x126 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d125 = if if true then d104 else d122 then if true then d122 else d122 else if true then false else true
    d128 : if true then if false then Bool else Bool else if true then Bool else Bool
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( M.d31 ) $ ( if d118 then d122 else x129 ) ) $ ( if x129 then false else d104 ) ) ) ) $ ( if d122 then d109 else d104 )
    d130 : if false then if false then Bool else Bool else if false then Bool else Bool
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> ( ( M.d77 ) $ ( if d120 then x131 else x131 ) ) $ ( if false then d120 else x131 ) ) ) ) $ ( if d111 then false else d125 )
    d132 : if false then if true then Bool else Bool else if false then Bool else Bool
    d132 = if if d102 then d113 else true then if false then false else d128 else if d104 then d125 else true
    d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> x135 ) ) ) $ ( x135 ) ) ) ) $ ( if false then Bool else Bool )
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> if false then x134 else false ) ) ) $ ( if false then d118 else d104 )
    d137 : if true then if false then Bool else Bool else if false then Bool else Bool
    d137 = ( ( M.d56 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x138 -> x138 ) ) ) $ ( true ) ) ) $ ( if d106 then d120 else d104 )
    d139 : if false then if true then Bool else Bool else if false then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x141 -> true ) ) ) $ ( x140 ) ) ) ) $ ( if d120 then false else d128 )
    d142 : if true then if false then Bool else Bool else if true then Bool else Bool
    d142 = if if false then false else d125 then if true then d111 else d102 else if false then d120 else true
    d143 : if false then if false then Bool else Bool else if false then Bool else Bool
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( M.d31 ) $ ( if d132 then d132 else x144 ) ) $ ( if x144 then x144 else false ) ) ) ) $ ( if d137 then d137 else d142 )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> ( ( Set -> Set ) ∋ ( ( λ x147 -> x146 ) ) ) $ ( x146 ) ) ) ) $ ( if false then Bool else Bool )
    d145 = if if d106 then d106 else d113 then if true then d122 else d143 else if true then d104 else true
    d148 : if false then if false then Bool else Bool else if false then Bool else Bool
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> if d120 then x149 else d104 ) ) ) $ ( if d143 then false else d118 )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x153 -> if false then x153 else Bool ) ) ) $ ( if true then Bool else Bool )
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> ( ( Bool -> Bool ) ∋ ( ( λ x152 -> x151 ) ) ) $ ( x151 ) ) ) ) $ ( if false then d113 else false )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x156 -> ( ( Set -> Set ) ∋ ( ( λ x157 -> x156 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d154 = ( ( Bool -> Bool ) ∋ ( ( λ x155 -> ( ( M.d51 ) $ ( if x155 then true else d132 ) ) $ ( if d122 then x155 else x155 ) ) ) ) $ ( if d109 then true else d130 )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( x159 ) ) ) ) $ ( if true then Bool else Bool )
    d158 = if if d137 then d148 else d128 then if d125 then d118 else d106 else if true then true else false
    d161 : ( ( Set -> Set ) ∋ ( ( λ x162 -> if false then x162 else Bool ) ) ) $ ( if false then Bool else Bool )
    d161 = if if false then d143 else d132 then if true then false else d133 else if false then true else d113
    d163 : if true then if false then Bool else Bool else if false then Bool else Bool
    d163 = ( ( M.d37 ) $ ( if true then d128 else d143 ) ) $ ( ( ( M.d98 ) $ ( true ) ) $ ( true ) )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if true then Bool else x166 ) ) ) $ ( if true then Bool else Bool )
    d164 = ( ( M.d9 ) $ ( if false then true else d102 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x165 -> d130 ) ) ) $ ( d143 ) )
    d167 : if false then if true then Bool else Bool else if false then Bool else Bool
    d167 = if if d113 then d113 else d130 then if d161 then d120 else d161 else if d125 then true else d164
    d168 : if false then if false then Bool else Bool else if false then Bool else Bool
    d168 = if if true then true else d113 then if d133 then d150 else d109 else if true then false else d142
    d169 : ( ( Set -> Set ) ∋ ( ( λ x171 -> if true then Bool else x171 ) ) ) $ ( if true then Bool else Bool )
    d169 = ( ( M.d25 ) $ ( if d122 then false else d137 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x170 -> d154 ) ) ) $ ( d120 ) )
    d172 : if true then if true then Bool else Bool else if false then Bool else Bool
    d172 = ( ( Bool -> Bool ) ∋ ( ( λ x173 -> ( ( M.d95 ) $ ( if x173 then d102 else d130 ) ) $ ( if true then d158 else x173 ) ) ) ) $ ( if true then true else false )
    d174 : if true then if false then Bool else Bool else if false then Bool else Bool
    d174 = ( ( M.d78 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x175 -> true ) ) ) $ ( d168 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> d118 ) ) ) $ ( false ) )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> x179 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d177 = if if d109 then false else d113 then if true then false else d109 else if false then d139 else d158
    d180 : if true then if true then Bool else Bool else if true then Bool else Bool
    d180 = ( ( M.d43 ) $ ( ( ( M.d85 ) $ ( d142 ) ) $ ( d130 ) ) ) $ ( if true then d177 else false )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if true then Bool else x184 ) ) ) $ ( if true then Bool else Bool )
    d181 = ( ( M.d51 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x182 -> false ) ) ) $ ( d145 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x183 -> x183 ) ) ) $ ( d120 ) )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> if false then Bool else x186 ) ) ) $ ( if false then Bool else Bool )
    d185 = if if d148 then d148 else true then if d139 then d104 else d139 else if d169 then d161 else true
    d187 : ( ( Set -> Set ) ∋ ( ( λ x189 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d187 = ( ( Bool -> Bool ) ∋ ( ( λ x188 -> ( ( M.d78 ) $ ( if x188 then false else false ) ) $ ( if true then d148 else x188 ) ) ) ) $ ( if d158 then d122 else false )
    d190 : if true then if true then Bool else Bool else if false then Bool else Bool
    d190 = if if true then d106 else d128 then if true then false else true else if d113 then true else true
    d191 : ( ( Set -> Set ) ∋ ( ( λ x193 -> ( ( Set -> Set ) ∋ ( ( λ x194 -> x193 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d191 = ( ( M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x192 -> false ) ) ) $ ( false ) ) ) $ ( ( ( M.d78 ) $ ( false ) ) $ ( true ) )
    d195 : if true then if true then Bool else Bool else if false then Bool else Bool
    d195 = ( ( Bool -> Bool ) ∋ ( ( λ x196 -> ( ( Bool -> Bool ) ∋ ( ( λ x197 -> d113 ) ) ) $ ( x196 ) ) ) ) $ ( if d164 then true else true )
    d198 : ( ( Set -> Set ) ∋ ( ( λ x199 -> if true then x199 else x199 ) ) ) $ ( if false then Bool else Bool )
    d198 = if if false then true else false then if true then false else d133 else if d163 then d111 else true