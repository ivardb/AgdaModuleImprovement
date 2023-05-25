module Size10Test1  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
        d4 : if false then if false then Bool else Bool else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if p1 then p2 else p1 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then x8 else Bool ) ) ) $ ( if false then Bool else Bool )
        d7 = if if p1 then p1 else d4 then if true then false else true else if false then d4 else d4
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then x12 else x12 ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> p1 ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then true else false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then x14 else x14 ) ) ) $ ( if true then Bool else Bool )
        d13 = if if p1 then d7 else p2 then if p2 then p2 else d9 else if true then p2 else false
        d15 : if false then if true then Bool else Bool else if false then Bool else Bool
        d15 = if if d7 then p2 else d9 then if true then p1 else true else if true then false else p2
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if p1 then true else p1 ) ) ) $ ( if d9 then d7 else true )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then x21 else x21 ) ) ) $ ( if false then Bool else Bool )
        d20 = if if p2 then p1 else d16 then if d9 then false else d7 else if p1 then false else d15
        d22 : if true then if false then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> false ) ) ) $ ( p2 ) ) ) ) $ ( if true then d15 else d15 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if p2 then p2 else p1 ) ) ) $ ( if p2 then d7 else true )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else x30 ) ) ) $ ( if true then Bool else Bool )
        d29 = if if p2 then d22 else d7 then if true then p1 else p2 else if p1 then p1 else true
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x32 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d31 = if if d7 then false else d16 then if p2 then d20 else p2 else if true then false else true
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x36 ) ) ) $ ( x35 ) ) ) ) $ ( if false then Bool else Bool )
        d34 = if if p2 then p2 else d7 then if p1 then p1 else d9 else if p2 then false else p1
        d37 : if true then if true then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> x39 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d15 )
        d40 : if false then if false then Bool else Bool else if true then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if d22 then d9 else d4 ) ) ) $ ( if p2 then p1 else d7 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then x43 else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = if if d37 then d13 else d4 then if d9 then true else false else if p1 then p2 else true
        d44 : if true then if false then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if p1 then p1 else x45 ) ) ) $ ( if p1 then p1 else p2 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then x49 else x49 ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d25 ) ) ) $ ( d7 ) ) ) ) $ ( if false then false else false )
        d50 : if false then if false then Bool else Bool else if true then Bool else Bool
        d50 = if if true then d46 else d46 then if false then true else true else if d25 then d34 else true
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if true then x52 else Bool ) ) ) $ ( if false then Bool else Bool )
        d51 = if if p2 then false else false then if false then d9 else d22 else if true then false else d29
        d53 : if true then if false then Bool else Bool else if true then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if x54 then false else true ) ) ) $ ( if true then d46 else p2 )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x57 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d55 = if if p2 then true else d13 then if p2 then d46 else false else if d7 then true else p2
        d58 : if true then if false then Bool else Bool else if true then Bool else Bool
        d58 = if if false then d34 else d37 then if d25 then d9 else false else if d51 then d46 else true
        d59 : if true then if false then Bool else Bool else if false then Bool else Bool
        d59 = if if p1 then p1 else p1 then if p2 then p1 else p2 else if false then d46 else d55
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( x62 ) ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if x61 then p2 else x61 ) ) ) $ ( if d22 then p1 else d15 )
        d64 : if false then if false then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( true ) ) ) ) $ ( if true then p1 else d37 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then x68 else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = if if p1 then p2 else d60 then if true then p2 else d16 else if d55 then false else true
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> Bool ) ) ) $ ( x71 ) ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if p2 then false else d53 ) ) ) $ ( if p1 then d40 else d29 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d73 = if if d58 then p1 else true then if true then true else p2 else if d50 then false else false
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> true ) ) ) $ ( d25 ) ) ) ) $ ( if p2 then d69 else p1 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else x80 ) ) ) $ ( if true then Bool else Bool )
        d79 = if if p2 then p1 else d22 then if true then false else true else if p1 then d50 else p2
        d81 : if true then if false then Bool else Bool else if false then Bool else Bool
        d81 = if if d20 then true else p2 then if p1 then false else true else if true then d73 else p1
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d82 = if if p2 then p1 else p2 then if true then true else d25 else if false then false else p2
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x85 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d84 = if if p1 then p1 else d60 then if false then p1 else p2 else if p2 then p2 else p1
        d87 : if false then if true then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if true then p2 else d76 ) ) ) $ ( if false then p1 else true )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( x90 ) ) ) ) $ ( if false then Bool else Bool )
        d89 = if if d60 then d40 else d50 then if d44 then true else p2 else if false then p1 else true
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x94 ) ) ) $ ( x93 ) ) ) ) $ ( if false then Bool else Bool )
        d92 = if if d34 then p2 else p1 then if d81 then d87 else p2 else if p1 then p1 else false
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then x97 else Bool ) ) ) $ ( if false then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if false then d4 else true ) ) ) $ ( if true then p1 else d46 )
        d98 : if true then if false then Bool else Bool else if false then Bool else Bool
        d98 = if if d64 then p1 else false then if d76 then true else d87 else if p1 then true else p2
        d99 : if false then if false then Bool else Bool else if true then Bool else Bool
        d99 = if if d20 then false else d40 then if d89 then d55 else p1 else if d73 then d79 else false
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d100 = if if p1 then true else d81 then if p2 then d25 else true else if p1 then false else false
    d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then x104 else Bool ) ) ) $ ( if true then Bool else Bool )
    d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( M.d76 ) $ ( if false then false else false ) ) $ ( if x103 then x103 else x103 ) ) ) ) $ ( if true then true else true )
    d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> Bool ) ) ) $ ( x106 ) ) ) ) $ ( if true then Bool else Bool )
    d105 = ( ( M.d82 ) $ ( ( ( M.d81 ) $ ( true ) ) $ ( false ) ) ) $ ( if true then d102 else false )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( x109 ) ) ) ) $ ( if false then Bool else Bool )
    d108 = if if false then d102 else d105 then if true then d102 else d105 else if true then d102 else d105
    d111 : if true then if true then Bool else Bool else if false then Bool else Bool
    d111 = ( ( M.d44 ) $ ( ( ( M.d9 ) $ ( d108 ) ) $ ( d105 ) ) ) $ ( ( ( M.d31 ) $ ( false ) ) $ ( d108 ) )
    d112 : if true then if true then Bool else Bool else if false then Bool else Bool
    d112 = ( ( M.d15 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x113 -> d105 ) ) ) $ ( d108 ) ) ) $ ( if d105 then d108 else true )
    d114 : if true then if false then Bool else Bool else if true then Bool else Bool
    d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> false ) ) ) $ ( d108 ) ) ) ) $ ( if false then d102 else false )
    d117 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d117 = ( ( M.d69 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x118 -> false ) ) ) $ ( d105 ) ) ) $ ( ( ( M.d40 ) $ ( true ) ) $ ( false ) )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( x121 ) ) ) ) $ ( if true then Bool else Bool )
    d120 = if if false then false else false then if d105 then d108 else d117 else if d108 then true else d117
    d123 : if false then if true then Bool else Bool else if false then Bool else Bool
    d123 = ( ( M.d29 ) $ ( if d111 then false else true ) ) $ ( ( ( M.d87 ) $ ( d112 ) ) $ ( true ) )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if true then x126 else x126 ) ) ) $ ( if false then Bool else Bool )
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if false then true else true ) ) ) $ ( if d114 then d120 else d120 )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> Bool ) ) ) $ ( x128 ) ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( M.d7 ) $ ( ( ( M.d15 ) $ ( d117 ) ) $ ( d108 ) ) ) $ ( ( ( M.d34 ) $ ( true ) ) $ ( true ) )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> x133 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d130 = ( ( M.d44 ) $ ( if d102 then false else d120 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x131 -> d117 ) ) ) $ ( true ) )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> x135 ) ) ) $ ( x135 ) ) ) ) $ ( if false then Bool else Bool )
    d134 = if if d127 then true else d124 then if d124 then d111 else false else if d127 then true else false
    d137 : if true then if true then Bool else Bool else if true then Bool else Bool
    d137 = ( ( M.d99 ) $ ( ( ( M.d69 ) $ ( d111 ) ) $ ( d114 ) ) ) $ ( ( ( M.d73 ) $ ( d111 ) ) $ ( true ) )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> x142 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> d137 ) ) ) $ ( x139 ) ) ) ) $ ( if d123 then d117 else d102 )
    d143 : if true then if false then Bool else Bool else if false then Bool else Bool
    d143 = if if d124 then false else d138 then if true then d127 else true else if d112 then false else false
    d144 : ( ( Set -> Set ) ∋ ( ( λ x145 -> ( ( Set -> Set ) ∋ ( ( λ x146 -> Bool ) ) ) $ ( x145 ) ) ) ) $ ( if true then Bool else Bool )
    d144 = if if false then d114 else d134 then if true then true else false else if d114 then true else d130
    d147 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then x150 else Bool ) ) ) $ ( if false then Bool else Bool )
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( Bool -> Bool ) ∋ ( ( λ x149 -> x148 ) ) ) $ ( true ) ) ) ) $ ( if d144 then true else d127 )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x153 -> if false then Bool else x153 ) ) ) $ ( if true then Bool else Bool )
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> if x152 then x152 else d138 ) ) ) $ ( if true then d117 else true )
    d154 : if true then if true then Bool else Bool else if true then Bool else Bool
    d154 = ( ( M.d67 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x155 -> x155 ) ) ) $ ( true ) ) ) $ ( if false then d127 else true )
    d156 : if true then if false then Bool else Bool else if false then Bool else Bool
    d156 = ( ( M.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x157 -> x157 ) ) ) $ ( false ) ) ) $ ( ( ( M.d34 ) $ ( d102 ) ) $ ( false ) )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d158 = ( ( M.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x159 -> true ) ) ) $ ( true ) ) ) $ ( if true then d156 else true )
    d162 : if true then if false then Bool else Bool else if true then Bool else Bool
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> ( ( M.d67 ) $ ( if d105 then d117 else d138 ) ) $ ( if d130 then x163 else true ) ) ) ) $ ( if d130 then d151 else false )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if true then Bool else x167 ) ) ) $ ( if false then Bool else Bool )
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( Bool -> Bool ) ∋ ( ( λ x166 -> x165 ) ) ) $ ( x165 ) ) ) ) $ ( if d123 then d137 else false )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d168 = if if false then d151 else d156 then if d164 then false else false else if true then d147 else false
    d171 : ( ( Set -> Set ) ∋ ( ( λ x172 -> ( ( Set -> Set ) ∋ ( ( λ x173 -> Bool ) ) ) $ ( x172 ) ) ) ) $ ( if false then Bool else Bool )
    d171 = if if d147 then true else d168 then if true then true else d162 else if d130 then true else d137
    d174 : ( ( Set -> Set ) ∋ ( ( λ x176 -> if false then x176 else x176 ) ) ) $ ( if false then Bool else Bool )
    d174 = ( ( M.d60 ) $ ( ( ( M.d53 ) $ ( d123 ) ) $ ( d108 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x175 -> d137 ) ) ) $ ( d143 ) )
    d177 : if true then if true then Bool else Bool else if false then Bool else Bool
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> ( ( M.d84 ) $ ( if false then x178 else d138 ) ) $ ( if d134 then d168 else false ) ) ) ) $ ( if d174 then false else false )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d179 = ( ( M.d55 ) $ ( if d147 then d137 else false ) ) $ ( ( ( M.d53 ) $ ( d137 ) ) $ ( true ) )
    d182 : if false then if false then Bool else Bool else if false then Bool else Bool
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> if x183 then x183 else false ) ) ) $ ( if d105 then d112 else true )
    d184 : ( ( Set -> Set ) ∋ ( ( λ x185 -> if false then x185 else x185 ) ) ) $ ( if true then Bool else Bool )
    d184 = if if false then true else d182 then if d147 then false else d143 else if d105 then d179 else d134
    d186 : if false then if false then Bool else Bool else if true then Bool else Bool
    d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> ( ( Bool -> Bool ) ∋ ( ( λ x188 -> false ) ) ) $ ( d143 ) ) ) ) $ ( if true then false else d144 )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> Bool ) ) ) $ ( x191 ) ) ) ) $ ( if false then Bool else Bool )
    d189 = ( ( M.d44 ) $ ( if d171 then true else d174 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d151 ) ) ) $ ( false ) )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> x195 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> if true then true else x194 ) ) ) $ ( if true then true else false )
    d197 : ( ( Set -> Set ) ∋ ( ( λ x198 -> ( ( Set -> Set ) ∋ ( ( λ x199 -> x199 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d197 = if if false then d108 else false then if d124 then d164 else false else if d130 then d182 else true
    d200 : ( ( Set -> Set ) ∋ ( ( λ x201 -> if true then x201 else Bool ) ) ) $ ( if false then Bool else Bool )
    d200 = if if false then false else true then if d111 then d137 else false else if d186 then d137 else false
    d202 : ( ( Set -> Set ) ∋ ( ( λ x204 -> ( ( Set -> Set ) ∋ ( ( λ x205 -> x205 ) ) ) $ ( x204 ) ) ) ) $ ( if false then Bool else Bool )
    d202 = ( ( Bool -> Bool ) ∋ ( ( λ x203 -> if true then false else x203 ) ) ) $ ( if d114 then false else d117 )
    d206 : ( ( Set -> Set ) ∋ ( ( λ x207 -> if false then x207 else x207 ) ) ) $ ( if false then Bool else Bool )
    d206 = ( ( M.d69 ) $ ( if d162 then d120 else d117 ) ) $ ( ( ( M.d84 ) $ ( false ) ) $ ( d144 ) )
    d208 : if false then if false then Bool else Bool else if false then Bool else Bool
    d208 = if if d158 then d168 else d127 then if true then false else true else if d111 then true else d186
    d209 : ( ( Set -> Set ) ∋ ( ( λ x212 -> if false then x212 else Bool ) ) ) $ ( if false then Bool else Bool )
    d209 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x211 -> false ) ) ) $ ( x210 ) ) ) ) $ ( if d171 then true else d171 )