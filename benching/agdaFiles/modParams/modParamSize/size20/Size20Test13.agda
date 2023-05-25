module Size20Test13  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else Bool ) ) ) $ ( if false then Bool else Bool ) ) ( p3 : if false then if false then Bool else Bool else if true then Bool else Bool )  where
        d4 : if false then if true then Bool else Bool else if false then Bool else Bool
        d4 = if if true then true else true then if p1 then true else p1 else if p1 then true else false
        d5 : if false then if false then Bool else Bool else if false then Bool else Bool
        d5 = if if p3 then d4 else p3 then if false then p1 else true else if p1 then true else false
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then Bool else x9 ) ) ) $ ( if true then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> d4 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d5 else p3 )
        d10 : if true then if false then Bool else Bool else if false then Bool else Bool
        d10 = if if d4 then false else p3 then if d4 then d5 else false else if p3 then false else d4
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> x13 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d11 = if if d10 then d5 else d10 then if true then p3 else d4 else if d5 then d10 else p1
        d14 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if true then Bool else x17 ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> p1 ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then p1 else true )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else Bool ) ) ) $ ( if true then Bool else Bool )
        d18 = if if true then true else d6 then if d14 then d14 else p3 else if d11 then true else d4
        d20 : if true then if true then Bool else Bool else if false then Bool else Bool
        d20 = if if d14 then p3 else true then if p3 then p1 else false else if false then d11 else p1
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then x22 else Bool ) ) ) $ ( if true then Bool else Bool )
        d21 = if if d4 then true else true then if false then d5 else true else if p3 then true else d4
        d23 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if false then x24 else true ) ) ) $ ( if true then false else false )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then x28 else x28 ) ) ) $ ( if true then Bool else Bool )
        d27 = if if d11 then false else d10 then if p3 then d23 else false else if p3 then true else p3
        d29 : if true then if true then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if d14 then x30 else d27 ) ) ) $ ( if p1 then p3 else false )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if true then p1 else true ) ) ) $ ( if p3 then d23 else p1 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if true then x36 else x36 ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if true then d29 else true ) ) ) $ ( if d21 then p3 else d10 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x40 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if false then p3 else d20 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then Bool else x43 ) ) ) $ ( if true then Bool else Bool )
        d42 = if if d6 then d5 else d14 then if d14 then d4 else d37 else if d34 then p3 else p3
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then Bool else x45 ) ) ) $ ( if false then Bool else Bool )
        d44 = if if false then p3 else true then if p3 then d18 else p3 else if true then d5 else d18
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> x47 ) ) ) $ ( d31 ) ) ) ) $ ( if true then d14 else p1 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d51 = if if true then p1 else true then if p3 then p1 else p3 else if d46 then true else p1
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x55 ) ) ) $ ( x55 ) ) ) ) $ ( if false then Bool else Bool )
        d54 = if if false then p3 else d51 then if d6 then p3 else p3 else if false then true else d37
        d57 : if true then if true then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> x59 ) ) ) $ ( d44 ) ) ) ) $ ( if p1 then p1 else d5 )
        d60 : if true then if false then Bool else Bool else if true then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if d14 then false else d27 ) ) ) $ ( if p1 then d31 else true )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then x63 else Bool ) ) ) $ ( if true then Bool else Bool )
        d62 = if if true then true else p3 then if false then d4 else p3 else if true then p3 else p3
        d64 : if false then if false then Bool else Bool else if false then Bool else Bool
        d64 = if if d5 then d14 else p3 then if p3 then false else d27 else if true then true else false
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x67 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if p1 then false else p3 ) ) ) $ ( if p3 then false else p1 )
        d69 : if false then if false then Bool else Bool else if true then Bool else Bool
        d69 = if if p3 then d46 else d34 then if true then p3 else d64 else if true then p3 else true
        d70 : if false then if false then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if p3 then true else d29 ) ) ) $ ( if p1 then false else p1 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then x73 else x73 ) ) ) $ ( if true then Bool else Bool )
        d72 = if if true then false else p1 then if true then d4 else p1 else if true then d44 else true
        d74 : if true then if true then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if p3 then x75 else d60 ) ) ) $ ( if false then d21 else d34 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( x77 ) ) ) ) $ ( if false then Bool else Bool )
        d76 = if if d14 then d64 else false then if d65 then true else p1 else if p3 then p1 else d14
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x83 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> false ) ) ) $ ( d60 ) ) ) ) $ ( if d72 then d70 else true )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( x85 ) ) ) ) $ ( if false then Bool else Bool )
        d84 = if if d62 then d11 else p3 then if d6 then p3 else p3 else if d10 then true else d29
        d87 : if false then if false then Bool else Bool else if true then Bool else Bool
        d87 = if if false then false else p3 then if d64 then false else d14 else if d5 then p1 else d23
        d88 : if false then if false then Bool else Bool else if true then Bool else Bool
        d88 = if if false then false else false then if p3 then p1 else true else if p3 then false else false
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d89 = if if p1 then true else true then if d57 then p3 else p1 else if d20 then p1 else d60
        d91 : if true then if false then Bool else Bool else if false then Bool else Bool
        d91 = if if p1 then d5 else true then if p3 then p1 else d44 else if p1 then d6 else p3
        d92 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( x94 ) ) ) ) $ ( if false then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if d31 then true else p1 ) ) ) $ ( if d64 then true else d57 )
        d96 : if false then if true then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if d54 then d89 else x97 ) ) ) $ ( if p1 then true else true )
        d98 : if false then if true then Bool else Bool else if true then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> x99 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then p1 else d84 )
        d101 : if false then if true then Bool else Bool else if false then Bool else Bool
        d101 = if if d10 then p1 else p3 then if p1 then p3 else false else if d20 then p1 else d54
    d102 : if true then if true then Bool else Bool else if true then Bool else Bool
    d102 = if if false then true else true then if true then false else false else if false then true else false
    d103 : if false then if true then Bool else Bool else if false then Bool else Bool
    d103 = if if d102 then false else false then if false then true else d102 else if true then d102 else d102
    d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then x106 else x106 ) ) ) $ ( if false then Bool else Bool )
    d104 = ( ( M.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x105 -> false ) ) ) $ ( false ) ) ) $ ( if d103 then true else d103 )
    d107 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d107 = ( ( M.d96 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x108 -> d103 ) ) ) $ ( d104 ) ) ) $ ( if d102 then false else true )
    d111 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if false then x113 else Bool ) ) ) $ ( if false then Bool else Bool )
    d111 = ( ( M.d92 ) $ ( if d102 then false else d102 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( d104 ) )
    d114 : if true then if true then Bool else Bool else if false then Bool else Bool
    d114 = if if false then d111 else false then if true then d104 else d107 else if true then true else true
    d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d115 = if if d114 then d107 else d103 then if false then false else d111 else if false then true else d107
    d117 : if true then if true then Bool else Bool else if true then Bool else Bool
    d117 = if if d107 then d104 else false then if d114 then d102 else d111 else if false then d114 else false
    d118 : if true then if false then Bool else Bool else if true then Bool else Bool
    d118 = if if false then false else true then if d114 then d104 else true else if d115 then d107 else false
    d119 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if true then x121 else Bool ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if d114 then x120 else d115 ) ) ) $ ( if d103 then d103 else true )
    d122 : if false then if false then Bool else Bool else if true then Bool else Bool
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( M.d34 ) $ ( if x123 then false else x123 ) ) $ ( if d118 then x123 else x123 ) ) ) ) $ ( if d119 then false else d118 )
    d124 : if true then if false then Bool else Bool else if false then Bool else Bool
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if d117 then false else d122 ) ) ) $ ( if true then false else d102 )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> Bool ) ) ) $ ( x127 ) ) ) ) $ ( if true then Bool else Bool )
    d126 = if if d124 then true else d104 then if d119 then false else d118 else if false then d107 else false
    d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d129 = if if false then d124 else d107 then if d115 then false else d119 else if d118 then d118 else true
    d132 : if false then if true then Bool else Bool else if true then Bool else Bool
    d132 = if if false then false else false then if true then false else false else if false then false else false
    d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> if true then x134 else x134 ) ) ) $ ( if true then Bool else Bool )
    d133 = ( ( M.d62 ) $ ( ( ( M.d4 ) $ ( d129 ) ) $ ( d118 ) ) ) $ ( ( ( M.d54 ) $ ( d104 ) ) $ ( d124 ) )
    d135 : ( ( Set -> Set ) ∋ ( ( λ x137 -> ( ( Set -> Set ) ∋ ( ( λ x138 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d135 = ( ( M.d57 ) $ ( if false then d122 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x136 -> false ) ) ) $ ( true ) )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> x140 ) ) ) $ ( x140 ) ) ) ) $ ( if true then Bool else Bool )
    d139 = ( ( M.d76 ) $ ( if d102 then true else d103 ) ) $ ( ( ( M.d46 ) $ ( true ) ) $ ( d111 ) )
    d142 : if true then if true then Bool else Bool else if true then Bool else Bool
    d142 = if if d135 then d104 else true then if false then false else false else if d124 then d126 else d126
    d143 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if true then x145 else Bool ) ) ) $ ( if false then Bool else Bool )
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> if d118 then d102 else false ) ) ) $ ( if d103 then d104 else false )
    d146 : if false then if false then Bool else Bool else if true then Bool else Bool
    d146 = if if false then d132 else d111 then if d102 then false else true else if d132 then false else true
    d147 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then x150 else Bool ) ) ) $ ( if true then Bool else Bool )
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( Bool -> Bool ) ∋ ( ( λ x149 -> x148 ) ) ) $ ( x148 ) ) ) ) $ ( if false then true else true )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x153 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( M.d27 ) $ ( if d114 then x152 else x152 ) ) $ ( if x152 then x152 else x152 ) ) ) ) $ ( if d118 then true else d132 )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> ( ( Set -> Set ) ∋ ( ( λ x156 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d154 = if if false then d122 else true then if true then d126 else d129 else if false then true else false
    d157 : if true then if false then Bool else Bool else if false then Bool else Bool
    d157 = ( ( M.d42 ) $ ( ( ( M.d64 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d91 ) $ ( true ) ) $ ( d151 ) )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if true then x160 else x160 ) ) ) $ ( if true then Bool else Bool )
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> ( ( M.d21 ) $ ( if true then true else false ) ) $ ( if d119 then x159 else true ) ) ) ) $ ( if true then d124 else true )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x164 -> if true then x164 else x164 ) ) ) $ ( if false then Bool else Bool )
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( Bool -> Bool ) ∋ ( ( λ x163 -> d115 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d122 )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> x167 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> if false then false else false ) ) ) $ ( if d118 then true else d151 )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x171 -> ( ( Set -> Set ) ∋ ( ( λ x172 -> x172 ) ) ) $ ( x171 ) ) ) ) $ ( if true then Bool else Bool )
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( M.d62 ) $ ( if x170 then d122 else true ) ) $ ( if x170 then x170 else false ) ) ) ) $ ( if false then d104 else true )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if true then Bool else x174 ) ) ) $ ( if false then Bool else Bool )
    d173 = ( ( M.d23 ) $ ( ( ( M.d98 ) $ ( d132 ) ) $ ( d104 ) ) ) $ ( if d102 then true else d151 )
    d175 : if true then if true then Bool else Bool else if false then Bool else Bool
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> if d151 then d161 else true ) ) ) $ ( if d142 then d102 else d157 )
    d177 : if false then if true then Bool else Bool else if true then Bool else Bool
    d177 = if if false then d119 else false then if false then false else d151 else if true then d104 else true
    d178 : ( ( Set -> Set ) ∋ ( ( λ x179 -> if false then x179 else x179 ) ) ) $ ( if false then Bool else Bool )
    d178 = if if d132 then false else d115 then if false then true else true else if false then true else true
    d180 : if false then if false then Bool else Bool else if false then Bool else Bool
    d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> ( ( Bool -> Bool ) ∋ ( ( λ x182 -> true ) ) ) $ ( false ) ) ) ) $ ( if d115 then d124 else true )
    d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> ( ( Set -> Set ) ∋ ( ( λ x185 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d183 = if if false then d111 else d111 then if d139 then d129 else true else if d161 then false else d104
    d186 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if true then x187 else x187 ) ) ) $ ( if false then Bool else Bool )
    d186 = if if false then d169 else true then if d173 then false else d117 else if d124 then d143 else d132
    d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d188 = if if true then d124 else d165 then if true then false else false else if true then true else true
    d190 : ( ( Set -> Set ) ∋ ( ( λ x192 -> if true then x192 else x192 ) ) ) $ ( if true then Bool else Bool )
    d190 = ( ( Bool -> Bool ) ∋ ( ( λ x191 -> ( ( M.d54 ) $ ( if d173 then d102 else x191 ) ) $ ( if true then x191 else x191 ) ) ) ) $ ( if true then d151 else true )
    d193 : if false then if false then Bool else Bool else if false then Bool else Bool
    d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> ( ( Bool -> Bool ) ∋ ( ( λ x195 -> d190 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
    d196 : if false then if true then Bool else Bool else if false then Bool else Bool
    d196 = ( ( M.d79 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x197 -> false ) ) ) $ ( false ) ) ) $ ( ( ( M.d101 ) $ ( d142 ) ) $ ( d186 ) )