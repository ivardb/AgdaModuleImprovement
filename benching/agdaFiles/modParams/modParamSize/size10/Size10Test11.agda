module Size10Test11  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then x3 else Bool ) ) ) $ ( Bool ) )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> x6 ) ) ) $ ( x5 ) ) ) ) $ ( if true then Bool else Bool )
        d4 = if if p2 then false else true then if p2 then true else p2 else if p1 then p2 else true
        d7 : if true then if true then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> p2 ) ) ) $ ( d4 ) ) ) ) $ ( if d4 then d4 else d4 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x12 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d10 = if if d7 then d7 else d4 then if p2 then p2 else d7 else if d7 then p1 else d4
        d13 : if true then if false then Bool else Bool else if true then Bool else Bool
        d13 = if if d10 then p1 else false then if p2 then true else p1 else if true then d10 else d4
        d14 : if false then if false then Bool else Bool else if true then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if d10 then d13 else p1 ) ) ) $ ( if d7 then p1 else false )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if d7 then p1 else x17 ) ) ) $ ( if true then p1 else true )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then Bool else x20 ) ) ) $ ( if false then Bool else Bool )
        d19 = if if d10 then d7 else false then if p1 then d14 else p2 else if true then true else true
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d21 = if if true then d16 else d7 then if p1 then d4 else d13 else if true then p2 else false
        d23 : if false then if true then Bool else Bool else if true then Bool else Bool
        d23 = if if d13 then p2 else p1 then if p1 then p1 else false else if p2 then true else p2
        d24 : if false then if false then Bool else Bool else if false then Bool else Bool
        d24 = if if true then p1 else p1 then if true then p1 else p1 else if p2 then false else d23
        d25 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> x27 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if p1 then false else d23 ) ) ) $ ( if d23 then d4 else false )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if d25 then p1 else p1 ) ) ) $ ( if d21 then false else d4 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if true then x36 else x36 ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> d14 ) ) ) $ ( p1 ) ) ) ) $ ( if true then false else false )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if false then Bool else x38 ) ) ) $ ( if true then Bool else Bool )
        d37 = if if d14 then d33 else false then if p2 then p2 else true else if p1 then true else d21
        d39 : if true then if false then Bool else Bool else if true then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if p2 then false else p1 ) ) ) $ ( if false then d19 else p1 )
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if d4 then d21 else true ) ) ) $ ( if p2 then false else p2 )
        d43 : if true then if false then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> x44 ) ) ) $ ( x44 ) ) ) ) $ ( if d25 then true else false )
        d46 : if true then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if d33 then x47 else p1 ) ) ) $ ( if false then false else true )
        d48 : if true then if false then Bool else Bool else if true then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then d37 else true )
        d51 : if true then if false then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if p1 then d21 else d37 )
        d54 : if false then if false then Bool else Bool else if false then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if false then d21 else false ) ) ) $ ( if p1 then p1 else false )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then Bool else x57 ) ) ) $ ( if true then Bool else Bool )
        d56 = if if true then p1 else d10 then if true then p2 else d7 else if true then false else false
        d58 : if false then if true then Bool else Bool else if true then Bool else Bool
        d58 = if if d43 then d56 else d13 then if p2 then p2 else p1 else if true then d25 else d56
        d59 : if false then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> x61 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then false else d7 )
        d62 : if true then if true then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> d37 ) ) ) $ ( p2 ) ) ) ) $ ( if d39 then p1 else false )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x69 ) ) ) $ ( x68 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> false ) ) ) $ ( x66 ) ) ) ) $ ( if p2 then true else false )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then Bool else x72 ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if d58 then x71 else p1 ) ) ) $ ( if p2 then p1 else p2 )
        d73 : if true then if false then Bool else Bool else if true then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if p2 then true else false ) ) ) $ ( if p2 then p1 else p2 )
        d75 : if false then if false then Bool else Bool else if false then Bool else Bool
        d75 = if if d58 then d70 else d48 then if d4 then false else d62 else if d4 then true else true
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x77 ) ) ) $ ( x77 ) ) ) ) $ ( if false then Bool else Bool )
        d76 = if if d75 then false else false then if d65 then d54 else d59 else if p2 then p1 else true
        d79 : if false then if true then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d75 ) ) ) $ ( d75 ) ) ) ) $ ( if false then false else false )
        d82 : if false then if true then Bool else Bool else if false then Bool else Bool
        d82 = if if d79 then true else false then if p1 then d7 else false else if p2 then false else false
        d83 : if false then if true then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if false then x84 else d82 ) ) ) $ ( if d4 then false else true )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( x87 ) ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if p1 then p2 else d54 ) ) ) $ ( if true then d62 else d56 )
        d89 : if false then if true then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if p1 then d24 else d79 ) ) ) $ ( if p2 then p1 else p1 )
        d91 : if true then if false then Bool else Bool else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> d79 ) ) ) $ ( p1 ) ) ) ) $ ( if d51 then d19 else true )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then x95 else x95 ) ) ) $ ( if true then Bool else Bool )
        d94 = if if d29 then d41 else d51 then if d73 then d59 else p1 else if p2 then p2 else d43
        d96 : if false then if true then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> d13 ) ) ) $ ( false ) ) ) ) $ ( if d89 then p1 else d65 )
        d99 : if true then if false then Bool else Bool else if true then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> false ) ) ) $ ( x100 ) ) ) ) $ ( if false then p2 else true )
        d102 : if false then if false then Bool else Bool else if false then Bool else Bool
        d102 = if if d37 then true else p1 then if d76 then d91 else p1 else if p2 then d33 else false
    d103 : if true then if true then Bool else Bool else if false then Bool else Bool
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if x104 then x104 else x104 ) ) ) $ ( if false then true else false )
    d105 : if false then if true then Bool else Bool else if true then Bool else Bool
    d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if d103 then d103 else x106 ) ) ) $ ( if true then false else d103 )
    d107 : if false then if true then Bool else Bool else if true then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> d105 ) ) ) $ ( true ) ) ) ) $ ( if d103 then true else d105 )
    d110 : if false then if true then Bool else Bool else if false then Bool else Bool
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d107 ) ) ) $ ( x111 ) ) ) ) $ ( if d107 then d105 else d107 )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> x117 ) ) ) $ ( x116 ) ) ) ) $ ( if true then Bool else Bool )
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> x114 ) ) ) $ ( x114 ) ) ) ) $ ( if true then false else false )
    d118 : if true then if false then Bool else Bool else if true then Bool else Bool
    d118 = if if false then false else true then if false then d105 else d105 else if false then d105 else false
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( x120 ) ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( M.d7 ) $ ( if true then false else d103 ) ) $ ( ( ( M.d89 ) $ ( d110 ) ) $ ( false ) )
    d122 : if false then if true then Bool else Bool else if false then Bool else Bool
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( M.d48 ) $ ( if x123 then true else x123 ) ) $ ( if x123 then true else false ) ) ) ) $ ( if false then d118 else d118 )
    d124 : if false then if true then Bool else Bool else if false then Bool else Bool
    d124 = ( ( M.d65 ) $ ( if d107 then d105 else true ) ) $ ( if d122 then true else true )
    d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if false then x127 else x127 ) ) ) $ ( if true then Bool else Bool )
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if true then d113 else x126 ) ) ) $ ( if d110 then true else d110 )
    d128 : if false then if true then Bool else Bool else if false then Bool else Bool
    d128 = if if d103 then false else false then if true then d110 else d110 else if d119 then false else d125
    d129 : if true then if true then Bool else Bool else if true then Bool else Bool
    d129 = if if d124 then false else false then if true then d107 else false else if false then d103 else d107
    d130 : if false then if true then Bool else Bool else if true then Bool else Bool
    d130 = ( ( M.d79 ) $ ( if d103 then false else d107 ) ) $ ( if d125 then d107 else d128 )
    d131 : if false then if true then Bool else Bool else if true then Bool else Bool
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( Bool -> Bool ) ∋ ( ( λ x133 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then d128 else false )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if true then x135 else x135 ) ) ) $ ( if false then Bool else Bool )
    d134 = if if d130 then d124 else false then if d105 then true else true else if true then d124 else d113
    d136 : if false then if false then Bool else Bool else if true then Bool else Bool
    d136 = if if d128 then false else false then if d128 then d118 else d103 else if d130 then true else false
    d137 : if false then if true then Bool else Bool else if false then Bool else Bool
    d137 = ( ( M.d82 ) $ ( ( ( M.d76 ) $ ( d136 ) ) $ ( d105 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x138 -> true ) ) ) $ ( false ) )
    d139 : if false then if false then Bool else Bool else if true then Bool else Bool
    d139 = ( ( M.d76 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x140 -> false ) ) ) $ ( d128 ) ) ) $ ( ( ( M.d4 ) $ ( true ) ) $ ( false ) )
    d141 : if true then if true then Bool else Bool else if true then Bool else Bool
    d141 = ( ( M.d89 ) $ ( if d107 then false else d131 ) ) $ ( if d137 then true else false )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if false then x144 else x144 ) ) ) $ ( if false then Bool else Bool )
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> if true then x143 else true ) ) ) $ ( if d130 then d110 else d105 )
    d145 : if true then if false then Bool else Bool else if true then Bool else Bool
    d145 = ( ( M.d16 ) $ ( ( ( M.d14 ) $ ( d119 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x146 -> d129 ) ) ) $ ( d137 ) )
    d147 : if false then if false then Bool else Bool else if false then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( Bool -> Bool ) ∋ ( ( λ x149 -> true ) ) ) $ ( x148 ) ) ) ) $ ( if false then false else d107 )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> if true then x151 else x151 ) ) ) $ ( if true then Bool else Bool )
    d150 = ( ( M.d89 ) $ ( ( ( M.d82 ) $ ( true ) ) $ ( d141 ) ) ) $ ( ( ( M.d4 ) $ ( d105 ) ) $ ( d119 ) )
    d152 : if true then if false then Bool else Bool else if false then Bool else Bool
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> ( ( M.d73 ) $ ( if x153 then x153 else x153 ) ) $ ( if d139 then x153 else x153 ) ) ) ) $ ( if true then false else d147 )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x156 -> ( ( Set -> Set ) ∋ ( ( λ x157 -> x157 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d154 = ( ( Bool -> Bool ) ∋ ( ( λ x155 -> ( ( M.d39 ) $ ( if false then x155 else x155 ) ) $ ( if x155 then true else x155 ) ) ) ) $ ( if false then d105 else d150 )
    d158 : if true then if true then Bool else Bool else if false then Bool else Bool
    d158 = ( ( M.d19 ) $ ( ( ( M.d16 ) $ ( d131 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x159 -> x159 ) ) ) $ ( d134 ) )
    d160 : if false then if true then Bool else Bool else if false then Bool else Bool
    d160 = if if d134 then true else true then if false then true else false else if d154 then true else d122
    d161 : if true then if true then Bool else Bool else if true then Bool else Bool
    d161 = ( ( M.d43 ) $ ( if false then d131 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x162 -> x162 ) ) ) $ ( true ) )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> x166 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> ( ( M.d37 ) $ ( if true then x164 else false ) ) $ ( if x164 then true else x164 ) ) ) ) $ ( if d137 then true else d150 )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> x168 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d167 = ( ( M.d43 ) $ ( ( ( M.d29 ) $ ( d107 ) ) $ ( true ) ) ) $ ( ( ( M.d70 ) $ ( true ) ) $ ( false ) )
    d170 : if false then if false then Bool else Bool else if true then Bool else Bool
    d170 = if if false then true else d131 then if d142 then true else true else if d154 then true else true
    d171 : ( ( Set -> Set ) ∋ ( ( λ x173 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d171 = ( ( M.d83 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x172 -> x172 ) ) ) $ ( d107 ) ) ) $ ( if d141 then true else false )
    d174 : ( ( Set -> Set ) ∋ ( ( λ x176 -> if true then x176 else x176 ) ) ) $ ( if false then Bool else Bool )
    d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> if d136 then x175 else false ) ) ) $ ( if d137 then d134 else d129 )
    d177 : if false then if true then Bool else Bool else if true then Bool else Bool
    d177 = ( ( M.d59 ) $ ( if d145 then true else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x178 -> d161 ) ) ) $ ( d113 ) )
    d179 : if false then if false then Bool else Bool else if true then Bool else Bool
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if d163 then true else x180 ) ) ) $ ( if false then false else false )
    d181 : if true then if true then Bool else Bool else if true then Bool else Bool
    d181 = ( ( M.d13 ) $ ( if d145 then d118 else d142 ) ) $ ( if d145 then true else false )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if false then x183 else x183 ) ) ) $ ( if true then Bool else Bool )
    d182 = if if false then true else d170 then if false then false else false else if d130 then true else d107
    d184 : if true then if false then Bool else Bool else if false then Bool else Bool
    d184 = ( ( M.d70 ) $ ( ( ( M.d59 ) $ ( d124 ) ) $ ( d150 ) ) ) $ ( ( ( M.d91 ) $ ( false ) ) $ ( d124 ) )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if true then x188 else Bool ) ) ) $ ( if true then Bool else Bool )
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( Bool -> Bool ) ∋ ( ( λ x187 -> d142 ) ) ) $ ( d161 ) ) ) ) $ ( if true then d110 else false )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( M.d48 ) $ ( if d119 then false else d163 ) ) $ ( if x190 then x190 else d107 ) ) ) ) $ ( if d103 then d130 else false )