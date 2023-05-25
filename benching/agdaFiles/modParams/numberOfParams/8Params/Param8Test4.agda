module Param8Test4  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if true then Bool else Bool ) ( p5 : if true then Bool else Bool ) ( p6 : if true then Bool else Bool ) ( p7 : if false then Bool else Bool ) ( p8 : if true then Bool else Bool )  where
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if false then Bool else x10 ) ) ) $ ( if true then Bool else Bool )
        d9 = if if false then false else false then if false then false else true else if p8 then false else true
        d11 : if true then if true then Bool else Bool else if false then Bool else Bool
        d11 = if if false then d9 else p6 then if d9 then p8 else true else if true then p7 else true
        d12 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if false then p1 else p2 ) ) ) $ ( if p7 then p8 else p2 )
        d16 : if false then if false then Bool else Bool else if false then Bool else Bool
        d16 = if if d9 then p3 else true then if false then d9 else false else if false then true else false
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d17 = if if d11 then false else p7 then if true then false else true else if true then true else true
        d19 : if false then if false then Bool else Bool else if false then Bool else Bool
        d19 = if if d16 then true else false then if p1 then d16 else d11 else if true then d17 else d11
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then x21 else Bool ) ) ) $ ( if true then Bool else Bool )
        d20 = if if d9 then false else p8 then if true then false else d17 else if d19 then true else false
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else Bool ) ) ) $ ( if true then Bool else Bool )
        d22 = if if d9 then d11 else d20 then if d9 then true else false else if true then false else d20
        d24 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if false then x26 else x26 ) ) ) $ ( if true then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if d20 then false else false ) ) ) $ ( if p8 then p2 else p8 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then x30 else Bool ) ) ) $ ( if true then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> d22 ) ) ) $ ( true ) ) ) ) $ ( if d24 then p2 else p3 )
        d31 : if false then if true then Bool else Bool else if true then Bool else Bool
        d31 = if if d24 then d12 else true then if false then d12 else d24 else if false then p8 else p7
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if false then Bool else Bool )
        d32 = if if p7 then d27 else false then if d9 then false else p4 else if true then true else p6
        d35 : if false then if true then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> false ) ) ) $ ( true ) ) ) ) $ ( if d17 then p8 else d27 )
        d38 : if false then if false then Bool else Bool else if true then Bool else Bool
        d38 = if if false then d17 else false then if d19 then true else d24 else if d32 then p4 else p5
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if false then x42 else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> d27 ) ) ) $ ( p7 ) ) ) ) $ ( if true then p6 else d20 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d43 = if if true then d35 else p8 then if false then p1 else false else if d31 then d39 else d38
        d46 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if x47 then d22 else false ) ) ) $ ( if p1 then p1 else d35 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then Bool else x51 ) ) ) $ ( if true then Bool else Bool )
        d50 = if if p2 then true else false then if p3 then false else p4 else if d12 then true else p5
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if p1 then p6 else d22 ) ) ) $ ( if d46 then p8 else false )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d54 = if if false then false else p7 then if d35 then p7 else true else if d24 then false else p7
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> Bool ) ) ) $ ( x58 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if p5 then false else d31 ) ) ) $ ( if d9 then true else p4 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then x62 else Bool ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if true then p5 else true ) ) ) $ ( if d12 then d12 else false )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if p1 then p3 else p4 then if d38 then true else p8 else if p1 then false else p5
        d66 : if false then if true then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> d46 ) ) ) $ ( true ) ) ) ) $ ( if p7 then p8 else p5 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then Bool else x70 ) ) ) $ ( if true then Bool else Bool )
        d69 = if if p4 then true else p6 then if d11 then p7 else d35 else if p2 then d32 else true
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then Bool else x73 ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if p8 then true else true ) ) ) $ ( if p7 then false else d46 )
        d74 : if true then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if true then true else p2 ) ) ) $ ( if p4 then true else false )
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = if if true then d52 else p6 then if false then d20 else p3 else if false then d74 else p6
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if false then x78 else Bool ) ) ) $ ( if true then Bool else Bool )
        d77 = if if false then true else d12 then if p5 then p5 else p7 else if p4 then d63 else d60
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( x82 ) ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d38 ) ) ) $ ( d46 ) ) ) ) $ ( if true then true else p2 )
        d84 : if false then if true then Bool else Bool else if true then Bool else Bool
        d84 = if if d60 then p5 else true then if p4 then p2 else d69 else if d16 then p5 else d11
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then x87 else Bool ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if d11 then true else d17 ) ) ) $ ( if false then true else d9 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if true then x89 else x89 ) ) ) $ ( if false then Bool else Bool )
        d88 = if if p2 then p7 else d50 then if p7 then p8 else true else if d9 then p3 else false
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if d74 then p2 else d19 ) ) ) $ ( if p2 then p5 else d27 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = if if d24 then p8 else p7 then if p1 then p8 else d39 else if p5 then false else d11
        d97 : if false then if true then Bool else Bool else if true then Bool else Bool
        d97 = if if p2 then true else d60 then if true then false else p2 else if p2 then true else d27
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then x101 else Bool ) ) ) $ ( if true then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> true ) ) ) $ ( x99 ) ) ) ) $ ( if p1 then p8 else d77 )
        d102 : if false then if false then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> p8 ) ) ) $ ( true ) ) ) ) $ ( if d79 then false else p4 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then Bool else x106 ) ) ) $ ( if false then Bool else Bool )
        d105 = if if p4 then p1 else d24 then if false then d32 else d79 else if false then p4 else true
        d107 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x109 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if false then true else false ) ) ) $ ( if d71 then d35 else true )
    d111 : if false then if true then Bool else Bool else if true then Bool else Bool
    d111 = if if false then true else false then if false then false else true else if true then true else false
    d112 : if true then if true then Bool else Bool else if true then Bool else Bool
    d112 = ( ( ( ( ( ( ( ( M.d22 ) $ ( d111 ) ) $ ( true ) ) $ ( d111 ) ) $ ( d111 ) ) $ ( d111 ) ) $ ( true ) ) $ ( true ) ) $ ( d111 )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> x115 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d113 = if if true then false else false then if true then d112 else d111 else if false then true else true
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x117 ) ) ) $ ( x117 ) ) ) ) $ ( if false then Bool else Bool )
    d116 = ( ( ( ( ( ( ( ( M.d90 ) $ ( d111 ) ) $ ( false ) ) $ ( false ) ) $ ( d113 ) ) $ ( false ) ) $ ( d112 ) ) $ ( d111 ) ) $ ( d111 )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then Bool else x122 ) ) ) $ ( if false then Bool else Bool )
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> d116 ) ) ) $ ( true ) ) ) ) $ ( if d116 then false else d111 )
    d123 : if false then if true then Bool else Bool else if true then Bool else Bool
    d123 = if if d116 then true else true then if d116 then d119 else d113 else if true then d119 else true
    d124 : if true then if true then Bool else Bool else if true then Bool else Bool
    d124 = ( ( ( ( ( ( ( ( M.d43 ) $ ( d113 ) ) $ ( d116 ) ) $ ( d119 ) ) $ ( false ) ) $ ( d123 ) ) $ ( false ) ) $ ( d111 ) ) $ ( d116 )
    d125 : if false then if false then Bool else Bool else if false then Bool else Bool
    d125 = if if true then d111 else d119 then if d116 then d113 else d116 else if false then d124 else true
    d126 : if true then if true then Bool else Bool else if true then Bool else Bool
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if d123 then false else false ) ) ) $ ( if true then d111 else d124 )
    d128 : if true then if false then Bool else Bool else if true then Bool else Bool
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( ( ( ( ( ( ( M.d11 ) $ ( true ) ) $ ( true ) ) $ ( d124 ) ) $ ( d116 ) ) $ ( d112 ) ) $ ( x129 ) ) $ ( x129 ) ) $ ( false ) ) ) ) $ ( if d123 then d125 else false )
    d130 : if true then if false then Bool else Bool else if true then Bool else Bool
    d130 = if if d128 then d113 else d125 then if d113 then d126 else true else if d119 then d126 else d112
    d131 : if true then if true then Bool else Bool else if true then Bool else Bool
    d131 = if if true then true else false then if false then true else d113 else if d124 then d116 else d123
    d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d132 = if if d116 then false else d126 then if d111 then false else true else if d125 then false else true
    d134 : if true then if false then Bool else Bool else if true then Bool else Bool
    d134 = if if d124 then false else d132 then if d123 then true else d113 else if d123 then true else d128
    d135 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( Bool -> Bool ) ∋ ( ( λ x137 -> x137 ) ) ) $ ( false ) ) ) ) $ ( if d131 then d116 else d132 )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> x141 ) ) ) $ ( x141 ) ) ) ) $ ( if false then Bool else Bool )
    d140 = ( ( ( ( ( ( ( ( M.d105 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( d116 ) ) $ ( d111 )
    d143 : if false then if true then Bool else Bool else if false then Bool else Bool
    d143 = ( ( ( ( ( ( ( ( M.d69 ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( d111 ) ) $ ( false ) ) $ ( true )
    d144 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if true then x145 else x145 ) ) ) $ ( if false then Bool else Bool )
    d144 = if if d134 then false else true then if d125 then d124 else false else if d123 then false else true
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d146 = ( ( ( ( ( ( ( ( M.d63 ) $ ( true ) ) $ ( false ) ) $ ( d112 ) ) $ ( true ) ) $ ( d119 ) ) $ ( d131 ) ) $ ( true ) ) $ ( d126 )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d149 = if if d112 then false else false then if d125 then false else d146 else if true then true else true
    d151 : if true then if true then Bool else Bool else if true then Bool else Bool
    d151 = ( ( ( ( ( ( ( ( M.d9 ) $ ( false ) ) $ ( d131 ) ) $ ( true ) ) $ ( d143 ) ) $ ( false ) ) $ ( false ) ) $ ( d111 ) ) $ ( d116 )
    d152 : if true then if true then Bool else Bool else if false then Bool else Bool
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> ( ( ( ( ( ( ( ( M.d74 ) $ ( x153 ) ) $ ( d144 ) ) $ ( false ) ) $ ( x153 ) ) $ ( x153 ) ) $ ( x153 ) ) $ ( x153 ) ) $ ( x153 ) ) ) ) $ ( if d125 then d111 else d149 )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> ( ( Set -> Set ) ∋ ( ( λ x156 -> x156 ) ) ) $ ( x155 ) ) ) ) $ ( if true then Bool else Bool )
    d154 = if if false then false else d111 then if d130 then false else d125 else if true then d131 else d128
    d157 : if false then if true then Bool else Bool else if true then Bool else Bool
    d157 = ( ( ( ( ( ( ( ( M.d97 ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( d134 ) ) $ ( d152 ) ) $ ( false ) ) $ ( true ) ) $ ( d131 )
    d158 : if true then if true then Bool else Bool else if true then Bool else Bool
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> if false then true else x159 ) ) ) $ ( if d157 then true else d113 )
    d160 : ( ( Set -> Set ) ∋ ( ( λ x161 -> ( ( Set -> Set ) ∋ ( ( λ x162 -> x162 ) ) ) $ ( x161 ) ) ) ) $ ( if false then Bool else Bool )
    d160 = ( ( ( ( ( ( ( ( M.d88 ) $ ( d146 ) ) $ ( d130 ) ) $ ( true ) ) $ ( d111 ) ) $ ( true ) ) $ ( false ) ) $ ( d140 ) ) $ ( true )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d163 = if if false then false else d151 then if false then d113 else false else if d112 then d123 else false
    d166 : if true then if true then Bool else Bool else if false then Bool else Bool
    d166 = ( ( ( ( ( ( ( ( M.d32 ) $ ( d157 ) ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( d119 ) ) $ ( d116 ) ) $ ( true ) ) $ ( d134 )
    d167 : if false then if true then Bool else Bool else if false then Bool else Bool
    d167 = if if d140 then false else d116 then if true then d140 else false else if false then d160 else true
    d168 : if true then if true then Bool else Bool else if true then Bool else Bool
    d168 = if if d140 then false else true then if false then d126 else true else if d131 then d154 else true
    d169 : if true then if false then Bool else Bool else if false then Bool else Bool
    d169 = ( ( ( ( ( ( ( ( M.d9 ) $ ( true ) ) $ ( false ) ) $ ( d131 ) ) $ ( d151 ) ) $ ( d151 ) ) $ ( d134 ) ) $ ( true ) ) $ ( true )
    d170 : ( ( Set -> Set ) ∋ ( ( λ x171 -> if false then Bool else x171 ) ) ) $ ( if false then Bool else Bool )
    d170 = ( ( ( ( ( ( ( ( M.d39 ) $ ( d111 ) ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( d167 ) ) $ ( true ) ) $ ( true ) ) $ ( true )
    d172 : if true then if true then Bool else Bool else if false then Bool else Bool
    d172 = ( ( ( ( ( ( ( ( M.d79 ) $ ( false ) ) $ ( d167 ) ) $ ( d157 ) ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( d131 )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> Bool ) ) ) $ ( x174 ) ) ) ) $ ( if true then Bool else Bool )
    d173 = if if d116 then d134 else false then if d157 then d144 else d124 else if d170 then d152 else true
    d176 : ( ( Set -> Set ) ∋ ( ( λ x177 -> if false then Bool else x177 ) ) ) $ ( if false then Bool else Bool )
    d176 = if if d163 then d160 else false then if d154 then false else true else if d172 then false else false
    d178 : ( ( Set -> Set ) ∋ ( ( λ x179 -> if false then x179 else x179 ) ) ) $ ( if true then Bool else Bool )
    d178 = if if false then false else d140 then if false then true else true else if d125 then true else true
    d180 : if false then if false then Bool else Bool else if true then Bool else Bool
    d180 = ( ( ( ( ( ( ( ( M.d39 ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( d158 ) ) $ ( d124 ) ) $ ( d157 ) ) $ ( d116 )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> Bool ) ) ) $ ( x183 ) ) ) ) $ ( if true then Bool else Bool )
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> if x182 then x182 else true ) ) ) $ ( if true then true else d132 )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> if true then x186 else x186 ) ) ) $ ( if true then Bool else Bool )
    d185 = ( ( ( ( ( ( ( ( M.d35 ) $ ( false ) ) $ ( d169 ) ) $ ( true ) ) $ ( d176 ) ) $ ( true ) ) $ ( true ) ) $ ( false ) ) $ ( d111 )
    d187 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d187 = ( ( Bool -> Bool ) ∋ ( ( λ x188 -> ( ( Bool -> Bool ) ∋ ( ( λ x189 -> d131 ) ) ) $ ( x188 ) ) ) ) $ ( if false then true else d172 )