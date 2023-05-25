module Param2Test9  where
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
        d3 : if true then if true then Bool else Bool else if true then Bool else Bool
        d3 = if if p1 then p1 else p1 then if p1 then true else true else if p1 then false else p1
        d4 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then Bool else x7 ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> d3 ) ) ) $ ( false ) ) ) ) $ ( if d3 then false else d3 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d8 = if if p1 then d4 else p1 then if d3 then d4 else p2 else if d3 then false else d3
        d11 : if true then if false then Bool else Bool else if false then Bool else Bool
        d11 = if if false then d8 else true then if false then d3 else p2 else if d3 then d4 else d4
        d12 : if false then if false then Bool else Bool else if false then Bool else Bool
        d12 = if if p1 then true else d8 then if p1 then d3 else false else if true then true else p1
        d13 : if false then if false then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> x15 ) ) ) $ ( p1 ) ) ) ) $ ( if d3 then p2 else true )
        d16 : if false then if true then Bool else Bool else if false then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> false ) ) ) $ ( x17 ) ) ) ) $ ( if p1 then true else d3 )
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = if if d11 then true else d16 then if false then d12 else d16 else if false then d13 else p1
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then x21 else Bool ) ) ) $ ( if true then Bool else Bool )
        d20 = if if false then false else false then if false then d12 else true else if d3 then p1 else false
        d22 : if false then if false then Bool else Bool else if false then Bool else Bool
        d22 = if if p2 then true else p1 then if false then d11 else false else if d8 then p2 else p1
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( x24 ) ) ) ) $ ( if true then Bool else Bool )
        d23 = if if false then true else p2 then if p2 then d13 else d4 else if d20 then p2 else d3
        d26 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( x29 ) ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if d3 then true else d20 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d31 = if if d20 then p2 else d22 then if p2 then d12 else p1 else if d23 then d19 else p2
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> Bool ) ) ) $ ( x35 ) ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if false then d23 else true ) ) ) $ ( if p2 then d26 else p2 )
        d37 : if false then if false then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if d20 then d26 else d22 ) ) ) $ ( if d3 then true else p2 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if true then x42 else x42 ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> p2 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p2 else d31 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d43 = if if false then d26 else p1 then if d22 then p2 else false else if d20 then p2 else d26
        d45 : if true then if true then Bool else Bool else if true then Bool else Bool
        d45 = if if d20 then false else p1 then if d11 then p2 else p2 else if d12 then false else false
        d46 : if false then if false then Bool else Bool else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else p2 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x52 ) ) ) $ ( x51 ) ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if d23 then x50 else d3 ) ) ) $ ( if d31 then false else d46 )
        d53 : if false then if false then Bool else Bool else if true then Bool else Bool
        d53 = if if p2 then d16 else p2 then if false then p1 else true else if p2 then true else p2
        d54 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( x56 ) ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if p1 then true else d43 ) ) ) $ ( if d43 then p1 else p1 )
        d58 : if false then if false then Bool else Bool else if true then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> p2 ) ) ) $ ( p2 ) ) ) ) $ ( if d12 then false else p2 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> x62 ) ) ) $ ( x62 ) ) ) ) $ ( if true then Bool else Bool )
        d61 = if if d46 then p1 else false then if true then true else p2 else if p2 then d31 else p2
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then x67 else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> true ) ) ) $ ( d46 ) ) ) ) $ ( if d11 then p1 else true )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x71 ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if d39 then true else true ) ) ) $ ( if p1 then d12 else p1 )
        d72 : if true then if true then Bool else Bool else if true then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if p2 then true else d23 ) ) ) $ ( if true then p2 else true )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x77 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> p2 ) ) ) $ ( d46 ) ) ) ) $ ( if false then true else p2 )
        d79 : if true then if true then Bool else Bool else if false then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d26 ) ) ) $ ( d39 ) ) ) ) $ ( if false then d23 else d8 )
        d82 : if true then if true then Bool else Bool else if true then Bool else Bool
        d82 = if if p1 then d19 else d49 then if d11 then d26 else p1 else if d49 then d31 else p2
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then x84 else Bool ) ) ) $ ( if true then Bool else Bool )
        d83 = if if d8 then false else d79 then if p2 then true else d61 else if p2 then false else d22
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> x86 ) ) ) $ ( p1 ) ) ) ) $ ( if d72 then d46 else p1 )
        d88 : if true then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if d74 then p1 else false ) ) ) $ ( if p1 then d13 else d72 )
        d90 : if false then if true then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> d88 ) ) ) $ ( d83 ) ) ) ) $ ( if false then d4 else p1 )
        d93 : if false then if false then Bool else Bool else if false then Bool else Bool
        d93 = if if false then false else d58 then if d43 then p2 else false else if true then d83 else p2
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then x95 else x95 ) ) ) $ ( if false then Bool else Bool )
        d94 = if if p1 then p2 else p1 then if true then false else d46 else if d4 then p1 else d64
        d96 : if false then if true then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> x97 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d90 else d37 )
        d99 : if true then if false then Bool else Bool else if false then Bool else Bool
        d99 = if if d79 then p1 else p1 then if p1 then p1 else d3 else if false then d49 else false
        d100 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> x102 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if true then p1 else false ) ) ) $ ( if d79 then true else p1 )
        d104 : if true then if true then Bool else Bool else if false then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if p2 then p1 else d90 ) ) ) $ ( if false then false else false )
    d106 : if false then if true then Bool else Bool else if false then Bool else Bool
    d106 = ( ( M.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x107 -> x107 ) ) ) $ ( true ) ) ) $ ( ( ( M.d8 ) $ ( false ) ) $ ( false ) )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else x110 ) ) ) $ ( if false then Bool else Bool )
    d108 = ( ( M.d79 ) $ ( ( ( M.d61 ) $ ( false ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x109 -> d106 ) ) ) $ ( d106 ) )
    d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d111 = ( ( M.d54 ) $ ( if true then d108 else false ) ) $ ( ( ( M.d96 ) $ ( false ) ) $ ( d108 ) )
    d114 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then Bool else x117 ) ) ) $ ( if false then Bool else Bool )
    d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> true ) ) ) $ ( d111 ) ) ) ) $ ( if false then true else false )
    d118 : if true then if false then Bool else Bool else if true then Bool else Bool
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if true then d108 else x119 ) ) ) $ ( if true then d108 else d108 )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> x123 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( M.d49 ) $ ( if true then d114 else x121 ) ) $ ( if x121 then true else x121 ) ) ) ) $ ( if d114 then d111 else d111 )
    d124 : if true then if false then Bool else Bool else if true then Bool else Bool
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if d118 then x125 else d106 ) ) ) $ ( if d114 then d108 else d106 )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> x128 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d126 = if if false then true else true then if true then true else d118 else if true then d108 else true
    d129 : if false then if false then Bool else Bool else if false then Bool else Bool
    d129 = ( ( M.d13 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x130 -> true ) ) ) $ ( d124 ) ) ) $ ( if true then d118 else d124 )
    d131 : if true then if true then Bool else Bool else if false then Bool else Bool
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> if true then x132 else x132 ) ) ) $ ( if d114 then false else d120 )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> Bool ) ) ) $ ( x136 ) ) ) ) $ ( if false then Bool else Bool )
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> x134 ) ) ) $ ( true ) ) ) ) $ ( if d118 then false else d126 )
    d138 : if true then if true then Bool else Bool else if false then Bool else Bool
    d138 = ( ( M.d96 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x139 -> d118 ) ) ) $ ( false ) ) ) $ ( if d118 then true else true )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if true then Bool else x142 ) ) ) $ ( if false then Bool else Bool )
    d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> ( ( M.d96 ) $ ( if false then d120 else x141 ) ) $ ( if d106 then d138 else x141 ) ) ) ) $ ( if false then d133 else true )
    d143 : if false then if true then Bool else Bool else if true then Bool else Bool
    d143 = if if false then true else false then if false then false else true else if d124 then true else true
    d144 : if false then if true then Bool else Bool else if true then Bool else Bool
    d144 = ( ( M.d85 ) $ ( ( ( M.d46 ) $ ( true ) ) $ ( false ) ) ) $ ( if false then d126 else d129 )
    d145 : if false then if false then Bool else Bool else if true then Bool else Bool
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> ( ( Bool -> Bool ) ∋ ( ( λ x147 -> x147 ) ) ) $ ( x146 ) ) ) ) $ ( if true then false else true )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> if false then x149 else x149 ) ) ) $ ( if false then Bool else Bool )
    d148 = if if true then d106 else false then if d131 then false else false else if true then false else false
    d150 : if false then if true then Bool else Bool else if true then Bool else Bool
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> ( ( Bool -> Bool ) ∋ ( ( λ x152 -> x151 ) ) ) $ ( true ) ) ) ) $ ( if d120 then d144 else true )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x156 -> ( ( Set -> Set ) ∋ ( ( λ x157 -> x156 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( Bool -> Bool ) ∋ ( ( λ x155 -> x154 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d133 )
    d158 : if false then if false then Bool else Bool else if false then Bool else Bool
    d158 = if if true then true else d108 then if d108 then false else true else if d153 then d114 else true
    d159 : ( ( Set -> Set ) ∋ ( ( λ x161 -> ( ( Set -> Set ) ∋ ( ( λ x162 -> Bool ) ) ) $ ( x161 ) ) ) ) $ ( if true then Bool else Bool )
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( M.d37 ) $ ( if false then x160 else d129 ) ) $ ( if x160 then false else true ) ) ) ) $ ( if true then d150 else d158 )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x165 -> if false then x165 else Bool ) ) ) $ ( if true then Bool else Bool )
    d163 = ( ( M.d88 ) $ ( ( ( M.d99 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x164 -> d145 ) ) ) $ ( d106 ) )
    d166 : if false then if true then Bool else Bool else if false then Bool else Bool
    d166 = ( ( M.d45 ) $ ( ( ( M.d94 ) $ ( false ) ) $ ( d150 ) ) ) $ ( if d159 then d126 else d150 )
    d167 : if true then if false then Bool else Bool else if false then Bool else Bool
    d167 = if if d108 then true else false then if d106 then false else d118 else if true then d106 else false
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if true then x169 else Bool ) ) ) $ ( if false then Bool else Bool )
    d168 = if if false then true else d120 then if d114 then true else d106 else if d153 then d111 else d129
    d170 : if true then if true then Bool else Bool else if false then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> if true then x171 else true ) ) ) $ ( if d143 then d129 else true )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d172 = ( ( Bool -> Bool ) ∋ ( ( λ x173 -> if false then true else x173 ) ) ) $ ( if d108 then false else d114 )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x177 -> if false then x177 else Bool ) ) ) $ ( if false then Bool else Bool )
    d176 = if if d138 then false else d118 then if true then false else false else if d166 then d138 else d133
    d178 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if false then Bool else x180 ) ) ) $ ( if false then Bool else Bool )
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> if x179 then x179 else x179 ) ) ) $ ( if true then d148 else d133 )
    d181 : if false then if false then Bool else Bool else if false then Bool else Bool
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> if d111 then d143 else d167 ) ) ) $ ( if d140 then true else d168 )
    d183 : ( ( Set -> Set ) ∋ ( ( λ x185 -> if false then Bool else x185 ) ) ) $ ( if true then Bool else Bool )
    d183 = ( ( M.d90 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x184 -> d166 ) ) ) $ ( d111 ) ) ) $ ( if d150 then d166 else d176 )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if true then x187 else Bool ) ) ) $ ( if false then Bool else Bool )
    d186 = if if true then true else true then if true then true else d178 else if d163 then d178 else true
    d188 : if false then if false then Bool else Bool else if true then Bool else Bool
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> if false then d144 else x189 ) ) ) $ ( if d172 then d166 else d181 )
    d190 : if false then if true then Bool else Bool else if false then Bool else Bool
    d190 = ( ( M.d64 ) $ ( ( ( M.d64 ) $ ( d124 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x191 -> false ) ) ) $ ( false ) )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> x196 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> ( ( Bool -> Bool ) ∋ ( ( λ x194 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then false else d133 )
    d197 : if true then if true then Bool else Bool else if true then Bool else Bool
    d197 = ( ( M.d90 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x198 -> x198 ) ) ) $ ( d148 ) ) ) $ ( ( ( M.d94 ) $ ( d114 ) ) $ ( d140 ) )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if false then x200 else x200 ) ) ) $ ( if false then Bool else Bool )
    d199 = if if false then true else d111 then if d106 then false else false else if true then d188 else true
    d201 : ( ( Set -> Set ) ∋ ( ( λ x202 -> if false then x202 else x202 ) ) ) $ ( if true then Bool else Bool )
    d201 = if if d168 then true else d106 then if d114 then d181 else d172 else if true then false else d148
    d203 : ( ( Set -> Set ) ∋ ( ( λ x205 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d203 = ( ( Bool -> Bool ) ∋ ( ( λ x204 -> ( ( M.d33 ) $ ( if d176 then d106 else false ) ) $ ( if x204 then d176 else d138 ) ) ) ) $ ( if d133 then d120 else d190 )
    d206 : ( ( Set -> Set ) ∋ ( ( λ x208 -> if false then x208 else x208 ) ) ) $ ( if true then Bool else Bool )
    d206 = ( ( M.d53 ) $ ( ( ( M.d104 ) $ ( d138 ) ) $ ( d143 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x207 -> d108 ) ) ) $ ( true ) )