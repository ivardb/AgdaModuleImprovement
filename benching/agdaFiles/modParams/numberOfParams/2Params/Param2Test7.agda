module Param2Test7  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x4 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d3 = if if false then p1 else true then if p2 then false else p2 else if p1 then p2 else true
        d6 : if true then if false then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d3 then p1 else d3 ) ) ) $ ( if d3 then false else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then x11 else Bool ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> d6 ) ) ) $ ( d6 ) ) ) ) $ ( if true then false else d3 )
        d12 : if false then if false then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if x13 then p1 else d3 ) ) ) $ ( if false then p1 else d6 )
        d14 : if true then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if true then false else p1 then if p2 then p1 else p2 else if p1 then d12 else p1
        d15 : if true then if false then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if d12 then p1 else false ) ) ) $ ( if d6 then false else p1 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if true then x18 else Bool ) ) ) $ ( if false then Bool else Bool )
        d17 = if if d15 then d14 else d15 then if p2 then false else false else if p1 then d8 else p1
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> Bool ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d19 = if if d8 then d17 else p2 then if false then d14 else true else if true then d17 else p2
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d22 = if if false then p1 else p1 then if p2 then d14 else p1 else if p1 then true else true
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = if if d8 then false else d17 then if false then true else true else if true then false else true
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = if if p1 then d6 else d15 then if true then false else p2 else if p1 then true else d24
        d26 : if true then if true then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> d14 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d24 else d6 )
        d29 : if false then if false then Bool else Bool else if false then Bool else Bool
        d29 = if if d17 then false else p1 then if d8 then false else d6 else if p1 then p1 else d25
        d30 : if false then if false then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if true then p2 else false ) ) ) $ ( if p2 then p1 else d15 )
        d32 : if false then if true then Bool else Bool else if false then Bool else Bool
        d32 = if if p2 then true else false then if d29 then true else p1 else if p2 then p1 else p1
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then x34 else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = if if d17 then p1 else p2 then if d12 then p1 else true else if d26 then false else d15
        d35 : if true then if true then Bool else Bool else if true then Bool else Bool
        d35 = if if d25 then d30 else d30 then if false then p2 else false else if true then p2 else p1
        d36 : if false then if false then Bool else Bool else if true then Bool else Bool
        d36 = if if false then true else p2 then if p2 then d3 else d14 else if d32 then true else true
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then x39 else Bool ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if d14 then x38 else p1 ) ) ) $ ( if p2 then true else false )
        d40 : if false then if false then Bool else Bool else if true then Bool else Bool
        d40 = if if false then true else false then if false then false else p2 else if p2 then d15 else d17
        d41 : if false then if false then Bool else Bool else if true then Bool else Bool
        d41 = if if d29 then p2 else false then if d25 then true else p1 else if d14 then p2 else d17
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( x45 ) ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> d25 ) ) ) $ ( d26 ) ) ) ) $ ( if d12 then d22 else d15 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d47 = if if d25 then p2 else p1 then if d26 then p2 else p2 else if p1 then p2 else p1
        d50 : if true then if false then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if p2 then x51 else p2 ) ) ) $ ( if d33 then true else true )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d52 = if if false then d6 else d12 then if false then true else true else if p2 then p1 else p1
        d55 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then x58 else x58 ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then d32 else p2 )
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> d22 ) ) ) $ ( x60 ) ) ) ) $ ( if p2 then false else d15 )
        d62 : if false then if false then Bool else Bool else if true then Bool else Bool
        d62 = if if p1 then d22 else true then if true then d14 else d32 else if p2 then p2 else p1
        d63 : if true then if true then Bool else Bool else if true then Bool else Bool
        d63 = if if d50 then false else true then if true then p1 else p1 else if d35 then d37 else false
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( x67 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> false ) ) ) $ ( false ) ) ) ) $ ( if d50 then d26 else p2 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if false then x71 else Bool ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if false then p2 else false ) ) ) $ ( if d6 then p2 else p1 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if false then x75 else Bool ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if d26 then d59 else p2 )
        d76 : if true then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if x77 then p2 else d63 ) ) ) $ ( if d22 then true else d62 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d78 = if if true then false else d15 then if p2 then d37 else p2 else if p1 then true else p1
        d80 : if false then if true then Bool else Bool else if false then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if false then p1 else false ) ) ) $ ( if false then d12 else p2 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x83 ) ) ) $ ( x83 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if d22 then true else d3 then if d59 then p1 else p2 else if false then d37 else false
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then x87 else x87 ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if false then x86 else d19 ) ) ) $ ( if p2 then d26 else d80 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if true then x89 else Bool ) ) ) $ ( if true then Bool else Bool )
        d88 = if if true then p2 else false then if true then false else d62 else if d3 then true else p2
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then x93 else x93 ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> d25 ) ) ) $ ( false ) ) ) ) $ ( if p2 then true else d29 )
        d94 : if true then if true then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then p2 else d85 )
    d97 : if true then if true then Bool else Bool else if true then Bool else Bool
    d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( M.d36 ) $ ( if x98 then true else false ) ) $ ( if x98 then x98 else false ) ) ) ) $ ( if false then false else true )
    d99 : if false then if false then Bool else Bool else if true then Bool else Bool
    d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if x100 then d97 else d97 ) ) ) $ ( if true then d97 else d97 )
    d101 : if true then if false then Bool else Bool else if true then Bool else Bool
    d101 = if if d99 then true else d99 then if d99 then d97 else d97 else if d97 then d99 else d99
    d102 : if true then if true then Bool else Bool else if true then Bool else Bool
    d102 = if if d101 then d97 else false then if d99 then true else d97 else if true then true else d101
    d103 : if true then if true then Bool else Bool else if false then Bool else Bool
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( M.d32 ) $ ( if x104 then d97 else true ) ) $ ( if x104 then false else x104 ) ) ) ) $ ( if false then d97 else d102 )
    d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> x106 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d105 = if if true then false else d102 then if d102 then d101 else true else if d102 then true else d103
    d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if true then x109 else x109 ) ) ) $ ( if false then Bool else Bool )
    d108 = if if d101 then d101 else true then if d103 then true else d103 else if d99 then d102 else false
    d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then x112 else x112 ) ) ) $ ( if true then Bool else Bool )
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if true then true else x111 ) ) ) $ ( if true then false else true )
    d113 : if true then if false then Bool else Bool else if false then Bool else Bool
    d113 = ( ( M.d42 ) $ ( ( ( M.d76 ) $ ( d102 ) ) $ ( d105 ) ) ) $ ( if d97 then false else false )
    d114 : if false then if false then Bool else Bool else if false then Bool else Bool
    d114 = ( ( M.d3 ) $ ( if d113 then true else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x115 -> d102 ) ) ) $ ( true ) )
    d116 : if true then if false then Bool else Bool else if false then Bool else Bool
    d116 = if if false then d105 else false then if false then d97 else d108 else if d110 then d101 else d113
    d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if true then x118 else Bool ) ) ) $ ( if true then Bool else Bool )
    d117 = if if d105 then false else d97 then if d113 then d105 else true else if false then d103 else false
    d119 : if false then if false then Bool else Bool else if false then Bool else Bool
    d119 = if if false then d103 else d116 then if d113 then d117 else false else if d116 then d99 else false
    d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d120 = if if false then d101 else d105 then if d103 then d108 else d97 else if true then false else d113
    d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then x125 else Bool ) ) ) $ ( if true then Bool else Bool )
    d123 = ( ( M.d3 ) $ ( ( ( M.d69 ) $ ( false ) ) $ ( d99 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x124 -> d101 ) ) ) $ ( true ) )
    d126 : if false then if false then Bool else Bool else if true then Bool else Bool
    d126 = ( ( M.d62 ) $ ( if false then true else false ) ) $ ( ( ( M.d42 ) $ ( true ) ) $ ( d97 ) )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if true then x128 else Bool ) ) ) $ ( if false then Bool else Bool )
    d127 = if if d97 then d103 else d101 then if d119 then d102 else false else if d97 then d114 else d116
    d129 : if false then if true then Bool else Bool else if true then Bool else Bool
    d129 = if if false then d110 else true then if false then d103 else true else if true then d103 else d120
    d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if false then Bool else x131 ) ) ) $ ( if false then Bool else Bool )
    d130 = if if d99 then false else true then if d129 then d129 else d102 else if false then d127 else d117
    d132 : if false then if false then Bool else Bool else if false then Bool else Bool
    d132 = if if d130 then true else true then if d116 then d110 else false else if d97 then false else d119
    d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if false then x135 else Bool ) ) ) $ ( if false then Bool else Bool )
    d133 = ( ( M.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x134 -> true ) ) ) $ ( d105 ) ) ) $ ( ( ( M.d22 ) $ ( true ) ) $ ( true ) )
    d136 : if false then if false then Bool else Bool else if false then Bool else Bool
    d136 = ( ( M.d94 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x137 -> d123 ) ) ) $ ( d102 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x138 -> false ) ) ) $ ( false ) )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if true then Bool else x142 ) ) ) $ ( if true then Bool else Bool )
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x141 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then d103 else d113 )
    d143 : if false then if false then Bool else Bool else if false then Bool else Bool
    d143 = ( ( M.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x144 -> true ) ) ) $ ( true ) ) ) $ ( if true then d113 else true )
    d145 : if true then if true then Bool else Bool else if false then Bool else Bool
    d145 = if if d99 then false else true then if false then false else true else if d143 then false else d97
    d146 : if true then if true then Bool else Bool else if false then Bool else Bool
    d146 = if if false then d114 else d119 then if d116 then false else d143 else if false then false else true
    d147 : if true then if true then Bool else Bool else if true then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( Bool -> Bool ) ∋ ( ( λ x149 -> d119 ) ) ) $ ( x148 ) ) ) ) $ ( if true then d105 else d139 )
    d150 : if false then if true then Bool else Bool else if true then Bool else Bool
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> if d147 then true else x151 ) ) ) $ ( if d132 then d126 else false )
    d152 : if false then if true then Bool else Bool else if true then Bool else Bool
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> ( ( Bool -> Bool ) ∋ ( ( λ x154 -> false ) ) ) $ ( x153 ) ) ) ) $ ( if d145 then false else d123 )
    d155 : if false then if true then Bool else Bool else if true then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> ( ( Bool -> Bool ) ∋ ( ( λ x157 -> d97 ) ) ) $ ( x156 ) ) ) ) $ ( if true then d146 else false )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> x159 ) ) ) $ ( x159 ) ) ) ) $ ( if false then Bool else Bool )
    d158 = if if false then false else false then if d123 then d123 else true else if true then d126 else d117
    d161 : ( ( Set -> Set ) ∋ ( ( λ x162 -> ( ( Set -> Set ) ∋ ( ( λ x163 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d161 = ( ( M.d88 ) $ ( if true then false else d123 ) ) $ ( ( ( M.d12 ) $ ( true ) ) $ ( false ) )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x166 -> ( ( Set -> Set ) ∋ ( ( λ x167 -> Bool ) ) ) $ ( x166 ) ) ) ) $ ( if true then Bool else Bool )
    d164 = ( ( M.d29 ) $ ( if d132 then d150 else d139 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x165 -> d161 ) ) ) $ ( d155 ) )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if false then Bool else x169 ) ) ) $ ( if true then Bool else Bool )
    d168 = ( ( M.d29 ) $ ( ( ( M.d29 ) $ ( true ) ) $ ( d143 ) ) ) $ ( ( ( M.d24 ) $ ( d130 ) ) $ ( false ) )
    d170 : if true then if false then Bool else Bool else if false then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> if d155 then true else x171 ) ) ) $ ( if d152 then d132 else false )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if true then x174 else Bool ) ) ) $ ( if true then Bool else Bool )
    d172 = ( ( M.d55 ) $ ( if d164 then true else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x173 -> x173 ) ) ) $ ( d114 ) )
    d175 : if true then if true then Bool else Bool else if true then Bool else Bool
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> if x176 then true else d164 ) ) ) $ ( if true then d161 else true )
    d177 : if false then if false then Bool else Bool else if false then Bool else Bool
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> if x178 then x178 else false ) ) ) $ ( if d119 then d130 else false )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if true then x181 else x181 ) ) ) $ ( if false then Bool else Bool )
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( M.d64 ) $ ( if d143 then x180 else d164 ) ) $ ( if x180 then true else d127 ) ) ) ) $ ( if d101 then false else true )
    d182 : if true then if true then Bool else Bool else if false then Bool else Bool
    d182 = ( ( M.d90 ) $ ( ( ( M.d47 ) $ ( false ) ) $ ( true ) ) ) $ ( if true then false else true )