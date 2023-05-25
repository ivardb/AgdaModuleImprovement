module Param2Test14  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d3 = if if p2 then true else false then if true then true else true else if p2 then p2 else true
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if true then x8 else Bool ) ) ) $ ( if true then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d3 then p1 else p2 ) ) ) $ ( if d3 then false else p1 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> p1 ) ) ) $ ( d3 ) ) ) ) $ ( if true then false else d6 )
        d13 : if true then if true then Bool else Bool else if true then Bool else Bool
        d13 = if if p1 then p1 else p1 then if d6 then d9 else true else if d3 then p2 else p2
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if false then false else false ) ) ) $ ( if p2 then p2 else p1 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then x19 else x19 ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if p2 then x18 else x18 ) ) ) $ ( if d3 then true else p1 )
        d20 : if true then if true then Bool else Bool else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if true then d13 else d17 ) ) ) $ ( if false then p2 else p1 )
        d22 : if true then if false then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> x24 ) ) ) $ ( d9 ) ) ) ) $ ( if p1 then d6 else d13 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if true then x27 else x27 ) ) ) $ ( if false then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if p1 then x26 else d22 ) ) ) $ ( if d20 then p1 else true )
        d28 : if true then if true then Bool else Bool else if true then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( true ) ) ) ) $ ( if p2 then d9 else false )
        d31 : if true then if true then Bool else Bool else if false then Bool else Bool
        d31 = if if false then p2 else d20 then if p1 then p2 else false else if true then d3 else d3
        d32 : if true then if true then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if d6 then d3 else x33 ) ) ) $ ( if p2 then d17 else true )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if p2 then d13 else p2 ) ) ) $ ( if true then p1 else true )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then x39 else x39 ) ) ) $ ( if false then Bool else Bool )
        d38 = if if false then d34 else p2 then if p1 then p2 else true else if d20 then p2 else p2
        d40 : if false then if false then Bool else Bool else if true then Bool else Bool
        d40 = if if false then d20 else p1 then if false then p1 else p1 else if d20 then d28 else d6
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = if if d3 then false else d38 then if true then p2 else true else if true then d13 else p2
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = if if p2 then p1 else d20 then if p2 then false else d17 else if p2 then p1 else d40
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> x45 ) ) ) $ ( x45 ) ) ) ) $ ( if true then Bool else Bool )
        d44 = if if p2 then p2 else false then if false then p1 else p1 else if d32 then false else d40
        d47 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( x49 ) ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if p2 then d31 else d14 ) ) ) $ ( if false then d28 else d17 )
        d51 : if true then if false then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if false then false else d14 ) ) ) $ ( if p1 then d14 else p1 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if p2 then d38 else x54 ) ) ) $ ( if d3 then d51 else true )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> x58 ) ) ) $ ( x57 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if p1 then false else d20 then if p2 then true else false else if d31 then d28 else d40
        d59 : if true then if true then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> x61 ) ) ) $ ( d17 ) ) ) ) $ ( if false then d40 else p1 )
        d62 : if true then if true then Bool else Bool else if true then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> d34 ) ) ) $ ( d6 ) ) ) ) $ ( if d53 then false else p2 )
        d65 : if true then if false then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> false ) ) ) $ ( x66 ) ) ) ) $ ( if false then p1 else d20 )
        d68 : if true then if false then Bool else Bool else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> true ) ) ) $ ( true ) ) ) ) $ ( if p2 then true else p1 )
        d71 : if true then if true then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if d34 then true else true ) ) ) $ ( if true then d22 else d62 )
        d73 : if false then if true then Bool else Bool else if true then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if p1 then d9 else d62 ) ) ) $ ( if p2 then p1 else false )
        d75 : if false then if false then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> d34 ) ) ) $ ( true ) ) ) ) $ ( if false then d6 else d62 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if false then x81 else Bool ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> d14 ) ) ) $ ( p2 ) ) ) ) $ ( if false then d34 else p1 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( x83 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if d25 then d32 else d41 then if p1 then false else true else if p1 then p2 else d22
        d85 : if false then if false then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> d28 ) ) ) $ ( d62 ) ) ) ) $ ( if false then d56 else d25 )
        d88 : if true then if false then Bool else Bool else if false then Bool else Bool
        d88 = if if d20 then p2 else d14 then if p1 then true else p2 else if false then p1 else p1
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d89 = if if p2 then d9 else d88 then if false then true else d32 else if d22 then p2 else true
        d92 : if false then if false then Bool else Bool else if false then Bool else Bool
        d92 = if if d28 then d6 else d82 then if d73 then d34 else false else if false then d53 else true
        d93 : if false then if true then Bool else Bool else if false then Bool else Bool
        d93 = if if d88 then d42 else p1 then if d59 then p2 else p1 else if p1 then true else p2
        d94 : if true then if true then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if false then false else true ) ) ) $ ( if d28 then d92 else d13 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then Bool else x98 ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if true then x97 else false ) ) ) $ ( if p1 then true else false )
        d99 : if false then if true then Bool else Bool else if true then Bool else Bool
        d99 = if if false then d32 else false then if d42 then d56 else true else if true then d62 else p1
        d100 : if true then if false then Bool else Bool else if false then Bool else Bool
        d100 = if if d13 then d82 else p2 then if d65 then false else false else if d6 then p1 else d65
    d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then x102 else Bool ) ) ) $ ( if false then Bool else Bool )
    d101 = ( ( M.d42 ) $ ( ( ( M.d6 ) $ ( false ) ) $ ( true ) ) ) $ ( ( ( M.d94 ) $ ( false ) ) $ ( true ) )
    d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x105 ) ) ) $ ( x104 ) ) ) ) $ ( if true then Bool else Bool )
    d103 = if if true then d101 else d101 then if true then true else false else if d101 then d101 else true
    d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if false then x107 else Bool ) ) ) $ ( if false then Bool else Bool )
    d106 = ( ( M.d59 ) $ ( ( ( M.d51 ) $ ( d103 ) ) $ ( d101 ) ) ) $ ( ( ( M.d96 ) $ ( d101 ) ) $ ( d103 ) )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else x110 ) ) ) $ ( if true then Bool else Bool )
    d108 = ( ( M.d62 ) $ ( if false then d103 else d103 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x109 -> x109 ) ) ) $ ( false ) )
    d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> x114 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> x112 ) ) ) $ ( false ) ) ) ) $ ( if false then d103 else d106 )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d116 = ( ( M.d47 ) $ ( ( ( M.d93 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d47 ) $ ( d101 ) ) $ ( d103 ) )
    d119 : if false then if false then Bool else Bool else if false then Bool else Bool
    d119 = ( ( M.d78 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d101 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x121 -> true ) ) ) $ ( d103 ) )
    d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> Bool ) ) ) $ ( x123 ) ) ) ) $ ( if false then Bool else Bool )
    d122 = ( ( M.d38 ) $ ( if false then d101 else true ) ) $ ( if d103 then false else d106 )
    d125 : if true then if true then Bool else Bool else if false then Bool else Bool
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> d122 ) ) ) $ ( d103 ) ) ) ) $ ( if d116 then true else false )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> x131 ) ) ) $ ( x130 ) ) ) ) $ ( if false then Bool else Bool )
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> if false then true else x129 ) ) ) $ ( if false then d108 else d106 )
    d132 : if true then if true then Bool else Bool else if true then Bool else Bool
    d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> ( ( M.d41 ) $ ( if d116 then true else true ) ) $ ( if true then d119 else x133 ) ) ) ) $ ( if d119 then d128 else d125 )
    d134 : if false then if false then Bool else Bool else if false then Bool else Bool
    d134 = ( ( M.d96 ) $ ( if true then d116 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x135 -> true ) ) ) $ ( false ) )
    d136 : ( ( Set -> Set ) ∋ ( ( λ x138 -> if false then Bool else x138 ) ) ) $ ( if true then Bool else Bool )
    d136 = ( ( M.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x137 -> d119 ) ) ) $ ( d106 ) ) ) $ ( ( ( M.d75 ) $ ( d125 ) ) $ ( d106 ) )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( M.d31 ) $ ( if true then d128 else true ) ) $ ( if x140 then false else x140 ) ) ) ) $ ( if d132 then true else d125 )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> x144 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d143 = if if d122 then d116 else d134 then if true then true else true else if true then d136 else d116
    d146 : if true then if false then Bool else Bool else if false then Bool else Bool
    d146 = ( ( M.d13 ) $ ( if true then false else d108 ) ) $ ( if true then true else d106 )
    d147 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if false then Bool else x148 ) ) ) $ ( if false then Bool else Bool )
    d147 = if if true then d103 else false then if false then true else true else if d134 then d122 else d101
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> x151 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d149 = if if false then d146 else d125 then if true then d116 else true else if true then false else true
    d152 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> x154 ) ) ) $ ( x154 ) ) ) ) $ ( if true then Bool else Bool )
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> ( ( M.d25 ) $ ( if d134 then x153 else true ) ) $ ( if d125 then x153 else x153 ) ) ) ) $ ( if d132 then d134 else d149 )
    d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if true then Bool else x157 ) ) ) $ ( if true then Bool else Bool )
    d156 = ( ( M.d41 ) $ ( if false then false else d134 ) ) $ ( ( ( M.d100 ) $ ( true ) ) $ ( false ) )
    d158 : if false then if false then Bool else Bool else if true then Bool else Bool
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> if d134 then d111 else d128 ) ) ) $ ( if true then false else d106 )
    d160 : if false then if true then Bool else Bool else if true then Bool else Bool
    d160 = ( ( M.d96 ) $ ( ( ( M.d17 ) $ ( true ) ) $ ( d136 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x161 -> x161 ) ) ) $ ( d134 ) )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x165 -> if true then x165 else Bool ) ) ) $ ( if false then Bool else Bool )
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> ( ( Bool -> Bool ) ∋ ( ( λ x164 -> d103 ) ) ) $ ( x163 ) ) ) ) $ ( if d149 then false else true )
    d166 : if false then if false then Bool else Bool else if true then Bool else Bool
    d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> ( ( Bool -> Bool ) ∋ ( ( λ x168 -> false ) ) ) $ ( true ) ) ) ) $ ( if d106 then true else true )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x171 -> x171 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d169 = if if true then d146 else false then if d143 then d134 else true else if true then d128 else true
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> if false then Bool else x173 ) ) ) $ ( if false then Bool else Bool )
    d172 = if if d134 then d122 else false then if d101 then d119 else true else if d162 then d162 else d143
    d174 : if true then if true then Bool else Bool else if true then Bool else Bool
    d174 = ( ( M.d100 ) $ ( if d152 then d139 else d106 ) ) $ ( if d103 then false else false )
    d175 : ( ( Set -> Set ) ∋ ( ( λ x177 -> if true then Bool else x177 ) ) ) $ ( if true then Bool else Bool )
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> if d111 then false else x176 ) ) ) $ ( if d139 then false else d132 )
    d178 : if true then if false then Bool else Bool else if false then Bool else Bool
    d178 = if if true then d116 else true then if true then false else false else if d125 then true else true
    d179 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if false then x181 else Bool ) ) ) $ ( if false then Bool else Bool )
    d179 = ( ( M.d59 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d122 ) ) ) $ ( d147 ) ) ) $ ( ( ( M.d100 ) $ ( false ) ) $ ( false ) )
    d182 : if false then if true then Bool else Bool else if false then Bool else Bool
    d182 = ( ( M.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x183 -> d147 ) ) ) $ ( d172 ) ) ) $ ( ( ( M.d62 ) $ ( true ) ) $ ( d160 ) )
    d184 : ( ( Set -> Set ) ∋ ( ( λ x185 -> ( ( Set -> Set ) ∋ ( ( λ x186 -> Bool ) ) ) $ ( x185 ) ) ) ) $ ( if false then Bool else Bool )
    d184 = if if true then false else true then if false then true else d147 else if true then false else true
    d187 : if false then if false then Bool else Bool else if false then Bool else Bool
    d187 = ( ( M.d75 ) $ ( ( ( M.d85 ) $ ( d160 ) ) $ ( d174 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x188 -> d116 ) ) ) $ ( true ) )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x191 -> Bool ) ) ) $ ( x190 ) ) ) ) $ ( if true then Bool else Bool )
    d189 = ( ( M.d89 ) $ ( ( ( M.d59 ) $ ( d108 ) ) $ ( true ) ) ) $ ( ( ( M.d17 ) $ ( false ) ) $ ( d184 ) )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x195 -> if false then x195 else x195 ) ) ) $ ( if false then Bool else Bool )
    d192 = ( ( M.d3 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x193 -> d175 ) ) ) $ ( d175 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x194 -> d116 ) ) ) $ ( false ) )
    d196 : ( ( Set -> Set ) ∋ ( ( λ x197 -> if false then x197 else x197 ) ) ) $ ( if false then Bool else Bool )
    d196 = if if true then d169 else true then if true then d192 else true else if d158 then true else d149
    d198 : if true then if true then Bool else Bool else if false then Bool else Bool
    d198 = ( ( Bool -> Bool ) ∋ ( ( λ x199 -> if false then x199 else false ) ) ) $ ( if d166 then d134 else false )
    d200 : ( ( Set -> Set ) ∋ ( ( λ x202 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d200 = ( ( M.d94 ) $ ( if false then d116 else d134 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x201 -> d101 ) ) ) $ ( false ) )
    d203 : if true then if true then Bool else Bool else if false then Bool else Bool
    d203 = ( ( Bool -> Bool ) ∋ ( ( λ x204 -> ( ( Bool -> Bool ) ∋ ( ( λ x205 -> true ) ) ) $ ( x204 ) ) ) ) $ ( if d156 then true else false )
    d206 : if true then if true then Bool else Bool else if false then Bool else Bool
    d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> if x207 then x207 else x207 ) ) ) $ ( if false then d125 else d198 )