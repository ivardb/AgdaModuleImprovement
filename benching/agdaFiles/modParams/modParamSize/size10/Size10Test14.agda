module Size10Test14  where
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
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x5 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d3 = if if false then false else p2 then if true then false else true else if p1 then false else false
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then x9 else Bool ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> true ) ) ) $ ( d3 ) ) ) ) $ ( if true then true else p1 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then x11 else x11 ) ) ) $ ( if true then Bool else Bool )
        d10 = if if d3 then p1 else p2 then if d3 then false else p1 else if p1 then p2 else false
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then Bool else x15 ) ) ) $ ( if true then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> d3 ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then d10 else d6 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d16 = if if d6 then d10 else false then if d12 then true else true else if p1 then d10 else p1
        d19 : if true then if true then Bool else Bool else if false then Bool else Bool
        d19 = if if d10 then p2 else d16 then if false then p2 else d12 else if true then true else p1
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then x22 else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if p1 then true else d16 ) ) ) $ ( if d10 then p1 else d12 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d23 = if if true then p2 else d20 then if p2 then d12 else p2 else if true then true else d10
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> x26 ) ) ) $ ( d20 ) ) ) ) $ ( if true then p2 else p2 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then x30 else Bool ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if d12 then d10 else d23 ) ) ) $ ( if false then p2 else true )
        d31 : if false then if true then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if p2 then d10 else x32 ) ) ) $ ( if p2 then d28 else d3 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if d20 then x34 else d19 ) ) ) $ ( if p2 then p2 else false )
        d36 : if true then if true then Bool else Bool else if false then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d23 ) ) ) $ ( p2 ) ) ) ) $ ( if d23 then false else p2 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x40 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d39 = if if d16 then false else d28 then if d33 then d16 else d3 else if false then true else d10
        d42 : if true then if false then Bool else Bool else if false then Bool else Bool
        d42 = if if p1 then p2 else true then if true then p2 else d20 else if false then false else p2
        d43 : if false then if true then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if p2 then p1 else d42 ) ) ) $ ( if d10 then p2 else p2 )
        d45 : if true then if false then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> d10 ) ) ) $ ( p1 ) ) ) ) $ ( if d16 then p1 else d36 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x51 ) ) ) $ ( x51 ) ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> d33 ) ) ) $ ( false ) ) ) ) $ ( if p1 then false else p1 )
        d53 : if false then if true then Bool else Bool else if true then Bool else Bool
        d53 = if if p1 then p2 else true then if false then d36 else p2 else if p2 then false else d19
        d54 : if true then if true then Bool else Bool else if false then Bool else Bool
        d54 = if if d36 then false else p1 then if d23 then p1 else d12 else if p2 then d42 else d36
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( x56 ) ) ) ) $ ( if true then Bool else Bool )
        d55 = if if false then d16 else p2 then if true then d6 else d16 else if d28 then d10 else false
        d58 : if false then if true then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if true then false else d16 ) ) ) $ ( if d33 then d31 else p2 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( x63 ) ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> p1 ) ) ) $ ( d16 ) ) ) ) $ ( if p2 then p1 else p2 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = if if p1 then p1 else true then if d20 then true else d33 else if p2 then true else p1
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if d19 then d16 else true ) ) ) $ ( if p2 then true else p1 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> x74 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if x73 then d53 else d68 ) ) ) $ ( if p1 then d54 else p1 )
        d76 : if false then if false then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d39 then true else d20 ) ) ) $ ( if d42 then true else d43 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( x81 ) ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> p2 ) ) ) $ ( p1 ) ) ) ) $ ( if true then false else true )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> x86 ) ) ) $ ( x86 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> d60 ) ) ) $ ( p1 ) ) ) ) $ ( if d43 then d42 else p1 )
        d88 : if false then if true then Bool else Bool else if false then Bool else Bool
        d88 = if if d25 then p1 else false then if p1 then p2 else p2 else if p2 then d39 else d58
        d89 : if false then if true then Bool else Bool else if true then Bool else Bool
        d89 = if if false then true else d10 then if false then false else true else if false then d3 else d20
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> Bool ) ) ) $ ( x93 ) ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> d83 ) ) ) $ ( true ) ) ) ) $ ( if false then d72 else true )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( x97 ) ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d25 then p1 else d45 ) ) ) $ ( if p2 then d60 else d43 )
        d99 : if true then if false then Bool else Bool else if true then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if p2 then d3 else d95 ) ) ) $ ( if d45 then d95 else false )
        d101 : if true then if false then Bool else Bool else if true then Bool else Bool
        d101 = if if true then d88 else true then if d99 then p2 else d65 else if d95 then p1 else d20
        d102 : if true then if true then Bool else Bool else if true then Bool else Bool
        d102 = if if false then d88 else d54 then if d76 then true else true else if p2 then true else p2
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x105 ) ) ) $ ( x104 ) ) ) ) $ ( if false then Bool else Bool )
        d103 = if if p2 then d12 else false then if false then p2 else true else if true then p1 else d3
        d106 : if false then if false then Bool else Bool else if false then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if x107 then false else true ) ) ) $ ( if d68 then d99 else false )
        d108 : if true then if false then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> d39 ) ) ) $ ( x109 ) ) ) ) $ ( if d103 then d78 else d103 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then x112 else Bool ) ) ) $ ( if false then Bool else Bool )
        d111 = if if true then false else p1 then if p1 then false else d43 else if false then d33 else p1
    d113 : if false then if true then Bool else Bool else if false then Bool else Bool
    d113 = ( ( M.d76 ) $ ( ( ( M.d103 ) $ ( false ) ) $ ( false ) ) ) $ ( if true then true else false )
    d114 : if true then if false then Bool else Bool else if false then Bool else Bool
    d114 = ( ( M.d102 ) $ ( if d113 then true else true ) ) $ ( ( ( M.d88 ) $ ( d113 ) ) $ ( false ) )
    d115 : if true then if true then Bool else Bool else if true then Bool else Bool
    d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> x117 ) ) ) $ ( d114 ) ) ) ) $ ( if d113 then true else false )
    d118 : if true then if true then Bool else Bool else if false then Bool else Bool
    d118 = if if d114 then true else d114 then if false then d115 else false else if false then true else d114
    d119 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( M.d39 ) $ ( if d115 then x120 else x120 ) ) $ ( if x120 then true else false ) ) ) ) $ ( if true then true else d113 )
    d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then x123 else x123 ) ) ) $ ( if false then Bool else Bool )
    d122 = ( ( M.d101 ) $ ( if d115 then d113 else d115 ) ) $ ( ( ( M.d101 ) $ ( true ) ) $ ( d114 ) )
    d124 : if false then if false then Bool else Bool else if true then Bool else Bool
    d124 = if if d114 then d114 else true then if d115 then d118 else d113 else if d118 then d115 else false
    d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d125 = if if d113 then false else false then if d113 then true else false else if true then true else false
    d128 : if false then if true then Bool else Bool else if false then Bool else Bool
    d128 = if if d118 then true else d122 then if true then false else d125 else if true then true else false
    d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d129 = ( ( M.d95 ) $ ( ( ( M.d103 ) $ ( d113 ) ) $ ( true ) ) ) $ ( if d119 then d114 else d113 )
    d131 : if true then if true then Bool else Bool else if false then Bool else Bool
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( M.d111 ) $ ( if true then x132 else false ) ) $ ( if x132 then x132 else false ) ) ) ) $ ( if d115 then d125 else true )
    d133 : if true then if false then Bool else Bool else if false then Bool else Bool
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> if true then x134 else true ) ) ) $ ( if true then false else d129 )
    d135 : if true then if true then Bool else Bool else if false then Bool else Bool
    d135 = ( ( M.d95 ) $ ( ( ( M.d83 ) $ ( d119 ) ) $ ( d131 ) ) ) $ ( if false then d128 else d114 )
    d136 : if false then if false then Bool else Bool else if false then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( M.d88 ) $ ( if x137 then d122 else true ) ) $ ( if false then d114 else d115 ) ) ) ) $ ( if d114 then d135 else true )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x139 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( x139 ) ) ) ) $ ( if true then Bool else Bool )
    d138 = ( ( M.d68 ) $ ( ( ( M.d55 ) $ ( d119 ) ) $ ( d129 ) ) ) $ ( if d124 then d131 else d115 )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x143 -> ( ( Set -> Set ) ∋ ( ( λ x144 -> Bool ) ) ) $ ( x143 ) ) ) ) $ ( if false then Bool else Bool )
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> if true then true else x142 ) ) ) $ ( if false then d122 else d128 )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> x147 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> if true then false else false ) ) ) $ ( if d133 then d113 else d141 )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> Bool ) ) ) $ ( x150 ) ) ) ) $ ( if true then Bool else Bool )
    d149 = ( ( M.d33 ) $ ( ( ( M.d33 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d65 ) $ ( true ) ) $ ( d113 ) )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> x154 ) ) ) $ ( x154 ) ) ) ) $ ( if true then Bool else Bool )
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> ( ( M.d33 ) $ ( if x153 then d136 else x153 ) ) $ ( if true then x153 else true ) ) ) ) $ ( if false then false else d124 )
    d156 : if false then if true then Bool else Bool else if false then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( Bool -> Bool ) ∋ ( ( λ x158 -> true ) ) ) $ ( d119 ) ) ) ) $ ( if d141 then true else false )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x162 -> ( ( Set -> Set ) ∋ ( ( λ x163 -> Bool ) ) ) $ ( x162 ) ) ) ) $ ( if false then Bool else Bool )
    d159 = ( ( M.d89 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x160 -> false ) ) ) $ ( d156 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x161 -> false ) ) ) $ ( false ) )
    d164 : if true then if true then Bool else Bool else if true then Bool else Bool
    d164 = ( ( M.d3 ) $ ( if true then d131 else d128 ) ) $ ( if d145 then true else d125 )
    d165 : if true then if true then Bool else Bool else if false then Bool else Bool
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> if x166 then false else false ) ) ) $ ( if true then true else true )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if true then Bool else x169 ) ) ) $ ( if false then Bool else Bool )
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> if x168 then false else x168 ) ) ) $ ( if true then d125 else d114 )
    d170 : if false then if true then Bool else Bool else if false then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> if false then x171 else false ) ) ) $ ( if d152 then d141 else false )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d172 = if if d152 then d164 else true then if d159 then true else false else if d131 then d164 else d136
    d175 : if true then if false then Bool else Bool else if false then Bool else Bool
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> ( ( M.d55 ) $ ( if x176 then d133 else x176 ) ) $ ( if true then d172 else true ) ) ) ) $ ( if false then false else d128 )
    d177 : if true then if false then Bool else Bool else if false then Bool else Bool
    d177 = ( ( M.d83 ) $ ( if d115 then d152 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x178 -> true ) ) ) $ ( d145 ) )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> x181 ) ) ) $ ( x180 ) ) ) ) $ ( if true then Bool else Bool )
    d179 = if if d167 then false else true then if true then false else d172 else if d124 then false else false
    d182 : ( ( Set -> Set ) ∋ ( ( λ x185 -> ( ( Set -> Set ) ∋ ( ( λ x186 -> x185 ) ) ) $ ( x185 ) ) ) ) $ ( if false then Bool else Bool )
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( Bool -> Bool ) ∋ ( ( λ x184 -> x184 ) ) ) $ ( d145 ) ) ) ) $ ( if d179 then d119 else d159 )
    d187 : if true then if true then Bool else Bool else if true then Bool else Bool
    d187 = if if false then false else true then if d152 then d145 else d115 else if d182 then false else false
    d188 : if true then if true then Bool else Bool else if false then Bool else Bool
    d188 = if if d113 then false else false then if d159 then d136 else true else if d187 then d175 else true
    d189 : if false then if true then Bool else Bool else if true then Bool else Bool
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if false then d188 else false ) ) ) $ ( if true then d167 else d177 )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x192 -> ( ( Set -> Set ) ∋ ( ( λ x193 -> x193 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d191 = if if d118 then d138 else true then if false then d135 else true else if false then false else d128
    d194 : if true then if true then Bool else Bool else if true then Bool else Bool
    d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> ( ( Bool -> Bool ) ∋ ( ( λ x196 -> x196 ) ) ) $ ( true ) ) ) ) $ ( if d175 then d172 else d136 )
    d197 : if false then if true then Bool else Bool else if false then Bool else Bool
    d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> ( ( M.d83 ) $ ( if false then d141 else true ) ) $ ( if true then false else x198 ) ) ) ) $ ( if true then d131 else false )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x201 -> if false then x201 else x201 ) ) ) $ ( if false then Bool else Bool )
    d199 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if x200 then d122 else true ) ) ) $ ( if d115 then false else d128 )
    d202 : if true then if false then Bool else Bool else if false then Bool else Bool
    d202 = ( ( Bool -> Bool ) ∋ ( ( λ x203 -> ( ( Bool -> Bool ) ∋ ( ( λ x204 -> d175 ) ) ) $ ( x203 ) ) ) ) $ ( if d118 then d191 else false )
    d205 : ( ( Set -> Set ) ∋ ( ( λ x206 -> ( ( Set -> Set ) ∋ ( ( λ x207 -> x206 ) ) ) $ ( x206 ) ) ) ) $ ( if true then Bool else Bool )
    d205 = if if false then false else d113 then if true then true else false else if true then true else d172
    d208 : ( ( Set -> Set ) ∋ ( ( λ x210 -> ( ( Set -> Set ) ∋ ( ( λ x211 -> Bool ) ) ) $ ( x210 ) ) ) ) $ ( if false then Bool else Bool )
    d208 = ( ( Bool -> Bool ) ∋ ( ( λ x209 -> if true then false else false ) ) ) $ ( if true then d138 else false )