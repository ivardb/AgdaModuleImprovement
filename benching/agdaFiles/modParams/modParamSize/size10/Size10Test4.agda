module Size10Test4  where
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
        d3 : if true then if true then Bool else Bool else if true then Bool else Bool
        d3 = if if true then false else p2 then if false then p1 else p2 else if true then false else p1
        d4 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> true ) ) ) $ ( d3 ) ) ) ) $ ( if p1 then d3 else p1 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if false then d4 else p1 ) ) ) $ ( if p2 then p1 else p1 )
        d12 : if false then if true then Bool else Bool else if true then Bool else Bool
        d12 = if if false then true else p1 then if d9 then d9 else d3 else if p2 then p2 else d3
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> false ) ) ) $ ( x14 ) ) ) ) $ ( if false then true else true )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then x19 else Bool ) ) ) $ ( if false then Bool else Bool )
        d18 = if if d12 then true else p2 then if false then p1 else p1 else if d3 then d13 else true
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = if if false then p1 else d3 then if false then false else false else if true then p1 else true
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if false then x24 else Bool ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if false then p1 else d20 ) ) ) $ ( if false then p2 else false )
        d25 : if true then if true then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> p2 ) ) ) $ ( d20 ) ) ) ) $ ( if d3 then true else d12 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if x29 then d4 else p1 ) ) ) $ ( if d12 then d22 else p1 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then Bool else x34 ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> p2 ) ) ) $ ( x32 ) ) ) ) $ ( if p2 then d13 else true )
        d35 : if false then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if true then d20 else p2 ) ) ) $ ( if p2 then d13 else p2 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( x39 ) ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if d4 then d13 else true ) ) ) $ ( if d35 then p2 else p1 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if false then Bool else x42 ) ) ) $ ( if false then Bool else Bool )
        d41 = if if false then d9 else p2 then if d22 then p2 else d12 else if p1 then d13 else d25
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> x45 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d43 = if if p1 then d31 else d18 then if false then d3 else d3 else if p2 then false else false
        d46 : if false then if true then Bool else Bool else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if true then true else p2 ) ) ) $ ( if true then p2 else false )
        d48 : if true then if false then Bool else Bool else if true then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> p2 ) ) ) $ ( d37 ) ) ) ) $ ( if p1 then true else d37 )
        d51 : if true then if true then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> false ) ) ) $ ( d12 ) ) ) ) $ ( if p2 then d18 else d48 )
        d54 : if true then if true then Bool else Bool else if false then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> false ) ) ) $ ( p2 ) ) ) ) $ ( if false then true else true )
        d57 : if true then if false then Bool else Bool else if false then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if d25 then p1 else p1 ) ) ) $ ( if false then false else d4 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if false then Bool else x61 ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d35 then p2 else p2 ) ) ) $ ( if false then true else p1 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if true then Bool else x63 ) ) ) $ ( if false then Bool else Bool )
        d62 = if if d43 then p1 else d13 then if p1 then false else true else if d43 then p1 else p2
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if false then x65 else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = if if false then p1 else d62 then if false then true else true else if p1 then d48 else d54
        d66 : if true then if false then Bool else Bool else if false then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if d3 then true else true ) ) ) $ ( if d54 then d46 else false )
        d68 : if false then if true then Bool else Bool else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if d57 then d51 else x69 ) ) ) $ ( if false then p2 else d59 )
        d70 : if false then if false then Bool else Bool else if true then Bool else Bool
        d70 = if if false then d28 else true then if true then false else d37 else if d41 then p1 else false
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d71 = if if d9 then d12 else p2 then if p2 then p1 else d22 else if false then p1 else true
        d74 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> x77 ) ) ) $ ( x76 ) ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if d46 then x75 else p1 ) ) ) $ ( if p1 then true else true )
        d78 : if true then if true then Bool else Bool else if false then Bool else Bool
        d78 = if if d46 then p1 else p2 then if p1 then p2 else p1 else if false then d9 else d4
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if false then x82 else Bool ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if d20 then d62 else p2 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if true then x86 else x86 ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if p2 then p2 else d62 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( x90 ) ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> d22 ) ) ) $ ( x88 ) ) ) ) $ ( if false then d20 else d28 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x94 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if d31 then true else true ) ) ) $ ( if p2 then d54 else d64 )
        d96 : if true then if false then Bool else Bool else if false then Bool else Bool
        d96 = if if p1 then false else p2 then if p1 then false else d41 else if p1 then true else d51
        d97 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if false then x100 else x100 ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d83 else d18 )
        d101 : if false then if false then Bool else Bool else if true then Bool else Bool
        d101 = if if true then true else d18 then if p2 then false else p1 else if true then d18 else p1
        d102 : if true then if false then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if d54 then p2 else false )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then x107 else Bool ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if d9 then x106 else false ) ) ) $ ( if d87 then p1 else true )
        d108 : if false then if false then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if d54 then p2 else false ) ) ) $ ( if p2 then false else p2 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x111 ) ) ) $ ( x111 ) ) ) ) $ ( if false then Bool else Bool )
        d110 = if if false then p2 else true then if true then p1 else p2 else if d28 then true else d41
    d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if x114 then false else x114 ) ) ) $ ( if true then true else true )
    d117 : if true then if false then Bool else Bool else if true then Bool else Bool
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if d113 then d113 else false ) ) ) $ ( if d113 then false else d113 )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then x120 else Bool ) ) ) $ ( if true then Bool else Bool )
    d119 = if if d117 then d113 else d117 then if d113 then false else false else if false then true else true
    d121 : if false then if true then Bool else Bool else if true then Bool else Bool
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if d117 then x122 else d113 ) ) ) $ ( if true then d113 else true )
    d123 : if true then if true then Bool else Bool else if true then Bool else Bool
    d123 = if if d119 then false else true then if d113 then true else false else if d117 then true else false
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d124 = if if false then d117 else d119 then if d113 then true else d117 else if false then d121 else d119
    d127 : if false then if true then Bool else Bool else if true then Bool else Bool
    d127 = ( ( M.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x128 -> x128 ) ) ) $ ( true ) ) ) $ ( ( ( M.d28 ) $ ( true ) ) $ ( d113 ) )
    d129 : if false then if true then Bool else Bool else if true then Bool else Bool
    d129 = if if d117 then d127 else d124 then if true then d123 else true else if d117 then d127 else true
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if d129 then true else x131 ) ) ) $ ( if false then d121 else d129 )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> ( ( M.d64 ) $ ( if true then x135 else x135 ) ) $ ( if true then d127 else d121 ) ) ) ) $ ( if d113 then d117 else false )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if false then Bool else x139 ) ) ) $ ( if true then Bool else Bool )
    d138 = if if true then d123 else true then if d124 then true else false else if true then false else false
    d140 : if true then if false then Bool else Bool else if false then Bool else Bool
    d140 = ( ( M.d43 ) $ ( ( ( M.d46 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x141 -> d124 ) ) ) $ ( d117 ) )
    d142 : if false then if false then Bool else Bool else if true then Bool else Bool
    d142 = ( ( M.d3 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x143 -> x143 ) ) ) $ ( d138 ) ) ) $ ( ( ( M.d48 ) $ ( true ) ) $ ( d124 ) )
    d144 : if true then if true then Bool else Bool else if true then Bool else Bool
    d144 = ( ( M.d108 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x145 -> true ) ) ) $ ( d140 ) ) ) $ ( ( ( M.d20 ) $ ( false ) ) $ ( d121 ) )
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> Bool ) ) ) $ ( x147 ) ) ) ) $ ( if false then Bool else Bool )
    d146 = if if true then d129 else false then if false then false else true else if d119 then d130 else false
    d149 : if true then if true then Bool else Bool else if true then Bool else Bool
    d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x151 -> x150 ) ) ) $ ( x150 ) ) ) ) $ ( if true then false else false )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> x154 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d152 = if if d117 then true else d121 then if d149 then false else d113 else if d123 then d144 else false
    d155 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if true then x157 else x157 ) ) ) $ ( if true then Bool else Bool )
    d155 = ( ( M.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x156 -> x156 ) ) ) $ ( d117 ) ) ) $ ( ( ( M.d59 ) $ ( false ) ) $ ( true ) )
    d158 : if true then if true then Bool else Bool else if true then Bool else Bool
    d158 = ( ( M.d105 ) $ ( if false then false else true ) ) $ ( ( ( M.d59 ) $ ( true ) ) $ ( d144 ) )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> x160 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d159 = ( ( M.d12 ) $ ( if d149 then false else d127 ) ) $ ( if d138 then false else d113 )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d162 = if if false then true else true then if true then d142 else true else if d121 then d117 else true
    d164 : if true then if true then Bool else Bool else if true then Bool else Bool
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( Bool -> Bool ) ∋ ( ( λ x166 -> d149 ) ) ) $ ( x165 ) ) ) ) $ ( if true then true else false )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d167 = if if true then d127 else d159 then if false then d146 else true else if false then true else d142
    d170 : if false then if false then Bool else Bool else if true then Bool else Bool
    d170 = if if d124 then d124 else true then if d129 then d123 else false else if d146 then d149 else true
    d171 : if false then if false then Bool else Bool else if true then Bool else Bool
    d171 = if if d138 then d134 else d162 then if false then d121 else d162 else if false then d138 else false
    d172 : if false then if false then Bool else Bool else if true then Bool else Bool
    d172 = ( ( Bool -> Bool ) ∋ ( ( λ x173 -> if true then d138 else false ) ) ) $ ( if d119 then true else d149 )
    d174 : if true then if true then Bool else Bool else if true then Bool else Bool
    d174 = ( ( M.d79 ) $ ( ( ( M.d57 ) $ ( false ) ) $ ( d152 ) ) ) $ ( if d123 then true else true )
    d175 : ( ( Set -> Set ) ∋ ( ( λ x177 -> ( ( Set -> Set ) ∋ ( ( λ x178 -> x178 ) ) ) $ ( x177 ) ) ) ) $ ( if true then Bool else Bool )
    d175 = ( ( M.d64 ) $ ( ( ( M.d71 ) $ ( true ) ) $ ( d127 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> x176 ) ) ) $ ( d124 ) )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x182 -> ( ( Set -> Set ) ∋ ( ( λ x183 -> Bool ) ) ) $ ( x182 ) ) ) ) $ ( if true then Bool else Bool )
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x181 -> d144 ) ) ) $ ( d152 ) ) ) ) $ ( if d155 then d175 else d164 )
    d184 : if true then if false then Bool else Bool else if true then Bool else Bool
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> if d149 then x185 else d134 ) ) ) $ ( if false then d121 else false )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d186 = if if false then d121 else true then if true then d162 else d123 else if false then d144 else d172
    d188 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x191 -> Bool ) ) ) $ ( x190 ) ) ) ) $ ( if false then Bool else Bool )
    d188 = ( ( M.d57 ) $ ( ( ( M.d35 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x189 -> false ) ) ) $ ( false ) )
    d192 : if true then if false then Bool else Bool else if false then Bool else Bool
    d192 = if if false then d175 else false then if false then d140 else d134 else if d175 then false else d121
    d193 : if true then if true then Bool else Bool else if false then Bool else Bool
    d193 = ( ( M.d87 ) $ ( ( ( M.d31 ) $ ( d130 ) ) $ ( d172 ) ) ) $ ( ( ( M.d51 ) $ ( false ) ) $ ( false ) )
    d194 : if false then if true then Bool else Bool else if false then Bool else Bool
    d194 = if if d162 then true else d123 then if true then d127 else d164 else if d164 then true else false
    d195 : if true then if true then Bool else Bool else if true then Bool else Bool
    d195 = if if d171 then d171 else d121 then if d164 then true else d175 else if false then true else d162
    d196 : if false then if true then Bool else Bool else if false then Bool else Bool
    d196 = if if false then d142 else d117 then if d192 then d162 else true else if d193 then false else d164
    d197 : if false then if true then Bool else Bool else if true then Bool else Bool
    d197 = ( ( M.d71 ) $ ( if false then d162 else d172 ) ) $ ( if false then d188 else d196 )
    d198 : ( ( Set -> Set ) ∋ ( ( λ x199 -> if true then Bool else x199 ) ) ) $ ( if true then Bool else Bool )
    d198 = if if true then true else true then if d144 then d117 else d152 else if d138 then false else true
    d200 : if true then if false then Bool else Bool else if true then Bool else Bool
    d200 = if if false then false else d196 then if true then d174 else d174 else if false then true else d186