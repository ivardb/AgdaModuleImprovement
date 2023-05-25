module Size10Test7  where
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
        d3 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if true then Bool else x5 ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if false then false else p2 ) ) ) $ ( if p2 then p1 else p1 )
        d6 : if true then if false then Bool else Bool else if true then Bool else Bool
        d6 = if if d3 then true else d3 then if false then d3 else false else if false then false else d3
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> x8 ) ) ) $ ( x8 ) ) ) ) $ ( if false then Bool else Bool )
        d7 = if if p2 then p2 else false then if true then p2 else true else if p1 then d6 else p2
        d10 : if true then if true then Bool else Bool else if true then Bool else Bool
        d10 = if if false then d3 else d6 then if p1 then d7 else true else if p2 then d6 else d6
        d11 : if true then if true then Bool else Bool else if false then Bool else Bool
        d11 = if if d7 then p1 else p1 then if p2 then d7 else false else if true then p2 else false
        d12 : if true then if true then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if true then false else false ) ) ) $ ( if d10 then d7 else d11 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if if false then false else d12 then if d7 then false else p1 else if d11 then d6 else d7
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else x19 ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if p1 then p1 else x18 ) ) ) $ ( if d6 then true else true )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> Bool ) ) ) $ ( x22 ) ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if false then false else false ) ) ) $ ( if d7 then d7 else true )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> x27 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if x25 then false else d20 ) ) ) $ ( if true then p2 else p1 )
        d28 : if true then if true then Bool else Bool else if false then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> d12 ) ) ) $ ( d12 ) ) ) ) $ ( if p1 then false else d10 )
        d31 : if true then if false then Bool else Bool else if true then Bool else Bool
        d31 = if if p1 then false else d10 then if true then false else d24 else if d20 then true else d7
        d32 : if true then if true then Bool else Bool else if true then Bool else Bool
        d32 = if if d17 then true else d20 then if d20 then p1 else false else if true then true else true
        d33 : if true then if false then Bool else Bool else if false then Bool else Bool
        d33 = if if false then p1 else d12 then if true then true else true else if true then true else false
        d34 : if true then if false then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> false ) ) ) $ ( true ) ) ) ) $ ( if p1 then d3 else true )
        d37 : if true then if false then Bool else Bool else if true then Bool else Bool
        d37 = if if p2 then d31 else p1 then if p2 then p1 else true else if p1 then d6 else d34
        d38 : if true then if true then Bool else Bool else if true then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if d7 then true else d20 ) ) ) $ ( if p1 then d20 else false )
        d40 : if false then if true then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if p2 then x41 else true ) ) ) $ ( if p2 then p1 else false )
        d42 : if false then if true then Bool else Bool else if false then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if false then d34 else false ) ) ) $ ( if p2 then p2 else true )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x47 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> d40 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d31 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if true then x52 else x52 ) ) ) $ ( if true then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> d11 ) ) ) $ ( d37 ) ) ) ) $ ( if false then false else d31 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> p2 ) ) ) $ ( x54 ) ) ) ) $ ( if d28 then false else false )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d58 = if if p1 then true else false then if p1 then d49 else d28 else if d49 then d44 else false
        d61 : if false then if true then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if true then d49 else p1 ) ) ) $ ( if false then p2 else true )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( x64 ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if p2 then d40 else d42 then if true then p1 else p2 else if true then p1 else false
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d66 = if if d7 then true else p1 then if d34 then true else p1 else if false then d24 else d58
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d68 = if if d66 then true else p2 then if p1 then d31 else d11 else if d66 then p1 else d34
        d70 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if d14 then p1 else p1 ) ) ) $ ( if p1 then p2 else true )
        d74 : if true then if false then Bool else Bool else if false then Bool else Bool
        d74 = if if false then d24 else true then if false then false else true else if true then true else d70
        d75 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if false then x78 else x78 ) ) ) $ ( if false then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> x76 ) ) ) $ ( false ) ) ) ) $ ( if p2 then true else d11 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then x80 else x80 ) ) ) $ ( if false then Bool else Bool )
        d79 = if if d33 then p1 else false then if p1 then p2 else p2 else if p1 then true else true
        d81 : if true then if false then Bool else Bool else if true then Bool else Bool
        d81 = if if false then d74 else p1 then if true then true else p1 else if p1 then false else false
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( x85 ) ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> false ) ) ) $ ( d6 ) ) ) ) $ ( if d49 then true else d79 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then x88 else x88 ) ) ) $ ( if false then Bool else Bool )
        d87 = if if false then d14 else p2 then if true then d63 else p1 else if p2 then d74 else true
        d89 : if true then if true then Bool else Bool else if false then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> false ) ) ) $ ( x90 ) ) ) ) $ ( if p1 then false else false )
        d92 : if false then if false then Bool else Bool else if true then Bool else Bool
        d92 = if if true then d74 else false then if d31 then d24 else d79 else if p1 then false else p1
        d93 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x97 ) ) ) $ ( x96 ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> false ) ) ) $ ( d38 ) ) ) ) $ ( if p1 then d14 else d31 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d98 = if if d81 then p2 else p2 then if p2 then d37 else false else if false then p1 else p1
        d101 : if true then if true then Bool else Bool else if true then Bool else Bool
        d101 = if if d14 then p2 else d49 then if d93 then p1 else d32 else if true then false else true
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if false then false else d63 ) ) ) $ ( if true then p1 else p1 )
    d106 : if true then if false then Bool else Bool else if false then Bool else Bool
    d106 = if if true then true else true then if true then false else false else if false then false else false
    d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> true ) ) ) $ ( x108 ) ) ) ) $ ( if true then d106 else false )
    d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then x114 else Bool ) ) ) $ ( if false then Bool else Bool )
    d111 = ( ( M.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x113 -> x113 ) ) ) $ ( true ) )
    d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x118 ) ) ) $ ( x118 ) ) ) ) $ ( if false then Bool else Bool )
    d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> true ) ) ) $ ( x116 ) ) ) ) $ ( if d111 then d111 else d106 )
    d120 : if false then if false then Bool else Bool else if false then Bool else Bool
    d120 = if if true then d115 else true then if true then false else true else if true then false else d115
    d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x124 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> x123 ) ) ) $ ( x122 ) ) ) ) $ ( if d115 then d107 else d120 )
    d126 : if true then if false then Bool else Bool else if true then Bool else Bool
    d126 = ( ( M.d40 ) $ ( if false then true else d111 ) ) $ ( ( ( M.d98 ) $ ( d115 ) ) $ ( d107 ) )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> x128 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d127 = ( ( M.d87 ) $ ( ( ( M.d89 ) $ ( d115 ) ) $ ( false ) ) ) $ ( if d106 then d126 else d111 )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> x132 ) ) ) $ ( x132 ) ) ) ) $ ( if true then Bool else Bool )
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> ( ( M.d82 ) $ ( if true then x131 else x131 ) ) $ ( if true then x131 else x131 ) ) ) ) $ ( if false then true else true )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if true then x135 else x135 ) ) ) $ ( if false then Bool else Bool )
    d134 = if if false then d127 else false then if d111 then d126 else d115 else if false then true else d120
    d136 : if false then if true then Bool else Bool else if false then Bool else Bool
    d136 = if if true then d121 else false then if true then d127 else d106 else if false then d111 else d106
    d137 : if false then if true then Bool else Bool else if true then Bool else Bool
    d137 = ( ( M.d14 ) $ ( ( ( M.d3 ) $ ( true ) ) $ ( true ) ) ) $ ( if false then true else false )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> Bool ) ) ) $ ( x140 ) ) ) ) $ ( if false then Bool else Bool )
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> ( ( M.d58 ) $ ( if d130 then d127 else x139 ) ) $ ( if true then x139 else false ) ) ) ) $ ( if d134 then true else d107 )
    d142 : if true then if true then Bool else Bool else if true then Bool else Bool
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> ( ( Bool -> Bool ) ∋ ( ( λ x144 -> d120 ) ) ) $ ( x143 ) ) ) ) $ ( if d134 then d126 else d134 )
    d145 : if false then if false then Bool else Bool else if false then Bool else Bool
    d145 = ( ( M.d98 ) $ ( if d121 then false else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x146 -> x146 ) ) ) $ ( false ) )
    d147 : if true then if false then Bool else Bool else if false then Bool else Bool
    d147 = if if true then false else d115 then if d136 then d120 else false else if d127 then false else d127
    d148 : ( ( Set -> Set ) ∋ ( ( λ x151 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( M.d61 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x149 -> x149 ) ) ) $ ( d147 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( d136 ) )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x153 -> if false then x153 else x153 ) ) ) $ ( if false then Bool else Bool )
    d152 = ( ( M.d37 ) $ ( ( ( M.d82 ) $ ( d148 ) ) $ ( d134 ) ) ) $ ( if false then true else true )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> if false then Bool else x155 ) ) ) $ ( if true then Bool else Bool )
    d154 = if if false then false else true then if d121 then true else true else if d121 then d148 else false
    d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> x157 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d156 = ( ( M.d17 ) $ ( ( ( M.d70 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d63 ) $ ( d126 ) ) $ ( false ) )
    d159 : if false then if false then Bool else Bool else if false then Bool else Bool
    d159 = if if d115 then d142 else d147 then if true then false else true else if d148 then true else false
    d160 : if true then if false then Bool else Bool else if true then Bool else Bool
    d160 = if if d148 then d107 else false then if true then false else d154 else if true then false else d156
    d161 : if false then if false then Bool else Bool else if true then Bool else Bool
    d161 = ( ( M.d101 ) $ ( if d142 then true else true ) ) $ ( ( ( M.d66 ) $ ( d136 ) ) $ ( false ) )
    d162 : if false then if false then Bool else Bool else if true then Bool else Bool
    d162 = ( ( M.d74 ) $ ( if true then false else d106 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x163 -> x163 ) ) ) $ ( false ) )
    d164 : if true then if true then Bool else Bool else if true then Bool else Bool
    d164 = if if d134 then d130 else d156 then if false then true else d148 else if d115 then true else d121
    d165 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if false then x166 else x166 ) ) ) $ ( if true then Bool else Bool )
    d165 = if if false then d130 else d111 then if false then true else true else if d160 then d106 else true
    d167 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if true then x169 else x169 ) ) ) $ ( if true then Bool else Bool )
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> if false then d137 else d160 ) ) ) $ ( if d147 then true else d159 )
    d170 : if true then if true then Bool else Bool else if true then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> if x171 then x171 else d121 ) ) ) $ ( if true then false else false )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> Bool ) ) ) $ ( x174 ) ) ) ) $ ( if false then Bool else Bool )
    d172 = ( ( Bool -> Bool ) ∋ ( ( λ x173 -> if d148 then false else true ) ) ) $ ( if false then true else d121 )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x177 -> if false then Bool else x177 ) ) ) $ ( if false then Bool else Bool )
    d176 = ( ( M.d20 ) $ ( ( ( M.d20 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d28 ) $ ( true ) ) $ ( d164 ) )
    d178 : if false then if true then Bool else Bool else if false then Bool else Bool
    d178 = ( ( M.d6 ) $ ( ( ( M.d58 ) $ ( true ) ) $ ( true ) ) ) $ ( if false then true else d170 )
    d179 : if false then if false then Bool else Bool else if false then Bool else Bool
    d179 = if if d130 then d134 else d106 then if d106 then d120 else d121 else if d111 then true else d154
    d180 : ( ( Set -> Set ) ∋ ( ( λ x182 -> ( ( Set -> Set ) ∋ ( ( λ x183 -> Bool ) ) ) $ ( x182 ) ) ) ) $ ( if false then Bool else Bool )
    d180 = ( ( M.d58 ) $ ( ( ( M.d49 ) $ ( d120 ) ) $ ( d172 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x181 -> false ) ) ) $ ( d176 ) )
    d184 : if false then if false then Bool else Bool else if true then Bool else Bool
    d184 = ( ( M.d89 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x185 -> x185 ) ) ) $ ( d111 ) ) ) $ ( ( ( M.d10 ) $ ( false ) ) $ ( true ) )
    d186 : if true then if true then Bool else Bool else if true then Bool else Bool
    d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> if x187 then true else x187 ) ) ) $ ( if true then d170 else false )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x191 -> x190 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( M.d82 ) $ ( if false then true else x189 ) ) $ ( if x189 then x189 else false ) ) ) ) $ ( if d111 then true else false )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x194 -> if false then Bool else x194 ) ) ) $ ( if false then Bool else Bool )
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> ( ( M.d6 ) $ ( if d138 then d160 else false ) ) $ ( if true then true else x193 ) ) ) ) $ ( if true then d159 else d106 )
    d195 : if false then if false then Bool else Bool else if false then Bool else Bool
    d195 = ( ( M.d49 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x196 -> true ) ) ) $ ( d159 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x197 -> x197 ) ) ) $ ( false ) )
    d198 : ( ( Set -> Set ) ∋ ( ( λ x199 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> x199 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d198 = if if false then d159 else true then if true then false else true else if d160 then d159 else false
    d201 : ( ( Set -> Set ) ∋ ( ( λ x204 -> ( ( Set -> Set ) ∋ ( ( λ x205 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d201 = ( ( M.d24 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x202 -> false ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x203 -> true ) ) ) $ ( false ) )