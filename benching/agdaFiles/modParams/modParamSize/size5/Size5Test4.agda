module Size5Test4  where
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
        d3 : if false then if true then Bool else Bool else if true then Bool else Bool
        d3 = if if true then p1 else true then if p2 then p2 else p2 else if true then true else p1
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> x7 ) ) ) $ ( x6 ) ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if d3 then d3 else false ) ) ) $ ( if d3 then d3 else d3 )
        d8 : if false then if false then Bool else Bool else if true then Bool else Bool
        d8 = if if p1 then true else true then if false then p1 else d3 else if p2 then false else false
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then Bool else x10 ) ) ) $ ( if false then Bool else Bool )
        d9 = if if false then p2 else p2 then if p2 then d3 else p2 else if d4 then p2 else true
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if false then x14 else Bool ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> false ) ) ) $ ( true ) ) ) ) $ ( if d9 then d4 else p1 )
        d15 : if true then if true then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if false then d11 else false ) ) ) $ ( if false then p2 else d9 )
        d17 : if true then if true then Bool else Bool else if true then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if true then true else false ) ) ) $ ( if d9 then d3 else false )
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = if if d4 then true else false then if p1 then d15 else false else if p2 then false else d3
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> d9 ) ) ) $ ( p1 ) ) ) ) $ ( if true then true else true )
        d25 : if false then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if x26 then p1 else d17 ) ) ) $ ( if p1 then d17 else p1 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> x30 ) ) ) $ ( x30 ) ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> false ) ) ) $ ( x28 ) ) ) ) $ ( if p1 then true else d19 )
        d32 : if true then if false then Bool else Bool else if true then Bool else Bool
        d32 = if if p1 then p2 else true then if false then d19 else d4 else if p1 then d20 else false
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x36 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if true then p2 else d8 ) ) ) $ ( if d3 then d9 else d9 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then Bool else x39 ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if p2 then d20 else p1 ) ) ) $ ( if false then true else false )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> Bool ) ) ) $ ( x41 ) ) ) ) $ ( if true then Bool else Bool )
        d40 = if if false then d4 else p2 then if false then d27 else d25 else if true then false else d32
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> Bool ) ) ) $ ( x44 ) ) ) ) $ ( if true then Bool else Bool )
        d43 = if if p1 then d8 else false then if p1 then d9 else d40 else if true then p2 else d11
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> false ) ) ) $ ( true ) ) ) ) $ ( if p1 then p2 else true )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x54 ) ) ) $ ( x53 ) ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> d11 ) ) ) $ ( d15 ) ) ) ) $ ( if true then p1 else d19 )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if true then Bool else x56 ) ) ) $ ( if false then Bool else Bool )
        d55 = if if false then p2 else d19 then if p2 then d43 else p2 else if p1 then p2 else false
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then x59 else x59 ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if p2 then d55 else d17 ) ) ) $ ( if true then false else p1 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if false then x61 else Bool ) ) ) $ ( if true then Bool else Bool )
        d60 = if if true then true else p2 then if false then false else false else if d19 then p1 else false
        d62 : if true then if true then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> x63 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then false else d27 )
        d65 : if true then if true then Bool else Bool else if true then Bool else Bool
        d65 = if if true then false else p2 then if d32 then false else false else if d55 then p1 else p2
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d66 = if if true then true else p2 then if true then d19 else p2 else if false then d11 else p2
        d68 : if true then if true then Bool else Bool else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if p1 then d33 else d55 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> x72 ) ) ) $ ( x72 ) ) ) ) $ ( if true then Bool else Bool )
        d71 = if if d9 then d50 else p1 then if d65 then p1 else true else if d25 then d37 else false
        d74 : if true then if true then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if true then true else false ) ) ) $ ( if d57 then d40 else true )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then x77 else x77 ) ) ) $ ( if false then Bool else Bool )
        d76 = if if false then true else false then if true then d71 else true else if d60 then p2 else p2
        d78 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x81 ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if true then p2 else d60 ) ) ) $ ( if p2 then d76 else p1 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> p1 ) ) ) $ ( d17 ) ) ) ) $ ( if p2 then false else p2 )
        d87 : if false then if false then Bool else Bool else if true then Bool else Bool
        d87 = if if d68 then p1 else p1 then if true then d76 else p1 else if true then p1 else p2
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( x89 ) ) ) ) $ ( if true then Bool else Bool )
        d88 = if if p1 then p2 else p2 then if true then false else false else if true then d20 else true
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d91 = if if true then false else d71 then if d57 then d25 else d88 else if d8 then p1 else true
        d93 : if true then if false then Bool else Bool else if true then Bool else Bool
        d93 = if if p1 then d76 else true then if p2 then false else true else if true then d46 else true
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x97 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if d78 then d71 else x95 ) ) ) $ ( if false then false else p2 )
        d98 : if false then if true then Bool else Bool else if false then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if false then p2 else d3 ) ) ) $ ( if false then true else p2 )
        d100 : if false then if true then Bool else Bool else if false then Bool else Bool
        d100 = if if p1 then p2 else d33 then if false then d91 else d87 else if true then p2 else d88
        d101 : if true then if true then Bool else Bool else if false then Bool else Bool
        d101 = if if false then true else p1 then if p1 then d20 else d40 else if p1 then d98 else d3
        d102 : if true then if true then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if p2 then p2 else d43 ) ) ) $ ( if p2 then p2 else false )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if true then Bool else x105 ) ) ) $ ( if false then Bool else Bool )
        d104 = if if true then p2 else d15 then if false then false else false else if p1 then true else false
    d106 : if true then if false then Bool else Bool else if false then Bool else Bool
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( M.d66 ) $ ( if x107 then true else false ) ) $ ( if x107 then x107 else x107 ) ) ) ) $ ( if true then true else false )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d108 = if if d106 then d106 else d106 then if true then d106 else true else if true then d106 else d106
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d110 = ( ( M.d94 ) $ ( ( ( M.d3 ) $ ( d108 ) ) $ ( d108 ) ) ) $ ( if d108 then false else d108 )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> x115 ) ) ) $ ( x114 ) ) ) ) $ ( if false then Bool else Bool )
    d113 = if if d106 then d106 else d106 then if false then d110 else true else if d106 then d108 else d110
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if true then x117 else Bool ) ) ) $ ( if false then Bool else Bool )
    d116 = if if true then false else true then if d106 then d110 else d110 else if d113 then d106 else d108
    d118 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( M.d71 ) $ ( if false then false else x119 ) ) $ ( if false then x119 else d106 ) ) ) ) $ ( if d110 then false else d108 )
    d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> Bool ) ) ) $ ( x123 ) ) ) ) $ ( if true then Bool else Bool )
    d122 = if if true then d118 else d116 then if false then true else d106 else if d106 then false else false
    d125 : if false then if true then Bool else Bool else if true then Bool else Bool
    d125 = ( ( M.d46 ) $ ( if d118 then d113 else false ) ) $ ( ( ( M.d20 ) $ ( d110 ) ) $ ( d110 ) )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> x128 ) ) ) $ ( x127 ) ) ) ) $ ( if false then Bool else Bool )
    d126 = ( ( M.d100 ) $ ( ( ( M.d100 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( M.d74 ) $ ( true ) ) $ ( d108 ) )
    d129 : if true then if false then Bool else Bool else if true then Bool else Bool
    d129 = if if d113 then d122 else d108 then if d106 then d106 else true else if d108 then d125 else false
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( x132 ) ) ) ) $ ( if false then Bool else Bool )
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if x131 then d126 else x131 ) ) ) $ ( if d129 then false else d110 )
    d134 : if false then if false then Bool else Bool else if true then Bool else Bool
    d134 = if if d110 then d125 else d122 then if true then d126 else true else if false then false else true
    d135 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if false then x136 else Bool ) ) ) $ ( if false then Bool else Bool )
    d135 = ( ( M.d94 ) $ ( ( ( M.d102 ) $ ( false ) ) $ ( d122 ) ) ) $ ( ( ( M.d11 ) $ ( true ) ) $ ( d130 ) )
    d137 : if false then if true then Bool else Bool else if true then Bool else Bool
    d137 = ( ( M.d15 ) $ ( if false then true else d129 ) ) $ ( ( ( M.d11 ) $ ( false ) ) $ ( false ) )
    d138 : if false then if false then Bool else Bool else if true then Bool else Bool
    d138 = ( ( M.d94 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x139 -> x139 ) ) ) $ ( true ) ) ) $ ( if d110 then d126 else true )
    d140 : if true then if true then Bool else Bool else if true then Bool else Bool
    d140 = if if true then false else d135 then if d134 then d116 else true else if true then d110 else false
    d141 : if true then if false then Bool else Bool else if true then Bool else Bool
    d141 = if if true then d138 else d118 then if d118 then d138 else false else if d134 then d130 else d118
    d142 : if true then if true then Bool else Bool else if false then Bool else Bool
    d142 = ( ( M.d15 ) $ ( ( ( M.d33 ) $ ( d130 ) ) $ ( true ) ) ) $ ( ( ( M.d91 ) $ ( d134 ) ) $ ( d129 ) )
    d143 : if false then if true then Bool else Bool else if true then Bool else Bool
    d143 = ( ( M.d101 ) $ ( if false then true else false ) ) $ ( if false then true else true )
    d144 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if false then x147 else x147 ) ) ) $ ( if true then Bool else Bool )
    d144 = ( ( M.d82 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x145 -> d129 ) ) ) $ ( d113 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x146 -> x146 ) ) ) $ ( d137 ) )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then Bool else x150 ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( M.d43 ) $ ( if x149 then false else x149 ) ) $ ( if d118 then d129 else false ) ) ) ) $ ( if false then true else d135 )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if true then x152 else Bool ) ) ) $ ( if true then Bool else Bool )
    d151 = if if true then false else d118 then if true then d108 else d134 else if d106 then d137 else d116
    d153 : ( ( Set -> Set ) ∋ ( ( λ x156 -> ( ( Set -> Set ) ∋ ( ( λ x157 -> x157 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( Bool -> Bool ) ∋ ( ( λ x155 -> d130 ) ) ) $ ( d122 ) ) ) ) $ ( if d106 then d116 else false )
    d158 : if false then if true then Bool else Bool else if false then Bool else Bool
    d158 = ( ( M.d43 ) $ ( if true then d142 else d137 ) ) $ ( ( ( M.d66 ) $ ( d134 ) ) $ ( false ) )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x161 -> ( ( Set -> Set ) ∋ ( ( λ x162 -> x161 ) ) ) $ ( x161 ) ) ) ) $ ( if true then Bool else Bool )
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( M.d104 ) $ ( if x160 then d110 else true ) ) $ ( if d137 then x160 else d137 ) ) ) ) $ ( if true then true else true )
    d163 : if true then if false then Bool else Bool else if false then Bool else Bool
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> ( ( Bool -> Bool ) ∋ ( ( λ x165 -> true ) ) ) $ ( d130 ) ) ) ) $ ( if d144 then false else d138 )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d166 = if if true then d125 else false then if d140 then d158 else false else if true then d134 else d125
    d168 : if true then if true then Bool else Bool else if false then Bool else Bool
    d168 = if if d151 then d151 else false then if false then true else false else if false then false else d159
    d169 : ( ( Set -> Set ) ∋ ( ( λ x172 -> if true then x172 else Bool ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( M.d101 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x170 -> d122 ) ) ) $ ( d116 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x171 -> d135 ) ) ) $ ( false ) )
    d173 : if false then if false then Bool else Bool else if true then Bool else Bool
    d173 = if if false then d158 else true then if false then false else true else if false then d110 else d125
    d174 : if true then if false then Bool else Bool else if true then Bool else Bool
    d174 = if if true then true else d151 then if d113 then false else d125 else if d137 then d153 else d168
    d175 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> ( ( Bool -> Bool ) ∋ ( ( λ x177 -> false ) ) ) $ ( d174 ) ) ) ) $ ( if false then d137 else false )
    d180 : if false then if false then Bool else Bool else if true then Bool else Bool
    d180 = ( ( M.d46 ) $ ( ( ( M.d88 ) $ ( true ) ) $ ( false ) ) ) $ ( if d158 then d163 else false )
    d181 : if true then if false then Bool else Bool else if false then Bool else Bool
    d181 = if if true then d138 else true then if d166 then d151 else true else if false then true else d122
    d182 : ( ( Set -> Set ) ∋ ( ( λ x184 -> ( ( Set -> Set ) ∋ ( ( λ x185 -> x184 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( M.d60 ) $ ( if d122 then x183 else x183 ) ) $ ( if true then d137 else x183 ) ) ) ) $ ( if false then true else false )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if false then Bool else x187 ) ) ) $ ( if false then Bool else Bool )
    d186 = ( ( M.d104 ) $ ( ( ( M.d60 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d71 ) $ ( d168 ) ) $ ( false ) )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> Bool ) ) ) $ ( x189 ) ) ) ) $ ( if false then Bool else Bool )
    d188 = if if d130 then false else d158 then if false then d174 else false else if d168 then d151 else false
    d191 : if true then if true then Bool else Bool else if false then Bool else Bool
    d191 = ( ( M.d37 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x192 -> false ) ) ) $ ( false ) ) ) $ ( if false then d168 else false )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x195 -> if true then x195 else x195 ) ) ) $ ( if true then Bool else Bool )
    d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> ( ( M.d62 ) $ ( if true then x194 else false ) ) $ ( if false then d153 else d113 ) ) ) ) $ ( if d143 then false else true )
    d196 : if false then if true then Bool else Bool else if true then Bool else Bool
    d196 = ( ( M.d33 ) $ ( ( ( M.d60 ) $ ( d113 ) ) $ ( false ) ) ) $ ( if d141 then true else false )