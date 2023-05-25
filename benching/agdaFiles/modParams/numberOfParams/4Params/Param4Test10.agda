module Param4Test10  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if true then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : if true then if false then Bool else Bool else if true then Bool else Bool
        d5 = if if true then p3 else p2 then if p1 then p1 else false else if false then true else p2
        d6 : if false then if false then Bool else Bool else if true then Bool else Bool
        d6 = if if false then true else false then if d5 then p1 else p1 else if true then true else true
        d7 : if false then if true then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> p3 ) ) ) $ ( d5 ) ) ) ) $ ( if d5 then true else p3 )
        d10 : if false then if true then Bool else Bool else if false then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if x11 then x11 else true ) ) ) $ ( if true then false else p1 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then x15 else Bool ) ) ) $ ( if false then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d6 then p3 else d6 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then x19 else x19 ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> d5 ) ) ) $ ( d5 ) ) ) ) $ ( if d7 then d7 else false )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then x21 else x21 ) ) ) $ ( if false then Bool else Bool )
        d20 = if if p3 then p2 else true then if p4 then true else false else if false then false else false
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( x25 ) ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> false ) ) ) $ ( d16 ) ) ) ) $ ( if true then p3 else p3 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then x30 else Bool ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> false ) ) ) $ ( d16 ) ) ) ) $ ( if false then true else p3 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> x34 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> true ) ) ) $ ( d27 ) ) ) ) $ ( if true then d10 else false )
        d36 : if false then if true then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d31 ) ) ) $ ( false ) ) ) ) $ ( if false then false else p1 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else x40 ) ) ) $ ( if false then Bool else Bool )
        d39 = if if true then p2 else d12 then if d20 then d6 else d31 else if p2 then d12 else false
        d41 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then Bool else x43 ) ) ) $ ( if false then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if false then d20 else false ) ) ) $ ( if false then true else true )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = if if p4 then d20 else true then if false then false else false else if p3 then false else d5
        d46 : if false then if false then Bool else Bool else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if true then true else true ) ) ) $ ( if d36 then d10 else d7 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x51 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> false ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then d10 else d12 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x56 ) ) ) $ ( x55 ) ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if p2 then true else d46 ) ) ) $ ( if true then p1 else true )
        d57 : if true then if false then Bool else Bool else if true then Bool else Bool
        d57 = if if true then d39 else p2 then if p1 then p1 else d39 else if p1 then d44 else d39
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then x59 else Bool ) ) ) $ ( if true then Bool else Bool )
        d58 = if if false then p4 else d7 then if p4 then d36 else d41 else if false then d41 else p2
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then x61 else Bool ) ) ) $ ( if false then Bool else Bool )
        d60 = if if p1 then true else false then if d7 then p1 else p2 else if false then true else false
        d62 : if false then if true then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if p2 then true else true ) ) ) $ ( if d27 then true else true )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> p2 ) ) ) $ ( false ) ) ) ) $ ( if d48 then false else p1 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> x69 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d68 = if if true then true else p3 then if d6 then false else p4 else if d27 then true else d7
        d71 : if false then if true then Bool else Bool else if false then Bool else Bool
        d71 = if if d46 then true else p4 then if false then false else d5 else if d60 then true else p4
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> x75 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if true then d60 else false ) ) ) $ ( if true then true else p4 )
        d76 : if true then if true then Bool else Bool else if true then Bool else Bool
        d76 = if if false then false else true then if d20 then d41 else d48 else if d20 then p4 else d68
        d77 : if true then if true then Bool else Bool else if true then Bool else Bool
        d77 = if if d7 then false else true then if d31 then p2 else d7 else if d10 then d12 else false
        d78 : if true then if false then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if p4 then d27 else d76 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if false then Bool else x83 ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if false then p2 else d7 ) ) ) $ ( if false then true else false )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d84 = if if p4 then true else d5 then if p4 then false else false else if d7 then p2 else d71
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> x89 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d87 = if if p3 then d58 else p2 then if d39 then false else d44 else if d78 then p3 else p3
        d90 : if false then if false then Bool else Bool else if false then Bool else Bool
        d90 = if if p3 then d78 else p2 then if d22 then d48 else false else if p1 then d20 else true
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then x94 else Bool ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> true ) ) ) $ ( true ) ) ) ) $ ( if p4 then d64 else false )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if false then x96 else x96 ) ) ) $ ( if false then Bool else Bool )
        d95 = if if true then d16 else false then if true then d68 else true else if true then true else d41
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if false then x99 else Bool ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if true then d7 else p1 ) ) ) $ ( if true then p2 else false )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x103 ) ) ) $ ( x103 ) ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> true ) ) ) $ ( d6 ) ) ) ) $ ( if p3 then p4 else d31 )
        d105 : if false then if false then Bool else Bool else if true then Bool else Bool
        d105 = if if false then true else d71 then if true then false else d12 else if p3 then true else true
        d106 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if d27 then d57 else true ) ) ) $ ( if false then false else d44 )
        d109 : if false then if false then Bool else Bool else if false then Bool else Bool
        d109 = if if d6 then false else d6 then if p1 then true else p4 else if d68 then p4 else true
        d110 : if false then if true then Bool else Bool else if false then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then false else d48 )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( x114 ) ) ) ) $ ( if false then Bool else Bool )
    d113 = if if false then false else false then if true then false else true else if true then false else false
    d116 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> x119 ) ) ) $ ( x119 ) ) ) ) $ ( if false then Bool else Bool )
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> x118 ) ) ) $ ( d113 ) ) ) ) $ ( if d113 then d113 else true )
    d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> x122 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d121 = if if d116 then false else false then if false then false else d116 else if d116 then false else d116
    d124 : if false then if true then Bool else Bool else if false then Bool else Bool
    d124 = if if true then false else d116 then if d113 then false else d113 else if d113 then false else false
    d125 : if true then if false then Bool else Bool else if true then Bool else Bool
    d125 = if if d121 then false else true then if d116 then true else d116 else if d124 then d124 else d124
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> x128 ) ) ) $ ( x127 ) ) ) ) $ ( if true then Bool else Bool )
    d126 = ( ( ( ( M.d60 ) $ ( true ) ) $ ( d124 ) ) $ ( false ) ) $ ( false )
    d129 : if true then if true then Bool else Bool else if true then Bool else Bool
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( ( ( M.d60 ) $ ( x130 ) ) $ ( x130 ) ) $ ( true ) ) $ ( false ) ) ) ) $ ( if d121 then d113 else false )
    d131 : if false then if false then Bool else Bool else if true then Bool else Bool
    d131 = if if false then false else false then if d124 then d113 else true else if d116 then d125 else d121
    d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if false then Bool else x133 ) ) ) $ ( if true then Bool else Bool )
    d132 = if if true then true else true then if false then d126 else true else if d121 then false else d116
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d134 = if if d124 then d124 else d131 then if d129 then d132 else false else if d125 then d129 else d131
    d137 : if false then if false then Bool else Bool else if true then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( ( ( M.d95 ) $ ( false ) ) $ ( d134 ) ) $ ( d132 ) ) $ ( d131 ) ) ) ) $ ( if d116 then true else true )
    d139 : if false then if true then Bool else Bool else if false then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if d116 then false else d121 ) ) ) $ ( if d113 then true else d137 )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if false then x143 else Bool ) ) ) $ ( if true then Bool else Bool )
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> ( ( ( ( M.d105 ) $ ( d129 ) ) $ ( false ) ) $ ( d139 ) ) $ ( true ) ) ) ) $ ( if d113 then true else true )
    d144 : if false then if true then Bool else Bool else if true then Bool else Bool
    d144 = if if true then false else true then if false then true else d141 else if d137 then true else d139
    d145 : if true then if true then Bool else Bool else if true then Bool else Bool
    d145 = ( ( ( ( M.d20 ) $ ( d134 ) ) $ ( false ) ) $ ( d121 ) ) $ ( false )
    d146 : if true then if false then Bool else Bool else if false then Bool else Bool
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> if true then x147 else x147 ) ) ) $ ( if d139 then false else true )
    d148 : if true then if false then Bool else Bool else if false then Bool else Bool
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( d144 ) ) ) ) $ ( if false then true else false )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> ( ( Set -> Set ) ∋ ( ( λ x153 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d151 = if if d116 then d129 else true then if d132 then d121 else d129 else if d124 then true else false
    d154 : if true then if false then Bool else Bool else if true then Bool else Bool
    d154 = if if true then true else false then if d125 then d126 else false else if true then d125 else false
    d155 : if false then if false then Bool else Bool else if false then Bool else Bool
    d155 = if if false then d145 else d116 then if false then false else false else if true then false else d151
    d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> x158 ) ) ) $ ( x157 ) ) ) ) $ ( if true then Bool else Bool )
    d156 = if if false then true else d154 then if true then d134 else d132 else if d155 then d121 else true
    d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> x160 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d159 = ( ( ( ( M.d90 ) $ ( d141 ) ) $ ( d146 ) ) $ ( d137 ) ) $ ( d121 )
    d162 : if true then if false then Bool else Bool else if true then Bool else Bool
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> ( ( Bool -> Bool ) ∋ ( ( λ x164 -> x164 ) ) ) $ ( x163 ) ) ) ) $ ( if false then d159 else d159 )
    d165 : if true then if false then Bool else Bool else if false then Bool else Bool
    d165 = ( ( ( ( M.d105 ) $ ( d159 ) ) $ ( true ) ) $ ( d154 ) ) $ ( d131 )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> x168 ) ) ) $ ( x167 ) ) ) ) $ ( if false then Bool else Bool )
    d166 = if if d151 then false else true then if true then false else d165 else if d116 then false else false
    d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x171 -> x170 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( ( ( M.d76 ) $ ( d134 ) ) $ ( d129 ) ) $ ( true ) ) $ ( d154 )
    d172 : if true then if false then Bool else Bool else if true then Bool else Bool
    d172 = ( ( ( ( M.d97 ) $ ( true ) ) $ ( true ) ) $ ( d131 ) ) $ ( true )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if true then x174 else Bool ) ) ) $ ( if false then Bool else Bool )
    d173 = if if d132 then false else d131 then if d125 then true else false else if d162 then d156 else false
    d175 : ( ( Set -> Set ) ∋ ( ( λ x176 -> if false then Bool else x176 ) ) ) $ ( if false then Bool else Bool )
    d175 = ( ( ( ( M.d57 ) $ ( d166 ) ) $ ( d116 ) ) $ ( d166 ) ) $ ( d131 )
    d177 : if false then if false then Bool else Bool else if false then Bool else Bool
    d177 = if if d156 then false else d125 then if true then true else true else if true then d159 else false
    d178 : if true then if true then Bool else Bool else if true then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> ( ( ( ( M.d68 ) $ ( d131 ) ) $ ( true ) ) $ ( d175 ) ) $ ( d139 ) ) ) ) $ ( if d165 then false else true )
    d180 : if false then if true then Bool else Bool else if true then Bool else Bool
    d180 = ( ( ( ( M.d91 ) $ ( d178 ) ) $ ( false ) ) $ ( d124 ) ) $ ( true )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x182 -> ( ( Set -> Set ) ∋ ( ( λ x183 -> x182 ) ) ) $ ( x182 ) ) ) ) $ ( if true then Bool else Bool )
    d181 = if if false then true else false then if d177 then true else d166 else if false then d137 else false
    d184 : if false then if false then Bool else Bool else if false then Bool else Bool
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> if d134 then x185 else false ) ) ) $ ( if true then false else d172 )
    d186 : if false then if false then Bool else Bool else if false then Bool else Bool
    d186 = ( ( ( ( M.d20 ) $ ( true ) ) $ ( true ) ) $ ( false ) ) $ ( d144 )
    d187 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if true then x188 else x188 ) ) ) $ ( if true then Bool else Bool )
    d187 = ( ( ( ( M.d110 ) $ ( false ) ) $ ( false ) ) $ ( true ) ) $ ( d132 )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( ( ( M.d7 ) $ ( d159 ) ) $ ( d125 ) ) $ ( d132 ) ) $ ( true ) ) ) ) $ ( if false then true else true )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x195 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> ( ( Bool -> Bool ) ∋ ( ( λ x194 -> false ) ) ) $ ( x193 ) ) ) ) $ ( if true then true else true )
    d196 : if false then if false then Bool else Bool else if false then Bool else Bool
    d196 = ( ( Bool -> Bool ) ∋ ( ( λ x197 -> if true then true else x197 ) ) ) $ ( if true then d192 else false )
    d198 : if false then if false then Bool else Bool else if false then Bool else Bool
    d198 = if if d175 then true else false then if true then d159 else true else if true then false else d155