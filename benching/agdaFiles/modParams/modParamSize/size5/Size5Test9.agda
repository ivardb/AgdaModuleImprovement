module Size5Test9  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> Bool ) ) ) $ ( x5 ) ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if x4 then false else true ) ) ) $ ( if true then p2 else p2 )
        d7 : if false then if false then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> d3 ) ) ) $ ( false ) ) ) ) $ ( if false then p1 else d3 )
        d10 : if false then if false then Bool else Bool else if true then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if false then d3 else false ) ) ) $ ( if d7 then p1 else p1 )
        d12 : if true then if false then Bool else Bool else if true then Bool else Bool
        d12 = if if d10 then false else d10 then if d7 then false else d10 else if d7 then p2 else p2
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x15 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if p1 then true else true ) ) ) $ ( if d3 then true else false )
        d17 : if false then if true then Bool else Bool else if true then Bool else Bool
        d17 = if if d10 then true else p1 then if false then d13 else true else if d3 then d13 else p2
        d18 : if true then if false then Bool else Bool else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if false then d7 else d3 ) ) ) $ ( if d12 then p2 else d10 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d20 = if if d7 then d3 else p1 then if d12 then false else p1 else if d10 then true else p2
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> x25 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d23 = if if d20 then p1 else p1 then if false then false else true else if false then d10 else true
        d26 : if false then if false then Bool else Bool else if true then Bool else Bool
        d26 = if if d7 then true else p2 then if d17 then true else true else if p2 then false else p2
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x28 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if if d13 then d20 else d10 then if d13 then true else d12 else if d18 then false else p2
        d30 : if false then if true then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> d18 ) ) ) $ ( true ) ) ) ) $ ( if d17 then p2 else p1 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = if if p2 then false else d10 then if d18 then d3 else false else if d10 then false else false
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x37 ) ) ) $ ( x36 ) ) ) ) $ ( if false then Bool else Bool )
        d35 = if if true then p2 else p2 then if false then false else d33 else if p1 then true else d12
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( x40 ) ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if p1 then x39 else p2 ) ) ) $ ( if p1 then p1 else p1 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( x43 ) ) ) ) $ ( if true then Bool else Bool )
        d42 = if if false then true else p1 then if p2 then p1 else false else if p2 then p2 else p2
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if true then Bool else x46 ) ) ) $ ( if true then Bool else Bool )
        d45 = if if d7 then true else false then if p2 then p1 else true else if d12 then false else p2
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( x48 ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if d42 then p2 else p1 then if d30 then d12 else false else if p1 then false else true
        d50 : if false then if false then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> false ) ) ) $ ( true ) ) ) ) $ ( if d18 then d47 else p1 )
        d53 : if false then if true then Bool else Bool else if true then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then false else p1 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d56 = if if true then p2 else d26 then if false then p1 else d20 else if false then p1 else d23
        d59 : if false then if true then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> false ) ) ) $ ( false ) ) ) ) $ ( if d27 then false else d35 )
        d62 : if false then if false then Bool else Bool else if false then Bool else Bool
        d62 = if if false then d53 else d47 then if d13 then p2 else p2 else if p2 then d10 else d7
        d63 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( x64 ) ) ) ) $ ( if p2 then d59 else d38 )
        d67 : if false then if false then Bool else Bool else if true then Bool else Bool
        d67 = if if p1 then false else p2 then if d38 then true else d62 else if d53 then true else d33
        d68 : if false then if true then Bool else Bool else if true then Bool else Bool
        d68 = if if true then d47 else true then if false then p2 else true else if false then d62 else d17
        d69 : if true then if true then Bool else Bool else if true then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> d3 ) ) ) $ ( p1 ) ) ) ) $ ( if d13 then p2 else true )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = if if d33 then true else p1 then if false then d38 else p1 else if d56 then d12 else d33
        d75 : if false then if true then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> true ) ) ) $ ( false ) ) ) ) $ ( if p2 then true else p1 )
        d78 : if true then if false then Bool else Bool else if true then Bool else Bool
        d78 = if if false then d45 else true then if d75 then p2 else p1 else if d42 then p1 else true
        d79 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if true then x81 else x81 ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if d10 then p2 else x80 ) ) ) $ ( if p2 then true else p1 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if d45 then d30 else p2 ) ) ) $ ( if d69 then d17 else true )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> x87 ) ) ) $ ( x86 ) ) ) ) $ ( if false then Bool else Bool )
        d85 = if if p1 then d59 else true then if true then d42 else p1 else if d56 then d42 else p1
        d88 : if true then if false then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if p1 then x89 else d30 ) ) ) $ ( if p1 then p1 else true )
        d90 : if false then if false then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if d68 then d38 else false ) ) ) $ ( if p2 then false else d27 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d92 = if if true then d10 else p1 then if true then d42 else d85 else if d75 then d68 else d26
        d94 : if false then if false then Bool else Bool else if true then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> true ) ) ) $ ( d7 ) ) ) ) $ ( if p2 then d42 else d27 )
        d97 : if true then if true then Bool else Bool else if false then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> false ) ) ) $ ( d56 ) ) ) ) $ ( if p1 then d50 else p2 )
        d100 : if true then if true then Bool else Bool else if false then Bool else Bool
        d100 = if if d47 then false else p1 then if p1 then true else d82 else if false then p2 else d23
        d101 : if false then if false then Bool else Bool else if false then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> d27 ) ) ) $ ( d67 ) ) ) ) $ ( if false then d13 else d53 )
    d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d104 = if if true then true else true then if false then true else false else if false then false else false
    d106 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> x109 ) ) ) $ ( x108 ) ) ) ) $ ( if true then Bool else Bool )
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if true then d104 else x107 ) ) ) $ ( if d104 then true else d104 )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if true then x111 else x111 ) ) ) $ ( if true then Bool else Bool )
    d110 = ( ( M.d35 ) $ ( ( ( M.d10 ) $ ( true ) ) $ ( d106 ) ) ) $ ( ( ( M.d20 ) $ ( d106 ) ) $ ( d104 ) )
    d112 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( x114 ) ) ) ) $ ( if false then Bool else Bool )
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if false then d104 else false ) ) ) $ ( if false then d110 else d106 )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then Bool else x119 ) ) ) $ ( if false then Bool else Bool )
    d116 = ( ( M.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x117 -> d110 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x118 -> false ) ) ) $ ( false ) )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> x123 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( M.d90 ) $ ( if x121 then false else true ) ) $ ( if x121 then x121 else x121 ) ) ) ) $ ( if d104 then d116 else true )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d124 = ( ( M.d33 ) $ ( if true then d110 else d110 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x125 -> true ) ) ) $ ( false ) )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if d104 then x128 else d106 ) ) ) $ ( if false then true else true )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if x131 then x131 else d112 ) ) ) $ ( if false then d104 else d112 )
    d133 : if false then if false then Bool else Bool else if false then Bool else Bool
    d133 = if if d116 then true else true then if true then d124 else false else if d110 then true else false
    d134 : if false then if false then Bool else Bool else if false then Bool else Bool
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> if x135 then d120 else x135 ) ) ) $ ( if true then d120 else false )
    d136 : if true then if true then Bool else Bool else if true then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( Bool -> Bool ) ∋ ( ( λ x138 -> x137 ) ) ) $ ( x137 ) ) ) ) $ ( if d127 then true else d124 )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d139 = ( ( M.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x140 -> true ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x141 -> d133 ) ) ) $ ( true ) )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d143 = if if d104 then d130 else false then if d130 then true else d110 else if false then true else d104
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if false then Bool else x147 ) ) ) $ ( if true then Bool else Bool )
    d146 = if if true then true else d133 then if false then true else d139 else if d130 then false else true
    d148 : ( ( Set -> Set ) ∋ ( ( λ x151 -> if false then x151 else Bool ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> d146 ) ) ) $ ( x149 ) ) ) ) $ ( if d146 then false else true )
    d152 : if false then if false then Bool else Bool else if true then Bool else Bool
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> ( ( Bool -> Bool ) ∋ ( ( λ x154 -> true ) ) ) $ ( x153 ) ) ) ) $ ( if false then true else d124 )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x156 -> if true then Bool else x156 ) ) ) $ ( if false then Bool else Bool )
    d155 = if if d143 then d148 else false then if true then true else true else if d106 then true else d124
    d157 : if false then if true then Bool else Bool else if false then Bool else Bool
    d157 = if if true then true else false then if false then true else d116 else if true then d136 else d124
    d158 : if true then if true then Bool else Bool else if false then Bool else Bool
    d158 = if if d157 then d106 else d146 then if false then true else d148 else if false then false else true
    d159 : if true then if true then Bool else Bool else if true then Bool else Bool
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( M.d38 ) $ ( if false then x160 else false ) ) $ ( if d152 then d112 else d152 ) ) ) ) $ ( if true then d127 else true )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x162 -> ( ( Set -> Set ) ∋ ( ( λ x163 -> x162 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d161 = ( ( M.d3 ) $ ( if false then false else d104 ) ) $ ( if d146 then d158 else d155 )
    d164 : if true then if false then Bool else Bool else if true then Bool else Bool
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( M.d62 ) $ ( if d124 then d158 else d136 ) ) $ ( if x165 then x165 else d159 ) ) ) ) $ ( if d127 then true else d112 )
    d166 : if false then if false then Bool else Bool else if false then Bool else Bool
    d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> ( ( M.d62 ) $ ( if d130 then d143 else d158 ) ) $ ( if true then true else x167 ) ) ) ) $ ( if true then true else d112 )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x171 -> ( ( Set -> Set ) ∋ ( ( λ x172 -> Bool ) ) ) $ ( x171 ) ) ) ) $ ( if false then Bool else Bool )
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x169 ) ) ) $ ( x169 ) ) ) ) $ ( if d127 then d106 else true )
    d173 : if false then if true then Bool else Bool else if false then Bool else Bool
    d173 = if if d166 then true else d133 then if d116 then d146 else false else if true then d104 else true
    d174 : if true then if true then Bool else Bool else if true then Bool else Bool
    d174 = if if false then false else d155 then if d133 then d161 else true else if d139 then d161 else d146
    d175 : ( ( Set -> Set ) ∋ ( ( λ x176 -> ( ( Set -> Set ) ∋ ( ( λ x177 -> x176 ) ) ) $ ( x176 ) ) ) ) $ ( if true then Bool else Bool )
    d175 = ( ( M.d101 ) $ ( ( ( M.d97 ) $ ( d159 ) ) $ ( d157 ) ) ) $ ( ( ( M.d26 ) $ ( d166 ) ) $ ( d173 ) )
    d178 : if true then if false then Bool else Bool else if false then Bool else Bool
    d178 = if if d143 then d159 else d161 then if false then true else true else if d143 then false else true
    d179 : if false then if false then Bool else Bool else if false then Bool else Bool
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if x180 then x180 else d136 ) ) ) $ ( if false then d178 else false )
    d181 : if true then if true then Bool else Bool else if false then Bool else Bool
    d181 = if if true then true else d120 then if d127 then d130 else d178 else if d157 then d130 else false
    d182 : if false then if false then Bool else Bool else if true then Bool else Bool
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( M.d79 ) $ ( if false then x183 else false ) ) $ ( if true then d106 else false ) ) ) ) $ ( if true then false else d166 )
    d184 : if true then if false then Bool else Bool else if false then Bool else Bool
    d184 = if if false then d168 else true then if d120 then false else d164 else if d168 then d134 else d143
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> if true then x186 else x186 ) ) ) $ ( if true then Bool else Bool )
    d185 = if if d159 then true else true then if d120 then d127 else d134 else if false then d164 else true
    d187 : if false then if false then Bool else Bool else if true then Bool else Bool
    d187 = if if true then d139 else d106 then if d161 then d146 else false else if false then d134 else true
    d188 : if false then if false then Bool else Bool else if false then Bool else Bool
    d188 = ( ( M.d92 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x189 -> true ) ) ) $ ( d173 ) ) ) $ ( ( ( M.d26 ) $ ( d182 ) ) $ ( d127 ) )
    d190 : if false then if true then Bool else Bool else if false then Bool else Bool
    d190 = ( ( Bool -> Bool ) ∋ ( ( λ x191 -> if d166 then d175 else x191 ) ) ) $ ( if false then false else d139 )
    d192 : if false then if true then Bool else Bool else if true then Bool else Bool
    d192 = if if false then d166 else false then if true then true else d190 else if d104 then false else true
    d193 : if true then if true then Bool else Bool else if true then Bool else Bool
    d193 = if if d174 then false else true then if d143 then d106 else d190 else if d158 then true else true
    d194 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> x196 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d194 = ( ( M.d17 ) $ ( if false then d188 else d155 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x195 -> x195 ) ) ) $ ( d193 ) )