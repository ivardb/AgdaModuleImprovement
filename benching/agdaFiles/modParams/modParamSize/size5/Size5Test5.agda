module Size5Test5  where
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
        d3 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if true then true else false ) ) ) $ ( if true then true else true )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d6 = if if d3 then d3 else d3 then if p2 then p2 else true else if d3 then p2 else p2
        d9 : if false then if true then Bool else Bool else if true then Bool else Bool
        d9 = if if p1 then p2 else p2 then if true then false else true else if true then d3 else false
        d10 : if false then if true then Bool else Bool else if false then Bool else Bool
        d10 = if if d6 then true else d9 then if d6 then p1 else d9 else if p1 then false else d3
        d11 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if false then false else p2 ) ) ) $ ( if true then true else p1 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then x15 else Bool ) ) ) $ ( if false then Bool else Bool )
        d14 = if if p2 then p1 else false then if d11 then d3 else d10 else if true then p2 else d6
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x17 ) ) ) $ ( x17 ) ) ) ) $ ( if false then Bool else Bool )
        d16 = if if true then false else p2 then if d9 then true else d3 else if true then d11 else p2
        d19 : if false then if false then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> p2 ) ) ) $ ( d9 ) ) ) ) $ ( if d11 then true else false )
        d22 : if false then if false then Bool else Bool else if false then Bool else Bool
        d22 = if if d19 then true else p2 then if false then true else p2 else if d11 then true else p1
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if false then x24 else x24 ) ) ) $ ( if true then Bool else Bool )
        d23 = if if p1 then d11 else true then if d16 then p1 else true else if p2 then p1 else d14
        d25 : if false then if false then Bool else Bool else if true then Bool else Bool
        d25 = if if p1 then p2 else false then if p2 then d9 else true else if d3 then p2 else false
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> x27 ) ) ) $ ( x27 ) ) ) ) $ ( if true then Bool else Bool )
        d26 = if if d23 then p2 else true then if d22 then p2 else d19 else if false then false else p2
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( x32 ) ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> d6 ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then p2 else d16 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d34 = if if p1 then d14 else d3 then if false then p1 else d29 else if d16 then p2 else p2
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( x38 ) ) ) ) $ ( if false then Bool else Bool )
        d37 = if if p1 then d3 else p1 then if true then d29 else p1 else if p2 then p1 else d14
        d40 : if true then if false then Bool else Bool else if true then Bool else Bool
        d40 = if if true then p1 else false then if d29 then p1 else true else if false then p2 else d34
        d41 : if false then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> d34 ) ) ) $ ( d9 ) ) ) ) $ ( if p2 then true else p2 )
        d44 : if false then if false then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> p2 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d47 : if true then if false then Bool else Bool else if true then Bool else Bool
        d47 = if if p2 then false else d25 then if d6 then false else p2 else if p2 then p1 else false
        d48 : if false then if true then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if x49 then x49 else x49 ) ) ) $ ( if p2 then p1 else p2 )
        d50 : if false then if false then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> d10 ) ) ) $ ( x51 ) ) ) ) $ ( if d14 then false else p2 )
        d53 : if true then if true then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> d22 ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then true else p2 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> p2 ) ) ) $ ( p1 ) ) ) ) $ ( if p2 then true else p1 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( x61 ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if if false then d44 else p2 then if true then false else p1 else if true then d56 else d29
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x65 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if d23 then true else d37 then if true then p1 else p1 else if d23 then d29 else d40
        d66 : if false then if false then Bool else Bool else if false then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> d63 ) ) ) $ ( false ) ) ) ) $ ( if p2 then false else p1 )
        d69 : if true then if true then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d41 then p2 else true )
        d72 : if false then if false then Bool else Bool else if true then Bool else Bool
        d72 = if if true then false else p2 then if true then true else false else if p2 then p1 else true
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then x76 else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if d10 then true else false )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if true then x78 else Bool ) ) ) $ ( if true then Bool else Bool )
        d77 = if if d10 then d37 else false then if p1 then p1 else p2 else if false then d16 else d66
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x81 ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d79 = if if false then p2 else d66 then if d19 then true else true else if d22 then d47 else p1
        d82 : if true then if false then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if false then p1 else d63 ) ) ) $ ( if true then d73 else p1 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then Bool else x87 ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> false ) ) ) $ ( x85 ) ) ) ) $ ( if d25 then d69 else d63 )
        d88 : if false then if true then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> false ) ) ) $ ( false ) ) ) ) $ ( if p2 then d40 else false )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else Bool ) ) ) $ ( if true then Bool else Bool )
        d91 = if if false then true else p1 then if p2 then p2 else d79 else if d48 then d79 else d14
        d93 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if false then x95 else Bool ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if d37 then true else true ) ) ) $ ( if d84 then d23 else p2 )
        d96 : if false then if false then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if x97 then p2 else true ) ) ) $ ( if p1 then false else false )
        d98 : if true then if false then Bool else Bool else if true then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if false then true else p1 ) ) ) $ ( if false then d66 else p1 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then x101 else Bool ) ) ) $ ( if false then Bool else Bool )
        d100 = if if false then d6 else d69 then if d98 then p2 else p1 else if d73 then p2 else d25
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d102 = if if false then p1 else p2 then if p2 then d50 else d93 else if d14 then true else p2
    d104 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x107 ) ) ) $ ( x107 ) ) ) ) $ ( if true then Bool else Bool )
    d104 = ( ( M.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x105 -> false ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x106 -> x106 ) ) ) $ ( true ) )
    d109 : if false then if false then Bool else Bool else if true then Bool else Bool
    d109 = ( ( M.d3 ) $ ( ( ( M.d25 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d6 ) $ ( true ) ) $ ( d104 ) )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x111 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d110 = if if true then d109 else d104 then if d109 then true else d109 else if true then d104 else true
    d113 : if false then if true then Bool else Bool else if false then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( M.d48 ) $ ( if x114 then d110 else d104 ) ) $ ( if d110 then d110 else d109 ) ) ) ) $ ( if d110 then d104 else d104 )
    d115 : if false then if false then Bool else Bool else if true then Bool else Bool
    d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> d109 ) ) ) $ ( true ) ) ) ) $ ( if false then d113 else d104 )
    d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d118 = if if false then true else d110 then if false then d115 else d115 else if d110 then false else d115
    d121 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then x123 else x123 ) ) ) $ ( if true then Bool else Bool )
    d121 = ( ( M.d16 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x122 -> true ) ) ) $ ( d109 ) ) ) $ ( ( ( M.d93 ) $ ( d110 ) ) $ ( false ) )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if true then x125 else Bool ) ) ) $ ( if false then Bool else Bool )
    d124 = ( ( M.d73 ) $ ( ( ( M.d84 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( M.d10 ) $ ( true ) ) $ ( d121 ) )
    d126 : if true then if true then Bool else Bool else if false then Bool else Bool
    d126 = if if false then false else true then if d118 then false else d104 else if d115 then d124 else false
    d127 : if true then if true then Bool else Bool else if true then Bool else Bool
    d127 = if if false then true else false then if true then false else false else if d124 then d118 else d109
    d128 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if false then x131 else x131 ) ) ) $ ( if true then Bool else Bool )
    d128 = ( ( M.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x129 -> true ) ) ) $ ( d109 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x130 -> d124 ) ) ) $ ( false ) )
    d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if true then Bool else x133 ) ) ) $ ( if true then Bool else Bool )
    d132 = if if d115 then true else d109 then if true then d118 else d115 else if false then d110 else d127
    d134 : if false then if false then Bool else Bool else if false then Bool else Bool
    d134 = if if false then false else false then if d110 then true else false else if d104 then d113 else true
    d135 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> x137 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d135 = ( ( M.d16 ) $ ( if true then false else false ) ) $ ( if d127 then true else false )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> x141 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d138 = ( ( M.d16 ) $ ( if d118 then false else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x139 -> x139 ) ) ) $ ( d126 ) )
    d142 : if true then if false then Bool else Bool else if true then Bool else Bool
    d142 = ( ( M.d60 ) $ ( if false then true else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x143 -> d124 ) ) ) $ ( d132 ) )
    d144 : if true then if false then Bool else Bool else if true then Bool else Bool
    d144 = ( ( Bool -> Bool ) ∋ ( ( λ x145 -> if true then d124 else true ) ) ) $ ( if false then false else true )
    d146 : if true then if false then Bool else Bool else if true then Bool else Bool
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> ( ( M.d34 ) $ ( if d104 then x147 else false ) ) $ ( if x147 then x147 else true ) ) ) ) $ ( if d113 then true else d124 )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> if true then x149 else x149 ) ) ) $ ( if false then Bool else Bool )
    d148 = if if d138 then true else d132 then if d104 then d109 else d146 else if false then d126 else true
    d150 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if false then Bool else x152 ) ) ) $ ( if false then Bool else Bool )
    d150 = ( ( M.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x151 -> false ) ) ) $ ( d121 ) ) ) $ ( ( ( M.d77 ) $ ( true ) ) $ ( d121 ) )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x155 -> ( ( Set -> Set ) ∋ ( ( λ x156 -> Bool ) ) ) $ ( x155 ) ) ) ) $ ( if false then Bool else Bool )
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( M.d63 ) $ ( if true then d134 else false ) ) $ ( if d113 then false else d113 ) ) ) ) $ ( if false then d150 else d144 )
    d157 : if false then if false then Bool else Bool else if false then Bool else Bool
    d157 = ( ( Bool -> Bool ) ∋ ( ( λ x158 -> ( ( M.d84 ) $ ( if false then d126 else x158 ) ) $ ( if x158 then x158 else x158 ) ) ) ) $ ( if true then true else true )
    d159 : if true then if false then Bool else Bool else if false then Bool else Bool
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x161 -> false ) ) ) $ ( d144 ) ) ) ) $ ( if d150 then d128 else d150 )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> x164 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> if true then d148 else d138 ) ) ) $ ( if d135 then true else false )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> x168 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d166 = ( ( M.d6 ) $ ( if d113 then false else false ) ) $ ( if d118 then d110 else d146 )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x171 -> if false then Bool else x171 ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if x170 then d134 else d148 ) ) ) $ ( if true then false else true )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d172 = if if false then d159 else true then if false then d166 else true else if false then true else true
    d175 : if false then if true then Bool else Bool else if true then Bool else Bool
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> ( ( M.d72 ) $ ( if d157 then d110 else x176 ) ) $ ( if false then d128 else true ) ) ) ) $ ( if d150 then true else true )
    d177 : if true then if false then Bool else Bool else if true then Bool else Bool
    d177 = if if d150 then true else d110 then if d166 then d159 else d175 else if true then true else d172
    d178 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> x180 ) ) ) $ ( x180 ) ) ) ) $ ( if false then Bool else Bool )
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> if d128 then true else d169 ) ) ) $ ( if d153 then d127 else false )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x184 -> ( ( Set -> Set ) ∋ ( ( λ x185 -> x185 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( M.d102 ) $ ( if x183 then d172 else false ) ) $ ( if d132 then x183 else false ) ) ) ) $ ( if d138 then d175 else d150 )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if false then x187 else Bool ) ) ) $ ( if true then Bool else Bool )
    d186 = ( ( M.d100 ) $ ( if true then false else false ) ) $ ( ( ( M.d77 ) $ ( false ) ) $ ( true ) )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d188 = if if d138 then d110 else true then if true then false else false else if d132 then d142 else d166
    d190 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> Bool ) ) ) $ ( x191 ) ) ) ) $ ( if false then Bool else Bool )
    d190 = if if true then true else false then if d127 then true else false else if true then d135 else d127
    d193 : ( ( Set -> Set ) ∋ ( ( λ x194 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d193 = ( ( M.d19 ) $ ( ( ( M.d96 ) $ ( false ) ) $ ( d113 ) ) ) $ ( ( ( M.d102 ) $ ( d146 ) ) $ ( true ) )
    d195 : if true then if true then Bool else Bool else if false then Bool else Bool
    d195 = if if true then d178 else d157 then if d157 then d153 else d169 else if true then false else d144
    d196 : if false then if true then Bool else Bool else if false then Bool else Bool
    d196 = ( ( M.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x197 -> d169 ) ) ) $ ( false ) ) ) $ ( ( ( M.d88 ) $ ( false ) ) $ ( true ) )
    d198 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x201 -> Bool ) ) ) $ ( x200 ) ) ) ) $ ( if false then Bool else Bool )
    d198 = ( ( Bool -> Bool ) ∋ ( ( λ x199 -> if false then x199 else x199 ) ) ) $ ( if d138 then d162 else false )
    d202 : ( ( Set -> Set ) ∋ ( ( λ x203 -> ( ( Set -> Set ) ∋ ( ( λ x204 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d202 = if if d177 then true else false then if d157 then true else d118 else if false then true else d198
    d205 : ( ( Set -> Set ) ∋ ( ( λ x208 -> if false then x208 else x208 ) ) ) $ ( if false then Bool else Bool )
    d205 = ( ( Bool -> Bool ) ∋ ( ( λ x206 -> ( ( Bool -> Bool ) ∋ ( ( λ x207 -> x206 ) ) ) $ ( x206 ) ) ) ) $ ( if true then d190 else d135 )