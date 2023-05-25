module Size10Test12  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then x4 else x4 ) ) ) $ ( if true then Bool else Bool )
        d3 = if if false then p1 else p1 then if true then p1 else true else if true then false else p1
        d5 : if true then if true then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if false then d3 else d3 ) ) ) $ ( if p2 then d3 else d3 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> x8 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d7 = if if p2 then false else false then if d5 then p2 else d3 else if p1 then p1 else d3
        d10 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> x12 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if d5 then d3 else p1 ) ) ) $ ( if p2 then p2 else p1 )
        d14 : if true then if true then Bool else Bool else if true then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> x16 ) ) ) $ ( d7 ) ) ) ) $ ( if d10 then p2 else true )
        d17 : if false then if false then Bool else Bool else if true then Bool else Bool
        d17 = if if d10 then d7 else p2 then if p2 then true else d7 else if p2 then p2 else p1
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if d14 then p1 else d7 ) ) ) $ ( if d10 then d17 else d10 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if false then x25 else x25 ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d7 ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then false else false )
        d26 : if false then if true then Bool else Bool else if true then Bool else Bool
        d26 = if if false then p1 else p1 then if d5 then d22 else true else if d3 then p1 else d14
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> p2 ) ) ) $ ( p1 ) ) ) ) $ ( if d7 then false else p2 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( x31 ) ) ) ) $ ( if true then Bool else Bool )
        d30 = if if d27 then d14 else d10 then if d17 then p2 else d26 else if p1 then d5 else true
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( x36 ) ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> d10 ) ) ) $ ( true ) ) ) ) $ ( if d26 then true else p2 )
        d38 : if false then if false then Bool else Bool else if false then Bool else Bool
        d38 = if if true then p1 else d22 then if false then d27 else false else if d14 then p2 else false
        d39 : if true then if true then Bool else Bool else if false then Bool else Bool
        d39 = if if p1 then false else true then if p2 then p1 else p2 else if d26 then p1 else p2
        d40 : if false then if true then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then true else p2 )
        d43 : if true then if false then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if p1 then p2 else d22 ) ) ) $ ( if d40 then d17 else false )
        d45 : if false then if false then Bool else Bool else if true then Bool else Bool
        d45 = if if p1 then p2 else d27 then if false then d7 else d22 else if p1 then false else p1
        d46 : if true then if true then Bool else Bool else if true then Bool else Bool
        d46 = if if false then false else p1 then if false then p2 else false else if true then d26 else d30
        d47 : if true then if false then Bool else Bool else if true then Bool else Bool
        d47 = if if false then true else p1 then if true then p1 else p1 else if p2 then d26 else d3
        d48 : if false then if true then Bool else Bool else if true then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> true ) ) ) $ ( d5 ) ) ) ) $ ( if d39 then p1 else true )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d51 = if if d33 then d43 else p1 then if d26 then p2 else d27 else if false then d10 else false
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( x55 ) ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if d45 then true else p1 ) ) ) $ ( if p2 then p1 else d38 )
        d57 : if false then if true then Bool else Bool else if true then Bool else Bool
        d57 = if if d53 then false else p1 then if d40 then d5 else d22 else if d14 then false else p2
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then x59 else x59 ) ) ) $ ( if false then Bool else Bool )
        d58 = if if true then true else p2 then if true then d45 else d51 else if d27 then d30 else false
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( x61 ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if if p2 then d45 else p2 then if d45 then false else true else if false then true else false
        d63 : if false then if true then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> d60 ) ) ) $ ( d38 ) ) ) ) $ ( if p2 then d5 else p1 )
        d66 : if false then if false then Bool else Bool else if true then Bool else Bool
        d66 = if if d27 then p2 else p2 then if p1 then p1 else true else if d53 then d17 else d48
        d67 : if true then if false then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> true ) ) ) $ ( true ) ) ) ) $ ( if d60 then true else false )
        d70 : if true then if false then Bool else Bool else if false then Bool else Bool
        d70 = if if p1 then p1 else false then if d51 then d53 else p2 else if p1 then true else p1
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then x73 else Bool ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if d58 then x72 else p2 ) ) ) $ ( if p2 then p2 else d45 )
        d74 : if false then if true then Bool else Bool else if true then Bool else Bool
        d74 = if if d5 then true else p1 then if p2 then p1 else true else if false then false else d47
        d75 : if false then if false then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if d43 then d48 else p2 ) ) ) $ ( if d67 then p1 else p2 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if false then x78 else x78 ) ) ) $ ( if true then Bool else Bool )
        d77 = if if true then true else false then if d10 then d63 else d51 else if true then true else p2
        d79 : if true then if true then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d58 ) ) ) $ ( d22 ) ) ) ) $ ( if d7 then d45 else false )
        d82 : if false then if true then Bool else Bool else if false then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if d18 then false else true ) ) ) $ ( if true then d45 else d10 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then x87 else Bool ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> p2 ) ) ) $ ( p2 ) ) ) ) $ ( if d60 then p1 else p1 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d88 = if if d43 then d71 else p2 then if d70 then d51 else true else if p1 then p2 else false
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if true then x92 else Bool ) ) ) $ ( if false then Bool else Bool )
        d91 = if if d74 then true else d5 then if false then false else p2 else if p1 then false else d79
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> Bool ) ) ) $ ( x94 ) ) ) ) $ ( if false then Bool else Bool )
        d93 = if if true then p2 else d66 then if true then p1 else d33 else if false then d48 else p1
        d96 : if true then if false then Bool else Bool else if false then Bool else Bool
        d96 = if if d53 then false else d57 then if d75 then p2 else d46 else if false then true else d93
    d97 : if true then if true then Bool else Bool else if true then Bool else Bool
    d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if x98 then true else false ) ) ) $ ( if false then true else true )
    d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then x102 else x102 ) ) ) $ ( if false then Bool else Bool )
    d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> true ) ) ) $ ( false ) ) ) ) $ ( if d97 then d97 else true )
    d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then x104 else x104 ) ) ) $ ( if false then Bool else Bool )
    d103 = if if true then d97 else false then if true then d97 else false else if true then d97 else false
    d105 : if true then if false then Bool else Bool else if false then Bool else Bool
    d105 = ( ( M.d46 ) $ ( if d97 then d103 else d103 ) ) $ ( ( ( M.d40 ) $ ( false ) ) $ ( d103 ) )
    d106 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d106 = ( ( M.d57 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x107 -> d105 ) ) ) $ ( d99 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x108 -> x108 ) ) ) $ ( d105 ) )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x111 ) ) ) $ ( x111 ) ) ) ) $ ( if false then Bool else Bool )
    d110 = if if d105 then d97 else false then if false then d103 else d97 else if d105 then true else true
    d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d113 = ( ( M.d43 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x114 -> false ) ) ) $ ( false ) ) ) $ ( if true then d106 else true )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x118 ) ) ) $ ( x117 ) ) ) ) $ ( if false then Bool else Bool )
    d116 = ( ( M.d10 ) $ ( ( ( M.d88 ) $ ( d105 ) ) $ ( d106 ) ) ) $ ( if true then false else d113 )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d119 = if if true then d106 else d113 then if true then d106 else true else if false then d116 else d113
    d121 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then x123 else Bool ) ) ) $ ( if true then Bool else Bool )
    d121 = ( ( M.d30 ) $ ( if false then false else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x122 -> false ) ) ) $ ( false ) )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d124 = ( ( M.d82 ) $ ( if d105 then false else false ) ) $ ( ( ( M.d17 ) $ ( true ) ) $ ( false ) )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> x128 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d126 = if if true then false else d116 then if true then d97 else d121 else if d110 then d124 else false
    d129 : if true then if false then Bool else Bool else if false then Bool else Bool
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d121 then d124 else x130 ) ) ) $ ( if d116 then d119 else d106 )
    d131 : if true then if false then Bool else Bool else if false then Bool else Bool
    d131 = ( ( M.d96 ) $ ( if false then false else d97 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x132 -> false ) ) ) $ ( false ) )
    d133 : if true then if false then Bool else Bool else if true then Bool else Bool
    d133 = if if true then d106 else d124 then if d110 then true else false else if false then d110 else true
    d134 : if false then if false then Bool else Bool else if true then Bool else Bool
    d134 = if if d106 then false else d121 then if d116 then false else false else if true then false else true
    d135 : if true then if false then Bool else Bool else if true then Bool else Bool
    d135 = if if d133 then true else false then if d126 then d106 else d116 else if true then true else false
    d136 : if false then if true then Bool else Bool else if false then Bool else Bool
    d136 = if if false then true else false then if d116 then d131 else false else if d110 then false else true
    d137 : if true then if true then Bool else Bool else if true then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( Bool -> Bool ) ∋ ( ( λ x139 -> d97 ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
    d140 : if true then if false then Bool else Bool else if true then Bool else Bool
    d140 = ( ( M.d67 ) $ ( ( ( M.d79 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( M.d82 ) $ ( d126 ) ) $ ( false ) )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if true then x143 else x143 ) ) ) $ ( if true then Bool else Bool )
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> if true then d99 else false ) ) ) $ ( if d119 then false else false )
    d144 : if false then if false then Bool else Bool else if false then Bool else Bool
    d144 = if if true then true else d103 then if false then false else true else if d133 then false else d129
    d145 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if true then x147 else x147 ) ) ) $ ( if false then Bool else Bool )
    d145 = ( ( M.d91 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x146 -> d106 ) ) ) $ ( d131 ) ) ) $ ( if true then d126 else d136 )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> x151 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> if d145 then true else x149 ) ) ) $ ( if d113 then d141 else d144 )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x155 -> ( ( Set -> Set ) ∋ ( ( λ x156 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> ( ( Bool -> Bool ) ∋ ( ( λ x154 -> x154 ) ) ) $ ( d141 ) ) ) ) $ ( if d116 then d148 else false )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> Bool ) ) ) $ ( x158 ) ) ) ) $ ( if false then Bool else Bool )
    d157 = if if false then true else d133 then if d106 then d105 else false else if false then false else true
    d160 : if false then if false then Bool else Bool else if false then Bool else Bool
    d160 = ( ( M.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x161 -> d141 ) ) ) $ ( d97 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x162 -> d145 ) ) ) $ ( d103 ) )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x165 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d163 = ( ( M.d27 ) $ ( ( ( M.d40 ) $ ( false ) ) $ ( d113 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x164 -> x164 ) ) ) $ ( d124 ) )
    d166 : if false then if false then Bool else Bool else if true then Bool else Bool
    d166 = if if false then true else true then if true then true else d134 else if false then true else true
    d167 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if false then x169 else Bool ) ) ) $ ( if true then Bool else Bool )
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> if x168 then x168 else d121 ) ) ) $ ( if false then true else d113 )
    d170 : if false then if true then Bool else Bool else if true then Bool else Bool
    d170 = if if d160 then false else false then if d103 then false else d148 else if d124 then d106 else false
    d171 : if true then if false then Bool else Bool else if false then Bool else Bool
    d171 = ( ( M.d43 ) $ ( ( ( M.d57 ) $ ( d116 ) ) $ ( d121 ) ) ) $ ( if d157 then false else false )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d172 = if if true then true else false then if d113 then true else false else if d110 then d121 else d145
    d174 : if true then if false then Bool else Bool else if false then Bool else Bool
    d174 = if if false then d121 else true then if true then false else false else if d170 then true else d133
    d175 : if true then if false then Bool else Bool else if true then Bool else Bool
    d175 = ( ( M.d88 ) $ ( if d171 then true else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> d174 ) ) ) $ ( d136 ) )
    d177 : if true then if false then Bool else Bool else if false then Bool else Bool
    d177 = if if d136 then true else d140 then if d157 then d119 else d152 else if true then false else false
    d178 : if true then if false then Bool else Bool else if false then Bool else Bool
    d178 = if if false then false else d124 then if d124 then d121 else d157 else if d99 then true else true
    d179 : if false then if false then Bool else Bool else if true then Bool else Bool
    d179 = if if d126 then false else true then if false then true else false else if false then true else d157
    d180 : if false then if false then Bool else Bool else if true then Bool else Bool
    d180 = if if d172 then false else d177 then if d105 then d160 else d110 else if true then true else true
    d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if true then x183 else x183 ) ) ) $ ( if false then Bool else Bool )
    d181 = ( ( M.d57 ) $ ( ( ( M.d67 ) $ ( false ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x182 -> x182 ) ) ) $ ( true ) )