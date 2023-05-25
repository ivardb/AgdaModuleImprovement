module Size40Test3  where
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

    module M ( p1 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then if false then x4 else Bool else if false then Bool else x3 ) ) ) $ ( if true then x3 else Bool ) ) ) ) $ ( if true then Bool else Bool ) )  where
        d5 : if false then if false then Bool else Bool else if false then Bool else Bool
        d5 = if if p2 then true else p1 then if p2 then true else false else if true then p2 else p1
        d6 : if true then if true then Bool else Bool else if false then Bool else Bool
        d6 = if if d5 then false else false then if false then false else d5 else if d5 then p2 else false
        d7 : if false then if false then Bool else Bool else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if d5 then d6 else d6 ) ) ) $ ( if true then d6 else false )
        d9 : if true then if false then Bool else Bool else if true then Bool else Bool
        d9 = if if d6 then d6 else false then if d6 then d5 else d5 else if d5 then d7 else false
        d10 : if true then if false then Bool else Bool else if true then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> d7 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d7 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then x14 else Bool ) ) ) $ ( if false then Bool else Bool )
        d13 = if if p1 then d10 else d7 then if p2 then p2 else p1 else if true then true else true
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d15 = if if true then p2 else d10 then if d6 then d6 else d9 else if true then p1 else true
        d18 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> x22 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if false then p1 else d13 )
        d23 : if true then if true then Bool else Bool else if false then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> p2 ) ) ) $ ( false ) ) ) ) $ ( if true then p2 else false )
        d26 : if true then if false then Bool else Bool else if true then Bool else Bool
        d26 = if if p2 then p1 else p2 then if false then p1 else true else if p2 then d5 else true
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> true ) ) ) $ ( false ) ) ) ) $ ( if d10 then p2 else false )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( x31 ) ) ) ) $ ( if true then Bool else Bool )
        d30 = if if false then p1 else p1 then if p1 then d15 else false else if d6 then p2 else p2
        d33 : if false then if true then Bool else Bool else if false then Bool else Bool
        d33 = if if p2 then d13 else p1 then if true then p1 else p2 else if d5 then p1 else d18
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> false ) ) ) $ ( x35 ) ) ) ) $ ( if true then p1 else d18 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d38 = if if d30 then d23 else false then if true then d5 else p2 else if d30 then d15 else d15
        d40 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if d9 then true else d26 ) ) ) $ ( if d23 then true else d13 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> Bool ) ) ) $ ( x47 ) ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> false ) ) ) $ ( d23 ) ) ) ) $ ( if false then true else d15 )
        d49 : if false then if true then Bool else Bool else if true then Bool else Bool
        d49 = if if p2 then false else p2 then if p2 then true else d33 else if true then d10 else d34
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then x53 else x53 ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> false ) ) ) $ ( d18 ) ) ) ) $ ( if true then false else p1 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( x55 ) ) ) ) $ ( if false then Bool else Bool )
        d54 = if if d30 then true else p2 then if true then p1 else true else if d13 then true else d15
        d57 : if false then if true then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if d34 then d54 else d30 ) ) ) $ ( if d40 then false else d15 )
        d59 : if false then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> d5 ) ) ) $ ( true ) ) ) ) $ ( if true then d54 else d9 )
        d62 : if false then if true then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> d34 ) ) ) $ ( x63 ) ) ) ) $ ( if p2 then false else d6 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if false then x67 else Bool ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if p1 then p1 else p1 ) ) ) $ ( if false then d30 else p1 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if false then p1 else p2 ) ) ) $ ( if true then false else true )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> x74 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if false then p1 else d44 ) ) ) $ ( if d10 then d49 else false )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( x77 ) ) ) ) $ ( if true then Bool else Bool )
        d76 = if if d54 then p1 else d50 then if d6 then d7 else false else if d27 then d59 else p2
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d79 = if if d76 then true else true then if false then false else d15 else if p1 then true else p1
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d82 = if if false then p2 else true then if p2 then p1 else p2 else if d33 then p2 else true
        d85 : if false then if false then Bool else Bool else if true then Bool else Bool
        d85 = if if p2 then p2 else p1 then if d40 then d10 else p1 else if p1 then d23 else p2
        d86 : if true then if true then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> x87 ) ) ) $ ( d49 ) ) ) ) $ ( if d82 then p1 else d40 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d89 = if if p1 then d23 else d62 then if d13 then p2 else false else if true then d54 else d26
        d92 : if false then if true then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if d18 then d89 else false )
        d95 : if true then if false then Bool else Bool else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if x96 then d34 else true ) ) ) $ ( if d82 then p1 else d92 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then x100 else Bool ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> p2 ) ) ) $ ( true ) ) ) ) $ ( if d27 then d33 else p1 )
        d101 : if false then if true then Bool else Bool else if false then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if d18 then x102 else p1 ) ) ) $ ( if d72 then true else p1 )
        d103 : if true then if true then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if d54 then d49 else true ) ) ) $ ( if p2 then p2 else true )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( x107 ) ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if p1 then d95 else d49 ) ) ) $ ( if true then p1 else false )
        d109 : if true then if true then Bool else Bool else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> true ) ) ) $ ( x110 ) ) ) ) $ ( if true then d40 else d105 )
        d112 : if false then if true then Bool else Bool else if false then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> false ) ) ) $ ( false ) ) ) ) $ ( if d92 then d18 else d18 )
    d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if false then x116 else x116 ) ) ) $ ( if false then Bool else Bool )
    d115 = if if true then true else false then if false then true else true else if true then false else false
    d117 : if true then if false then Bool else Bool else if false then Bool else Bool
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if true then x118 else x118 ) ) ) $ ( if d115 then true else d115 )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then x120 else x120 ) ) ) $ ( if false then Bool else Bool )
    d119 = if if false then d115 else false then if d117 then true else d115 else if true then d117 else false
    d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d121 = ( ( M.d59 ) $ ( if true then true else d115 ) ) $ ( if d115 then d117 else d115 )
    d123 : if true then if true then Bool else Bool else if true then Bool else Bool
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if true then false else x124 ) ) ) $ ( if false then d117 else false )
    d125 : if true then if false then Bool else Bool else if false then Bool else Bool
    d125 = ( ( M.d86 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x126 -> false ) ) ) $ ( d119 ) ) ) $ ( ( ( M.d109 ) $ ( false ) ) $ ( true ) )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> x129 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d127 = ( ( M.d38 ) $ ( ( ( M.d112 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x128 -> false ) ) ) $ ( true ) )
    d131 : if true then if false then Bool else Bool else if false then Bool else Bool
    d131 = ( ( M.d54 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x132 -> true ) ) ) $ ( d119 ) ) ) $ ( ( ( M.d97 ) $ ( d123 ) ) $ ( d121 ) )
    d133 : if true then if true then Bool else Bool else if false then Bool else Bool
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> if d121 then true else x134 ) ) ) $ ( if d117 then d131 else d115 )
    d135 : ( ( Set -> Set ) ∋ ( ( λ x137 -> if true then x137 else Bool ) ) ) $ ( if true then Bool else Bool )
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> if false then false else false ) ) ) $ ( if true then d119 else false )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> x141 ) ) ) $ ( x140 ) ) ) ) $ ( if true then Bool else Bool )
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> if false then d127 else false ) ) ) $ ( if true then false else false )
    d142 : if false then if true then Bool else Bool else if true then Bool else Bool
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> if true then false else true ) ) ) $ ( if false then true else d121 )
    d144 : if false then if false then Bool else Bool else if true then Bool else Bool
    d144 = ( ( M.d92 ) $ ( if true then true else true ) ) $ ( if false then d135 else d127 )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> Bool ) ) ) $ ( x147 ) ) ) ) $ ( if false then Bool else Bool )
    d145 = ( ( M.d9 ) $ ( ( ( M.d7 ) $ ( false ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x146 -> x146 ) ) ) $ ( true ) )
    d149 : if true then if false then Bool else Bool else if false then Bool else Bool
    d149 = if if d138 then d138 else false then if true then true else false else if d135 then false else d117
    d150 : if true then if true then Bool else Bool else if false then Bool else Bool
    d150 = ( ( M.d18 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x151 -> x151 ) ) ) $ ( false ) ) ) $ ( ( ( M.d89 ) $ ( d115 ) ) $ ( d133 ) )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x154 -> if true then Bool else x154 ) ) ) $ ( if false then Bool else Bool )
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> if true then d150 else false ) ) ) $ ( if d121 then d123 else false )
    d155 : if false then if false then Bool else Bool else if false then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> if false then d138 else true ) ) ) $ ( if false then d138 else true )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> if false then x158 else x158 ) ) ) $ ( if false then Bool else Bool )
    d157 = if if true then d117 else false then if true then d117 else false else if false then d152 else d115
    d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> x160 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d159 = if if false then d144 else true then if true then false else d127 else if false then false else false
    d162 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> Bool ) ) ) $ ( x164 ) ) ) ) $ ( if false then Bool else Bool )
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> ( ( M.d54 ) $ ( if true then d138 else x163 ) ) $ ( if d125 then false else x163 ) ) ) ) $ ( if true then false else d149 )
    d166 : if false then if false then Bool else Bool else if false then Bool else Bool
    d166 = if if false then true else d117 then if false then true else true else if d142 then d155 else d142
    d167 : if false then if true then Bool else Bool else if false then Bool else Bool
    d167 = if if true then d166 else true then if d145 then d144 else d150 else if d157 then d127 else d119
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d168 = if if d115 then d138 else false then if false then d115 else true else if d157 then d149 else false
    d170 : ( ( Set -> Set ) ∋ ( ( λ x171 -> if false then x171 else x171 ) ) ) $ ( if false then Bool else Bool )
    d170 = if if d125 then d125 else true then if d157 then d138 else d144 else if d125 then d145 else true
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d172 = if if d145 then d117 else d170 then if true then false else d155 else if true then d138 else true
    d174 : ( ( Set -> Set ) ∋ ( ( λ x176 -> ( ( Set -> Set ) ∋ ( ( λ x177 -> x176 ) ) ) $ ( x176 ) ) ) ) $ ( if false then Bool else Bool )
    d174 = ( ( M.d95 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x175 -> d150 ) ) ) $ ( true ) ) ) $ ( ( ( M.d112 ) $ ( true ) ) $ ( false ) )
    d178 : if false then if true then Bool else Bool else if false then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( x179 ) ) ) ) $ ( if true then false else d142 )
    d181 : if true then if true then Bool else Bool else if false then Bool else Bool
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> ( ( Bool -> Bool ) ∋ ( ( λ x183 -> x183 ) ) ) $ ( d121 ) ) ) ) $ ( if d157 then false else d127 )
    d184 : if true then if true then Bool else Bool else if false then Bool else Bool
    d184 = if if true then false else true then if true then true else d138 else if d170 then d166 else d174
    d185 : if false then if true then Bool else Bool else if true then Bool else Bool
    d185 = if if false then false else true then if false then d142 else d159 else if d174 then false else d166
    d186 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if false then x187 else x187 ) ) ) $ ( if false then Bool else Bool )
    d186 = if if false then d145 else d123 then if false then false else d178 else if d144 then true else d166
    d188 : if false then if false then Bool else Bool else if false then Bool else Bool
    d188 = if if d159 then d117 else d178 then if true then d162 else false else if false then d150 else d144
    d189 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x191 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d189 = if if false then d149 else true then if true then false else false else if d145 then false else d174
    d192 : if true then if false then Bool else Bool else if false then Bool else Bool
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> if d172 then x193 else x193 ) ) ) $ ( if false then true else d170 )
    d194 : if false then if false then Bool else Bool else if true then Bool else Bool
    d194 = if if d192 then true else d155 then if d166 then d123 else true else if false then true else true
    d195 : if true then if false then Bool else Bool else if true then Bool else Bool
    d195 = ( ( M.d34 ) $ ( if d121 then false else d123 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x196 -> false ) ) ) $ ( d149 ) )
    d197 : ( ( Set -> Set ) ∋ ( ( λ x199 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> x199 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> ( ( M.d95 ) $ ( if d131 then x198 else x198 ) ) $ ( if false then d149 else x198 ) ) ) ) $ ( if d167 then d123 else false )
    d201 : if true then if false then Bool else Bool else if false then Bool else Bool
    d201 = ( ( M.d33 ) $ ( if true then d149 else true ) ) $ ( ( ( M.d23 ) $ ( d168 ) ) $ ( d144 ) )
    d202 : ( ( Set -> Set ) ∋ ( ( λ x203 -> if false then x203 else x203 ) ) ) $ ( if false then Bool else Bool )
    d202 = if if d178 then d133 else d149 then if false then d138 else d150 else if false then false else true