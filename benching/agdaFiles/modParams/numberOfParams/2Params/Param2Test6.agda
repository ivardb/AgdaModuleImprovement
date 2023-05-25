module Param2Test6  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if false then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d3 = if if p1 then p1 else false then if true then true else p1 else if true then p2 else p2
        d5 : if true then if false then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if d3 then d3 else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> Bool ) ) ) $ ( x9 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = if if d3 then false else true then if p1 then false else false else if false then false else p2
        d11 : if false then if false then Bool else Bool else if true then Bool else Bool
        d11 = if if false then p2 else p2 then if true then true else true else if d3 then d8 else d3
        d12 : if false then if true then Bool else Bool else if true then Bool else Bool
        d12 = if if p1 then p2 else d5 then if true then d8 else d8 else if d11 then d11 else p1
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then x14 else Bool ) ) ) $ ( if false then Bool else Bool )
        d13 = if if d5 then d3 else false then if true then d8 else d3 else if p1 then d11 else true
        d15 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> Bool ) ) ) $ ( x17 ) ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if d13 then d5 else true ) ) ) $ ( if false then p1 else d8 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else x20 ) ) ) $ ( if false then Bool else Bool )
        d19 = if if d12 then p1 else d3 then if true then d15 else p2 else if false then true else true
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x23 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d21 = if if p1 then p2 else false then if p2 then true else p1 else if true then d13 else true
        d24 : if false then if true then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if false then x25 else false ) ) ) $ ( if d13 then d5 else p2 )
        d26 : if true then if true then Bool else Bool else if false then Bool else Bool
        d26 = if if false then d11 else false then if p2 then p1 else p1 else if d21 then d11 else false
        d27 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> Bool ) ) ) $ ( x29 ) ) ) ) $ ( if true then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if true then p1 else x28 ) ) ) $ ( if d12 then p2 else false )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d31 = if if p2 then false else true then if p2 then false else true else if false then d8 else false
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( x37 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if true then p1 else true )
        d39 : if false then if false then Bool else Bool else if true then Bool else Bool
        d39 = if if true then p2 else p1 then if p1 then false else false else if p2 then p1 else d5
        d40 : if false then if false then Bool else Bool else if false then Bool else Bool
        d40 = if if true then d39 else false then if false then d3 else false else if d26 then p1 else true
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> p2 ) ) ) $ ( p2 ) ) ) ) $ ( if d11 then d40 else p1 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if p2 then p1 else d34 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> Bool ) ) ) $ ( x50 ) ) ) ) $ ( if false then Bool else Bool )
        d49 = if if d3 then p2 else true then if d5 then d39 else d15 else if d41 then p2 else p1
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( p2 ) ) ) ) $ ( if d21 then d19 else p2 )
        d55 : if true then if false then Bool else Bool else if true then Bool else Bool
        d55 = if if d21 then d13 else d12 then if p2 then false else d26 else if p1 then d3 else d15
        d56 : if true then if false then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> d52 ) ) ) $ ( false ) ) ) ) $ ( if false then false else p1 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d40 then d11 else false ) ) ) $ ( if true then true else d27 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if true then d24 else p1 then if p2 then d41 else false else if p2 then d11 else true
        d66 : if false then if true then Bool else Bool else if false then Bool else Bool
        d66 = if if d34 then d19 else p1 then if d13 then d26 else true else if p1 then p1 else true
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if false then x68 else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = if if true then false else p1 then if p2 then true else p2 else if d26 then true else false
        d69 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if true then x72 else Bool ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> true ) ) ) $ ( d34 ) ) ) ) $ ( if p1 then p1 else d40 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( x75 ) ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if d39 then x74 else x74 ) ) ) $ ( if true then d40 else d19 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x79 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if true then true else x78 ) ) ) $ ( if d19 then false else d24 )
        d81 : if true then if true then Bool else Bool else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if x82 then false else x82 ) ) ) $ ( if false then true else d11 )
        d83 : if false then if true then Bool else Bool else if true then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if d15 then p1 else x84 ) ) ) $ ( if p1 then p1 else d52 )
        d85 : if false then if false then Bool else Bool else if true then Bool else Bool
        d85 = if if false then true else d3 then if d59 then false else p1 else if d67 then d66 else false
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x87 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d86 = if if false then false else false then if p2 then d73 else d44 else if false then false else true
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then x90 else x90 ) ) ) $ ( if false then Bool else Bool )
        d89 = if if d13 then d49 else true then if false then d41 else false else if d77 then d8 else true
        d91 : if false then if true then Bool else Bool else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> d55 ) ) ) $ ( p2 ) ) ) ) $ ( if d41 then p1 else true )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then Bool else x95 ) ) ) $ ( if true then Bool else Bool )
        d94 = if if p2 then true else d44 then if true then false else false else if d41 then p2 else d39
        d96 : if true then if false then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> p2 ) ) ) $ ( p1 ) ) ) ) $ ( if false then false else d55 )
        d99 : if true then if false then Bool else Bool else if true then Bool else Bool
        d99 = if if p2 then p1 else true then if true then p1 else p2 else if d24 then true else d86
        d100 : if true then if false then Bool else Bool else if true then Bool else Bool
        d100 = if if d3 then d86 else d67 then if true then true else p2 else if d27 then false else d21
        d101 : if true then if false then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> d11 ) ) ) $ ( d21 ) ) ) ) $ ( if d3 then p1 else false )
    d104 : if false then if false then Bool else Bool else if false then Bool else Bool
    d104 = ( ( M.d73 ) $ ( ( ( M.d56 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d101 ) $ ( false ) ) $ ( false ) )
    d105 : if true then if false then Bool else Bool else if false then Bool else Bool
    d105 = ( ( M.d39 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x106 -> x106 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x107 -> x107 ) ) ) $ ( false ) )
    d108 : if true then if true then Bool else Bool else if true then Bool else Bool
    d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( M.d49 ) $ ( if x109 then x109 else x109 ) ) $ ( if x109 then x109 else x109 ) ) ) ) $ ( if d105 then d105 else false )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if true then x111 else Bool ) ) ) $ ( if false then Bool else Bool )
    d110 = if if false then d108 else d105 then if d105 then d108 else d105 else if d105 then d104 else true
    d112 : if false then if false then Bool else Bool else if true then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> false ) ) ) $ ( d104 ) ) ) ) $ ( if d110 then true else false )
    d115 : if true then if true then Bool else Bool else if false then Bool else Bool
    d115 = if if d112 then true else d105 then if false then d105 else true else if false then false else d110
    d116 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if true then x118 else x118 ) ) ) $ ( if true then Bool else Bool )
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( M.d100 ) $ ( if false then true else d110 ) ) $ ( if true then d108 else d105 ) ) ) ) $ ( if d108 then true else false )
    d119 : if false then if true then Bool else Bool else if true then Bool else Bool
    d119 = ( ( M.d41 ) $ ( if true then true else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d115 ) ) ) $ ( d110 ) )
    d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> Bool ) ) ) $ ( x122 ) ) ) ) $ ( if true then Bool else Bool )
    d121 = ( ( M.d52 ) $ ( ( ( M.d100 ) $ ( true ) ) $ ( true ) ) ) $ ( if false then true else true )
    d124 : if true then if false then Bool else Bool else if false then Bool else Bool
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if false then d112 else d104 ) ) ) $ ( if true then true else true )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> x128 ) ) ) $ ( x128 ) ) ) ) $ ( if false then Bool else Bool )
    d126 = ( ( M.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x127 -> true ) ) ) $ ( d112 ) ) ) $ ( ( ( M.d24 ) $ ( d116 ) ) $ ( d124 ) )
    d130 : if false then if false then Bool else Bool else if false then Bool else Bool
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if x131 then x131 else d110 ) ) ) $ ( if d110 then false else d119 )
    d132 : ( ( Set -> Set ) ∋ ( ( λ x134 -> if false then Bool else x134 ) ) ) $ ( if false then Bool else Bool )
    d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> if d116 then x133 else d124 ) ) ) $ ( if d105 then d104 else d121 )
    d135 : ( ( Set -> Set ) ∋ ( ( λ x137 -> ( ( Set -> Set ) ∋ ( ( λ x138 -> x137 ) ) ) $ ( x137 ) ) ) ) $ ( if true then Bool else Bool )
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( M.d24 ) $ ( if true then x136 else false ) ) $ ( if true then d110 else false ) ) ) ) $ ( if true then false else d132 )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then Bool else x140 ) ) ) $ ( if true then Bool else Bool )
    d139 = ( ( M.d91 ) $ ( ( ( M.d49 ) $ ( d124 ) ) $ ( false ) ) ) $ ( if d104 then d135 else true )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d141 = if if true then d132 else d135 then if true then false else true else if true then false else false
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> Bool ) ) ) $ ( x144 ) ) ) ) $ ( if true then Bool else Bool )
    d143 = if if true then true else d108 then if true then false else true else if d121 then false else false
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> x148 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d146 = ( ( M.d5 ) $ ( ( ( M.d19 ) $ ( d108 ) ) $ ( true ) ) ) $ ( ( ( M.d81 ) $ ( d135 ) ) $ ( d116 ) )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then x150 else Bool ) ) ) $ ( if true then Bool else Bool )
    d149 = if if d119 then d146 else false then if d115 then d121 else false else if true then d141 else d119
    d151 : if false then if false then Bool else Bool else if false then Bool else Bool
    d151 = ( ( M.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x152 -> x152 ) ) ) $ ( false ) ) ) $ ( ( ( M.d11 ) $ ( d126 ) ) $ ( true ) )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> x154 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d153 = if if d121 then d132 else false then if d116 then d108 else true else if true then d130 else true
    d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d156 = if if d121 then d146 else false then if true then true else d149 else if true then true else false
    d158 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> Bool ) ) ) $ ( x160 ) ) ) ) $ ( if true then Bool else Bool )
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> ( ( M.d44 ) $ ( if true then x159 else d124 ) ) $ ( if false then d130 else d119 ) ) ) ) $ ( if d115 then true else d115 )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if true then x163 else x163 ) ) ) $ ( if false then Bool else Bool )
    d162 = if if d124 then d153 else true then if false then d124 else d153 else if false then true else d141
    d164 : if true then if false then Bool else Bool else if false then Bool else Bool
    d164 = if if false then d105 else d105 then if d139 then true else d132 else if d141 then d121 else d104
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if false then Bool else x167 ) ) ) $ ( if true then Bool else Bool )
    d165 = ( ( M.d94 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x166 -> d156 ) ) ) $ ( true ) ) ) $ ( ( ( M.d73 ) $ ( false ) ) $ ( true ) )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then x170 else x170 ) ) ) $ ( if false then Bool else Bool )
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> if d124 then true else d165 ) ) ) $ ( if d132 then true else d135 )
    d171 : if true then if true then Bool else Bool else if true then Bool else Bool
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> if d130 then true else x172 ) ) ) $ ( if true then d108 else false )
    d173 : if true then if false then Bool else Bool else if true then Bool else Bool
    d173 = if if d121 then true else d139 then if d121 then true else d112 else if true then d110 else true
    d174 : ( ( Set -> Set ) ∋ ( ( λ x176 -> if true then x176 else Bool ) ) ) $ ( if true then Bool else Bool )
    d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> ( ( M.d81 ) $ ( if true then x175 else true ) ) $ ( if x175 then x175 else x175 ) ) ) ) $ ( if d110 then false else d116 )
    d177 : if false then if true then Bool else Bool else if true then Bool else Bool
    d177 = ( ( M.d59 ) $ ( ( ( M.d100 ) $ ( false ) ) $ ( true ) ) ) $ ( if true then d116 else d135 )
    d178 : ( ( Set -> Set ) ∋ ( ( λ x179 -> if false then Bool else x179 ) ) ) $ ( if true then Bool else Bool )
    d178 = if if true then d105 else d162 then if d116 then d108 else true else if false then d119 else false
    d180 : if false then if false then Bool else Bool else if true then Bool else Bool
    d180 = ( ( M.d99 ) $ ( ( ( M.d73 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( M.d19 ) $ ( d126 ) ) $ ( false ) )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if false then Bool else x184 ) ) ) $ ( if false then Bool else Bool )
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> ( ( Bool -> Bool ) ∋ ( ( λ x183 -> d165 ) ) ) $ ( true ) ) ) ) $ ( if false then d126 else d115 )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> if false then x186 else x186 ) ) ) $ ( if true then Bool else Bool )
    d185 = if if true then d132 else d110 then if d158 then false else true else if d165 then d180 else false
    d187 : if true then if false then Bool else Bool else if false then Bool else Bool
    d187 = if if d165 then d185 else true then if true then false else true else if true then d164 else d139
    d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> if false then x189 else x189 ) ) ) $ ( if true then Bool else Bool )
    d188 = ( ( M.d40 ) $ ( ( ( M.d34 ) $ ( true ) ) $ ( d180 ) ) ) $ ( ( ( M.d55 ) $ ( d173 ) ) $ ( false ) )
    d190 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> Bool ) ) ) $ ( x191 ) ) ) ) $ ( if false then Bool else Bool )
    d190 = if if d153 then d139 else d143 then if true then true else d181 else if d141 then true else true
    d193 : if false then if false then Bool else Bool else if false then Bool else Bool
    d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> ( ( M.d69 ) $ ( if d178 then true else d135 ) ) $ ( if d135 then d180 else d121 ) ) ) ) $ ( if d119 then d187 else d132 )
    d195 : ( ( Set -> Set ) ∋ ( ( λ x197 -> ( ( Set -> Set ) ∋ ( ( λ x198 -> Bool ) ) ) $ ( x197 ) ) ) ) $ ( if false then Bool else Bool )
    d195 = ( ( Bool -> Bool ) ∋ ( ( λ x196 -> if true then d130 else x196 ) ) ) $ ( if true then false else d121 )