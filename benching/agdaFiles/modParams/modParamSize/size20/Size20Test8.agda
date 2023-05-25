module Size20Test8  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then x3 else Bool ) ) ) $ ( x2 ) ) ) ) $ ( if false then Bool else Bool ) ) ( p4 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( Bool ) )  where
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> Bool ) ) ) $ ( x7 ) ) ) ) $ ( if false then Bool else Bool )
        d6 = if if false then p1 else p4 then if true then true else false else if p1 then p4 else p1
        d9 : if false then if false then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if p4 then true else d6 ) ) ) $ ( if d6 then p1 else d6 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if true then d9 else x12 ) ) ) $ ( if true then false else true )
        d15 : if true then if true then Bool else Bool else if false then Bool else Bool
        d15 = if if true then p1 else p4 then if p4 then true else p4 else if d11 then false else d6
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d16 = if if p1 then d9 else d11 then if p1 then false else p1 else if d11 then d11 else true
        d18 : if false then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> d16 ) ) ) $ ( d9 ) ) ) ) $ ( if d15 then d11 else d15 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d21 = if if true then true else false then if p1 then p1 else d15 else if p1 then d18 else false
        d23 : if true then if true then Bool else Bool else if false then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if false then p4 else p1 ) ) ) $ ( if d21 then d6 else true )
        d25 : if true then if false then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> false ) ) ) $ ( false ) ) ) ) $ ( if p4 then p4 else false )
        d28 : if true then if true then Bool else Bool else if true then Bool else Bool
        d28 = if if true then true else p1 then if d6 then p1 else p4 else if p4 then p1 else false
        d29 : if true then if true then Bool else Bool else if true then Bool else Bool
        d29 = if if true then true else p4 then if false then d18 else p1 else if false then true else true
        d30 : if true then if false then Bool else Bool else if true then Bool else Bool
        d30 = if if p1 then d6 else false then if true then p1 else d28 else if d29 then true else d9
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d31 = if if true then false else d30 then if d18 then false else d11 else if d23 then p1 else p4
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then x35 else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if true then false else x34 ) ) ) $ ( if d31 then p1 else p1 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x39 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if d29 then d9 else false ) ) ) $ ( if p4 then d6 else p4 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if p1 then d30 else p4 ) ) ) $ ( if d29 then d29 else p4 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then x45 else x45 ) ) ) $ ( if true then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if true then p1 else true ) ) ) $ ( if p4 then d23 else true )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d46 = if if true then true else d18 then if false then false else p4 else if p1 then p1 else p4
        d49 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> d15 ) ) ) $ ( false ) ) ) ) $ ( if d36 then d36 else p1 )
        d54 : if false then if false then Bool else Bool else if true then Bool else Bool
        d54 = if if p4 then d16 else d43 then if d15 then d23 else false else if false then true else false
        d55 : if true then if true then Bool else Bool else if true then Bool else Bool
        d55 = if if p1 then false else d33 then if d49 then p4 else true else if true then d40 else true
        d56 : if false then if true then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> false ) ) ) $ ( false ) ) ) ) $ ( if p1 then p4 else d28 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d59 = if if d21 then d49 else d6 then if p4 then d6 else false else if d6 then p1 else true
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if true then x63 else x63 ) ) ) $ ( if false then Bool else Bool )
        d62 = if if d18 then d28 else d21 then if d18 then false else true else if p4 then false else false
        d64 : if false then if true then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> d11 ) ) ) $ ( false ) ) ) ) $ ( if p4 then p4 else p1 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then x68 else Bool ) ) ) $ ( if true then Bool else Bool )
        d67 = if if p4 then p1 else p1 then if p4 then p1 else p1 else if d43 then p1 else d9
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then x70 else x70 ) ) ) $ ( if true then Bool else Bool )
        d69 = if if p1 then d9 else d40 then if true then false else p1 else if p4 then false else p1
        d71 : if false then if false then Bool else Bool else if false then Bool else Bool
        d71 = if if false then d6 else p4 then if true then d33 else d56 else if p1 then false else p1
        d72 : if true then if true then Bool else Bool else if true then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if p1 then d46 else d9 ) ) ) $ ( if p1 then false else d64 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> x75 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d74 = if if d46 then false else d55 then if d16 then true else p4 else if d71 then true else p1
        d77 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then x80 else Bool ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then p4 else true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then x82 else Bool ) ) ) $ ( if true then Bool else Bool )
        d81 = if if d55 then d40 else p1 then if false then p1 else p1 else if false then p1 else d71
        d83 : if false then if true then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if p4 then p4 else false ) ) ) $ ( if p1 then d64 else d55 )
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if p1 then true else true ) ) ) $ ( if p1 then d21 else false )
        d87 : if true then if true then Bool else Bool else if false then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if false then d40 else p1 ) ) ) $ ( if true then d6 else false )
        d89 : if false then if false then Bool else Bool else if true then Bool else Bool
        d89 = if if p1 then true else true then if true then d59 else true else if d46 then p1 else true
        d90 : if false then if true then Bool else Bool else if true then Bool else Bool
        d90 = if if d71 then false else p1 then if p4 then p1 else false else if p4 then false else d49
        d91 : if true then if false then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if true then false else p4 ) ) ) $ ( if false then p1 else true )
        d93 : if true then if false then Bool else Bool else if false then Bool else Bool
        d93 = if if true then true else false then if true then p1 else false else if true then p1 else true
        d94 : if false then if false then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> false ) ) ) $ ( d72 ) ) ) ) $ ( if d36 then p4 else d56 )
    d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d97 = ( ( M.d69 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x98 -> x98 ) ) ) $ ( false ) ) ) $ ( if true then false else false )
    d101 : if false then if true then Bool else Bool else if false then Bool else Bool
    d101 = ( ( M.d83 ) $ ( if true then false else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x102 -> d97 ) ) ) $ ( d97 ) )
    d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else x105 ) ) ) $ ( if false then Bool else Bool )
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if x104 then x104 else d101 ) ) ) $ ( if true then false else false )
    d106 : if false then if false then Bool else Bool else if true then Bool else Bool
    d106 = if if false then false else false then if d101 then d97 else d97 else if d101 then false else true
    d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then x110 else Bool ) ) ) $ ( if false then Bool else Bool )
    d107 = ( ( M.d93 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x108 -> false ) ) ) $ ( d103 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x109 -> x109 ) ) ) $ ( true ) )
    d111 : if false then if true then Bool else Bool else if true then Bool else Bool
    d111 = ( ( M.d72 ) $ ( if false then true else d103 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> false ) ) ) $ ( d103 ) )
    d113 : if false then if false then Bool else Bool else if false then Bool else Bool
    d113 = ( ( M.d23 ) $ ( if false then d107 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d97 ) ) ) $ ( false ) )
    d115 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x117 ) ) ) $ ( x117 ) ) ) ) $ ( if true then Bool else Bool )
    d115 = ( ( M.d64 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x116 -> x116 ) ) ) $ ( d107 ) ) ) $ ( if d103 then d101 else true )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if false then x121 else x121 ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( M.d21 ) $ ( if x120 then d106 else x120 ) ) $ ( if false then x120 else false ) ) ) ) $ ( if d106 then true else true )
    d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d122 = if if false then d113 else d106 then if true then true else d111 else if false then true else true
    d125 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> x129 ) ) ) $ ( x128 ) ) ) ) $ ( if true then Bool else Bool )
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> x127 ) ) ) $ ( d113 ) ) ) ) $ ( if d107 then d107 else d122 )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d130 = if if false then true else d113 then if d97 then false else false else if false then d119 else true
    d132 : if true then if true then Bool else Bool else if false then Bool else Bool
    d132 = ( ( M.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x133 -> false ) ) ) $ ( true ) ) ) $ ( if d111 then true else false )
    d134 : if true then if true then Bool else Bool else if true then Bool else Bool
    d134 = if if d119 then true else false then if d106 then true else false else if false then d130 else d130
    d135 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> x136 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d135 = if if false then true else true then if true then d125 else true else if false then false else d132
    d138 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d138 = if if d97 then false else true then if d119 then d103 else d132 else if true then false else d103
    d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d140 = if if false then d97 else d122 then if false then true else false else if d132 then false else d138
    d143 : ( ( Set -> Set ) ∋ ( ( λ x145 -> ( ( Set -> Set ) ∋ ( ( λ x146 -> x145 ) ) ) $ ( x145 ) ) ) ) $ ( if false then Bool else Bool )
    d143 = ( ( M.d54 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x144 -> x144 ) ) ) $ ( d111 ) ) ) $ ( if d140 then true else false )
    d147 : if true then if true then Bool else Bool else if false then Bool else Bool
    d147 = ( ( M.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x148 -> false ) ) ) $ ( true ) ) ) $ ( ( ( M.d77 ) $ ( false ) ) $ ( d106 ) )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x152 -> ( ( Set -> Set ) ∋ ( ( λ x153 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x151 -> false ) ) ) $ ( x150 ) ) ) ) $ ( if d122 then d143 else true )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d154 = ( ( M.d62 ) $ ( ( ( M.d29 ) $ ( d138 ) ) $ ( true ) ) ) $ ( ( ( M.d43 ) $ ( d97 ) ) $ ( true ) )
    d156 : if true then if true then Bool else Bool else if false then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( M.d89 ) $ ( if x157 then d143 else false ) ) $ ( if d113 then d97 else false ) ) ) ) $ ( if d134 then d125 else d140 )
    d158 : if false then if true then Bool else Bool else if true then Bool else Bool
    d158 = if if false then d103 else d111 then if true then d130 else d135 else if true then true else d97
    d159 : if false then if false then Bool else Bool else if true then Bool else Bool
    d159 = if if d125 then true else d158 then if false then d122 else d158 else if true then d103 else false
    d160 : if false then if true then Bool else Bool else if false then Bool else Bool
    d160 = if if d147 then false else true then if true then d119 else d143 else if d132 then true else false
    d161 : if false then if true then Bool else Bool else if true then Bool else Bool
    d161 = ( ( M.d31 ) $ ( if d107 then false else true ) ) $ ( ( ( M.d9 ) $ ( false ) ) $ ( false ) )
    d162 : if true then if false then Bool else Bool else if true then Bool else Bool
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> ( ( Bool -> Bool ) ∋ ( ( λ x164 -> x163 ) ) ) $ ( true ) ) ) ) $ ( if d101 then d143 else d135 )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x166 -> ( ( Set -> Set ) ∋ ( ( λ x167 -> Bool ) ) ) $ ( x166 ) ) ) ) $ ( if true then Bool else Bool )
    d165 = if if true then false else d122 then if true then d113 else true else if false then true else d160
    d168 : if true then if true then Bool else Bool else if false then Bool else Bool
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> false ) ) ) $ ( d149 ) ) ) ) $ ( if d111 then d101 else false )
    d171 : if true then if false then Bool else Bool else if true then Bool else Bool
    d171 = ( ( M.d43 ) $ ( if d119 then d138 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x172 -> d161 ) ) ) $ ( d107 ) )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> x175 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d173 = if if d140 then d122 else d115 then if false then d107 else true else if d107 then false else d158
    d176 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> x179 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> if x177 then x177 else true ) ) ) $ ( if d143 then true else false )
    d180 : if false then if true then Bool else Bool else if false then Bool else Bool
    d180 = ( ( M.d85 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x181 -> false ) ) ) $ ( d143 ) ) ) $ ( ( ( M.d93 ) $ ( d176 ) ) $ ( true ) )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> Bool ) ) ) $ ( x183 ) ) ) ) $ ( if true then Bool else Bool )
    d182 = if if true then true else false then if d160 then d111 else d176 else if d115 then true else false
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> ( ( Set -> Set ) ∋ ( ( λ x187 -> Bool ) ) ) $ ( x186 ) ) ) ) $ ( if false then Bool else Bool )
    d185 = ( ( M.d59 ) $ ( if true then true else false ) ) $ ( if false then d158 else d103 )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x191 -> Bool ) ) ) $ ( x190 ) ) ) ) $ ( if false then Bool else Bool )
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> if d159 then d134 else false ) ) ) $ ( if d158 then d138 else d113 )
    d192 : if false then if true then Bool else Bool else if false then Bool else Bool
    d192 = ( ( M.d55 ) $ ( ( ( M.d40 ) $ ( false ) ) $ ( d159 ) ) ) $ ( if true then d130 else false )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> x196 ) ) ) $ ( x195 ) ) ) ) $ ( if false then Bool else Bool )
    d193 = ( ( M.d59 ) $ ( if d165 then d182 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x194 -> d165 ) ) ) $ ( false ) )
    d197 : if false then if true then Bool else Bool else if false then Bool else Bool
    d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> if x198 then d154 else false ) ) ) $ ( if false then d162 else d134 )
    d199 : if false then if true then Bool else Bool else if true then Bool else Bool
    d199 = if if false then true else true then if true then true else d125 else if d180 then true else d106