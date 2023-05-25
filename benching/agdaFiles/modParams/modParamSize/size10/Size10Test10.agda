module Size10Test10  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then Bool else x3 ) ) ) $ ( Bool ) )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d4 = if if p1 then false else false then if false then false else false else if p2 then false else p1
        d7 : if false then if false then Bool else Bool else if true then Bool else Bool
        d7 = if if d4 then p1 else d4 then if p2 then d4 else false else if d4 then p1 else d4
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( x10 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if x9 then p1 else d7 ) ) ) $ ( if d4 then false else d7 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if false then Bool else x13 ) ) ) $ ( if true then Bool else Bool )
        d12 = if if d4 then true else p1 then if false then p1 else p1 else if d8 then p1 else true
        d14 : if false then if true then Bool else Bool else if false then Bool else Bool
        d14 = if if d8 then p2 else d8 then if p2 then false else p1 else if p1 then false else p2
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( x16 ) ) ) ) $ ( if false then Bool else Bool )
        d15 = if if p2 then true else d14 then if p1 then d7 else d8 else if false then false else p1
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then x19 else Bool ) ) ) $ ( if false then Bool else Bool )
        d18 = if if p2 then p1 else true then if p1 then d8 else d15 else if false then d7 else d8
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> Bool ) ) ) $ ( x21 ) ) ) ) $ ( if false then Bool else Bool )
        d20 = if if p2 then d8 else p2 then if true then p2 else true else if d15 then d7 else true
        d23 : if true then if true then Bool else Bool else if true then Bool else Bool
        d23 = if if p2 then false else p2 then if d7 then false else false else if p1 then d20 else p2
        d24 : if false then if true then Bool else Bool else if false then Bool else Bool
        d24 = if if d12 then p2 else p2 then if false then p2 else p2 else if p1 then d4 else d18
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = if if d7 then p2 else d24 then if false then true else p2 else if p1 then p2 else d20
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d26 = if if d25 then p1 else d12 then if d15 then false else false else if p1 then false else p2
        d29 : if true then if false then Bool else Bool else if false then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> d23 ) ) ) $ ( d23 ) ) ) ) $ ( if p2 then p1 else d8 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x36 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> p2 ) ) ) $ ( d29 ) ) ) ) $ ( if p1 then d29 else false )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then Bool else x40 ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if false then p1 else p1 )
        d41 : if false then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> true ) ) ) $ ( d26 ) ) ) ) $ ( if d26 then d18 else d8 )
        d44 : if true then if true then Bool else Bool else if false then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if true then d18 else true ) ) ) $ ( if d15 then d32 else d32 )
        d46 : if true then if true then Bool else Bool else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d32 ) ) ) $ ( p2 ) ) ) ) $ ( if d25 then p2 else d41 )
        d49 : if false then if true then Bool else Bool else if false then Bool else Bool
        d49 = if if p1 then false else true then if p2 then d23 else d15 else if false then false else true
        d50 : if false then if false then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> d18 ) ) ) $ ( true ) ) ) ) $ ( if true then d46 else true )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> d50 ) ) ) $ ( p2 ) ) ) ) $ ( if p1 then p2 else true )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d58 = if if true then d24 else p2 then if d8 then d7 else p1 else if d29 then p2 else d44
        d61 : if true then if false then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if d15 then true else true ) ) ) $ ( if p2 then d50 else p1 )
        d63 : if false then if false then Bool else Bool else if false then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( true ) ) ) ) $ ( if d46 then true else true )
        d66 : if false then if false then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if p2 then d20 else p1 ) ) ) $ ( if d61 then d18 else p2 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( x69 ) ) ) ) $ ( if true then Bool else Bool )
        d68 = if if d46 then d44 else p2 then if p1 then true else true else if p2 then p2 else p1
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if true then Bool else x72 ) ) ) $ ( if true then Bool else Bool )
        d71 = if if p2 then d15 else d61 then if false then d20 else true else if true then true else p2
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( x74 ) ) ) ) $ ( if false then Bool else Bool )
        d73 = if if false then false else false then if p1 then true else false else if true then true else true
        d76 : if true then if true then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d14 then true else true ) ) ) $ ( if p1 then p1 else p1 )
        d78 : if false then if false then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then p2 else p2 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if p2 then d76 else d26 ) ) ) $ ( if true then p1 else p2 )
        d85 : if false then if false then Bool else Bool else if false then Bool else Bool
        d85 = if if false then d44 else p2 then if d50 then false else d26 else if d7 then true else true
        d86 : if false then if true then Bool else Bool else if false then Bool else Bool
        d86 = if if false then p1 else false then if d20 then p1 else false else if false then d15 else d4
        d87 : if false then if true then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if p2 then p1 else p1 ) ) ) $ ( if d23 then true else true )
        d89 : if true then if true then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if true then d46 else d18 ) ) ) $ ( if d12 then d20 else false )
        d91 : if false then if true then Bool else Bool else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> x93 ) ) ) $ ( p2 ) ) ) ) $ ( if p1 then p2 else d68 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if false then Bool else Bool )
        d94 = if if false then p1 else p2 then if true then true else d32 else if true then d15 else d29
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> x99 ) ) ) $ ( x98 ) ) ) ) $ ( if false then Bool else Bool )
        d97 = if if p2 then p2 else false then if d8 then d25 else p2 else if p1 then false else false
        d100 : if true then if false then Bool else Bool else if true then Bool else Bool
        d100 = if if p1 then true else false then if true then p2 else p1 else if false then d37 else p1
        d101 : if true then if true then Bool else Bool else if false then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if p1 then p1 else d12 ) ) ) $ ( if false then p1 else p1 )
    d103 : if false then if false then Bool else Bool else if true then Bool else Bool
    d103 = ( ( M.d91 ) $ ( if false then true else false ) ) $ ( ( ( M.d97 ) $ ( true ) ) $ ( true ) )
    d104 : if false then if false then Bool else Bool else if true then Bool else Bool
    d104 = ( ( M.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x105 -> d103 ) ) ) $ ( d103 ) ) ) $ ( if false then d103 else true )
    d106 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if false then x109 else Bool ) ) ) $ ( if true then Bool else Bool )
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> d104 ) ) ) $ ( d103 ) ) ) ) $ ( if true then false else true )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if false then x111 else x111 ) ) ) $ ( if true then Bool else Bool )
    d110 = if if true then true else d103 then if d106 then d104 else d104 else if d106 then true else d104
    d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d112 = if if false then d106 else d110 then if d106 then d110 else false else if true then d104 else d110
    d115 : if false then if false then Bool else Bool else if true then Bool else Bool
    d115 = if if d112 then true else false then if d103 then d104 else d104 else if true then d110 else false
    d116 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then x118 else x118 ) ) ) $ ( if true then Bool else Bool )
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( M.d23 ) $ ( if d110 then true else true ) ) $ ( if false then d104 else x117 ) ) ) ) $ ( if false then false else true )
    d119 : if false then if false then Bool else Bool else if false then Bool else Bool
    d119 = ( ( M.d71 ) $ ( if d104 then false else false ) ) $ ( if d116 then true else false )
    d120 : if false then if false then Bool else Bool else if false then Bool else Bool
    d120 = ( ( M.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x121 -> true ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( false ) )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> x125 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if d119 then d106 else x124 ) ) ) $ ( if d120 then d119 else d104 )
    d127 : if true then if true then Bool else Bool else if true then Bool else Bool
    d127 = ( ( M.d46 ) $ ( ( ( M.d53 ) $ ( d119 ) ) $ ( d120 ) ) ) $ ( ( ( M.d26 ) $ ( d116 ) ) $ ( d112 ) )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( x129 ) ) ) ) $ ( if false then Bool else Bool )
    d128 = if if false then false else d110 then if d119 then d116 else d106 else if false then false else true
    d131 : if true then if true then Bool else Bool else if true then Bool else Bool
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( M.d23 ) $ ( if x132 then x132 else d104 ) ) $ ( if false then d110 else false ) ) ) ) $ ( if true then d123 else d106 )
    d133 : if false then if true then Bool else Bool else if false then Bool else Bool
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( M.d85 ) $ ( if x134 then d120 else x134 ) ) $ ( if true then x134 else x134 ) ) ) ) $ ( if d110 then true else d123 )
    d135 : if true then if true then Bool else Bool else if true then Bool else Bool
    d135 = if if false then true else d104 then if true then d103 else true else if false then false else true
    d136 : if true then if false then Bool else Bool else if true then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> if d119 then true else x137 ) ) ) $ ( if true then false else d104 )
    d138 : if false then if false then Bool else Bool else if true then Bool else Bool
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> ( ( M.d66 ) $ ( if false then x139 else d110 ) ) $ ( if d115 then x139 else d103 ) ) ) ) $ ( if true then true else d135 )
    d140 : if false then if true then Bool else Bool else if false then Bool else Bool
    d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> ( ( Bool -> Bool ) ∋ ( ( λ x142 -> x141 ) ) ) $ ( x141 ) ) ) ) $ ( if true then d110 else d131 )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if false then x144 else x144 ) ) ) $ ( if true then Bool else Bool )
    d143 = if if true then d128 else false then if false then false else false else if d115 then true else d123
    d145 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if false then x148 else Bool ) ) ) $ ( if true then Bool else Bool )
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> ( ( Bool -> Bool ) ∋ ( ( λ x147 -> x146 ) ) ) $ ( x146 ) ) ) ) $ ( if true then d116 else d115 )
    d149 : if false then if false then Bool else Bool else if true then Bool else Bool
    d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if true then d104 else d127 ) ) ) $ ( if false then d116 else true )
    d151 : if false then if false then Bool else Bool else if false then Bool else Bool
    d151 = ( ( M.d63 ) $ ( if false then d136 else false ) ) $ ( if false then d110 else false )
    d152 : if false then if false then Bool else Bool else if false then Bool else Bool
    d152 = if if false then d123 else true then if true then true else d151 else if true then d112 else d103
    d153 : if true then if false then Bool else Bool else if true then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> if d123 then false else true ) ) ) $ ( if d136 then true else false )
    d155 : if false then if false then Bool else Bool else if true then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> ( ( M.d7 ) $ ( if d112 then true else true ) ) $ ( if x156 then d133 else x156 ) ) ) ) $ ( if true then false else d123 )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x159 -> if false then x159 else Bool ) ) ) $ ( if false then Bool else Bool )
    d157 = ( ( Bool -> Bool ) ∋ ( ( λ x158 -> if d103 then x158 else d138 ) ) ) $ ( if true then d143 else d135 )
    d160 : if true then if false then Bool else Bool else if false then Bool else Bool
    d160 = ( ( M.d101 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x161 -> x161 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x162 -> d145 ) ) ) $ ( false ) )
    d163 : if true then if true then Bool else Bool else if true then Bool else Bool
    d163 = if if true then true else true then if false then false else d110 else if true then d160 else d115
    d164 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> Bool ) ) ) $ ( x167 ) ) ) ) $ ( if true then Bool else Bool )
    d164 = ( ( M.d97 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x165 -> d152 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x166 -> d136 ) ) ) $ ( false ) )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x171 -> ( ( Set -> Set ) ∋ ( ( λ x172 -> Bool ) ) ) $ ( x171 ) ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( M.d58 ) $ ( if d123 then x170 else d149 ) ) $ ( if false then true else true ) ) ) ) $ ( if d104 then false else d140 )
    d173 : if true then if true then Bool else Bool else if true then Bool else Bool
    d173 = if if d110 then true else d133 then if d143 then false else d127 else if true then d131 else true
    d174 : ( ( Set -> Set ) ∋ ( ( λ x175 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d174 = if if d123 then d131 else d103 then if false then d157 else d155 else if true then d140 else d153
    d176 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> x179 ) ) ) $ ( x178 ) ) ) ) $ ( if false then Bool else Bool )
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( M.d29 ) $ ( if x177 then d119 else true ) ) $ ( if true then x177 else false ) ) ) ) $ ( if true then d136 else true )
    d180 : if true then if true then Bool else Bool else if true then Bool else Bool
    d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> if x181 then d169 else false ) ) ) $ ( if d155 then false else d151 )
    d182 : if true then if false then Bool else Bool else if false then Bool else Bool
    d182 = ( ( M.d94 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x183 -> true ) ) ) $ ( d151 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x184 -> x184 ) ) ) $ ( true ) )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d185 = if if false then d140 else false then if d138 then d136 else false else if true then d157 else true
    d187 : if true then if true then Bool else Bool else if false then Bool else Bool
    d187 = ( ( Bool -> Bool ) ∋ ( ( λ x188 -> if d116 then x188 else d151 ) ) ) $ ( if d155 then d115 else false )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if false then x191 else Bool ) ) ) $ ( if false then Bool else Bool )
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( M.d7 ) $ ( if d128 then d173 else false ) ) $ ( if x190 then d149 else true ) ) ) ) $ ( if true then d116 else d155 )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x194 -> if false then x194 else Bool ) ) ) $ ( if true then Bool else Bool )
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> ( ( M.d20 ) $ ( if x193 then x193 else d136 ) ) $ ( if true then true else false ) ) ) ) $ ( if d145 then d169 else false )
    d195 : if true then if true then Bool else Bool else if false then Bool else Bool
    d195 = ( ( M.d86 ) $ ( if true then true else d112 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x196 -> d185 ) ) ) $ ( false ) )