module Size10Test3  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : if false then Bool else Bool )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then x6 else x6 ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if true then false else p1 ) ) ) $ ( if p3 then p1 else p3 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if true then x8 else x8 ) ) ) $ ( if false then Bool else Bool )
        d7 = if if d4 then d4 else p3 then if d4 then d4 else false else if false then true else d4
        d9 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if false then true else p3 ) ) ) $ ( if p1 then d4 else p3 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> Bool ) ) ) $ ( x13 ) ) ) ) $ ( if true then Bool else Bool )
        d12 = if if false then d4 else d4 then if false then p1 else true else if false then p3 else d4
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then d4 else p1 )
        d20 : if true then if true then Bool else Bool else if false then Bool else Bool
        d20 = if if false then p1 else p3 then if false then p3 else d12 else if true then p1 else true
        d21 : if false then if false then Bool else Bool else if true then Bool else Bool
        d21 = if if false then d12 else p1 then if p1 then d9 else d4 else if p3 then d9 else p3
        d22 : if false then if false then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d21 ) ) ) $ ( d7 ) ) ) ) $ ( if false then true else false )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if false then x26 else x26 ) ) ) $ ( if false then Bool else Bool )
        d25 = if if d22 then p1 else d4 then if d15 then true else true else if p1 then p3 else p3
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d27 = if if p1 then p1 else p3 then if d7 then p1 else p1 else if d20 then p3 else p3
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else x30 ) ) ) $ ( if false then Bool else Bool )
        d29 = if if p1 then true else true then if d7 then p1 else d25 else if true then p1 else false
        d31 : if true then if true then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if d21 then false else true ) ) ) $ ( if p1 then false else p3 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then x34 else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = if if p1 then false else d7 then if false then p3 else p3 else if p3 then p3 else p3
        d35 : if false then if false then Bool else Bool else if false then Bool else Bool
        d35 = if if p3 then d15 else d22 then if p3 then true else d27 else if d12 then false else true
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x39 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if d25 then p1 else d27 ) ) ) $ ( if true then d9 else p1 )
        d40 : if false then if true then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if x41 then x41 else d35 ) ) ) $ ( if p3 then d12 else d4 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x43 ) ) ) $ ( x43 ) ) ) ) $ ( if false then Bool else Bool )
        d42 = if if d20 then false else true then if p1 then true else p3 else if p3 then p3 else p3
        d45 : if true then if false then Bool else Bool else if true then Bool else Bool
        d45 = if if false then p3 else p3 then if p1 then true else d12 else if false then true else d27
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if true then Bool else x47 ) ) ) $ ( if false then Bool else Bool )
        d46 = if if p3 then false else p1 then if p1 then d20 else d22 else if p3 then d4 else p3
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> Bool ) ) ) $ ( x50 ) ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if p1 then p3 else true ) ) ) $ ( if d40 then p1 else false )
        d52 : if false then if false then Bool else Bool else if true then Bool else Bool
        d52 = if if p3 then p3 else true then if d29 then true else true else if p1 then d12 else false
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> x54 ) ) ) $ ( x54 ) ) ) ) $ ( if false then Bool else Bool )
        d53 = if if false then p1 else d36 then if d35 then true else p3 else if true then true else d12
        d56 : if false then if false then Bool else Bool else if true then Bool else Bool
        d56 = if if true then false else p1 then if true then false else p1 else if p1 then false else true
        d57 : if true then if false then Bool else Bool else if true then Bool else Bool
        d57 = if if p3 then p3 else false then if true then false else p1 else if p1 then d22 else d22
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if false then Bool else x59 ) ) ) $ ( if false then Bool else Bool )
        d58 = if if p1 then true else false then if p1 then d52 else true else if false then p3 else false
        d60 : if true then if false then Bool else Bool else if false then Bool else Bool
        d60 = if if false then d7 else p1 then if false then p1 else p1 else if d27 then p3 else d21
        d61 : if true then if true then Bool else Bool else if true then Bool else Bool
        d61 = if if d45 then true else p1 then if true then p3 else p3 else if p1 then true else true
        d62 : if false then if false then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> p1 ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then p1 else p3 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d65 = if if d27 then d56 else p3 then if p1 then true else p1 else if p3 then p3 else p1
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then x69 else x69 ) ) ) $ ( if false then Bool else Bool )
        d68 = if if true then false else false then if true then d29 else false else if d20 then true else d48
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if false then x71 else Bool ) ) ) $ ( if false then Bool else Bool )
        d70 = if if d65 then p3 else false then if false then d61 else true else if false then p3 else p3
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d72 = if if p1 then true else d12 then if d25 then p3 else true else if d31 then true else d48
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( x75 ) ) ) ) $ ( if false then Bool else Bool )
        d74 = if if true then p1 else p3 then if d65 then p1 else p3 else if d33 then d53 else d72
        d77 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if p1 then false else p3 ) ) ) $ ( if d61 then d56 else false )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if false then x83 else x83 ) ) ) $ ( if false then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if x82 then p3 else true ) ) ) $ ( if false then d62 else true )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if true then x85 else x85 ) ) ) $ ( if false then Bool else Bool )
        d84 = if if p1 then d42 else false then if p3 then false else p3 else if p3 then d15 else p1
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( x87 ) ) ) ) $ ( if true then Bool else Bool )
        d86 = if if p1 then true else true then if true then d22 else p1 else if d81 then true else d29
        d89 : if false then if true then Bool else Bool else if false then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if p3 then d25 else false ) ) ) $ ( if p1 then p3 else p1 )
        d91 : if true then if true then Bool else Bool else if true then Bool else Bool
        d91 = if if false then d52 else p1 then if p1 then true else d81 else if d56 then p3 else d52
        d92 : if true then if false then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> false ) ) ) $ ( false ) ) ) ) $ ( if p3 then p1 else p1 )
    d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if true then x96 else true ) ) ) $ ( if true then false else true )
    d99 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d99 = ( ( M.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( d95 ) ) ) $ ( ( ( M.d27 ) $ ( false ) ) $ ( d95 ) )
    d102 : if true then if true then Bool else Bool else if false then Bool else Bool
    d102 = if if false then d99 else d99 then if d95 then false else false else if true then false else d99
    d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if x104 then x104 else x104 ) ) ) $ ( if d102 then true else d102 )
    d107 : if true then if true then Bool else Bool else if true then Bool else Bool
    d107 = if if true then d95 else true then if true then true else d103 else if d95 then true else d95
    d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if true then x109 else x109 ) ) ) $ ( if true then Bool else Bool )
    d108 = if if d107 then true else d103 then if d95 then false else d103 else if false then d99 else d107
    d110 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then x113 else Bool ) ) ) $ ( if false then Bool else Bool )
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> x111 ) ) ) $ ( true ) ) ) ) $ ( if true then d95 else d107 )
    d114 : if false then if true then Bool else Bool else if false then Bool else Bool
    d114 = if if true then d110 else d110 then if false then true else d107 else if d110 then true else d107
    d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then x116 else x116 ) ) ) $ ( if true then Bool else Bool )
    d115 = if if d102 then d103 else d110 then if d114 then true else d108 else if d95 then true else d95
    d117 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> x118 ) ) ) $ ( x118 ) ) ) ) $ ( if d102 then d99 else d115 )
    d122 : if true then if false then Bool else Bool else if false then Bool else Bool
    d122 = if if d107 then d95 else true then if d110 then d117 else d115 else if d110 then true else d115
    d123 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if false then x126 else Bool ) ) ) $ ( if true then Bool else Bool )
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> x124 ) ) ) $ ( false ) ) ) ) $ ( if d117 then false else d108 )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( Bool -> Bool ) ∋ ( ( λ x129 -> x128 ) ) ) $ ( d122 ) ) ) ) $ ( if d108 then false else d102 )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if true then x133 else x133 ) ) ) $ ( if false then Bool else Bool )
    d131 = ( ( M.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x132 -> true ) ) ) $ ( d95 ) ) ) $ ( ( ( M.d21 ) $ ( d99 ) ) $ ( false ) )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> ( ( M.d52 ) $ ( if d108 then true else d110 ) ) $ ( if x135 then x135 else false ) ) ) ) $ ( if d102 then true else d95 )
    d137 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> Bool ) ) ) $ ( x138 ) ) ) ) $ ( if false then Bool else Bool )
    d137 = if if true then d131 else d122 then if d134 then true else d114 else if d115 then true else d123
    d140 : if false then if true then Bool else Bool else if true then Bool else Bool
    d140 = if if d107 then false else d107 then if d115 then d110 else d99 else if d115 then d134 else d134
    d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if false then x142 else Bool ) ) ) $ ( if false then Bool else Bool )
    d141 = if if d107 then false else true then if false then false else false else if d107 then true else true
    d143 : if true then if true then Bool else Bool else if true then Bool else Bool
    d143 = ( ( M.d20 ) $ ( ( ( M.d4 ) $ ( d122 ) ) $ ( d127 ) ) ) $ ( ( ( M.d9 ) $ ( d107 ) ) $ ( d99 ) )
    d144 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if false then Bool else x145 ) ) ) $ ( if true then Bool else Bool )
    d144 = if if d103 then d99 else d117 then if false then d140 else true else if d107 then d107 else false
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if false then x147 else Bool ) ) ) $ ( if true then Bool else Bool )
    d146 = if if true then false else false then if d114 then d141 else d122 else if d103 then d137 else d117
    d148 : if false then if false then Bool else Bool else if true then Bool else Bool
    d148 = if if d122 then d115 else true then if false then d137 else d146 else if d134 then false else d140
    d149 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> x152 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if d143 then d99 else x150 ) ) ) $ ( if d140 then false else d131 )
    d153 : if false then if false then Bool else Bool else if true then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( Bool -> Bool ) ∋ ( ( λ x155 -> x154 ) ) ) $ ( d99 ) ) ) ) $ ( if false then d144 else d149 )
    d156 : if false then if false then Bool else Bool else if true then Bool else Bool
    d156 = ( ( M.d52 ) $ ( if d110 then d140 else true ) ) $ ( ( ( M.d46 ) $ ( d102 ) ) $ ( d110 ) )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x159 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> Bool ) ) ) $ ( x159 ) ) ) ) $ ( if false then Bool else Bool )
    d157 = ( ( Bool -> Bool ) ∋ ( ( λ x158 -> if true then d123 else false ) ) ) $ ( if d141 then true else d146 )
    d161 : if true then if true then Bool else Bool else if true then Bool else Bool
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( Bool -> Bool ) ∋ ( ( λ x163 -> d140 ) ) ) $ ( x162 ) ) ) ) $ ( if d153 then false else d95 )
    d164 : if true then if true then Bool else Bool else if false then Bool else Bool
    d164 = ( ( M.d7 ) $ ( ( ( M.d29 ) $ ( d146 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x165 -> x165 ) ) ) $ ( true ) )
    d166 : if true then if false then Bool else Bool else if false then Bool else Bool
    d166 = if if d137 then true else d156 then if true then d157 else d110 else if d143 then d153 else d140
    d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d167 = if if d108 then d127 else true then if false then true else d149 else if d110 then true else d137
    d169 : ( ( Set -> Set ) ∋ ( ( λ x171 -> ( ( Set -> Set ) ∋ ( ( λ x172 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if d114 then x170 else d167 ) ) ) $ ( if false then d164 else true )
    d173 : if true then if false then Bool else Bool else if true then Bool else Bool
    d173 = if if d153 then d141 else d146 then if false then true else d102 else if d95 then d143 else d117
    d174 : if true then if false then Bool else Bool else if true then Bool else Bool
    d174 = ( ( M.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x175 -> false ) ) ) $ ( true ) ) ) $ ( ( ( M.d31 ) $ ( true ) ) $ ( true ) )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x178 -> if true then x178 else Bool ) ) ) $ ( if true then Bool else Bool )
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( M.d56 ) $ ( if d122 then d131 else true ) ) $ ( if x177 then x177 else x177 ) ) ) ) $ ( if true then d174 else d110 )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x182 -> ( ( Set -> Set ) ∋ ( ( λ x183 -> Bool ) ) ) $ ( x182 ) ) ) ) $ ( if false then Bool else Bool )
    d179 = ( ( M.d29 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( d134 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x181 -> false ) ) ) $ ( true ) )
    d184 : if true then if false then Bool else Bool else if false then Bool else Bool
    d184 = ( ( M.d86 ) $ ( ( ( M.d35 ) $ ( d95 ) ) $ ( true ) ) ) $ ( if false then d115 else true )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if false then Bool else x188 ) ) ) $ ( if true then Bool else Bool )
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( Bool -> Bool ) ∋ ( ( λ x187 -> x186 ) ) ) $ ( d144 ) ) ) ) $ ( if d140 then false else d141 )
    d189 : if false then if false then Bool else Bool else if false then Bool else Bool
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x191 -> d179 ) ) ) $ ( x190 ) ) ) ) $ ( if d173 then d179 else true )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x193 -> ( ( Set -> Set ) ∋ ( ( λ x194 -> x194 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d192 = if if false then false else d166 then if false then d176 else false else if d149 then false else true
    d195 : ( ( Set -> Set ) ∋ ( ( λ x196 -> if true then x196 else x196 ) ) ) $ ( if true then Bool else Bool )
    d195 = if if true then false else false then if d174 then false else d117 else if true then false else d179