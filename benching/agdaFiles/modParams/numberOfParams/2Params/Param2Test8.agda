module Param2Test8  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then Bool else x6 ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> ( ( Bool -> Bool ) ∋ ( ( λ x5 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p2 then p1 else p1 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then x9 else Bool ) ) ) $ ( if true then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if p2 then true else p1 ) ) ) $ ( if d3 then true else true )
        d10 : if false then if true then Bool else Bool else if false then Bool else Bool
        d10 = if if false then p2 else d7 then if d3 then d3 else true else if false then p1 else true
        d11 : if true then if true then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d14 : if false then if true then Bool else Bool else if true then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if true then d10 else false ) ) ) $ ( if p1 then true else false )
        d16 : if false then if false then Bool else Bool else if false then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if x17 then p2 else d10 ) ) ) $ ( if p2 then p2 else p2 )
        d18 : if false then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> d11 ) ) ) $ ( false ) ) ) ) $ ( if p2 then p1 else d14 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if false then x22 else x22 ) ) ) $ ( if true then Bool else Bool )
        d21 = if if true then d16 else p1 then if false then p1 else p2 else if false then p2 else p1
        d23 : if true then if true then Bool else Bool else if true then Bool else Bool
        d23 = if if d3 then p2 else true then if d11 then true else true else if d14 then false else p2
        d24 : if true then if false then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> d21 ) ) ) $ ( d18 ) ) ) ) $ ( if d14 then d21 else p2 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d27 = if if p1 then true else p1 then if false then d11 else false else if d3 then p1 else p2
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( x32 ) ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> x30 ) ) ) $ ( true ) ) ) ) $ ( if d23 then true else p1 )
        d34 : if false then if false then Bool else Bool else if false then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> true ) ) ) $ ( d29 ) ) ) ) $ ( if d27 then p2 else false )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x39 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d37 = if if p2 then p1 else p1 then if d7 then false else false else if p1 then d27 else p2
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> Bool ) ) ) $ ( x41 ) ) ) ) $ ( if false then Bool else Bool )
        d40 = if if false then p1 else p2 then if false then p1 else p1 else if true then false else true
        d43 : if false then if true then Bool else Bool else if false then Bool else Bool
        d43 = if if d10 then false else p1 then if p2 then p2 else d37 else if p1 then d7 else false
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then Bool else x47 ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> d34 ) ) ) $ ( p1 ) ) ) ) $ ( if d23 then true else d23 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if false then x49 else x49 ) ) ) $ ( if false then Bool else Bool )
        d48 = if if p2 then d3 else false then if d40 then p1 else p2 else if p2 then true else false
        d50 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if false then x52 else Bool ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if d16 then d24 else false ) ) ) $ ( if p1 then d18 else true )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x57 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> true ) ) ) $ ( d40 ) ) ) ) $ ( if d11 then p2 else p2 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = if if d14 then false else false then if p2 then false else true else if true then d23 else p1
        d61 : if false then if true then Bool else Bool else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if p2 then false else p2 ) ) ) $ ( if d50 then true else p1 )
        d63 : if false then if true then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> x65 ) ) ) $ ( false ) ) ) ) $ ( if p1 then d24 else p2 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else x67 ) ) ) $ ( if false then Bool else Bool )
        d66 = if if false then true else p1 then if p2 then d29 else p1 else if p1 then d58 else false
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then x69 else x69 ) ) ) $ ( if true then Bool else Bool )
        d68 = if if false then p2 else false then if p2 then p2 else d53 else if false then true else true
        d70 : if true then if false then Bool else Bool else if false then Bool else Bool
        d70 = if if d43 then d37 else p1 then if false then d50 else false else if p2 then d40 else p1
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if true then true else false ) ) ) $ ( if d61 then p1 else false )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> Bool ) ) ) $ ( x78 ) ) ) ) $ ( if true then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> false ) ) ) $ ( p2 ) ) ) ) $ ( if true then d27 else d18 )
        d80 : if true then if true then Bool else Bool else if false then Bool else Bool
        d80 = if if p1 then d11 else false then if true then true else false else if p1 then p2 else d14
        d81 : if true then if false then Bool else Bool else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> false ) ) ) $ ( d53 ) ) ) ) $ ( if d27 then d75 else p1 )
        d84 : if true then if true then Bool else Bool else if true then Bool else Bool
        d84 = if if d43 then true else true then if true then p2 else true else if p1 then false else p1
        d85 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( x88 ) ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> d18 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d90 = if if p1 then true else d18 then if p1 then p2 else p2 else if true then d10 else p2
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d92 = if if true then d18 else d44 then if false then false else false else if d3 then true else d16
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if false then x96 else x96 ) ) ) $ ( if true then Bool else Bool )
        d95 = if if p1 then false else p2 then if true then d85 else false else if p1 then d40 else d34
        d97 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( x100 ) ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> false ) ) ) $ ( d21 ) ) ) ) $ ( if p2 then p1 else d43 )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then x103 else Bool ) ) ) $ ( if true then Bool else Bool )
        d102 = if if p2 then d81 else d58 then if d11 then d3 else false else if p1 then p2 else d44
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> x106 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d104 = if if false then false else p1 then if d75 then p2 else p1 else if p1 then true else false
        d107 : if false then if true then Bool else Bool else if true then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> d48 ) ) ) $ ( d81 ) ) ) ) $ ( if d97 then p1 else p2 )
        d110 : if false then if false then Bool else Bool else if false then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> x111 ) ) ) $ ( x111 ) ) ) ) $ ( if p2 then true else p1 )
    d113 : if true then if true then Bool else Bool else if true then Bool else Bool
    d113 = if if true then true else true then if true then false else false else if false then false else false
    d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then x116 else Bool ) ) ) $ ( if false then Bool else Bool )
    d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if x115 then false else x115 ) ) ) $ ( if d113 then false else d113 )
    d117 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then x119 else x119 ) ) ) $ ( if true then Bool else Bool )
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if x118 then false else true ) ) ) $ ( if false then d114 else false )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> x122 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( M.d53 ) $ ( if true then x121 else x121 ) ) $ ( if true then x121 else true ) ) ) ) $ ( if d117 then true else d117 )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> x127 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d124 = ( ( M.d68 ) $ ( ( ( M.d14 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x125 -> x125 ) ) ) $ ( d120 ) )
    d128 : if false then if true then Bool else Bool else if false then Bool else Bool
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> if false then x129 else false ) ) ) $ ( if false then d120 else false )
    d130 : if false then if true then Bool else Bool else if true then Bool else Bool
    d130 = ( ( M.d10 ) $ ( if true then d117 else d114 ) ) $ ( ( ( M.d61 ) $ ( false ) ) $ ( false ) )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x134 -> if true then x134 else x134 ) ) ) $ ( if true then Bool else Bool )
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( Bool -> Bool ) ∋ ( ( λ x133 -> x132 ) ) ) $ ( x132 ) ) ) ) $ ( if d114 then d130 else false )
    d135 : if true then if true then Bool else Bool else if false then Bool else Bool
    d135 = if if false then d114 else true then if false then d117 else true else if true then d124 else d130
    d136 : if false then if false then Bool else Bool else if true then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( M.d3 ) $ ( if x137 then x137 else x137 ) ) $ ( if d128 then true else d130 ) ) ) ) $ ( if true then true else true )
    d138 : if true then if false then Bool else Bool else if true then Bool else Bool
    d138 = ( ( M.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x139 -> x139 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x140 -> false ) ) ) $ ( false ) )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if false then Bool else x143 ) ) ) $ ( if true then Bool else Bool )
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> if d117 then d124 else x142 ) ) ) $ ( if true then d117 else d130 )
    d144 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if true then x145 else x145 ) ) ) $ ( if true then Bool else Bool )
    d144 = if if true then d138 else d138 then if true then d117 else d124 else if d138 then d135 else d120
    d146 : if false then if false then Bool else Bool else if true then Bool else Bool
    d146 = ( ( M.d75 ) $ ( ( ( M.d7 ) $ ( false ) ) $ ( d144 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x147 -> x147 ) ) ) $ ( true ) )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then Bool else x150 ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( M.d34 ) $ ( if true then d120 else true ) ) $ ( if d113 then false else d117 ) ) ) ) $ ( if d113 then false else false )
    d151 : if true then if true then Bool else Bool else if true then Bool else Bool
    d151 = if if d131 then false else false then if d117 then d130 else true else if d120 then false else true
    d152 : if false then if true then Bool else Bool else if true then Bool else Bool
    d152 = if if true then true else false then if false then true else true else if d144 then d148 else d124
    d153 : if false then if false then Bool else Bool else if false then Bool else Bool
    d153 = if if true then d136 else true then if true then d152 else d128 else if false then d117 else false
    d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> if false then Bool else x155 ) ) ) $ ( if true then Bool else Bool )
    d154 = if if true then d148 else true then if d128 then d136 else true else if d144 then d141 else d138
    d156 : if false then if false then Bool else Bool else if true then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( Bool -> Bool ) ∋ ( ( λ x158 -> false ) ) ) $ ( x157 ) ) ) ) $ ( if d120 then false else d131 )
    d159 : if true then if false then Bool else Bool else if false then Bool else Bool
    d159 = if if d135 then true else false then if d124 then false else false else if true then false else d128
    d160 : ( ( Set -> Set ) ∋ ( ( λ x161 -> ( ( Set -> Set ) ∋ ( ( λ x162 -> x162 ) ) ) $ ( x161 ) ) ) ) $ ( if false then Bool else Bool )
    d160 = if if d136 then d124 else d128 then if true then d148 else d151 else if d130 then false else d136
    d163 : if true then if true then Bool else Bool else if true then Bool else Bool
    d163 = ( ( M.d37 ) $ ( ( ( M.d90 ) $ ( d146 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x164 -> x164 ) ) ) $ ( false ) )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if true then x167 else x167 ) ) ) $ ( if true then Bool else Bool )
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> if d144 then false else false ) ) ) $ ( if true then d138 else d117 )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x171 -> Bool ) ) ) $ ( x170 ) ) ) ) $ ( if false then Bool else Bool )
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> ( ( M.d63 ) $ ( if d117 then false else d153 ) ) $ ( if d120 then x169 else true ) ) ) ) $ ( if d138 then false else true )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> x174 ) ) ) $ ( x173 ) ) ) ) $ ( if true then Bool else Bool )
    d172 = if if false then true else false then if true then true else d159 else if d148 then false else false
    d175 : if true then if true then Bool else Bool else if false then Bool else Bool
    d175 = ( ( M.d75 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> d153 ) ) ) $ ( d124 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x177 -> true ) ) ) $ ( false ) )
    d178 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> x181 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> if false then d124 else true ) ) ) $ ( if false then d124 else d152 )
    d182 : if true then if true then Bool else Bool else if true then Bool else Bool
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( M.d75 ) $ ( if x183 then x183 else true ) ) $ ( if d165 then true else x183 ) ) ) ) $ ( if true then false else d135 )
    d184 : ( ( Set -> Set ) ∋ ( ( λ x185 -> ( ( Set -> Set ) ∋ ( ( λ x186 -> x185 ) ) ) $ ( x185 ) ) ) ) $ ( if true then Bool else Bool )
    d184 = if if d148 then true else d130 then if d172 then d182 else d175 else if d144 then false else true
    d187 : ( ( Set -> Set ) ∋ ( ( λ x189 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> x190 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d187 = ( ( Bool -> Bool ) ∋ ( ( λ x188 -> ( ( M.d81 ) $ ( if x188 then d178 else x188 ) ) $ ( if x188 then true else d128 ) ) ) ) $ ( if false then d138 else d138 )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x192 -> ( ( Set -> Set ) ∋ ( ( λ x193 -> x193 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d191 = ( ( M.d24 ) $ ( if d151 then d154 else d130 ) ) $ ( ( ( M.d90 ) $ ( d151 ) ) $ ( false ) )
    d194 : ( ( Set -> Set ) ∋ ( ( λ x197 -> if true then x197 else x197 ) ) ) $ ( if true then Bool else Bool )
    d194 = ( ( M.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x195 -> x195 ) ) ) $ ( d184 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x196 -> x196 ) ) ) $ ( d130 ) )
    d198 : ( ( Set -> Set ) ∋ ( ( λ x199 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> x199 ) ) ) $ ( x199 ) ) ) ) $ ( if true then Bool else Bool )
    d198 = if if true then d194 else d138 then if false then d168 else d144 else if true then d163 else d128
    d201 : if false then if false then Bool else Bool else if false then Bool else Bool
    d201 = ( ( M.d24 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x202 -> true ) ) ) $ ( false ) ) ) $ ( ( ( M.d92 ) $ ( true ) ) $ ( false ) )
    d203 : if false then if true then Bool else Bool else if true then Bool else Bool
    d203 = ( ( Bool -> Bool ) ∋ ( ( λ x204 -> if true then false else true ) ) ) $ ( if d163 then true else d124 )
    d205 : ( ( Set -> Set ) ∋ ( ( λ x206 -> ( ( Set -> Set ) ∋ ( ( λ x207 -> Bool ) ) ) $ ( x206 ) ) ) ) $ ( if false then Bool else Bool )
    d205 = if if d120 then d153 else true then if d201 then d156 else d120 else if true then d163 else true
    d208 : ( ( Set -> Set ) ∋ ( ( λ x210 -> ( ( Set -> Set ) ∋ ( ( λ x211 -> x210 ) ) ) $ ( x210 ) ) ) ) $ ( if false then Bool else Bool )
    d208 = ( ( M.d10 ) $ ( ( ( M.d16 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x209 -> false ) ) ) $ ( false ) )
    d212 : if true then if false then Bool else Bool else if false then Bool else Bool
    d212 = ( ( M.d58 ) $ ( ( ( M.d80 ) $ ( d168 ) ) $ ( d151 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x213 -> true ) ) ) $ ( true ) )
    d214 : ( ( Set -> Set ) ∋ ( ( λ x215 -> ( ( Set -> Set ) ∋ ( ( λ x216 -> x216 ) ) ) $ ( x215 ) ) ) ) $ ( if false then Bool else Bool )
    d214 = ( ( M.d66 ) $ ( ( ( M.d7 ) $ ( false ) ) $ ( true ) ) ) $ ( ( ( M.d85 ) $ ( d154 ) ) $ ( d131 ) )