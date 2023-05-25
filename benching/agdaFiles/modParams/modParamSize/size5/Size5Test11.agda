module Size5Test11  where
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
        d3 = if if p1 then p2 else false then if true then false else false else if true then false else p2
        d6 : if true then if true then Bool else Bool else if true then Bool else Bool
        d6 = if if false then p1 else p2 then if d3 then true else p2 else if d3 then p2 else p1
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then x8 else Bool ) ) ) $ ( if false then Bool else Bool )
        d7 = if if p2 then d3 else true then if false then p2 else d6 else if false then d3 else d6
        d9 : if false then if false then Bool else Bool else if true then Bool else Bool
        d9 = if if d6 then true else false then if false then false else d3 else if d7 then d3 else p2
        d10 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if false then Bool else x13 ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> x11 ) ) ) $ ( d9 ) ) ) ) $ ( if p1 then p2 else false )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( x16 ) ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if false then x15 else true ) ) ) $ ( if p1 then d10 else p2 )
        d18 : if true then if false then Bool else Bool else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if d3 then p2 else d3 ) ) ) $ ( if p2 then p2 else d14 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> Bool ) ) ) $ ( x22 ) ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if d3 then false else p2 ) ) ) $ ( if p1 then p1 else p2 )
        d24 : if false then if true then Bool else Bool else if false then Bool else Bool
        d24 = if if false then d18 else d18 then if true then false else true else if d9 then d14 else d18
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if true then x26 else Bool ) ) ) $ ( if true then Bool else Bool )
        d25 = if if true then p2 else true then if p2 then true else p2 else if d14 then p2 else p2
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then x28 else x28 ) ) ) $ ( if true then Bool else Bool )
        d27 = if if d9 then false else d14 then if d9 then false else d7 else if d25 then d6 else d7
        d29 : if true then if true then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if p2 then p2 else p2 ) ) ) $ ( if p2 then d24 else d27 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if true then Bool else x32 ) ) ) $ ( if false then Bool else Bool )
        d31 = if if true then d27 else d27 then if d20 then d7 else d7 else if p1 then true else p1
        d33 : if false then if true then Bool else Bool else if true then Bool else Bool
        d33 = if if d10 then d10 else false then if p2 then d20 else true else if false then d27 else d7
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then x35 else x35 ) ) ) $ ( if true then Bool else Bool )
        d34 = if if p1 then d27 else d25 then if d24 then p1 else true else if d31 then d14 else d6
        d36 : if false then if false then Bool else Bool else if true then Bool else Bool
        d36 = if if p1 then p1 else false then if d9 then d27 else d20 else if p2 then false else false
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( x39 ) ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if p1 then p2 else p1 ) ) ) $ ( if false then d33 else d18 )
        d41 : if true then if false then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if p1 then p1 else x42 ) ) ) $ ( if p2 then p2 else false )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> false ) ) ) $ ( d18 ) ) ) ) $ ( if p2 then d20 else false )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x49 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d48 = if if false then false else p1 then if p1 then true else true else if d6 then d34 else false
        d51 : if false then if true then Bool else Bool else if true then Bool else Bool
        d51 = if if d3 then p2 else true then if p1 then p1 else true else if true then p2 else false
        d52 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( x55 ) ) ) ) $ ( if true then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> p2 ) ) ) $ ( false ) ) ) ) $ ( if d6 then true else p2 )
        d57 : if false then if false then Bool else Bool else if false then Bool else Bool
        d57 = if if true then p1 else false then if true then p2 else d34 else if p2 then d24 else d36
        d58 : if false then if false then Bool else Bool else if false then Bool else Bool
        d58 = if if d18 then d57 else true then if false then true else false else if true then p2 else d6
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d59 = if if true then p2 else d48 then if d10 then p2 else p1 else if d27 then true else d14
        d61 : if true then if true then Bool else Bool else if true then Bool else Bool
        d61 = if if p2 then d51 else d25 then if d43 then true else true else if d9 then false else false
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x65 ) ) ) $ ( x64 ) ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if p1 then x63 else x63 ) ) ) $ ( if true then false else true )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if false then x67 else x67 ) ) ) $ ( if false then Bool else Bool )
        d66 = if if p1 then p2 else d31 then if true then true else p1 else if p2 then p2 else p2
        d68 : if false then if true then Bool else Bool else if true then Bool else Bool
        d68 = if if p1 then d25 else false then if p2 then p2 else p2 else if false then p1 else true
        d69 : if true then if false then Bool else Bool else if false then Bool else Bool
        d69 = if if d58 then d62 else p1 then if true then true else d29 else if d18 then d57 else p1
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d70 = if if d7 then true else d33 then if false then p2 else d6 else if d27 then false else d18
        d72 : if true then if false then Bool else Bool else if true then Bool else Bool
        d72 = if if true then d69 else d18 then if d62 then d37 else d7 else if d6 then p1 else true
        d73 : if false then if true then Bool else Bool else if true then Bool else Bool
        d73 = if if d10 then true else p1 then if d10 then false else p2 else if d10 then true else p1
        d74 : if true then if false then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> x76 ) ) ) $ ( p1 ) ) ) ) $ ( if d66 then false else true )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> false ) ) ) $ ( true ) ) ) ) $ ( if d37 then d34 else true )
        d81 : if false then if false then Bool else Bool else if true then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> true ) ) ) $ ( true ) ) ) ) $ ( if p1 then p1 else p1 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d84 = if if p2 then d25 else d9 then if d74 then p1 else p2 else if p2 then d81 else p1
        d86 : if true then if true then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then d6 else d48 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then x90 else Bool ) ) ) $ ( if false then Bool else Bool )
        d89 = if if true then d34 else true then if false then false else p1 else if true then d77 else d70
        d91 : if false then if true then Bool else Bool else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if p1 then true else true ) ) ) $ ( if true then d52 else d89 )
    d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( x94 ) ) ) ) $ ( if true then Bool else Bool )
    d93 = if if true then true else true then if true then true else false else if true then false else true
    d96 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then Bool else x98 ) ) ) $ ( if true then Bool else Bool )
    d96 = ( ( M.d6 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x97 -> x97 ) ) ) $ ( true ) ) ) $ ( if d93 then d93 else false )
    d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d99 = if if false then d93 else true then if true then d93 else false else if d93 then d93 else d93
    d102 : if true then if false then Bool else Bool else if true then Bool else Bool
    d102 = if if false then false else d93 then if false then false else d99 else if false then true else d93
    d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then Bool else x104 ) ) ) $ ( if false then Bool else Bool )
    d103 = if if d99 then d93 else true then if d93 then d102 else true else if true then false else d102
    d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( M.d43 ) $ ( if x106 then true else d99 ) ) $ ( if true then d102 else x106 ) ) ) ) $ ( if false then d93 else true )
    d109 : if false then if true then Bool else Bool else if true then Bool else Bool
    d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> d96 ) ) ) $ ( d105 ) ) ) ) $ ( if true then false else false )
    d112 : if false then if false then Bool else Bool else if false then Bool else Bool
    d112 = if if true then d105 else true then if d109 then d99 else d109 else if d96 then true else false
    d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d113 = ( ( M.d91 ) $ ( ( ( M.d6 ) $ ( d103 ) ) $ ( d103 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d96 ) ) ) $ ( d112 ) )
    d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then Bool else x118 ) ) ) $ ( if false then Bool else Bool )
    d117 = if if false then true else false then if d103 then false else false else if d103 then false else true
    d119 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if false then Bool else x121 ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( M.d27 ) $ ( if d113 then d93 else true ) ) $ ( if d109 then d103 else d99 ) ) ) ) $ ( if true then d102 else d103 )
    d122 : if false then if true then Bool else Bool else if false then Bool else Bool
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> false ) ) ) $ ( x123 ) ) ) ) $ ( if false then false else false )
    d125 : if false then if true then Bool else Bool else if true then Bool else Bool
    d125 = ( ( M.d59 ) $ ( ( ( M.d9 ) $ ( d99 ) ) $ ( d99 ) ) ) $ ( if d122 then d103 else d109 )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> x129 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( M.d31 ) $ ( if d113 then false else d113 ) ) $ ( if x127 then d112 else true ) ) ) ) $ ( if true then d102 else d105 )
    d130 : if false then if false then Bool else Bool else if false then Bool else Bool
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if x131 then d93 else false ) ) ) $ ( if d119 then d113 else false )
    d132 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> x135 ) ) ) $ ( x134 ) ) ) ) $ ( if true then Bool else Bool )
    d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> ( ( M.d52 ) $ ( if x133 then true else d122 ) ) $ ( if x133 then true else true ) ) ) ) $ ( if d103 then d125 else true )
    d136 : if false then if true then Bool else Bool else if true then Bool else Bool
    d136 = ( ( M.d74 ) $ ( ( ( M.d27 ) $ ( false ) ) $ ( true ) ) ) $ ( if false then d125 else false )
    d137 : ( ( Set -> Set ) ∋ ( ( λ x139 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> Bool ) ) ) $ ( x139 ) ) ) ) $ ( if true then Bool else Bool )
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> if x138 then d117 else x138 ) ) ) $ ( if true then d102 else d105 )
    d141 : if false then if true then Bool else Bool else if false then Bool else Bool
    d141 = if if d112 then d122 else true then if d117 then false else true else if false then true else true
    d142 : if false then if false then Bool else Bool else if false then Bool else Bool
    d142 = ( ( M.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x143 -> false ) ) ) $ ( false ) ) ) $ ( ( ( M.d27 ) $ ( true ) ) $ ( d109 ) )
    d144 : if false then if true then Bool else Bool else if true then Bool else Bool
    d144 = if if d137 then d103 else true then if d130 then d109 else d137 else if false then d136 else true
    d145 : if true then if true then Bool else Bool else if true then Bool else Bool
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> if d117 then d119 else true ) ) ) $ ( if d142 then d126 else d93 )
    d147 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> x150 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d147 = ( ( M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x148 -> false ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x149 -> x149 ) ) ) $ ( false ) )
    d152 : if true then if true then Bool else Bool else if true then Bool else Bool
    d152 = if if d112 then d130 else true then if true then false else d112 else if false then d122 else d144
    d153 : if true then if false then Bool else Bool else if true then Bool else Bool
    d153 = if if d105 then true else true then if false then d105 else d112 else if d144 then false else d132
    d154 : ( ( Set -> Set ) ∋ ( ( λ x156 -> ( ( Set -> Set ) ∋ ( ( λ x157 -> Bool ) ) ) $ ( x156 ) ) ) ) $ ( if true then Bool else Bool )
    d154 = ( ( M.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x155 -> true ) ) ) $ ( true ) ) ) $ ( ( ( M.d48 ) $ ( d152 ) ) $ ( d119 ) )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d158 = if if d122 then d153 else false then if false then true else false else if d125 then false else false
    d161 : if false then if false then Bool else Bool else if true then Bool else Bool
    d161 = ( ( M.d37 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x162 -> true ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x163 -> x163 ) ) ) $ ( true ) )
    d164 : if false then if true then Bool else Bool else if true then Bool else Bool
    d164 = if if false then d109 else d132 then if d103 then d142 else d141 else if true then false else true
    d165 : if false then if true then Bool else Bool else if true then Bool else Bool
    d165 = if if true then false else false then if d154 then d152 else true else if false then true else false
    d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if true then x167 else x167 ) ) ) $ ( if true then Bool else Bool )
    d166 = ( ( M.d25 ) $ ( ( ( M.d7 ) $ ( true ) ) $ ( d126 ) ) ) $ ( if d145 then d117 else true )
    d168 : if false then if false then Bool else Bool else if true then Bool else Bool
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> if d96 then d117 else x169 ) ) ) $ ( if d144 then true else d158 )
    d170 : if false then if true then Bool else Bool else if true then Bool else Bool
    d170 = if if d158 then true else false then if false then true else d147 else if d125 then d112 else true
    d171 : if false then if true then Bool else Bool else if true then Bool else Bool
    d171 = ( ( M.d57 ) $ ( ( ( M.d36 ) $ ( false ) ) $ ( false ) ) ) $ ( if d165 then d102 else d119 )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if true then x174 else Bool ) ) ) $ ( if true then Bool else Bool )
    d172 = ( ( Bool -> Bool ) ∋ ( ( λ x173 -> if d105 then false else x173 ) ) ) $ ( if true then false else true )
    d175 : ( ( Set -> Set ) ∋ ( ( λ x177 -> ( ( Set -> Set ) ∋ ( ( λ x178 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> if x176 then x176 else d117 ) ) ) $ ( if d136 then d165 else true )
    d179 : if false then if true then Bool else Bool else if false then Bool else Bool
    d179 = if if d105 then false else d99 then if d170 then false else d144 else if true then d137 else d171
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if true then x181 else x181 ) ) ) $ ( if false then Bool else Bool )
    d180 = if if d154 then false else false then if true then d175 else false else if true then d103 else d105
    d182 : ( ( Set -> Set ) ∋ ( ( λ x184 -> ( ( Set -> Set ) ∋ ( ( λ x185 -> x184 ) ) ) $ ( x184 ) ) ) ) $ ( if false then Bool else Bool )
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( M.d69 ) $ ( if d119 then x183 else false ) ) $ ( if d171 then d180 else false ) ) ) ) $ ( if true then false else d105 )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x188 -> ( ( Set -> Set ) ∋ ( ( λ x189 -> x189 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d186 = ( ( M.d31 ) $ ( if false then d113 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x187 -> d125 ) ) ) $ ( false ) )