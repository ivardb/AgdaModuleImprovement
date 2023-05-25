module Size20Test5  where
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

    module M ( p1 : if true then ( ( Set -> Set ) ∋ ( ( λ x2 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3 -> Bool ) ) ) $ ( Bool ) ) ( p4 : if false then if false then Bool else Bool else if false then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> x6 ) ) ) $ ( x6 ) ) ) ) $ ( if false then Bool else Bool )
        d5 = if if false then true else p1 then if p1 then p4 else p4 else if p1 then p1 else false
        d8 : if true then if false then Bool else Bool else if false then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if d5 then d5 else d5 ) ) ) $ ( if p4 then d5 else true )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d10 = if if p4 then d5 else true then if d8 then true else p4 else if true then d5 else d5
        d13 : if false then if true then Bool else Bool else if false then Bool else Bool
        d13 = if if true then p1 else d5 then if false then true else p4 else if p1 then false else false
        d14 : if true then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if p1 then d10 else p4 then if true then d8 else false else if p1 then true else true
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d15 = if if true then true else p4 then if true then p4 else true else if d13 then p1 else p4
        d18 : if true then if false then Bool else Bool else if false then Bool else Bool
        d18 = if if p1 then p1 else d8 then if d8 then d10 else p4 else if p4 then d14 else true
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then x20 else Bool ) ) ) $ ( if true then Bool else Bool )
        d19 = if if false then p4 else p4 then if d8 then d15 else d8 else if p4 then true else false
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if d10 then d5 else true ) ) ) $ ( if d18 then p1 else true )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d24 = if if d19 then false else true then if p4 then false else p4 else if true then d18 else p1
        d26 : if false then if true then Bool else Bool else if false then Bool else Bool
        d26 = if if d21 then p4 else p1 then if d18 then d14 else true else if d21 then p4 else p1
        d27 : if false then if false then Bool else Bool else if false then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> x29 ) ) ) $ ( p1 ) ) ) ) $ ( if p4 then p4 else p1 )
        d30 : if true then if true then Bool else Bool else if false then Bool else Bool
        d30 = if if p1 then p4 else p1 then if true then d15 else p4 else if p4 then p1 else false
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d31 = if if true then false else d21 then if p4 then true else d27 else if d8 then p4 else false
        d33 : if false then if false then Bool else Bool else if false then Bool else Bool
        d33 = if if p1 then d15 else false then if d8 then true else p4 else if d30 then false else true
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d34 = if if false then d21 else p1 then if p1 then p1 else false else if d27 then d8 else false
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> false ) ) ) $ ( d30 ) ) ) ) $ ( if p1 then p4 else false )
        d40 : if false then if true then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if false then false else d19 ) ) ) $ ( if false then false else false )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then x43 else x43 ) ) ) $ ( if false then Bool else Bool )
        d42 = if if d19 then d18 else true then if true then p4 else p1 else if p1 then p4 else d21
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if d8 then p1 else p4 ) ) ) $ ( if d42 then d14 else p1 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then x49 else x49 ) ) ) $ ( if false then Bool else Bool )
        d48 = if if d36 then p1 else true then if false then p1 else false else if true then false else p4
        d50 : if false then if true then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> d48 ) ) ) $ ( false ) ) ) ) $ ( if d40 then p1 else p4 )
        d53 : if false then if false then Bool else Bool else if true then Bool else Bool
        d53 = if if p4 then false else p4 then if d31 then d8 else true else if true then true else d36
        d54 : if true then if true then Bool else Bool else if false then Bool else Bool
        d54 = if if false then p1 else true then if p1 then d15 else d40 else if p4 then p1 else false
        d55 : if true then if false then Bool else Bool else if true then Bool else Bool
        d55 = if if p1 then d42 else p4 then if false then false else p1 else if true then true else d34
        d56 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> x58 ) ) ) $ ( p1 ) ) ) ) $ ( if d34 then d15 else p4 )
        d60 : if true then if false then Bool else Bool else if true then Bool else Bool
        d60 = if if true then true else false then if d10 then p1 else d8 else if d34 then p4 else d24
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> Bool ) ) ) $ ( x64 ) ) ) ) $ ( if false then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> d26 ) ) ) $ ( p1 ) ) ) ) $ ( if true then p4 else p1 )
        d66 : if true then if false then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> false ) ) ) $ ( d48 ) ) ) ) $ ( if true then p4 else p1 )
        d69 : if false then if false then Bool else Bool else if true then Bool else Bool
        d69 = if if false then d24 else p4 then if p1 then d21 else d42 else if p4 then p1 else p1
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> Bool ) ) ) $ ( x73 ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if true then d36 else d42 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if false then x76 else x76 ) ) ) $ ( if false then Bool else Bool )
        d75 = if if p1 then p1 else p1 then if true then p1 else d15 else if d48 then d30 else p1
        d77 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then x79 else x79 ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if true then false else d40 ) ) ) $ ( if false then p1 else p4 )
        d80 : if false then if true then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if false then d33 else d14 ) ) ) $ ( if false then true else false )
        d82 : if true then if true then Bool else Bool else if false then Bool else Bool
        d82 = if if true then false else p4 then if p4 then false else true else if p4 then p1 else p4
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d83 = if if d18 then p1 else d27 then if d42 then d13 else true else if p1 then d8 else p1
        d85 : if false then if false then Bool else Bool else if false then Bool else Bool
        d85 = if if true then true else p4 then if true then true else false else if d70 then d55 else d21
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( x87 ) ) ) ) $ ( if false then Bool else Bool )
        d86 = if if d55 then true else d80 then if true then true else p1 else if true then d40 else true
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then Bool else x90 ) ) ) $ ( if true then Bool else Bool )
        d89 = if if p4 then d24 else false then if p1 then p4 else false else if d75 then p1 else true
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else x92 ) ) ) $ ( if false then Bool else Bool )
        d91 = if if false then p4 else d21 then if d89 then false else p1 else if d27 then p1 else false
    d93 : if true then if false then Bool else Bool else if true then Bool else Bool
    d93 = if if true then true else false then if false then true else false else if true then true else true
    d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d94 = if if false then d93 else d93 then if false then false else d93 else if true then d93 else false
    d96 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> x99 ) ) ) $ ( x98 ) ) ) ) $ ( if true then Bool else Bool )
    d96 = ( ( M.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x97 -> false ) ) ) $ ( true ) ) ) $ ( ( ( M.d82 ) $ ( false ) ) $ ( d93 ) )
    d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then Bool else x101 ) ) ) $ ( if true then Bool else Bool )
    d100 = ( ( M.d8 ) $ ( if false then true else false ) ) $ ( ( ( M.d40 ) $ ( true ) ) $ ( false ) )
    d102 : if true then if false then Bool else Bool else if true then Bool else Bool
    d102 = if if false then true else d94 then if d94 then d100 else d93 else if d96 then true else d100
    d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d103 = if if d100 then true else false then if d102 then false else true else if d94 then d96 else d93
    d106 : if true then if false then Bool else Bool else if false then Bool else Bool
    d106 = ( ( M.d15 ) $ ( ( ( M.d27 ) $ ( d96 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x107 -> d94 ) ) ) $ ( d103 ) )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d108 = ( ( M.d24 ) $ ( if d96 then d100 else d94 ) ) $ ( ( ( M.d31 ) $ ( d100 ) ) $ ( d93 ) )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if true then x111 else x111 ) ) ) $ ( if true then Bool else Bool )
    d110 = if if d106 then true else d108 then if d102 then false else d103 else if d106 then d94 else d96
    d112 : if false then if false then Bool else Bool else if false then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> x114 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d103 )
    d115 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( x117 ) ) ) ) $ ( if false then Bool else Bool )
    d115 = ( ( M.d77 ) $ ( if true then d103 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x116 -> false ) ) ) $ ( d102 ) )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then Bool else x122 ) ) ) $ ( if false then Bool else Bool )
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( x120 ) ) ) ) $ ( if true then true else d93 )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if false then x124 else Bool ) ) ) $ ( if false then Bool else Bool )
    d123 = ( ( M.d10 ) $ ( if d93 then d103 else d108 ) ) $ ( ( ( M.d54 ) $ ( d119 ) ) $ ( false ) )
    d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if false then x126 else x126 ) ) ) $ ( if true then Bool else Bool )
    d125 = if if true then d96 else d119 then if true then d108 else false else if false then d115 else false
    d127 : if true then if true then Bool else Bool else if false then Bool else Bool
    d127 = if if true then d110 else d112 then if true then d100 else false else if d100 then true else d96
    d128 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> x131 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( M.d56 ) $ ( if d112 then false else false ) ) $ ( if d106 then x129 else x129 ) ) ) ) $ ( if d103 then true else true )
    d132 : if true then if false then Bool else Bool else if true then Bool else Bool
    d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> if d103 then d115 else true ) ) ) $ ( if true then d128 else d112 )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if false then Bool else x136 ) ) ) $ ( if false then Bool else Bool )
    d134 = ( ( M.d54 ) $ ( ( ( M.d70 ) $ ( d103 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x135 -> false ) ) ) $ ( true ) )
    d137 : if true then if false then Bool else Bool else if false then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( M.d54 ) $ ( if false then false else false ) ) $ ( if false then x138 else d119 ) ) ) ) $ ( if false then true else d134 )
    d139 : if false then if true then Bool else Bool else if false then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x141 -> true ) ) ) $ ( d94 ) ) ) ) $ ( if true then true else d94 )
    d142 : if false then if true then Bool else Bool else if true then Bool else Bool
    d142 = if if d119 then d112 else d110 then if false then d115 else d110 else if false then false else true
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> Bool ) ) ) $ ( x144 ) ) ) ) $ ( if false then Bool else Bool )
    d143 = if if true then d115 else d125 then if false then true else true else if true then true else d100
    d146 : if false then if false then Bool else Bool else if false then Bool else Bool
    d146 = ( ( M.d26 ) $ ( if true then true else d102 ) ) $ ( if true then d100 else d134 )
    d147 : if false then if true then Bool else Bool else if true then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> if d127 then true else x148 ) ) ) $ ( if d110 then true else d93 )
    d149 : if false then if false then Bool else Bool else if true then Bool else Bool
    d149 = ( ( M.d53 ) $ ( if true then d127 else true ) ) $ ( ( ( M.d83 ) $ ( true ) ) $ ( d142 ) )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d150 = if if d110 then d108 else true then if true then true else true else if true then d134 else false
    d153 : ( ( Set -> Set ) ∋ ( ( λ x156 -> ( ( Set -> Set ) ∋ ( ( λ x157 -> Bool ) ) ) $ ( x156 ) ) ) ) $ ( if false then Bool else Bool )
    d153 = ( ( M.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x154 -> x154 ) ) ) $ ( d127 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x155 -> false ) ) ) $ ( true ) )
    d158 : if false then if true then Bool else Bool else if false then Bool else Bool
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> ( ( Bool -> Bool ) ∋ ( ( λ x160 -> true ) ) ) $ ( x159 ) ) ) ) $ ( if false then d93 else d93 )
    d161 : if false then if false then Bool else Bool else if true then Bool else Bool
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( Bool -> Bool ) ∋ ( ( λ x163 -> d153 ) ) ) $ ( x162 ) ) ) ) $ ( if d94 then d125 else d115 )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( Bool -> Bool ) ∋ ( ( λ x166 -> true ) ) ) $ ( d158 ) ) ) ) $ ( if d127 then true else d103 )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x171 -> x170 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d169 = if if d132 then d94 else false then if false then d153 else false else if d110 then true else false
    d172 : if true then if true then Bool else Bool else if false then Bool else Bool
    d172 = if if true then false else false then if d143 then true else true else if d149 then d110 else d110
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> Bool ) ) ) $ ( x174 ) ) ) ) $ ( if true then Bool else Bool )
    d173 = ( ( M.d40 ) $ ( ( ( M.d26 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d40 ) $ ( d164 ) ) $ ( d102 ) )
    d176 : if false then if true then Bool else Bool else if true then Bool else Bool
    d176 = if if d172 then d134 else d134 then if false then d110 else true else if d150 then true else true
    d177 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> x179 ) ) ) $ ( x178 ) ) ) ) $ ( if false then Bool else Bool )
    d177 = if if false then false else d158 then if true then true else d115 else if true then false else d94
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if false then x181 else x181 ) ) ) $ ( if false then Bool else Bool )
    d180 = if if true then d115 else d108 then if false then true else d100 else if d119 then d128 else true
    d182 : if true then if true then Bool else Bool else if false then Bool else Bool
    d182 = if if true then false else d100 then if d172 then false else false else if true then false else d128
    d183 : if true then if true then Bool else Bool else if true then Bool else Bool
    d183 = ( ( Bool -> Bool ) ∋ ( ( λ x184 -> ( ( Bool -> Bool ) ∋ ( ( λ x185 -> x185 ) ) ) $ ( true ) ) ) ) $ ( if d94 then d134 else true )
    d186 : if false then if true then Bool else Bool else if true then Bool else Bool
    d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> ( ( M.d18 ) $ ( if x187 then false else false ) ) $ ( if d102 then x187 else false ) ) ) ) $ ( if d183 then true else true )
    d188 : if false then if false then Bool else Bool else if true then Bool else Bool
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d106 ) ) ) $ ( true ) ) ) ) $ ( if false then d176 else true )