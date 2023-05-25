module Size5Test6  where
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
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x5 ) ) ) $ ( x4 ) ) ) ) $ ( if false then Bool else Bool )
        d3 = if if p2 then p1 else false then if p1 then p2 else false else if p2 then p2 else p2
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> x7 ) ) ) $ ( x7 ) ) ) ) $ ( if false then Bool else Bool )
        d6 = if if d3 then d3 else d3 then if d3 then true else p1 else if p2 then p1 else p1
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if false then x10 else Bool ) ) ) $ ( if true then Bool else Bool )
        d9 = if if p1 then false else p2 then if p1 then d6 else d3 else if p1 then p1 else p1
        d11 : if false then if true then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if d6 then false else true ) ) ) $ ( if p1 then p2 else p1 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then Bool else x14 ) ) ) $ ( if false then Bool else Bool )
        d13 = if if false then p2 else true then if d9 then false else d11 else if p1 then false else p2
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d15 = if if p1 then true else true then if true then d11 else p2 else if d11 then d6 else p2
        d18 : if false then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if x19 then d9 else x19 ) ) ) $ ( if true then d3 else true )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( p2 ) ) ) ) $ ( if d6 then d6 else p1 )
        d25 : if false then if false then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> false ) ) ) $ ( false ) ) ) ) $ ( if p2 then false else d6 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then Bool else x31 ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> true ) ) ) $ ( x29 ) ) ) ) $ ( if p1 then d25 else d9 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then x34 else x34 ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if p1 then d3 else x33 ) ) ) $ ( if d13 then p2 else d15 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x37 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d35 = if if false then p2 else true then if true then p1 else true else if d32 then d25 else false
        d38 : if false then if false then Bool else Bool else if true then Bool else Bool
        d38 = if if true then true else p1 then if d3 then p1 else d28 else if d32 then true else p1
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then Bool else x40 ) ) ) $ ( if true then Bool else Bool )
        d39 = if if true then p2 else p2 then if true then false else true else if p2 then d9 else p1
        d41 : if false then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if p2 then d13 else x42 ) ) ) $ ( if p1 then d11 else d39 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if false then x44 else Bool ) ) ) $ ( if false then Bool else Bool )
        d43 = if if true then false else true then if false then true else d20 else if d38 then p2 else d20
        d45 : if true then if true then Bool else Bool else if true then Bool else Bool
        d45 = if if true then p1 else false then if p2 then d9 else d28 else if true then false else p2
        d46 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( x48 ) ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if false then false else x47 ) ) ) $ ( if d25 then false else false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then x51 else x51 ) ) ) $ ( if true then Bool else Bool )
        d50 = if if p1 then true else p1 then if true then d25 else false else if false then d39 else true
        d52 : if false then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> d20 ) ) ) $ ( true ) ) ) ) $ ( if p2 then false else true )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> x57 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if x56 then d35 else p1 ) ) ) $ ( if true then false else p2 )
        d59 : if false then if false then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> false ) ) ) $ ( d46 ) ) ) ) $ ( if p2 then d18 else d18 )
        d62 : if false then if true then Bool else Bool else if true then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> false ) ) ) $ ( false ) ) ) ) $ ( if d41 then p1 else false )
        d65 : if false then if true then Bool else Bool else if false then Bool else Bool
        d65 = if if p1 then p1 else false then if d20 then p2 else d38 else if d35 then p1 else d11
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d66 = if if true then d25 else p1 then if true then p1 else p2 else if p2 then p2 else d15
        d68 : if false then if false then Bool else Bool else if false then Bool else Bool
        d68 = if if d3 then p1 else true then if d39 then d62 else d13 else if d11 then false else p2
        d69 : if true then if true then Bool else Bool else if true then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> x71 ) ) ) $ ( x70 ) ) ) ) $ ( if true then p1 else d25 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> x76 ) ) ) $ ( x75 ) ) ) ) $ ( if true then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> true ) ) ) $ ( d68 ) ) ) ) $ ( if d25 then d15 else false )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if true then x78 else x78 ) ) ) $ ( if false then Bool else Bool )
        d77 = if if true then true else d52 then if p2 then p2 else false else if p1 then true else d45
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d79 = if if false then d62 else false then if p2 then true else false else if d3 then false else d11
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if p2 then d13 else true then if true then true else d46 else if false then p2 else d46
        d85 : if true then if false then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if true then d72 else d50 ) ) ) $ ( if d68 then false else false )
        d87 : if true then if true then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if p2 then d59 else p2 ) ) ) $ ( if p2 then d79 else p2 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then Bool else x90 ) ) ) $ ( if false then Bool else Bool )
        d89 = if if true then d28 else p2 then if d35 then p2 else true else if d18 then d66 else d62
        d91 : if false then if false then Bool else Bool else if false then Bool else Bool
        d91 = if if p1 then d32 else false then if false then true else d69 else if p2 then d28 else false
        d92 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if false then false else d6 ) ) ) $ ( if p1 then true else p1 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> x98 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if p1 then d79 else d43 ) ) ) $ ( if p1 then true else false )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( x102 ) ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if d91 then true else d15 ) ) ) $ ( if p2 then d85 else p2 )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else x105 ) ) ) $ ( if true then Bool else Bool )
        d104 = if if p2 then p1 else d82 then if true then p2 else p1 else if false then false else d6
        d106 : if false then if true then Bool else Bool else if true then Bool else Bool
        d106 = if if false then p1 else d72 then if false then p2 else false else if p2 then d32 else false
    d107 : if true then if false then Bool else Bool else if true then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if false then true else x108 ) ) ) $ ( if false then false else false )
    d109 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> Bool ) ) ) $ ( x112 ) ) ) ) $ ( if true then Bool else Bool )
    d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> x111 ) ) ) $ ( true ) ) ) ) $ ( if d107 then d107 else false )
    d114 : if true then if true then Bool else Bool else if true then Bool else Bool
    d114 = ( ( M.d92 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x115 -> true ) ) ) $ ( d107 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x116 -> x116 ) ) ) $ ( true ) )
    d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x118 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d117 = if if d114 then false else d114 then if true then false else true else if d114 then false else true
    d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d120 = ( ( M.d87 ) $ ( ( ( M.d38 ) $ ( d109 ) ) $ ( d117 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x121 -> d107 ) ) ) $ ( true ) )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d124 = ( ( M.d69 ) $ ( if false then true else d109 ) ) $ ( ( ( M.d18 ) $ ( true ) ) $ ( true ) )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if true then x129 else Bool ) ) ) $ ( if false then Bool else Bool )
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if x128 then d109 else false ) ) ) $ ( if d124 then true else true )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> ( ( Bool -> Bool ) ∋ ( ( λ x132 -> x131 ) ) ) $ ( x131 ) ) ) ) $ ( if true then d120 else false )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x137 -> ( ( Set -> Set ) ∋ ( ( λ x138 -> x137 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> ( ( Bool -> Bool ) ∋ ( ( λ x136 -> x135 ) ) ) $ ( d109 ) ) ) ) $ ( if d130 then d124 else d109 )
    d139 : if false then if true then Bool else Bool else if true then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x141 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d117 )
    d142 : if false then if true then Bool else Bool else if true then Bool else Bool
    d142 = if if d130 then d109 else d107 then if true then false else d124 else if d124 then true else true
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if true then x144 else x144 ) ) ) $ ( if true then Bool else Bool )
    d143 = if if d130 then d109 else false then if true then false else true else if false then true else d120
    d145 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> if false then true else x146 ) ) ) $ ( if true then d134 else false )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> Bool ) ) ) $ ( x150 ) ) ) ) $ ( if false then Bool else Bool )
    d149 = if if d142 then true else false then if d109 then false else d114 else if true then false else d109
    d152 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d152 = if if true then d143 else d114 then if true then d134 else false else if d145 then d134 else false
    d155 : ( ( Set -> Set ) ∋ ( ( λ x156 -> if false then x156 else x156 ) ) ) $ ( if false then Bool else Bool )
    d155 = if if d145 then false else d117 then if d143 then false else false else if d120 then true else true
    d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> Bool ) ) ) $ ( x158 ) ) ) ) $ ( if false then Bool else Bool )
    d157 = if if d149 then d124 else d155 then if d120 then d149 else true else if d155 then d109 else false
    d160 : if false then if false then Bool else Bool else if true then Bool else Bool
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( M.d50 ) $ ( if false then x161 else d142 ) ) $ ( if x161 then d107 else x161 ) ) ) ) $ ( if false then d109 else false )
    d162 : if true then if true then Bool else Bool else if false then Bool else Bool
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> if d145 then d130 else x163 ) ) ) $ ( if d120 then false else d145 )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d164 = if if true then d149 else false then if d134 then false else d157 else if false then d130 else true
    d167 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x171 -> x171 ) ) ) $ ( x170 ) ) ) ) $ ( if false then Bool else Bool )
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> ( ( Bool -> Bool ) ∋ ( ( λ x169 -> d145 ) ) ) $ ( x168 ) ) ) ) $ ( if d162 then d152 else true )
    d172 : if true then if true then Bool else Bool else if false then Bool else Bool
    d172 = ( ( M.d55 ) $ ( ( ( M.d15 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x173 -> d107 ) ) ) $ ( d124 ) )
    d174 : if true then if true then Bool else Bool else if false then Bool else Bool
    d174 = if if d143 then true else false then if d152 then true else false else if false then false else d107
    d175 : ( ( Set -> Set ) ∋ ( ( λ x177 -> ( ( Set -> Set ) ∋ ( ( λ x178 -> x177 ) ) ) $ ( x177 ) ) ) ) $ ( if true then Bool else Bool )
    d175 = ( ( M.d77 ) $ ( ( ( M.d106 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> x176 ) ) ) $ ( d174 ) )
    d179 : if false then if false then Bool else Bool else if true then Bool else Bool
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( M.d35 ) $ ( if true then true else true ) ) $ ( if false then d120 else d107 ) ) ) ) $ ( if false then false else true )
    d181 : if false then if true then Bool else Bool else if true then Bool else Bool
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> ( ( Bool -> Bool ) ∋ ( ( λ x183 -> x182 ) ) ) $ ( d175 ) ) ) ) $ ( if false then true else false )
    d184 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if true then x187 else x187 ) ) ) $ ( if false then Bool else Bool )
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> ( ( Bool -> Bool ) ∋ ( ( λ x186 -> x185 ) ) ) $ ( false ) ) ) ) $ ( if d175 then true else d130 )
    d188 : if true then if true then Bool else Bool else if false then Bool else Bool
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( M.d52 ) $ ( if d114 then false else x189 ) ) $ ( if d167 then d157 else d157 ) ) ) ) $ ( if true then d109 else d117 )
    d190 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> Bool ) ) ) $ ( x191 ) ) ) ) $ ( if false then Bool else Bool )
    d190 = ( ( M.d18 ) $ ( if false then d162 else d167 ) ) $ ( ( ( M.d87 ) $ ( false ) ) $ ( d155 ) )
    d193 : if true then if false then Bool else Bool else if false then Bool else Bool
    d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> ( ( M.d32 ) $ ( if x194 then d175 else x194 ) ) $ ( if true then false else x194 ) ) ) ) $ ( if true then d188 else d155 )
    d195 : if false then if true then Bool else Bool else if false then Bool else Bool
    d195 = ( ( M.d43 ) $ ( if d143 then d190 else d172 ) ) $ ( if true then true else false )
    d196 : ( ( Set -> Set ) ∋ ( ( λ x197 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d196 = if if d157 then true else d143 then if false then d181 else false else if d193 then d172 else d188
    d198 : if true then if true then Bool else Bool else if true then Bool else Bool
    d198 = ( ( Bool -> Bool ) ∋ ( ( λ x199 -> ( ( M.d52 ) $ ( if d167 then x199 else d195 ) ) $ ( if d167 then d145 else false ) ) ) ) $ ( if d114 then d157 else false )
    d200 : if true then if false then Bool else Bool else if false then Bool else Bool
    d200 = ( ( M.d69 ) $ ( if true then false else d127 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x201 -> d145 ) ) ) $ ( d181 ) )
    d202 : ( ( Set -> Set ) ∋ ( ( λ x203 -> ( ( Set -> Set ) ∋ ( ( λ x204 -> x203 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d202 = ( ( M.d41 ) $ ( ( ( M.d68 ) $ ( d139 ) ) $ ( false ) ) ) $ ( ( ( M.d69 ) $ ( false ) ) $ ( true ) )
    d205 : if false then if false then Bool else Bool else if false then Bool else Bool
    d205 = ( ( M.d11 ) $ ( if d152 then d195 else d145 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x206 -> d198 ) ) ) $ ( false ) )
    d207 : if false then if false then Bool else Bool else if true then Bool else Bool
    d207 = ( ( M.d104 ) $ ( if false then true else true ) ) $ ( if false then false else false )
    d208 : ( ( Set -> Set ) ∋ ( ( λ x211 -> if false then x211 else x211 ) ) ) $ ( if false then Bool else Bool )
    d208 = ( ( Bool -> Bool ) ∋ ( ( λ x209 -> ( ( Bool -> Bool ) ∋ ( ( λ x210 -> true ) ) ) $ ( d124 ) ) ) ) $ ( if false then d130 else true )
    d212 : if true then if true then Bool else Bool else if true then Bool else Bool
    d212 = ( ( Bool -> Bool ) ∋ ( ( λ x213 -> ( ( Bool -> Bool ) ∋ ( ( λ x214 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then true else d157 )
    d215 : ( ( Set -> Set ) ∋ ( ( λ x216 -> ( ( Set -> Set ) ∋ ( ( λ x217 -> Bool ) ) ) $ ( x216 ) ) ) ) $ ( if true then Bool else Bool )
    d215 = if if d162 then false else d188 then if true then d134 else true else if true then d145 else d193