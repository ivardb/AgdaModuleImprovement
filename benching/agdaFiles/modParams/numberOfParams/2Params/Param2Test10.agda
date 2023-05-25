module Param2Test10  where
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
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d3 = if if p2 then true else true then if p1 then false else false else if p2 then false else p1
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( x7 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if x6 then true else d3 ) ) ) $ ( if d3 then true else p1 )
        d9 : if true then if true then Bool else Bool else if false then Bool else Bool
        d9 = if if d3 then d5 else false then if p2 then p1 else true else if d5 then d3 else p1
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then x11 else Bool ) ) ) $ ( if false then Bool else Bool )
        d10 = if if true then p2 else false then if d3 then d5 else p2 else if p1 then true else p2
        d12 : if false then if true then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then p2 else p1 )
        d15 : if true then if true then Bool else Bool else if true then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if p1 then d9 else p2 ) ) ) $ ( if d5 then p1 else true )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> x19 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d17 = if if d10 then d3 else p2 then if d9 then d5 else true else if true then d9 else p2
        d20 : if false then if true then Bool else Bool else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if x21 then false else d5 ) ) ) $ ( if p1 then d17 else p1 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if false then x24 else Bool ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if d3 then true else true ) ) ) $ ( if p1 then p2 else d12 )
        d25 : if false then if false then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if p2 then d9 else p2 ) ) ) $ ( if true then p1 else d17 )
        d27 : if true then if true then Bool else Bool else if false then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> d9 ) ) ) $ ( false ) ) ) ) $ ( if false then d9 else true )
        d30 : if true then if true then Bool else Bool else if false then Bool else Bool
        d30 = if if p1 then d22 else p1 then if false then p1 else d22 else if false then false else d3
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then Bool else x32 ) ) ) $ ( if true then Bool else Bool )
        d31 = if if true then true else p2 then if d27 then p2 else d30 else if d12 then d17 else d15
        d33 : if false then if false then Bool else Bool else if true then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if d20 then p1 else d17 ) ) ) $ ( if true then d10 else p2 )
        d35 : if true then if true then Bool else Bool else if false then Bool else Bool
        d35 = if if true then true else p2 then if d30 then p1 else true else if false then false else d27
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then Bool else x39 ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d33 ) ) ) $ ( d3 ) ) ) ) $ ( if true then d35 else d12 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x43 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> d9 ) ) ) $ ( d9 ) ) ) ) $ ( if true then d31 else d17 )
        d45 : if true then if false then Bool else Bool else if true then Bool else Bool
        d45 = if if d12 then p1 else false then if false then false else false else if false then d35 else d40
        d46 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x49 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if p1 then d17 else false ) ) ) $ ( if true then false else d10 )
        d50 : if true then if true then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if false then true else false ) ) ) $ ( if d15 then false else true )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x54 ) ) ) $ ( x53 ) ) ) ) $ ( if true then Bool else Bool )
        d52 = if if d25 then false else false then if true then p2 else d3 else if d5 then d20 else true
        d55 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if true then Bool else x58 ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if true then false else d36 )
        d59 : if false then if false then Bool else Bool else if true then Bool else Bool
        d59 = if if p2 then d35 else p2 then if d40 then d25 else p1 else if p1 then p2 else false
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> x63 ) ) ) $ ( x63 ) ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> false ) ) ) $ ( d9 ) ) ) ) $ ( if p2 then p2 else p2 )
        d65 : if false then if true then Bool else Bool else if true then Bool else Bool
        d65 = if if d5 then true else d31 then if true then d52 else p2 else if d12 then d15 else d33
        d66 : if false then if true then Bool else Bool else if true then Bool else Bool
        d66 = if if d36 then false else d20 then if p2 then true else p1 else if p2 then p2 else d10
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = if if true then d20 else true then if false then d15 else true else if d31 then d22 else true
        d69 : if false then if false then Bool else Bool else if true then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> x71 ) ) ) $ ( d66 ) ) ) ) $ ( if false then p2 else d35 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if true then Bool else x74 ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if true then d25 else x73 ) ) ) $ ( if p2 then true else true )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d75 = if if d40 then p2 else d15 then if d22 then d15 else d46 else if p2 then false else p1
        d77 : if true then if false then Bool else Bool else if false then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if d27 then p1 else d10 ) ) ) $ ( if p2 then p2 else p1 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then x82 else Bool ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d52 ) ) ) $ ( true ) ) ) ) $ ( if p2 then p1 else d3 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d83 = if if d31 then p1 else true then if p1 then true else p2 else if d77 then p1 else false
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x88 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if true then d77 else d72 ) ) ) $ ( if p2 then d75 else p2 )
        d89 : if false then if true then Bool else Bool else if false then Bool else Bool
        d89 = if if d15 then true else p2 then if p2 then p1 else d69 else if p2 then p1 else true
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x94 ) ) ) $ ( x93 ) ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> true ) ) ) $ ( x91 ) ) ) ) $ ( if p2 then true else d27 )
        d95 : if false then if true then Bool else Bool else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> d55 ) ) ) $ ( d15 ) ) ) ) $ ( if p2 then true else false )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if true then false else d89 ) ) ) $ ( if false then d33 else true )
        d101 : if false then if true then Bool else Bool else if false then Bool else Bool
        d101 = if if p1 then true else true then if p2 then p2 else p1 else if d95 then d65 else false
        d102 : if true then if false then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if true then d95 else false ) ) ) $ ( if false then d60 else false )
    d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then x106 else Bool ) ) ) $ ( if false then Bool else Bool )
    d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if x105 then true else x105 ) ) ) $ ( if true then false else true )
    d107 : if true then if false then Bool else Bool else if true then Bool else Bool
    d107 = ( ( M.d25 ) $ ( ( ( M.d66 ) $ ( d104 ) ) $ ( d104 ) ) ) $ ( ( ( M.d40 ) $ ( d104 ) ) $ ( false ) )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d108 = ( ( M.d72 ) $ ( ( ( M.d90 ) $ ( true ) ) $ ( d104 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x109 -> x109 ) ) ) $ ( true ) )
    d111 : if true then if false then Bool else Bool else if true then Bool else Bool
    d111 = ( ( M.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d107 ) ) ) $ ( false ) ) ) $ ( if false then false else false )
    d113 : if true then if true then Bool else Bool else if false then Bool else Bool
    d113 = ( ( M.d15 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x114 -> true ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x115 -> false ) ) ) $ ( d111 ) )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then d108 else false )
    d120 : if true then if true then Bool else Bool else if true then Bool else Bool
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( d107 ) ) ) ) $ ( if true then true else false )
    d123 : if true then if true then Bool else Bool else if false then Bool else Bool
    d123 = ( ( M.d15 ) $ ( ( ( M.d101 ) $ ( d107 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x124 -> true ) ) ) $ ( false ) )
    d125 : if true then if false then Bool else Bool else if false then Bool else Bool
    d125 = if if false then false else false then if false then d107 else d113 else if d104 then d120 else d104
    d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> x128 ) ) ) $ ( x128 ) ) ) ) $ ( if true then Bool else Bool )
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if x127 then true else true ) ) ) $ ( if false then d120 else true )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> ( ( M.d60 ) $ ( if false then d107 else d111 ) ) $ ( if true then d104 else x131 ) ) ) ) $ ( if false then true else d107 )
    d134 : if false then if false then Bool else Bool else if true then Bool else Bool
    d134 = ( ( M.d45 ) $ ( ( ( M.d22 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x135 -> d120 ) ) ) $ ( false ) )
    d136 : ( ( Set -> Set ) ∋ ( ( λ x137 -> if true then Bool else x137 ) ) ) $ ( if false then Bool else Bool )
    d136 = if if d116 then false else true then if true then true else true else if false then true else d104
    d138 : if false then if true then Bool else Bool else if false then Bool else Bool
    d138 = ( ( M.d35 ) $ ( if d113 then d120 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x139 -> true ) ) ) $ ( d107 ) )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> if true then x141 else Bool ) ) ) $ ( if true then Bool else Bool )
    d140 = if if d138 then true else false then if d138 then true else d107 else if true then d126 else d123
    d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> ( ( Set -> Set ) ∋ ( ( λ x144 -> x143 ) ) ) $ ( x143 ) ) ) ) $ ( if true then Bool else Bool )
    d142 = ( ( M.d83 ) $ ( ( ( M.d20 ) $ ( false ) ) $ ( d140 ) ) ) $ ( ( ( M.d40 ) $ ( d136 ) ) $ ( true ) )
    d145 : if true then if true then Bool else Bool else if true then Bool else Bool
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> if true then x146 else x146 ) ) ) $ ( if false then false else d116 )
    d147 : if false then if false then Bool else Bool else if true then Bool else Bool
    d147 = if if d142 then d136 else false then if d140 then d130 else true else if d140 then d120 else true
    d148 : if true then if true then Bool else Bool else if false then Bool else Bool
    d148 = ( ( M.d59 ) $ ( ( ( M.d5 ) $ ( false ) ) $ ( d125 ) ) ) $ ( if d145 then true else d108 )
    d149 : if false then if false then Bool else Bool else if true then Bool else Bool
    d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x151 -> x151 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
    d152 : if false then if true then Bool else Bool else if true then Bool else Bool
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> ( ( M.d59 ) $ ( if x153 then true else false ) ) $ ( if d125 then x153 else x153 ) ) ) ) $ ( if d104 then false else d116 )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> if false then x155 else x155 ) ) ) $ ( if true then Bool else Bool )
    d154 = if if true then false else d111 then if false then d125 else false else if d142 then d120 else true
    d156 : if true then if false then Bool else Bool else if false then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> if d140 then d142 else d147 ) ) ) $ ( if false then true else d130 )
    d158 : if true then if false then Bool else Bool else if false then Bool else Bool
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> ( ( Bool -> Bool ) ∋ ( ( λ x160 -> true ) ) ) $ ( x159 ) ) ) ) $ ( if d120 then true else d138 )
    d161 : if false then if false then Bool else Bool else if true then Bool else Bool
    d161 = if if false then d116 else true then if true then d120 else d126 else if true then d104 else false
    d162 : if true then if true then Bool else Bool else if false then Bool else Bool
    d162 = ( ( M.d27 ) $ ( if false then d147 else false ) ) $ ( if d140 then false else true )
    d163 : if false then if true then Bool else Bool else if false then Bool else Bool
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> ( ( Bool -> Bool ) ∋ ( ( λ x165 -> x165 ) ) ) $ ( false ) ) ) ) $ ( if d148 then d126 else true )
    d166 : if true then if true then Bool else Bool else if true then Bool else Bool
    d166 = ( ( M.d90 ) $ ( if d138 then true else d108 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x167 -> d152 ) ) ) $ ( true ) )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x171 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> if x169 then x169 else d145 ) ) ) $ ( if false then true else true )
    d172 : if true then if true then Bool else Bool else if false then Bool else Bool
    d172 = ( ( Bool -> Bool ) ∋ ( ( λ x173 -> ( ( Bool -> Bool ) ∋ ( ( λ x174 -> false ) ) ) $ ( d154 ) ) ) ) $ ( if false then d154 else d107 )
    d175 : if false then if false then Bool else Bool else if false then Bool else Bool
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> if false then false else false ) ) ) $ ( if d130 then false else d148 )
    d177 : if true then if true then Bool else Bool else if false then Bool else Bool
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> ( ( M.d65 ) $ ( if x178 then false else x178 ) ) $ ( if x178 then d107 else true ) ) ) ) $ ( if false then true else d111 )
    d179 : if true then if false then Bool else Bool else if false then Bool else Bool
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if d111 then false else x180 ) ) ) $ ( if true then false else d104 )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d181 = ( ( M.d46 ) $ ( if false then d142 else d140 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x182 -> false ) ) ) $ ( d136 ) )
    d185 : if true then if true then Bool else Bool else if false then Bool else Bool
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( Bool -> Bool ) ∋ ( ( λ x187 -> false ) ) ) $ ( d156 ) ) ) ) $ ( if true then d149 else true )
    d188 : if true then if true then Bool else Bool else if false then Bool else Bool
    d188 = if if d166 then d161 else d177 then if true then false else true else if false then d120 else true
    d189 : ( ( Set -> Set ) ∋ ( ( λ x192 -> if false then Bool else x192 ) ) ) $ ( if true then Bool else Bool )
    d189 = ( ( M.d83 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x190 -> false ) ) ) $ ( d168 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x191 -> false ) ) ) $ ( d104 ) )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x194 -> if true then Bool else x194 ) ) ) $ ( if false then Bool else Bool )
    d193 = if if d125 then d158 else d179 then if d175 then d188 else d177 else if d166 then true else false
    d195 : if false then if false then Bool else Bool else if false then Bool else Bool
    d195 = ( ( M.d67 ) $ ( if false then true else false ) ) $ ( ( ( M.d50 ) $ ( false ) ) $ ( true ) )
    d196 : ( ( Set -> Set ) ∋ ( ( λ x198 -> if true then Bool else x198 ) ) ) $ ( if true then Bool else Bool )
    d196 = ( ( Bool -> Bool ) ∋ ( ( λ x197 -> if x197 then d158 else x197 ) ) ) $ ( if true then d145 else true )