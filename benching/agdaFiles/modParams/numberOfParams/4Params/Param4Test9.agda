module Param4Test9  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if false then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then x6 else x6 ) ) ) $ ( if false then Bool else Bool )
        d5 = if if p3 then true else true then if true then true else false else if false then false else p3
        d7 : if true then if false then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> p4 ) ) ) $ ( d5 ) ) ) ) $ ( if true then p2 else d5 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if p3 then d5 else true ) ) ) $ ( if true then d7 else d7 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( x15 ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if if false then true else d7 then if true then d7 else false else if false then false else true
        d17 : if false then if false then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> p2 ) ) ) $ ( p4 ) ) ) ) $ ( if d7 then true else true )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then Bool else x21 ) ) ) $ ( if false then Bool else Bool )
        d20 = if if false then p1 else true then if true then p3 else false else if false then p2 else true
        d22 : if false then if true then Bool else Bool else if false then Bool else Bool
        d22 = if if p2 then true else true then if true then p2 else d20 else if d14 then p1 else true
        d23 : if false then if false then Bool else Bool else if true then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> d17 ) ) ) $ ( d5 ) ) ) ) $ ( if d7 then d10 else d7 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if false then Bool else x27 ) ) ) $ ( if true then Bool else Bool )
        d26 = if if d22 then d17 else true then if p4 then d5 else false else if p2 then d10 else d17
        d28 : if true then if true then Bool else Bool else if true then Bool else Bool
        d28 = if if p2 then false else p4 then if d10 then true else p1 else if d7 then true else false
        d29 : if true then if false then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> p2 ) ) ) $ ( d7 ) ) ) ) $ ( if d10 then p4 else d28 )
        d32 : if true then if false then Bool else Bool else if false then Bool else Bool
        d32 = if if d14 then p4 else d23 then if false then d20 else p4 else if true then d7 else d7
        d33 : if true then if true then Bool else Bool else if true then Bool else Bool
        d33 = if if p3 then p2 else p1 then if d7 then p3 else true else if true then d5 else p1
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x35 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d34 = if if p3 then true else false then if d33 then d29 else p4 else if p1 then p3 else p4
        d37 : if false then if false then Bool else Bool else if true then Bool else Bool
        d37 = if if d33 then p4 else p2 then if p4 then d20 else true else if true then true else d17
        d38 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if d28 then p3 else d14 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then x43 else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = if if d14 then false else d26 then if d37 then p1 else d37 else if d14 then false else false
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if true then Bool else x45 ) ) ) $ ( if false then Bool else Bool )
        d44 = if if d34 then p1 else p3 then if p3 then d38 else d32 else if true then false else p3
        d46 : if false then if true then Bool else Bool else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d23 ) ) ) $ ( d10 ) ) ) ) $ ( if d5 then d33 else d38 )
        d49 : if true then if true then Bool else Bool else if true then Bool else Bool
        d49 = if if d42 then d28 else p4 then if p1 then d5 else d22 else if d37 then d42 else d29
        d50 : if true then if false then Bool else Bool else if true then Bool else Bool
        d50 = if if false then true else p2 then if d26 then true else p4 else if p2 then false else d37
        d51 : if true then if false then Bool else Bool else if true then Bool else Bool
        d51 = if if true then d22 else p3 then if p3 then p2 else d46 else if false then true else false
        d52 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if p4 then p4 else p1 ) ) ) $ ( if false then true else d49 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if false then x59 else x59 ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> p2 ) ) ) $ ( true ) ) ) ) $ ( if d38 then false else true )
        d60 : if false then if false then Bool else Bool else if false then Bool else Bool
        d60 = if if d49 then d5 else d56 then if p1 then d52 else d17 else if p3 then p4 else false
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then x62 else x62 ) ) ) $ ( if false then Bool else Bool )
        d61 = if if d33 then d46 else p1 then if d38 then p3 else d60 else if false then d14 else d49
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( x64 ) ) ) ) $ ( if false then Bool else Bool )
        d63 = if if p2 then false else d14 then if p1 then true else d20 else if true then p2 else d60
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( x67 ) ) ) ) $ ( if false then Bool else Bool )
        d66 = if if false then d61 else true then if p2 then true else true else if p4 then false else p3
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> Bool ) ) ) $ ( x71 ) ) ) ) $ ( if true then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if true then d23 else d46 ) ) ) $ ( if d20 then false else true )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> x75 ) ) ) $ ( x75 ) ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if d50 then false else d63 ) ) ) $ ( if true then p2 else d44 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> x78 ) ) ) $ ( x78 ) ) ) ) $ ( if false then Bool else Bool )
        d77 = if if p2 then true else p1 then if p4 then d51 else d44 else if p3 then false else p3
        d80 : if true then if true then Bool else Bool else if false then Bool else Bool
        d80 = if if p1 then true else d23 then if false then d73 else d22 else if d63 then p4 else d56
        d81 : if false then if false then Bool else Bool else if true then Bool else Bool
        d81 = if if false then d33 else true then if d61 then p4 else p3 else if d60 then d80 else p3
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( x83 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if false then p3 else p1 then if true then true else p4 else if p4 then d10 else p1
        d85 : if true then if true then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if d22 then false else d29 ) ) ) $ ( if p4 then d60 else d10 )
        d87 : if false then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if d60 then p3 else true ) ) ) $ ( if d5 then false else p3 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if d28 then d20 else d29 )
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if p2 then p2 else d5 then if d33 then p4 else false else if p3 then d46 else p2
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then x98 else Bool ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if d37 then true else p4 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( x102 ) ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> d7 ) ) ) $ ( false ) ) ) ) $ ( if d63 then true else p3 )
    d104 : if true then if false then Bool else Bool else if false then Bool else Bool
    d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> x105 ) ) ) $ ( x105 ) ) ) ) $ ( if false then true else false )
    d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if true then x108 else Bool ) ) ) $ ( if false then Bool else Bool )
    d107 = if if d104 then false else true then if d104 then d104 else d104 else if d104 then d104 else true
    d109 : if false then if false then Bool else Bool else if true then Bool else Bool
    d109 = ( ( ( ( M.d60 ) $ ( true ) ) $ ( true ) ) $ ( d107 ) ) $ ( d104 )
    d110 : if false then if true then Bool else Bool else if true then Bool else Bool
    d110 = ( ( ( ( M.d37 ) $ ( true ) ) $ ( d109 ) ) $ ( d107 ) ) $ ( d104 )
    d111 : if false then if false then Bool else Bool else if true then Bool else Bool
    d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if d107 then d109 else d104 ) ) ) $ ( if true then d104 else d110 )
    d113 : if false then if false then Bool else Bool else if false then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> true ) ) ) $ ( x114 ) ) ) ) $ ( if true then d107 else true )
    d116 : if false then if false then Bool else Bool else if false then Bool else Bool
    d116 = if if true then d104 else d109 then if d104 then false else true else if true then d113 else false
    d117 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( ( ( M.d73 ) $ ( d107 ) ) $ ( x118 ) ) $ ( x118 ) ) $ ( true ) ) ) ) $ ( if d110 then false else true )
    d121 : if false then if false then Bool else Bool else if true then Bool else Bool
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> d107 ) ) ) $ ( x122 ) ) ) ) $ ( if d107 then d117 else d107 )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> ( ( Bool -> Bool ) ∋ ( ( λ x126 -> d109 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d110 )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( x129 ) ) ) ) $ ( if true then Bool else Bool )
    d128 = if if d104 then true else false then if true then d111 else d124 else if false then true else false
    d131 : if true then if false then Bool else Bool else if true then Bool else Bool
    d131 = ( ( ( ( M.d82 ) $ ( d128 ) ) $ ( true ) ) $ ( d121 ) ) $ ( d128 )
    d132 : if false then if true then Bool else Bool else if false then Bool else Bool
    d132 = ( ( ( ( M.d73 ) $ ( d107 ) ) $ ( d110 ) ) $ ( false ) ) $ ( false )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> x137 ) ) ) $ ( x136 ) ) ) ) $ ( if true then Bool else Bool )
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> true ) ) ) $ ( true ) ) ) ) $ ( if d121 then d124 else true )
    d138 : if false then if false then Bool else Bool else if false then Bool else Bool
    d138 = if if true then false else true then if true then d116 else true else if false then d131 else d104
    d139 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then x140 else x140 ) ) ) $ ( if false then Bool else Bool )
    d139 = ( ( ( ( M.d77 ) $ ( d132 ) ) $ ( d116 ) ) $ ( true ) ) $ ( d132 )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d141 = ( ( ( ( M.d85 ) $ ( true ) ) $ ( d110 ) ) $ ( false ) ) $ ( d110 )
    d144 : if true then if true then Bool else Bool else if false then Bool else Bool
    d144 = if if false then false else d111 then if true then false else d124 else if d124 then d138 else d113
    d145 : if true then if false then Bool else Bool else if true then Bool else Bool
    d145 = ( ( ( ( M.d82 ) $ ( true ) ) $ ( false ) ) $ ( d138 ) ) $ ( false )
    d146 : if true then if true then Bool else Bool else if false then Bool else Bool
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> ( ( Bool -> Bool ) ∋ ( ( λ x148 -> d138 ) ) ) $ ( x147 ) ) ) ) $ ( if d107 then true else true )
    d149 : if true then if true then Bool else Bool else if true then Bool else Bool
    d149 = if if d109 then false else d110 then if true then true else d117 else if true then d139 else false
    d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> if false then x151 else Bool ) ) ) $ ( if true then Bool else Bool )
    d150 = ( ( ( ( M.d10 ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( false )
    d152 : if true then if true then Bool else Bool else if false then Bool else Bool
    d152 = if if d116 then false else true then if true then d141 else true else if true then d139 else d113
    d153 : if true then if false then Bool else Bool else if false then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( Bool -> Bool ) ∋ ( ( λ x155 -> d145 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
    d156 : if true then if true then Bool else Bool else if true then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( ( ( M.d26 ) $ ( d104 ) ) $ ( d149 ) ) $ ( d153 ) ) $ ( x157 ) ) ) ) $ ( if d132 then d109 else true )
    d158 : if false then if true then Bool else Bool else if true then Bool else Bool
    d158 = if if true then false else d156 then if d116 then true else d156 else if false then d141 else d124
    d159 : if true then if false then Bool else Bool else if false then Bool else Bool
    d159 = if if d128 then false else false then if false then d104 else false else if d156 then true else d104
    d160 : ( ( Set -> Set ) ∋ ( ( λ x163 -> ( ( Set -> Set ) ∋ ( ( λ x164 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( Bool -> Bool ) ∋ ( ( λ x162 -> d107 ) ) ) $ ( true ) ) ) ) $ ( if d116 then d104 else d159 )
    d165 : if true then if true then Bool else Bool else if false then Bool else Bool
    d165 = if if d153 then d132 else d159 then if d159 then d116 else d132 else if d149 then true else d131
    d166 : if true then if false then Bool else Bool else if false then Bool else Bool
    d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> ( ( ( ( M.d33 ) $ ( d133 ) ) $ ( x167 ) ) $ ( false ) ) $ ( x167 ) ) ) ) $ ( if true then d128 else d121 )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x171 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> if d153 then x169 else d149 ) ) ) $ ( if false then false else d149 )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d172 = if if d104 then false else d107 then if d166 then d124 else d145 else if d145 then d168 else false
    d175 : if false then if true then Bool else Bool else if true then Bool else Bool
    d175 = ( ( ( ( M.d69 ) $ ( d104 ) ) $ ( d138 ) ) $ ( true ) ) $ ( true )
    d176 : if false then if true then Bool else Bool else if true then Bool else Bool
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( Bool -> Bool ) ∋ ( ( λ x178 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
    d179 : if false then if true then Bool else Bool else if false then Bool else Bool
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( ( ( M.d46 ) $ ( x180 ) ) $ ( true ) ) $ ( d159 ) ) $ ( false ) ) ) ) $ ( if false then false else true )
    d181 : if true then if false then Bool else Bool else if true then Bool else Bool
    d181 = ( ( ( ( M.d94 ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( true )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> x183 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d182 = ( ( ( ( M.d22 ) $ ( false ) ) $ ( d131 ) ) $ ( true ) ) $ ( d165 )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> ( ( Set -> Set ) ∋ ( ( λ x187 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d185 = if if d104 then d149 else true then if true then d149 else false else if false then false else false
    d188 : if true then if true then Bool else Bool else if false then Bool else Bool
    d188 = if if d182 then d176 else false then if d149 then false else d111 else if d104 then false else d145
    d189 : if false then if false then Bool else Bool else if true then Bool else Bool
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x191 -> d168 ) ) ) $ ( x190 ) ) ) ) $ ( if d185 then d139 else false )