module Size10Test13  where
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
        d3 : if false then if true then Bool else Bool else if false then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if p2 then false else false ) ) ) $ ( if true then p2 else p1 )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if true then Bool else x8 ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> true ) ) ) $ ( x6 ) ) ) ) $ ( if p2 then true else false )
        d9 : if false then if false then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if d5 then d5 else p1 ) ) ) $ ( if d5 then p1 else p1 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then x14 else x14 ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> p2 ) ) ) $ ( false ) ) ) ) $ ( if p2 then p1 else false )
        d15 : if false then if false then Bool else Bool else if false then Bool else Bool
        d15 = if if p1 then d11 else p1 then if d11 then true else p1 else if d9 then p1 else p1
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else Bool ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> d3 ) ) ) $ ( true ) ) ) ) $ ( if d9 then d15 else d3 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> x24 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( d15 ) ) ) ) $ ( if true then p2 else p2 )
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if x26 then x26 else p1 ) ) ) $ ( if d15 then true else p2 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> true ) ) ) $ ( true ) ) ) ) $ ( if d15 then p2 else true )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d31 = if if d16 then false else p1 then if false then d11 else d9 else if p1 then d3 else p1
        d33 : if false then if false then Bool else Bool else if false then Bool else Bool
        d33 = if if false then d11 else true then if d16 then false else true else if d15 then d11 else d27
        d34 : if true then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if true then d20 else d33 then if true then d5 else p1 else if false then p1 else true
        d35 : if true then if false then Bool else Bool else if false then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> d3 ) ) ) $ ( d27 ) ) ) ) $ ( if p2 then p2 else true )
        d38 : if false then if false then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if p2 then p1 else false ) ) ) $ ( if true then false else d11 )
        d40 : if true then if true then Bool else Bool else if true then Bool else Bool
        d40 = if if true then true else false then if false then false else d25 else if d31 then p1 else p2
        d41 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x44 ) ) ) $ ( x43 ) ) ) ) $ ( if false then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if d15 then d3 else true ) ) ) $ ( if p2 then d5 else true )
        d45 : if true then if true then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> p1 ) ) ) $ ( x46 ) ) ) ) $ ( if true then p1 else d15 )
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if true then true else false ) ) ) $ ( if p2 then p2 else d16 )
        d50 : if true then if true then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if d34 then true else p1 ) ) ) $ ( if p1 then true else d20 )
        d52 : if false then if true then Bool else Bool else if true then Bool else Bool
        d52 = if if d41 then true else false then if d5 then p1 else true else if p1 then p2 else p2
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x55 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if p1 then d45 else p2 ) ) ) $ ( if false then true else true )
        d57 : if true then if false then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if d16 then d38 else x58 ) ) ) $ ( if d34 then false else true )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( x61 ) ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d50 then p2 else true ) ) ) $ ( if true then true else p1 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x65 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if p1 then d25 else p2 then if true then p1 else d16 else if d57 then d57 else p2
        d66 : if true then if false then Bool else Bool else if false then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if p2 then d9 else p2 ) ) ) $ ( if true then d5 else d48 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d68 = if if false then p2 else true then if d40 then d5 else d31 else if false then true else false
        d70 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if d27 then d16 else d34 ) ) ) $ ( if p2 then p2 else d3 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d73 = if if true then d41 else p2 then if true then true else d66 else if p1 then false else d48
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> p2 ) ) ) $ ( p2 ) ) ) ) $ ( if d50 then d34 else true )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d80 = if if d38 then p1 else d41 then if d41 then d27 else true else if false then true else p1
        d82 : if false then if true then Bool else Bool else if false then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if false then p2 else true )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if false then x86 else Bool ) ) ) $ ( if false then Bool else Bool )
        d85 = if if d82 then true else p1 then if true then d68 else false else if d50 then false else d41
        d87 : if false then if true then Bool else Bool else if false then Bool else Bool
        d87 = if if true then p2 else p2 then if p1 then true else d25 else if false then p2 else p1
        d88 : if true then if true then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> d53 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then x93 else x93 ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if d20 then d57 else x92 ) ) ) $ ( if true then false else d57 )
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if d15 then p2 else true ) ) ) $ ( if p1 then p1 else p2 )
        d96 : if true then if true then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> x97 ) ) ) $ ( p1 ) ) ) ) $ ( if d20 then p2 else false )
        d99 : if false then if true then Bool else Bool else if true then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if x100 then true else false ) ) ) $ ( if d48 then true else false )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then Bool else x102 ) ) ) $ ( if true then Bool else Bool )
        d101 = if if true then p1 else p2 then if p2 then p1 else d41 else if d68 then true else d35
        d103 : if false then if false then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if p2 then true else x104 ) ) ) $ ( if p1 then d31 else false )
    d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if false then Bool else x107 ) ) ) $ ( if true then Bool else Bool )
    d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if true then false else true ) ) ) $ ( if false then false else false )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if true then Bool else x109 ) ) ) $ ( if true then Bool else Bool )
    d108 = if if d105 then d105 else true then if false then false else d105 else if true then d105 else d105
    d110 : if true then if true then Bool else Bool else if true then Bool else Bool
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> false ) ) ) $ ( x111 ) ) ) ) $ ( if d108 then false else d105 )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if false then x114 else x114 ) ) ) $ ( if true then true else d110 )
    d117 : if false then if true then Bool else Bool else if false then Bool else Bool
    d117 = if if d110 then d110 else d105 then if d110 then d108 else d108 else if d110 then true else false
    d118 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then x120 else x120 ) ) ) $ ( if false then Bool else Bool )
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( M.d66 ) $ ( if x119 then d105 else d110 ) ) $ ( if x119 then true else x119 ) ) ) ) $ ( if d108 then true else d105 )
    d121 : if false then if true then Bool else Bool else if false then Bool else Bool
    d121 = ( ( M.d101 ) $ ( if false then d105 else false ) ) $ ( if true then d118 else d105 )
    d122 : if true then if false then Bool else Bool else if true then Bool else Bool
    d122 = if if d105 then d113 else true then if d105 then d113 else false else if d108 then d110 else false
    d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if false then x124 else Bool ) ) ) $ ( if false then Bool else Bool )
    d123 = if if false then true else false then if d108 then false else d108 else if d110 then true else false
    d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> x127 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d125 = ( ( M.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x126 -> false ) ) ) $ ( false ) ) ) $ ( if false then d105 else d121 )
    d129 : if false then if true then Bool else Bool else if true then Bool else Bool
    d129 = ( ( M.d91 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x130 -> true ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x131 -> d113 ) ) ) $ ( d105 ) )
    d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if false then Bool else x133 ) ) ) $ ( if false then Bool else Bool )
    d132 = if if d108 then d129 else false then if false then d123 else true else if true then d123 else true
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if true then x135 else Bool ) ) ) $ ( if true then Bool else Bool )
    d134 = if if d108 then true else false then if false then d121 else false else if true then d108 else d125
    d136 : if false then if true then Bool else Bool else if false then Bool else Bool
    d136 = if if false then d118 else d105 then if d123 then false else d121 else if d108 then d110 else d117
    d137 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if true then x139 else Bool ) ) ) $ ( if false then Bool else Bool )
    d137 = ( ( M.d15 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x138 -> d113 ) ) ) $ ( d123 ) ) ) $ ( ( ( M.d45 ) $ ( d125 ) ) $ ( d122 ) )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d140 = ( ( M.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x141 -> false ) ) ) $ ( true ) ) ) $ ( if true then true else true )
    d143 : if false then if true then Bool else Bool else if false then Bool else Bool
    d143 = if if false then true else false then if d134 then false else true else if d122 then d105 else false
    d144 : if false then if true then Bool else Bool else if true then Bool else Bool
    d144 = if if d125 then d105 else false then if d110 then false else true else if false then d136 else d137
    d145 : if true then if false then Bool else Bool else if true then Bool else Bool
    d145 = ( ( M.d63 ) $ ( ( ( M.d70 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( M.d91 ) $ ( true ) ) $ ( false ) )
    d146 : if true then if true then Bool else Bool else if true then Bool else Bool
    d146 = ( ( M.d9 ) $ ( ( ( M.d34 ) $ ( d145 ) ) $ ( d140 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x147 -> true ) ) ) $ ( false ) )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> Bool ) ) ) $ ( x149 ) ) ) ) $ ( if false then Bool else Bool )
    d148 = if if false then true else d132 then if false then true else d137 else if d137 then d136 else true
    d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> ( ( Set -> Set ) ∋ ( ( λ x153 -> x152 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d151 = ( ( M.d20 ) $ ( if true then true else true ) ) $ ( if true then d125 else true )
    d154 : if true then if false then Bool else Bool else if true then Bool else Bool
    d154 = if if true then d118 else d134 then if d143 then true else d146 else if d137 then true else false
    d155 : if true then if true then Bool else Bool else if false then Bool else Bool
    d155 = ( ( M.d66 ) $ ( ( ( M.d27 ) $ ( d122 ) ) $ ( true ) ) ) $ ( if d145 then d146 else d121 )
    d156 : if false then if true then Bool else Bool else if true then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> if x157 then d129 else x157 ) ) ) $ ( if d144 then true else true )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x161 -> ( ( Set -> Set ) ∋ ( ( λ x162 -> Bool ) ) ) $ ( x161 ) ) ) ) $ ( if false then Bool else Bool )
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> ( ( Bool -> Bool ) ∋ ( ( λ x160 -> false ) ) ) $ ( true ) ) ) ) $ ( if d140 then d129 else d108 )
    d163 : if true then if true then Bool else Bool else if false then Bool else Bool
    d163 = if if d132 then true else d117 then if d105 then d121 else false else if d146 then d137 else true
    d164 : if true then if true then Bool else Bool else if true then Bool else Bool
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( Bool -> Bool ) ∋ ( ( λ x166 -> true ) ) ) $ ( x165 ) ) ) ) $ ( if false then false else true )
    d167 : if true then if false then Bool else Bool else if false then Bool else Bool
    d167 = ( ( M.d101 ) $ ( ( ( M.d45 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d96 ) $ ( d108 ) ) $ ( false ) )
    d168 : if false then if true then Bool else Bool else if false then Bool else Bool
    d168 = if if d134 then d145 else d151 then if false then true else false else if d137 then d132 else d134
    d169 : ( ( Set -> Set ) ∋ ( ( λ x171 -> if false then x171 else Bool ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( M.d48 ) $ ( if false then true else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( true ) )
    d172 : if false then if true then Bool else Bool else if true then Bool else Bool
    d172 = if if d140 then d129 else false then if false then true else d118 else if false then false else true
    d173 : if true then if true then Bool else Bool else if true then Bool else Bool
    d173 = if if true then d117 else false then if true then true else true else if d105 then d129 else true
    d174 : if true then if false then Bool else Bool else if true then Bool else Bool
    d174 = if if false then d110 else d167 then if false then true else d140 else if d148 then false else true
    d175 : ( ( Set -> Set ) ∋ ( ( λ x177 -> if false then Bool else x177 ) ) ) $ ( if true then Bool else Bool )
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> if x176 then true else x176 ) ) ) $ ( if d123 then true else d123 )
    d178 : if false then if true then Bool else Bool else if true then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> if d137 then x179 else d175 ) ) ) $ ( if d129 then d108 else d158 )
    d180 : if true then if false then Bool else Bool else if true then Bool else Bool
    d180 = ( ( M.d34 ) $ ( if d132 then d121 else d108 ) ) $ ( if true then false else d123 )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x182 -> if false then x182 else x182 ) ) ) $ ( if false then Bool else Bool )
    d181 = if if d137 then true else d140 then if d175 then d145 else false else if d132 then d108 else false
    d183 : if false then if true then Bool else Bool else if false then Bool else Bool
    d183 = ( ( Bool -> Bool ) ∋ ( ( λ x184 -> if x184 then d136 else false ) ) ) $ ( if d164 then d148 else true )
    d185 : if true then if true then Bool else Bool else if true then Bool else Bool
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( M.d41 ) $ ( if false then true else d146 ) ) $ ( if x186 then d158 else d155 ) ) ) ) $ ( if true then d174 else false )