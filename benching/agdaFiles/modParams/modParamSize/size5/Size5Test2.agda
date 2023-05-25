module Size5Test2  where
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
        d3 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then x6 else Bool ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> ( ( Bool -> Bool ) ∋ ( ( λ x5 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d7 : if false then if false then Bool else Bool else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> true ) ) ) $ ( d3 ) ) ) ) $ ( if d3 then false else d3 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d10 = if if false then true else false then if true then false else p1 else if d7 then false else p1
        d12 : if true then if false then Bool else Bool else if true then Bool else Bool
        d12 = if if false then d10 else true then if d3 then d3 else p2 else if d3 then p1 else d7
        d13 : if false then if true then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if d12 then p1 else d10 ) ) ) $ ( if d3 then true else d7 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( x18 ) ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( d7 ) ) ) ) $ ( if p2 then true else true )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d20 = if if p2 then d7 else d12 then if p2 then p2 else d12 else if false then p1 else false
        d22 : if false then if false then Bool else Bool else if true then Bool else Bool
        d22 = if if p2 then true else d3 then if false then true else true else if true then true else d13
        d23 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( x26 ) ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> true ) ) ) $ ( x24 ) ) ) ) $ ( if d15 then p1 else false )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else x30 ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if d13 then true else d22 ) ) ) $ ( if d10 then d10 else p2 )
        d31 : if true then if false then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if true then p1 else p1 ) ) ) $ ( if d20 then false else true )
        d33 : if true then if false then Bool else Bool else if true then Bool else Bool
        d33 = if if true then d28 else true then if d22 then p2 else d28 else if d31 then true else d13
        d34 : if false then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if d7 then p1 else p1 then if p2 then d7 else d7 else if p1 then d13 else false
        d35 : if true then if true then Bool else Bool else if false then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> true ) ) ) $ ( d13 ) ) ) ) $ ( if p2 then d34 else p1 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d38 = if if false then d3 else p2 then if false then d23 else p2 else if false then true else true
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = if if p2 then d22 else d23 then if p2 then d28 else false else if false then false else p2
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x43 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = if if p1 then true else p1 then if d15 then false else d38 else if p1 then true else true
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> Bool ) ) ) $ ( x47 ) ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if p2 then p1 else true ) ) ) $ ( if p2 then d22 else true )
        d49 : if true then if true then Bool else Bool else if false then Bool else Bool
        d49 = if if d22 then false else true then if p2 then false else d41 else if false then d15 else d12
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then Bool else x53 ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> x52 ) ) ) $ ( false ) ) ) ) $ ( if d41 then false else true )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( x56 ) ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if true then true else p2 ) ) ) $ ( if d22 then p2 else p2 )
        d58 : if false then if true then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> p1 ) ) ) $ ( d13 ) ) ) ) $ ( if p2 then p1 else d34 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d61 = if if d42 then true else p1 then if d22 then p2 else true else if true then d22 else d13
        d63 : if true then if true then Bool else Bool else if false then Bool else Bool
        d63 = if if d49 then p1 else p1 then if false then d20 else false else if d28 then d10 else false
        d64 : if true then if true then Bool else Bool else if false then Bool else Bool
        d64 = if if false then p1 else p2 then if p2 then d45 else d12 else if d35 then d12 else p2
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if false then Bool else x68 ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> true ) ) ) $ ( d12 ) ) ) ) $ ( if p2 then d12 else p2 )
        d69 : if false then if false then Bool else Bool else if false then Bool else Bool
        d69 = if if d35 then false else d64 then if false then d35 else p1 else if d34 then d42 else false
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then x73 else x73 ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> x71 ) ) ) $ ( true ) ) ) ) $ ( if d38 then p2 else p2 )
        d74 : if false then if false then Bool else Bool else if false then Bool else Bool
        d74 = if if true then d69 else p1 then if true then d50 else p2 else if p2 then false else true
        d75 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x78 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if d50 then x76 else d61 ) ) ) $ ( if p2 then true else false )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( x82 ) ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( x80 ) ) ) ) $ ( if false then p1 else d63 )
        d84 : if false then if true then Bool else Bool else if true then Bool else Bool
        d84 = if if d70 then d7 else d54 then if false then d65 else false else if true then d49 else p2
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if d64 then d74 else false ) ) ) $ ( if p2 then d79 else p1 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then x88 else x88 ) ) ) $ ( if true then Bool else Bool )
        d87 = if if false then true else true then if false then d45 else true else if d41 then true else true
        d89 : if true then if true then Bool else Bool else if true then Bool else Bool
        d89 = if if p2 then true else d15 then if false then d41 else p2 else if p1 then p1 else d64
        d90 : if true then if false then Bool else Bool else if true then Bool else Bool
        d90 = if if true then d85 else d33 then if p1 then d31 else p2 else if d84 then p1 else d89
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> true ) ) ) $ ( x92 ) ) ) ) $ ( if false then d15 else d13 )
        d96 : if false then if true then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> d91 ) ) ) $ ( x100 ) ) ) ) $ ( if d20 then true else true )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then Bool else x104 ) ) ) $ ( if false then Bool else Bool )
        d103 = if if true then d79 else false then if false then d90 else d42 else if true then d89 else false
    d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x108 ) ) ) $ ( x107 ) ) ) ) $ ( if false then Bool else Bool )
    d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( M.d64 ) $ ( if true then true else x106 ) ) $ ( if true then x106 else true ) ) ) ) $ ( if true then true else false )
    d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x110 ) ) ) $ ( x110 ) ) ) ) $ ( if false then Bool else Bool )
    d109 = if if true then false else d105 then if d105 then d105 else d105 else if d105 then d105 else false
    d112 : if true then if true then Bool else Bool else if false then Bool else Bool
    d112 = ( ( M.d87 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x113 -> x113 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d105 ) ) ) $ ( d105 ) )
    d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then x116 else x116 ) ) ) $ ( if true then Bool else Bool )
    d115 = if if d109 then d109 else true then if false then true else d105 else if true then d105 else d109
    d117 : if true then if true then Bool else Bool else if false then Bool else Bool
    d117 = ( ( M.d31 ) $ ( ( ( M.d33 ) $ ( d105 ) ) $ ( d105 ) ) ) $ ( ( ( M.d42 ) $ ( false ) ) $ ( true ) )
    d118 : if true then if false then Bool else Bool else if true then Bool else Bool
    d118 = if if true then true else d117 then if d115 then true else d115 else if false then d112 else true
    d119 : if false then if false then Bool else Bool else if true then Bool else Bool
    d119 = if if d105 then true else false then if d105 then true else true else if true then true else d109
    d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( M.d15 ) $ ( if true then x121 else x121 ) ) $ ( if d117 then d109 else d119 ) ) ) ) $ ( if false then false else true )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( x125 ) ) ) ) $ ( if false then Bool else Bool )
    d124 = ( ( M.d91 ) $ ( ( ( M.d63 ) $ ( false ) ) $ ( true ) ) ) $ ( if d115 then true else false )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> Bool ) ) ) $ ( x130 ) ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( M.d70 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x128 -> false ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x129 -> true ) ) ) $ ( d109 ) )
    d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if true then Bool else x133 ) ) ) $ ( if true then Bool else Bool )
    d132 = ( ( M.d50 ) $ ( if d127 then false else false ) ) $ ( ( ( M.d31 ) $ ( d127 ) ) $ ( false ) )
    d134 : if false then if true then Bool else Bool else if true then Bool else Bool
    d134 = if if false then false else false then if false then d115 else d105 else if d117 then false else d115
    d135 : if false then if false then Bool else Bool else if false then Bool else Bool
    d135 = ( ( M.d69 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x136 -> true ) ) ) $ ( d120 ) ) ) $ ( if true then d112 else d115 )
    d137 : if true then if true then Bool else Bool else if false then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( M.d22 ) $ ( if false then false else d105 ) ) $ ( if true then d105 else x138 ) ) ) ) $ ( if true then false else d135 )
    d139 : if false then if false then Bool else Bool else if false then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x141 -> d105 ) ) ) $ ( x140 ) ) ) ) $ ( if d115 then false else true )
    d142 : if true then if false then Bool else Bool else if true then Bool else Bool
    d142 = ( ( M.d20 ) $ ( ( ( M.d23 ) $ ( d105 ) ) $ ( true ) ) ) $ ( ( ( M.d87 ) $ ( false ) ) $ ( false ) )
    d143 : if true then if false then Bool else Bool else if false then Bool else Bool
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( M.d63 ) $ ( if x144 then x144 else true ) ) $ ( if d109 then x144 else false ) ) ) ) $ ( if true then true else d132 )
    d145 : if true then if true then Bool else Bool else if true then Bool else Bool
    d145 = ( ( M.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x146 -> d142 ) ) ) $ ( d109 ) ) ) $ ( if true then d135 else false )
    d147 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if false then x148 else Bool ) ) ) $ ( if false then Bool else Bool )
    d147 = if if true then d115 else true then if d124 then d115 else d124 else if false then d145 else d124
    d149 : if false then if true then Bool else Bool else if true then Bool else Bool
    d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( M.d64 ) $ ( if d109 then d145 else x150 ) ) $ ( if d145 then x150 else d132 ) ) ) ) $ ( if d139 then d115 else d134 )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> ( ( Set -> Set ) ∋ ( ( λ x153 -> x152 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d151 = if if d135 then d118 else d145 then if d139 then d139 else true else if true then false else false
    d154 : if false then if false then Bool else Bool else if false then Bool else Bool
    d154 = ( ( Bool -> Bool ) ∋ ( ( λ x155 -> ( ( Bool -> Bool ) ∋ ( ( λ x156 -> d120 ) ) ) $ ( d132 ) ) ) ) $ ( if d134 then d115 else false )
    d157 : if true then if false then Bool else Bool else if true then Bool else Bool
    d157 = ( ( Bool -> Bool ) ∋ ( ( λ x158 -> if false then d147 else d143 ) ) ) $ ( if true then true else d105 )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d159 = ( ( M.d22 ) $ ( ( ( M.d103 ) $ ( true ) ) $ ( d118 ) ) ) $ ( ( ( M.d58 ) $ ( false ) ) $ ( d145 ) )
    d162 : if true then if false then Bool else Bool else if true then Bool else Bool
    d162 = ( ( M.d75 ) $ ( ( ( M.d20 ) $ ( true ) ) $ ( true ) ) ) $ ( if false then d159 else d119 )
    d163 : if true then if false then Bool else Bool else if true then Bool else Bool
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> if x164 then false else d105 ) ) ) $ ( if true then d137 else d142 )
    d165 : if true then if true then Bool else Bool else if false then Bool else Bool
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> ( ( M.d54 ) $ ( if false then x166 else d119 ) ) $ ( if true then x166 else d143 ) ) ) ) $ ( if true then false else d112 )
    d167 : if true then if true then Bool else Bool else if true then Bool else Bool
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> ( ( Bool -> Bool ) ∋ ( ( λ x169 -> d162 ) ) ) $ ( false ) ) ) ) $ ( if true then d112 else true )
    d170 : if true then if true then Bool else Bool else if true then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( M.d89 ) $ ( if false then true else x171 ) ) $ ( if d120 then true else x171 ) ) ) ) $ ( if false then true else d151 )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x175 -> ( ( Set -> Set ) ∋ ( ( λ x176 -> Bool ) ) ) $ ( x175 ) ) ) ) $ ( if true then Bool else Bool )
    d172 = ( ( M.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x173 -> d109 ) ) ) $ ( d147 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x174 -> d124 ) ) ) $ ( d147 ) )
    d177 : if false then if true then Bool else Bool else if true then Bool else Bool
    d177 = if if false then d145 else true then if true then d135 else true else if false then false else d149
    d178 : if false then if false then Bool else Bool else if true then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d109 ) ) ) $ ( false ) ) ) ) $ ( if d139 then d145 else d105 )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if false then Bool else x183 ) ) ) $ ( if false then Bool else Bool )
    d181 = ( ( M.d41 ) $ ( if true then d105 else d105 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x182 -> x182 ) ) ) $ ( d135 ) )
    d184 : if true then if false then Bool else Bool else if false then Bool else Bool
    d184 = if if d159 then true else false then if true then true else d149 else if false then d151 else d139
    d185 : if true then if false then Bool else Bool else if false then Bool else Bool
    d185 = ( ( M.d35 ) $ ( if d145 then false else d112 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x186 -> x186 ) ) ) $ ( false ) )
    d187 : if true then if false then Bool else Bool else if true then Bool else Bool
    d187 = if if d109 then true else d132 then if false then true else true else if d132 then false else true
    d188 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x191 -> Bool ) ) ) $ ( x190 ) ) ) ) $ ( if false then Bool else Bool )
    d188 = ( ( M.d79 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x189 -> false ) ) ) $ ( d124 ) ) ) $ ( ( ( M.d33 ) $ ( true ) ) $ ( true ) )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x193 -> if true then x193 else x193 ) ) ) $ ( if true then Bool else Bool )
    d192 = if if true then false else d105 then if d132 then false else d135 else if false then true else false
    d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> Bool ) ) ) $ ( x195 ) ) ) ) $ ( if false then Bool else Bool )
    d194 = ( ( M.d34 ) $ ( if d188 then false else d135 ) ) $ ( ( ( M.d15 ) $ ( false ) ) $ ( false ) )
    d197 : ( ( Set -> Set ) ∋ ( ( λ x199 -> if true then x199 else x199 ) ) ) $ ( if true then Bool else Bool )
    d197 = ( ( M.d13 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x198 -> d134 ) ) ) $ ( d163 ) ) ) $ ( if d132 then d184 else d112 )