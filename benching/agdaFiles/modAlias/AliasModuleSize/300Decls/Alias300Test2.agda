module Alias300Test2  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else Bool ) ) ) $ ( Bool ) ) ( p3 : if false then Bool else Bool )  where
        d4 : if false then if true then Bool else Bool else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> x6 ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else false )
        d7 : if true then if true then Bool else Bool else if true then Bool else Bool
        d7 = if if true then d4 else d4 then if false then d4 else p3 else if d4 then d4 else p1
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> Bool ) ) ) $ ( x9 ) ) ) ) $ ( if true then Bool else Bool )
        d8 = if if p3 then p3 else p3 then if true then false else false else if d4 then p1 else p3
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then Bool else x12 ) ) ) $ ( if true then Bool else Bool )
        d11 = if if p1 then true else false then if d7 then d8 else d8 else if p1 then false else false
        d13 : if true then if false then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> d11 ) ) ) $ ( d7 ) ) ) ) $ ( if p3 then false else false )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x18 ) ) ) $ ( x17 ) ) ) ) $ ( if false then Bool else Bool )
        d16 = if if d7 then p1 else true then if d11 then d8 else p1 else if d11 then d4 else p3
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = if if false then d11 else d16 then if p1 then d4 else d16 else if p3 then d7 else p1
        d20 : if true then if false then Bool else Bool else if true then Bool else Bool
        d20 = if if d13 then p3 else false then if d16 then d8 else d8 else if p3 then true else d19
        d21 : if false then if true then Bool else Bool else if true then Bool else Bool
        d21 = if if d13 then p1 else d11 then if p3 then p3 else p1 else if true then d7 else false
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then Bool else x24 ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if false then false else x23 ) ) ) $ ( if true then d13 else false )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( x26 ) ) ) ) $ ( if true then Bool else Bool )
        d25 = if if p3 then p3 else true then if p1 then p3 else p1 else if d8 then p1 else false
        d28 : if true then if true then Bool else Bool else if false then Bool else Bool
        d28 = if if p3 then p3 else true then if d25 then p3 else d4 else if true then d8 else p3
        d29 : if true then if false then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if false then false else d28 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d32 = if if d7 then true else p3 then if d29 then p3 else p1 else if false then false else true
        d35 : if false then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> d16 ) ) ) $ ( d16 ) ) ) ) $ ( if p1 then d4 else true )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then x39 else x39 ) ) ) $ ( if false then Bool else Bool )
        d38 = if if d19 then d13 else false then if d7 then false else false else if false then p1 else d11
        d40 : if false then if true then Bool else Bool else if false then Bool else Bool
        d40 = if if d19 then d21 else p1 then if false then p1 else p3 else if false then true else d25
        d41 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( x43 ) ) ) ) $ ( if true then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if p1 then p3 else d38 ) ) ) $ ( if p1 then d25 else d25 )
        d45 : if true then if true then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if d19 then x46 else p3 ) ) ) $ ( if p1 then d19 else p3 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( x48 ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if false then d29 else true then if d22 then false else true else if false then p3 else d20
        d50 : if false then if true then Bool else Bool else if true then Bool else Bool
        d50 = if if p1 then p3 else true then if p3 then true else d25 else if d22 then p3 else true
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then x53 else Bool ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if d50 then d41 else p3 ) ) ) $ ( if d38 then p1 else d35 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d54 = if if d51 then true else p3 then if d50 then p3 else true else if true then p1 else p1
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( x59 ) ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if p1 then p3 else p1 ) ) ) $ ( if true then false else p3 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d61 = if if d41 then p1 else d11 then if d28 then d35 else p1 else if true then d47 else p3
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if p1 then p1 else p1 then if p3 then p1 else d35 else if d35 then d50 else false
        d66 : if false then if true then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> false ) ) ) $ ( d7 ) ) ) ) $ ( if d32 then p1 else false )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d69 = if if true then true else true then if true then false else false else if d66 then false else false
        d71 : if false then if true then Bool else Bool else if true then Bool else Bool
        d71 = if if d29 then p1 else false then if d22 then p1 else p3 else if p3 then p1 else p1
        d72 : if false then if false then Bool else Bool else if false then Bool else Bool
        d72 = if if p1 then true else p3 then if d32 then false else p3 else if p1 then d32 else p3
        d73 : if true then if true then Bool else Bool else if true then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if p3 then d50 else p3 ) ) ) $ ( if true then d28 else d63 )
        d75 : if true then if true then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if d25 then p3 else true ) ) ) $ ( if d45 then d25 else d57 )
        d77 : if true then if false then Bool else Bool else if false then Bool else Bool
        d77 = if if false then d38 else true then if p3 then d69 else d71 else if false then p3 else d50
        d78 : if true then if true then Bool else Bool else if true then Bool else Bool
        d78 = if if d51 then p3 else p1 then if p1 then d38 else p3 else if d54 then p1 else true
        d79 : if true then if true then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> true ) ) ) $ ( d4 ) ) ) ) $ ( if p3 then true else p3 )
        d82 : if true then if false then Bool else Bool else if true then Bool else Bool
        d82 = if if p1 then p1 else p3 then if true then p3 else d51 else if d69 then true else d22
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> Bool ) ) ) $ ( x84 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = if if p1 then d40 else p1 then if p3 then d28 else d16 else if p1 then d51 else false
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( x87 ) ) ) ) $ ( if false then Bool else Bool )
        d86 = if if p3 then p3 else d73 then if p1 then d61 else d45 else if p3 then p1 else true
        d89 : if false then if true then Bool else Bool else if false then Bool else Bool
        d89 = if if true then false else p1 then if false then d8 else p1 else if true then p3 else p1
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x93 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> d28 ) ) ) $ ( false ) ) ) ) $ ( if p3 then p3 else d4 )
        d95 : if true then if false then Bool else Bool else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d7 then true else false ) ) ) $ ( if p3 then d54 else p3 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then x98 else x98 ) ) ) $ ( if false then Bool else Bool )
        d97 = if if true then false else p1 then if d20 then d32 else d57 else if false then p3 else false
        d99 : if true then if true then Bool else Bool else if false then Bool else Bool
        d99 = if if p3 then p3 else d45 then if true then false else true else if d79 then false else false
        d100 : if false then if false then Bool else Bool else if false then Bool else Bool
        d100 = if if true then true else false then if true then p1 else false else if p1 then d21 else p3
        d101 : if true then if false then Bool else Bool else if false then Bool else Bool
        d101 = if if p3 then p1 else d16 then if true then d79 else true else if d32 then false else d8
        d102 : if false then if true then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if d90 then true else d79 ) ) ) $ ( if p1 then false else p3 )
        d104 : if false then if false then Bool else Bool else if true then Bool else Bool
        d104 = if if true then p3 else p3 then if false then p1 else false else if true then d50 else false
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> Bool ) ) ) $ ( x106 ) ) ) ) $ ( if true then Bool else Bool )
        d105 = if if p3 then false else d21 then if p1 then p3 else d47 else if p1 then p1 else p1
        d108 : if false then if true then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if p3 then d102 else d101 ) ) ) $ ( if p3 then p1 else d73 )
        d110 : if false then if true then Bool else Bool else if false then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> p3 ) ) ) $ ( d97 ) ) ) ) $ ( if false then false else d63 )
        d113 : if false then if false then Bool else Bool else if false then Bool else Bool
        d113 = if if p1 then p1 else d82 then if false then d50 else d11 else if p3 then p1 else d40
        d114 : if true then if false then Bool else Bool else if false then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then false else p3 )
        d117 : if true then if true then Bool else Bool else if true then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d63 then p1 else false )
        d120 : if false then if true then Bool else Bool else if true then Bool else Bool
        d120 = if if false then true else d71 then if p1 then d101 else p3 else if true then d78 else p3
        d121 : if true then if true then Bool else Bool else if true then Bool else Bool
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> d8 ) ) ) $ ( d100 ) ) ) ) $ ( if p3 then p3 else d97 )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> x127 ) ) ) $ ( x127 ) ) ) ) $ ( if false then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> ( ( Bool -> Bool ) ∋ ( ( λ x126 -> x125 ) ) ) $ ( false ) ) ) ) $ ( if true then p3 else true )
        d129 : if false then if true then Bool else Bool else if true then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if false then d110 else false )
        d132 : if true then if true then Bool else Bool else if true then Bool else Bool
        d132 = if if p3 then d22 else p1 then if false then true else d75 else if d89 then d86 else d72
        d133 : if true then if false then Bool else Bool else if true then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> d69 ) ) ) $ ( p3 ) ) ) ) $ ( if true then d66 else p3 )
        d136 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if false then Bool else x139 ) ) ) $ ( if false then Bool else Bool )
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( Bool -> Bool ) ∋ ( ( λ x138 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if p3 then false else true )
        d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> Bool ) ) ) $ ( x141 ) ) ) ) $ ( if true then Bool else Bool )
        d140 = if if p3 then true else p3 then if d83 then d45 else true else if p3 then d57 else p1
        d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d143 = if if d77 then d120 else d97 then if true then true else p1 else if d13 then p1 else true
        d145 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if false then x147 else x147 ) ) ) $ ( if false then Bool else Bool )
        d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> if d7 then d78 else x146 ) ) ) $ ( if p3 then d19 else true )
        d148 : if false then if false then Bool else Bool else if false then Bool else Bool
        d148 = if if d79 then p1 else d99 then if d102 then p1 else d11 else if false then d47 else true
        d149 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> Bool ) ) ) $ ( x151 ) ) ) ) $ ( if true then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if false then d75 else true ) ) ) $ ( if true then p3 else d13 )
        d153 : ( ( Set -> Set ) ∋ ( ( λ x155 -> if true then x155 else x155 ) ) ) $ ( if false then Bool else Bool )
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> if d136 then false else true ) ) ) $ ( if p1 then true else p3 )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x158 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> if x157 then p3 else false ) ) ) $ ( if p3 then false else p1 )
        d159 : ( ( Set -> Set ) ∋ ( ( λ x162 -> ( ( Set -> Set ) ∋ ( ( λ x163 -> x162 ) ) ) $ ( x162 ) ) ) ) $ ( if false then Bool else Bool )
        d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x161 -> false ) ) ) $ ( true ) ) ) ) $ ( if p3 then true else d29 )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d164 = if if p1 then true else p3 then if false then p1 else d32 else if true then false else p1
        d167 : if true then if true then Bool else Bool else if false then Bool else Bool
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> ( ( Bool -> Bool ) ∋ ( ( λ x169 -> true ) ) ) $ ( d104 ) ) ) ) $ ( if d101 then false else d22 )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> x174 ) ) ) $ ( x173 ) ) ) ) $ ( if true then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> d63 ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else d72 )
        d175 : if true then if false then Bool else Bool else if false then Bool else Bool
        d175 = if if d82 then true else true then if d54 then p1 else p1 else if d133 then d104 else d77
        d176 : if true then if false then Bool else Bool else if false then Bool else Bool
        d176 = if if p1 then p3 else p3 then if true then true else p3 else if true then d143 else d38
        d177 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> x181 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> ( ( Bool -> Bool ) ∋ ( ( λ x179 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if true then true else p3 )
        d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d182 = if if p1 then p3 else p3 then if p3 then p3 else false else if d177 then true else true
        d184 : ( ( Set -> Set ) ∋ ( ( λ x185 -> if true then Bool else x185 ) ) ) $ ( if false then Bool else Bool )
        d184 = if if false then p1 else p3 then if p3 then d29 else p1 else if true then false else p1
        d186 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if false then x187 else x187 ) ) ) $ ( if false then Bool else Bool )
        d186 = if if p1 then p1 else p1 then if p1 then false else p3 else if p1 then p1 else p3
        d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> if true then Bool else x189 ) ) ) $ ( if true then Bool else Bool )
        d188 = if if p3 then p1 else d108 then if p1 then d71 else true else if p1 then d108 else false
        d190 : if false then if false then Bool else Bool else if true then Bool else Bool
        d190 = if if p1 then p1 else p1 then if p1 then false else p1 else if p3 then d40 else false
        d191 : ( ( Set -> Set ) ∋ ( ( λ x193 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x192 -> if p1 then true else p3 ) ) ) $ ( if p3 then false else d190 )
        d194 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> if true then d153 else true ) ) ) $ ( if p3 then p3 else p1 )
        d198 : if false then if true then Bool else Bool else if true then Bool else Bool
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x199 -> ( ( Bool -> Bool ) ∋ ( ( λ x200 -> x199 ) ) ) $ ( true ) ) ) ) $ ( if true then p1 else true )
        d201 : ( ( Set -> Set ) ∋ ( ( λ x202 -> ( ( Set -> Set ) ∋ ( ( λ x203 -> x203 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d201 = if if p1 then d99 else p3 then if p1 then p3 else true else if false then p3 else d145
        d204 : if false then if true then Bool else Bool else if true then Bool else Bool
        d204 = ( ( Bool -> Bool ) ∋ ( ( λ x205 -> ( ( Bool -> Bool ) ∋ ( ( λ x206 -> d198 ) ) ) $ ( d190 ) ) ) ) $ ( if p3 then d28 else d45 )
        d207 : if false then if true then Bool else Bool else if false then Bool else Bool
        d207 = ( ( Bool -> Bool ) ∋ ( ( λ x208 -> ( ( Bool -> Bool ) ∋ ( ( λ x209 -> x209 ) ) ) $ ( d184 ) ) ) ) $ ( if p3 then false else true )
        d210 : ( ( Set -> Set ) ∋ ( ( λ x212 -> if false then Bool else x212 ) ) ) $ ( if true then Bool else Bool )
        d210 = ( ( Bool -> Bool ) ∋ ( ( λ x211 -> if d25 then true else p3 ) ) ) $ ( if p1 then true else d78 )
        d213 : if true then if true then Bool else Bool else if false then Bool else Bool
        d213 = if if d176 then true else d66 then if false then p1 else d104 else if p1 then true else false
        d214 : if true then if false then Bool else Bool else if false then Bool else Bool
        d214 = ( ( Bool -> Bool ) ∋ ( ( λ x215 -> if p3 then d20 else d204 ) ) ) $ ( if p3 then false else d79 )
        d216 : if true then if false then Bool else Bool else if true then Bool else Bool
        d216 = ( ( Bool -> Bool ) ∋ ( ( λ x217 -> if x217 then x217 else d29 ) ) ) $ ( if false then p1 else d104 )
        d218 : ( ( Set -> Set ) ∋ ( ( λ x219 -> if false then x219 else Bool ) ) ) $ ( if true then Bool else Bool )
        d218 = if if false then p3 else p1 then if false then p3 else p3 else if d210 then true else d153
        d220 : ( ( Set -> Set ) ∋ ( ( λ x221 -> ( ( Set -> Set ) ∋ ( ( λ x222 -> x222 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d220 = if if true then p1 else false then if d182 then p3 else d113 else if true then true else false
        d223 : if true then if false then Bool else Bool else if false then Bool else Bool
        d223 = ( ( Bool -> Bool ) ∋ ( ( λ x224 -> if true then p3 else x224 ) ) ) $ ( if p3 then d216 else true )
        d225 : if true then if false then Bool else Bool else if true then Bool else Bool
        d225 = if if false then p3 else d170 then if d105 then d204 else false else if d32 then d204 else true
        d226 : ( ( Set -> Set ) ∋ ( ( λ x227 -> ( ( Set -> Set ) ∋ ( ( λ x228 -> x227 ) ) ) $ ( x227 ) ) ) ) $ ( if true then Bool else Bool )
        d226 = if if d133 then true else d73 then if true then d50 else false else if true then d35 else d99
        d229 : ( ( Set -> Set ) ∋ ( ( λ x231 -> ( ( Set -> Set ) ∋ ( ( λ x232 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> if true then true else p3 ) ) ) $ ( if false then p3 else true )
        d233 : ( ( Set -> Set ) ∋ ( ( λ x234 -> ( ( Set -> Set ) ∋ ( ( λ x235 -> Bool ) ) ) $ ( x234 ) ) ) ) $ ( if true then Bool else Bool )
        d233 = if if p1 then false else p1 then if p1 then p1 else d207 else if p1 then true else p1
        d236 : ( ( Set -> Set ) ∋ ( ( λ x237 -> if true then x237 else Bool ) ) ) $ ( if false then Bool else Bool )
        d236 = if if false then true else false then if d213 then p1 else d97 else if d190 then p1 else true
        d238 : if false then if true then Bool else Bool else if true then Bool else Bool
        d238 = ( ( Bool -> Bool ) ∋ ( ( λ x239 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> p1 ) ) ) $ ( x239 ) ) ) ) $ ( if d198 then false else d38 )
        d241 : if false then if false then Bool else Bool else if false then Bool else Bool
        d241 = if if d238 then d41 else p3 then if d136 then p1 else p1 else if true then p1 else p1
        d242 : if true then if false then Bool else Bool else if true then Bool else Bool
        d242 = if if false then true else d190 then if true then p1 else d170 else if p1 then true else d236
        d243 : ( ( Set -> Set ) ∋ ( ( λ x245 -> ( ( Set -> Set ) ∋ ( ( λ x246 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x244 -> if p1 then x244 else p1 ) ) ) $ ( if p1 then p3 else d238 )
        d247 : ( ( Set -> Set ) ∋ ( ( λ x248 -> if true then x248 else x248 ) ) ) $ ( if false then Bool else Bool )
        d247 = if if d129 then d159 else p1 then if p3 then p1 else true else if false then false else d83
        d249 : ( ( Set -> Set ) ∋ ( ( λ x250 -> if true then x250 else Bool ) ) ) $ ( if true then Bool else Bool )
        d249 = if if p3 then d7 else true then if p1 then p1 else d29 else if p1 then d61 else p1
        d251 : ( ( Set -> Set ) ∋ ( ( λ x252 -> ( ( Set -> Set ) ∋ ( ( λ x253 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d251 = if if true then d73 else d176 then if d82 then true else false else if p3 then d220 else true
        d254 : ( ( Set -> Set ) ∋ ( ( λ x257 -> if false then x257 else x257 ) ) ) $ ( if true then Bool else Bool )
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x255 -> ( ( Bool -> Bool ) ∋ ( ( λ x256 -> p3 ) ) ) $ ( d236 ) ) ) ) $ ( if d136 then false else true )
        d258 : ( ( Set -> Set ) ∋ ( ( λ x260 -> if true then x260 else x260 ) ) ) $ ( if false then Bool else Bool )
        d258 = ( ( Bool -> Bool ) ∋ ( ( λ x259 -> if p3 then x259 else true ) ) ) $ ( if d95 then false else p3 )
        d261 : ( ( Set -> Set ) ∋ ( ( λ x262 -> ( ( Set -> Set ) ∋ ( ( λ x263 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d261 = if if p3 then d140 else d177 then if p3 then false else d83 else if p3 then p3 else p3
        d264 : ( ( Set -> Set ) ∋ ( ( λ x265 -> if true then x265 else x265 ) ) ) $ ( if true then Bool else Bool )
        d264 = if if d50 then p1 else p1 then if true then true else d13 else if d100 then false else d117
        d266 : ( ( Set -> Set ) ∋ ( ( λ x268 -> if true then x268 else x268 ) ) ) $ ( if true then Bool else Bool )
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x267 -> if x267 then x267 else d188 ) ) ) $ ( if p1 then d258 else d229 )
        d269 : if false then if true then Bool else Bool else if true then Bool else Bool
        d269 = if if false then p1 else false then if d191 then d108 else d117 else if d143 then false else p3
        d270 : ( ( Set -> Set ) ∋ ( ( λ x272 -> if false then x272 else Bool ) ) ) $ ( if true then Bool else Bool )
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x271 -> if d90 then d148 else true ) ) ) $ ( if false then true else p3 )
        d273 : if false then if true then Bool else Bool else if true then Bool else Bool
        d273 = if if p1 then d207 else p1 then if d184 then true else p1 else if d133 then false else p3
        d274 : if true then if false then Bool else Bool else if false then Bool else Bool
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x275 -> if p3 then true else x275 ) ) ) $ ( if p1 then d78 else false )
        d276 : ( ( Set -> Set ) ∋ ( ( λ x277 -> if false then Bool else x277 ) ) ) $ ( if false then Bool else Bool )
        d276 = if if d251 then d194 else d13 then if d201 then true else d113 else if true then d143 else d63
        d278 : if false then if true then Bool else Bool else if false then Bool else Bool
        d278 = if if d82 then true else p1 then if true then false else d101 else if d269 then false else p1
        d279 : ( ( Set -> Set ) ∋ ( ( λ x282 -> ( ( Set -> Set ) ∋ ( ( λ x283 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d279 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x281 -> true ) ) ) $ ( false ) ) ) ) $ ( if p3 then p3 else d73 )
        d284 : if false then if true then Bool else Bool else if true then Bool else Bool
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x285 -> ( ( Bool -> Bool ) ∋ ( ( λ x286 -> d104 ) ) ) $ ( d114 ) ) ) ) $ ( if p3 then true else d258 )
        d287 : ( ( Set -> Set ) ∋ ( ( λ x288 -> if false then x288 else Bool ) ) ) $ ( if true then Bool else Bool )
        d287 = if if false then d274 else p3 then if true then p1 else d99 else if false then p1 else p3
        d289 : ( ( Set -> Set ) ∋ ( ( λ x290 -> ( ( Set -> Set ) ∋ ( ( λ x291 -> x290 ) ) ) $ ( x290 ) ) ) ) $ ( if true then Bool else Bool )
        d289 = if if false then d20 else d225 then if false then d124 else d90 else if d16 then p1 else d164
        d292 : if true then if false then Bool else Bool else if true then Bool else Bool
        d292 = if if p3 then true else d102 then if p3 then false else p1 else if d241 then true else d226
        d293 : if false then if false then Bool else Bool else if false then Bool else Bool
        d293 = if if false then true else d132 then if false then p1 else true else if d223 then d264 else p1
        d294 : if true then if false then Bool else Bool else if true then Bool else Bool
        d294 = if if true then true else p1 then if p3 then p3 else true else if d11 then p1 else p3
        d295 : if true then if false then Bool else Bool else if true then Bool else Bool
        d295 = if if d82 then p3 else d188 then if true then d182 else d79 else if true then true else false
        d296 : if true then if false then Bool else Bool else if true then Bool else Bool
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x297 -> if p3 then p1 else x297 ) ) ) $ ( if d261 then p1 else d190 )
        d298 : if true then if true then Bool else Bool else if false then Bool else Bool
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x299 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> false ) ) ) $ ( d188 ) ) ) ) $ ( if p3 then false else false )
        d301 : if true then if false then Bool else Bool else if true then Bool else Bool
        d301 = ( ( Bool -> Bool ) ∋ ( ( λ x302 -> ( ( Bool -> Bool ) ∋ ( ( λ x303 -> d182 ) ) ) $ ( d156 ) ) ) ) $ ( if d198 then p1 else p3 )
        d304 : if true then if true then Bool else Bool else if true then Bool else Bool
        d304 = if if true then d104 else d73 then if p3 then p1 else d188 else if p1 then p1 else true
        d305 : if true then if true then Bool else Bool else if false then Bool else Bool
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x306 -> ( ( Bool -> Bool ) ∋ ( ( λ x307 -> x307 ) ) ) $ ( x306 ) ) ) ) $ ( if p3 then false else d28 )
        d308 : if true then if false then Bool else Bool else if false then Bool else Bool
        d308 = ( ( Bool -> Bool ) ∋ ( ( λ x309 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> p3 ) ) ) $ ( d156 ) ) ) ) $ ( if false then true else false )
        d311 : ( ( Set -> Set ) ∋ ( ( λ x314 -> ( ( Set -> Set ) ∋ ( ( λ x315 -> x314 ) ) ) $ ( x314 ) ) ) ) $ ( if true then Bool else Bool )
        d311 = ( ( Bool -> Bool ) ∋ ( ( λ x312 -> ( ( Bool -> Bool ) ∋ ( ( λ x313 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if p1 then p1 else d110 )
        d316 : ( ( Set -> Set ) ∋ ( ( λ x319 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x317 -> ( ( Bool -> Bool ) ∋ ( ( λ x318 -> d29 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then d32 else p1 )
        d321 : if true then if false then Bool else Bool else if false then Bool else Bool
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x322 -> if false then true else p1 ) ) ) $ ( if false then d294 else d305 )
        d323 : if false then if true then Bool else Bool else if false then Bool else Bool
        d323 = if if p3 then d25 else p3 then if d316 then d184 else d21 else if d207 then true else p1
        d324 : if false then if true then Bool else Bool else if true then Bool else Bool
        d324 = if if p3 then d269 else d75 then if d78 then d54 else p1 else if p1 then d78 else d298
        d325 : if true then if true then Bool else Bool else if true then Bool else Bool
        d325 = ( ( Bool -> Bool ) ∋ ( ( λ x326 -> ( ( Bool -> Bool ) ∋ ( ( λ x327 -> p1 ) ) ) $ ( d113 ) ) ) ) $ ( if true then true else p1 )
        d328 : ( ( Set -> Set ) ∋ ( ( λ x329 -> if false then x329 else x329 ) ) ) $ ( if true then Bool else Bool )
        d328 = if if true then false else d75 then if p1 then p3 else true else if true then d251 else p3
        d330 : ( ( Set -> Set ) ∋ ( ( λ x333 -> if true then Bool else x333 ) ) ) $ ( if false then Bool else Bool )
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x331 -> ( ( Bool -> Bool ) ∋ ( ( λ x332 -> true ) ) ) $ ( true ) ) ) ) $ ( if d258 then d97 else d72 )
        d334 : if false then if true then Bool else Bool else if false then Bool else Bool
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x335 -> if d153 then true else true ) ) ) $ ( if false then d22 else p3 )
        d336 : if false then if true then Bool else Bool else if true then Bool else Bool
        d336 = ( ( Bool -> Bool ) ∋ ( ( λ x337 -> if true then false else false ) ) ) $ ( if d241 then true else p1 )
        d338 : if true then if false then Bool else Bool else if false then Bool else Bool
        d338 = if if d121 then d296 else p3 then if d184 then d156 else false else if d308 then p1 else d296
        d339 : ( ( Set -> Set ) ∋ ( ( λ x341 -> if false then x341 else x341 ) ) ) $ ( if false then Bool else Bool )
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if d50 then true else true ) ) ) $ ( if d324 then p3 else true )
        d342 : if true then if true then Bool else Bool else if false then Bool else Bool
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x343 -> ( ( Bool -> Bool ) ∋ ( ( λ x344 -> d86 ) ) ) $ ( x343 ) ) ) ) $ ( if p1 then d330 else p3 )
        d345 : if true then if false then Bool else Bool else if true then Bool else Bool
        d345 = if if false then p3 else true then if p1 then p3 else p1 else if p1 then true else false
        d346 : ( ( Set -> Set ) ∋ ( ( λ x347 -> if true then x347 else Bool ) ) ) $ ( if true then Bool else Bool )
        d346 = if if p1 then d32 else d69 then if d100 then p3 else false else if d167 then d108 else p1
        d348 : ( ( Set -> Set ) ∋ ( ( λ x349 -> if true then x349 else x349 ) ) ) $ ( if true then Bool else Bool )
        d348 = if if p1 then false else p1 then if d243 then true else d29 else if true then p1 else p1
        d350 : ( ( Set -> Set ) ∋ ( ( λ x352 -> if false then Bool else x352 ) ) ) $ ( if true then Bool else Bool )
        d350 = ( ( Bool -> Bool ) ∋ ( ( λ x351 -> if false then d176 else false ) ) ) $ ( if false then true else false )
        d353 : ( ( Set -> Set ) ∋ ( ( λ x354 -> if true then Bool else x354 ) ) ) $ ( if false then Bool else Bool )
        d353 = if if p1 then d295 else p1 then if d124 then p3 else d120 else if d83 then false else true
        d355 : if true then if false then Bool else Bool else if false then Bool else Bool
        d355 = if if false then p1 else d114 then if d129 then p3 else d45 else if p3 then p3 else p3
        d356 : if true then if false then Bool else Bool else if false then Bool else Bool
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x357 -> if true then p3 else d69 ) ) ) $ ( if false then true else d32 )
        d358 : ( ( Set -> Set ) ∋ ( ( λ x359 -> if false then Bool else x359 ) ) ) $ ( if false then Bool else Bool )
        d358 = if if d97 then true else d346 then if false then p1 else p3 else if d35 then d140 else d339
        d360 : if false then if false then Bool else Bool else if false then Bool else Bool
        d360 = if if d233 then d19 else p3 then if d273 then false else p1 else if d223 then d66 else p3
        d361 : if false then if false then Bool else Bool else if true then Bool else Bool
        d361 = ( ( Bool -> Bool ) ∋ ( ( λ x362 -> ( ( Bool -> Bool ) ∋ ( ( λ x363 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d278 else d356 )
        d364 : ( ( Set -> Set ) ∋ ( ( λ x365 -> ( ( Set -> Set ) ∋ ( ( λ x366 -> x365 ) ) ) $ ( x365 ) ) ) ) $ ( if true then Bool else Bool )
        d364 = if if d284 then false else true then if false then d175 else p3 else if d35 then true else d216
        d367 : if false then if true then Bool else Bool else if false then Bool else Bool
        d367 = if if p1 then p1 else false then if false then true else d236 else if p3 then true else d100
        d368 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x371 -> Bool ) ) ) $ ( x370 ) ) ) ) $ ( if false then Bool else Bool )
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x369 -> if false then true else p3 ) ) ) $ ( if p3 then false else d284 )
        d372 : ( ( Set -> Set ) ∋ ( ( λ x374 -> ( ( Set -> Set ) ∋ ( ( λ x375 -> Bool ) ) ) $ ( x374 ) ) ) ) $ ( if false then Bool else Bool )
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x373 -> if true then x373 else p3 ) ) ) $ ( if p3 then false else d201 )
        d376 : if true then if false then Bool else Bool else if false then Bool else Bool
        d376 = if if d50 then false else d220 then if d145 then p3 else true else if d101 then true else p1
        d377 : if false then if true then Bool else Bool else if false then Bool else Bool
        d377 = if if d270 then false else p3 then if d229 then d145 else p3 else if p3 then false else d13
        d378 : if false then if false then Bool else Bool else if true then Bool else Bool
        d378 = if if p1 then p1 else false then if true then false else p3 else if true then true else p1
        d379 : ( ( Set -> Set ) ∋ ( ( λ x380 -> ( ( Set -> Set ) ∋ ( ( λ x381 -> Bool ) ) ) $ ( x380 ) ) ) ) $ ( if true then Bool else Bool )
        d379 = if if true then p1 else true then if d216 then true else true else if p3 then p3 else d177
        d382 : if true then if false then Bool else Bool else if true then Bool else Bool
        d382 = ( ( Bool -> Bool ) ∋ ( ( λ x383 -> if d233 then d77 else p1 ) ) ) $ ( if d8 then p3 else true )
        d384 : ( ( Set -> Set ) ∋ ( ( λ x386 -> ( ( Set -> Set ) ∋ ( ( λ x387 -> Bool ) ) ) $ ( x386 ) ) ) ) $ ( if true then Bool else Bool )
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x385 -> if false then p3 else d229 ) ) ) $ ( if p1 then true else false )
        d388 : ( ( Set -> Set ) ∋ ( ( λ x390 -> ( ( Set -> Set ) ∋ ( ( λ x391 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d388 = ( ( Bool -> Bool ) ∋ ( ( λ x389 -> if x389 then true else false ) ) ) $ ( if p1 then p1 else true )
        d392 : ( ( Set -> Set ) ∋ ( ( λ x393 -> ( ( Set -> Set ) ∋ ( ( λ x394 -> x393 ) ) ) $ ( x393 ) ) ) ) $ ( if false then Bool else Bool )
        d392 = if if true then p1 else p3 then if false then false else d194 else if p3 then p3 else true
        d395 : if false then if true then Bool else Bool else if true then Bool else Bool
        d395 = if if p1 then d190 else false then if d102 then d367 else true else if p1 then p3 else d159
        d396 : ( ( Set -> Set ) ∋ ( ( λ x397 -> if false then x397 else Bool ) ) ) $ ( if true then Bool else Bool )
        d396 = if if false then p3 else p3 then if d342 then p1 else d54 else if d284 then d293 else p3
        d398 : ( ( Set -> Set ) ∋ ( ( λ x400 -> ( ( Set -> Set ) ∋ ( ( λ x401 -> x400 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x399 -> if true then x399 else p3 ) ) ) $ ( if d342 then true else p3 )
        d402 : if true then if true then Bool else Bool else if true then Bool else Bool
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x403 -> ( ( Bool -> Bool ) ∋ ( ( λ x404 -> false ) ) ) $ ( x403 ) ) ) ) $ ( if d339 then p3 else d324 )
        d405 : ( ( Set -> Set ) ∋ ( ( λ x408 -> ( ( Set -> Set ) ∋ ( ( λ x409 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d405 = ( ( Bool -> Bool ) ∋ ( ( λ x406 -> ( ( Bool -> Bool ) ∋ ( ( λ x407 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if d54 then p3 else p1 )
        d410 : ( ( Set -> Set ) ∋ ( ( λ x412 -> ( ( Set -> Set ) ∋ ( ( λ x413 -> x413 ) ) ) $ ( x412 ) ) ) ) $ ( if true then Bool else Bool )
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x411 -> if x411 then d266 else true ) ) ) $ ( if d342 then d167 else d346 )
        d414 : ( ( Set -> Set ) ∋ ( ( λ x416 -> if false then x416 else Bool ) ) ) $ ( if false then Bool else Bool )
        d414 = ( ( Bool -> Bool ) ∋ ( ( λ x415 -> if false then d132 else p1 ) ) ) $ ( if p3 then p1 else p1 )
        d417 : if true then if true then Bool else Bool else if false then Bool else Bool
        d417 = if if false then false else p1 then if d249 then false else p3 else if d22 then p1 else d105
        d418 : ( ( Set -> Set ) ∋ ( ( λ x420 -> ( ( Set -> Set ) ∋ ( ( λ x421 -> Bool ) ) ) $ ( x420 ) ) ) ) $ ( if false then Bool else Bool )
        d418 = ( ( Bool -> Bool ) ∋ ( ( λ x419 -> if false then d29 else p1 ) ) ) $ ( if d294 then true else p1 )
        d422 : ( ( Set -> Set ) ∋ ( ( λ x425 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d422 = ( ( Bool -> Bool ) ∋ ( ( λ x423 -> ( ( Bool -> Bool ) ∋ ( ( λ x424 -> d214 ) ) ) $ ( d273 ) ) ) ) $ ( if false then d233 else true )
        d426 : if false then if true then Bool else Bool else if true then Bool else Bool
        d426 = ( ( Bool -> Bool ) ∋ ( ( λ x427 -> ( ( Bool -> Bool ) ∋ ( ( λ x428 -> p3 ) ) ) $ ( d266 ) ) ) ) $ ( if true then d164 else false )
        d429 : if false then if true then Bool else Bool else if false then Bool else Bool
        d429 = if if d324 then p1 else true then if p3 then p1 else p1 else if d388 then d83 else p1
        d430 : ( ( Set -> Set ) ∋ ( ( λ x433 -> ( ( Set -> Set ) ∋ ( ( λ x434 -> x434 ) ) ) $ ( x433 ) ) ) ) $ ( if false then Bool else Bool )
        d430 = ( ( Bool -> Bool ) ∋ ( ( λ x431 -> ( ( Bool -> Bool ) ∋ ( ( λ x432 -> d63 ) ) ) $ ( false ) ) ) ) $ ( if false then d21 else true )
        d435 : if false then if false then Bool else Bool else if true then Bool else Bool
        d435 = if if p3 then d336 else p1 then if p3 then false else p1 else if p1 then true else p3
        d436 : ( ( Set -> Set ) ∋ ( ( λ x439 -> ( ( Set -> Set ) ∋ ( ( λ x440 -> Bool ) ) ) $ ( x439 ) ) ) ) $ ( if true then Bool else Bool )
        d436 = ( ( Bool -> Bool ) ∋ ( ( λ x437 -> ( ( Bool -> Bool ) ∋ ( ( λ x438 -> true ) ) ) $ ( x437 ) ) ) ) $ ( if false then d402 else p1 )
        d441 : if true then if false then Bool else Bool else if true then Bool else Bool
        d441 = if if false then false else p1 then if d72 then d204 else d25 else if p3 then d177 else true
        d442 : if true then if false then Bool else Bool else if true then Bool else Bool
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x443 -> if p1 then true else true ) ) ) $ ( if p1 then true else p1 )
        d444 : ( ( Set -> Set ) ∋ ( ( λ x445 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d444 = if if d19 then d398 else true then if d22 then d177 else true else if false then p1 else false
        d446 : ( ( Set -> Set ) ∋ ( ( λ x447 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d446 = if if p1 then d273 else false then if false then p1 else p3 else if p1 then true else true
        d448 : ( ( Set -> Set ) ∋ ( ( λ x449 -> ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( x449 ) ) ) ) $ ( if true then Bool else Bool )
        d448 = if if p1 then d216 else false then if d100 then p3 else p1 else if d350 then false else d32
        d451 : if false then if false then Bool else Bool else if false then Bool else Bool
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x452 -> ( ( Bool -> Bool ) ∋ ( ( λ x453 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then p3 else d41 )
        d454 : if true then if true then Bool else Bool else if true then Bool else Bool
        d454 = ( ( Bool -> Bool ) ∋ ( ( λ x455 -> if true then d396 else false ) ) ) $ ( if p1 then d124 else true )
        d456 : ( ( Set -> Set ) ∋ ( ( λ x457 -> if true then x457 else x457 ) ) ) $ ( if false then Bool else Bool )
        d456 = if if true then true else p3 then if p1 then d73 else p1 else if p1 then false else d274
        d458 : ( ( Set -> Set ) ∋ ( ( λ x459 -> ( ( Set -> Set ) ∋ ( ( λ x460 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d458 = if if d90 then d28 else d132 then if p3 then false else d377 else if d28 then d293 else p1
        d461 : ( ( Set -> Set ) ∋ ( ( λ x463 -> ( ( Set -> Set ) ∋ ( ( λ x464 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x462 -> if d86 then true else x462 ) ) ) $ ( if p1 then false else p1 )
        d465 : if true then if true then Bool else Bool else if false then Bool else Bool
        d465 = ( ( Bool -> Bool ) ∋ ( ( λ x466 -> ( ( Bool -> Bool ) ∋ ( ( λ x467 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then d38 else true )
        d468 : if false then if true then Bool else Bool else if false then Bool else Bool
        d468 = if if true then false else p3 then if p3 then false else d32 else if true then d367 else false
        d469 : ( ( Set -> Set ) ∋ ( ( λ x472 -> if false then x472 else Bool ) ) ) $ ( if false then Bool else Bool )
        d469 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x471 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then d22 else d51 )
        d473 : ( ( Set -> Set ) ∋ ( ( λ x474 -> ( ( Set -> Set ) ∋ ( ( λ x475 -> Bool ) ) ) $ ( x474 ) ) ) ) $ ( if true then Bool else Bool )
        d473 = if if p1 then true else true then if true then p3 else p1 else if p1 then d233 else p3
        d476 : ( ( Set -> Set ) ∋ ( ( λ x477 -> ( ( Set -> Set ) ∋ ( ( λ x478 -> x478 ) ) ) $ ( x477 ) ) ) ) $ ( if false then Bool else Bool )
        d476 = if if p3 then true else true then if false then p3 else d57 else if d102 then p3 else false
        d479 : ( ( Set -> Set ) ∋ ( ( λ x482 -> if false then x482 else Bool ) ) ) $ ( if false then Bool else Bool )
        d479 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> ( ( Bool -> Bool ) ∋ ( ( λ x481 -> d446 ) ) ) $ ( p1 ) ) ) ) $ ( if true then p1 else true )
        d483 : ( ( Set -> Set ) ∋ ( ( λ x484 -> if true then x484 else Bool ) ) ) $ ( if true then Bool else Bool )
        d483 = if if d120 then d451 else d73 then if d45 then false else d238 else if true then d194 else p3
        d485 : ( ( Set -> Set ) ∋ ( ( λ x486 -> ( ( Set -> Set ) ∋ ( ( λ x487 -> Bool ) ) ) $ ( x486 ) ) ) ) $ ( if false then Bool else Bool )
        d485 = if if d124 then false else d243 then if d95 then true else p1 else if d410 then p1 else d73
        d488 : if false then if true then Bool else Bool else if true then Bool else Bool
        d488 = if if d458 then p3 else d114 then if true then d69 else d483 else if false then d113 else d170
        d489 : ( ( Set -> Set ) ∋ ( ( λ x491 -> ( ( Set -> Set ) ∋ ( ( λ x492 -> Bool ) ) ) $ ( x491 ) ) ) ) $ ( if false then Bool else Bool )
        d489 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if p1 then true else d129 ) ) ) $ ( if p1 then d382 else true )
        d493 : ( ( Set -> Set ) ∋ ( ( λ x495 -> ( ( Set -> Set ) ∋ ( ( λ x496 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x494 -> if false then p1 else p3 ) ) ) $ ( if true then p1 else p3 )
        d497 : if true then if false then Bool else Bool else if false then Bool else Bool
        d497 = if if true then false else d418 then if d190 then p1 else d8 else if d216 then p3 else d429
        d498 : ( ( Set -> Set ) ∋ ( ( λ x501 -> ( ( Set -> Set ) ∋ ( ( λ x502 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d498 = ( ( Bool -> Bool ) ∋ ( ( λ x499 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> d63 ) ) ) $ ( true ) ) ) ) $ ( if d90 then true else d104 )
        d503 : ( ( Set -> Set ) ∋ ( ( λ x505 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d503 = ( ( Bool -> Bool ) ∋ ( ( λ x504 -> if p1 then p1 else p1 ) ) ) $ ( if p1 then p1 else p1 )
        d506 : ( ( Set -> Set ) ∋ ( ( λ x507 -> if false then Bool else x507 ) ) ) $ ( if true then Bool else Bool )
        d506 = if if true then true else d276 then if p3 then p1 else p3 else if d458 then p3 else d4
        d508 : if false then if false then Bool else Bool else if false then Bool else Bool
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x509 -> ( ( Bool -> Bool ) ∋ ( ( λ x510 -> d120 ) ) ) $ ( x509 ) ) ) ) $ ( if false then d242 else true )
        d511 : ( ( Set -> Set ) ∋ ( ( λ x512 -> if true then Bool else x512 ) ) ) $ ( if false then Bool else Bool )
        d511 = if if true then false else false then if true then false else d321 else if p3 then p1 else d405
        d513 : if false then if true then Bool else Bool else if true then Bool else Bool
        d513 = if if false then d356 else d129 then if d398 then d4 else p1 else if p3 then true else d454
        d514 : if false then if false then Bool else Bool else if true then Bool else Bool
        d514 = if if p1 then d73 else p1 then if d249 then false else true else if false then p1 else p1
        d515 : if true then if true then Bool else Bool else if false then Bool else Bool
        d515 = if if p3 then true else p3 then if p1 then d97 else true else if false then p1 else d188
        d516 : if true then if true then Bool else Bool else if true then Bool else Bool
        d516 = if if d396 then d304 else p1 then if p3 then p1 else true else if d493 then false else d132
        d517 : ( ( Set -> Set ) ∋ ( ( λ x518 -> ( ( Set -> Set ) ∋ ( ( λ x519 -> Bool ) ) ) $ ( x518 ) ) ) ) $ ( if true then Bool else Bool )
        d517 = if if d198 then p3 else false then if p1 then p1 else true else if d270 then false else d54
        d520 : ( ( Set -> Set ) ∋ ( ( λ x523 -> if false then Bool else x523 ) ) ) $ ( if false then Bool else Bool )
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x521 -> ( ( Bool -> Bool ) ∋ ( ( λ x522 -> true ) ) ) $ ( d32 ) ) ) ) $ ( if p3 then d325 else p3 )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x525 -> if true then Bool else x525 ) ) ) $ ( if false then Bool else Bool )
        d524 = if if p1 then p1 else p3 then if d304 then d21 else d184 else if d194 then false else d364
        d526 : if true then if false then Bool else Bool else if true then Bool else Bool
        d526 = if if false then false else p1 then if false then true else false else if d143 then p3 else d13
        d527 : ( ( Set -> Set ) ∋ ( ( λ x528 -> if false then x528 else Bool ) ) ) $ ( if true then Bool else Bool )
        d527 = if if true then p3 else true then if true then p1 else p3 else if p1 then d83 else p1
        d529 : if true then if true then Bool else Bool else if true then Bool else Bool
        d529 = if if p3 then false else d442 then if p1 then p1 else true else if d293 then false else d261
        d530 : if true then if true then Bool else Bool else if true then Bool else Bool
        d530 = if if true then true else d435 then if d79 then true else d73 else if p1 then d226 else p1
        d531 : if true then if false then Bool else Bool else if false then Bool else Bool
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x532 -> if d266 then true else false ) ) ) $ ( if p3 then true else d479 )
        d533 : ( ( Set -> Set ) ∋ ( ( λ x535 -> if false then x535 else Bool ) ) ) $ ( if true then Bool else Bool )
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x534 -> if d361 then d170 else false ) ) ) $ ( if d378 then true else d97 )
        d536 : ( ( Set -> Set ) ∋ ( ( λ x539 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d536 = ( ( Bool -> Bool ) ∋ ( ( λ x537 -> ( ( Bool -> Bool ) ∋ ( ( λ x538 -> d63 ) ) ) $ ( p3 ) ) ) ) $ ( if true then d113 else d356 )
        d540 : ( ( Set -> Set ) ∋ ( ( λ x543 -> ( ( Set -> Set ) ∋ ( ( λ x544 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x541 -> ( ( Bool -> Bool ) ∋ ( ( λ x542 -> d350 ) ) ) $ ( false ) ) ) ) $ ( if p3 then p1 else d7 )
        d545 : ( ( Set -> Set ) ∋ ( ( λ x548 -> if false then Bool else x548 ) ) ) $ ( if false then Bool else Bool )
        d545 = ( ( Bool -> Bool ) ∋ ( ( λ x546 -> ( ( Bool -> Bool ) ∋ ( ( λ x547 -> d182 ) ) ) $ ( d485 ) ) ) ) $ ( if false then d278 else p1 )
        d549 : if true then if false then Bool else Bool else if false then Bool else Bool
        d549 = if if true then false else false then if p3 then p3 else d342 else if p1 then d334 else false
        d550 : if true then if true then Bool else Bool else if true then Bool else Bool
        d550 = ( ( Bool -> Bool ) ∋ ( ( λ x551 -> ( ( Bool -> Bool ) ∋ ( ( λ x552 -> d367 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then d78 else p3 )
        d553 : if false then if false then Bool else Bool else if true then Bool else Bool
        d553 = if if p1 then p3 else d396 then if p3 then p1 else p3 else if p3 then d236 else d213
        d554 : ( ( Set -> Set ) ∋ ( ( λ x555 -> ( ( Set -> Set ) ∋ ( ( λ x556 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d554 = if if false then p1 else true then if d25 then d25 else p3 else if p3 then p1 else p1
        d557 : ( ( Set -> Set ) ∋ ( ( λ x558 -> if true then Bool else x558 ) ) ) $ ( if true then Bool else Bool )
        d557 = if if p1 then d120 else d461 then if false then d243 else false else if d465 then true else p1
        d559 : if false then if true then Bool else Bool else if false then Bool else Bool
        d559 = if if false then d78 else p3 then if p3 then true else p3 else if p3 then d379 else d101
        d560 : ( ( Set -> Set ) ∋ ( ( λ x562 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d560 = ( ( Bool -> Bool ) ∋ ( ( λ x561 -> if d13 then d25 else p1 ) ) ) $ ( if p3 then p3 else false )
        d563 : ( ( Set -> Set ) ∋ ( ( λ x564 -> ( ( Set -> Set ) ∋ ( ( λ x565 -> Bool ) ) ) $ ( x564 ) ) ) ) $ ( if true then Bool else Bool )
        d563 = if if true then p3 else d513 then if d241 then d334 else d372 else if p3 then d468 else true
        d566 : if false then if true then Bool else Bool else if false then Bool else Bool
        d566 = if if d21 then false else d476 then if p1 then d516 else p1 else if false then d414 else true
        d567 : ( ( Set -> Set ) ∋ ( ( λ x569 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> x569 ) ) ) $ ( x569 ) ) ) ) $ ( if false then Bool else Bool )
        d567 = ( ( Bool -> Bool ) ∋ ( ( λ x568 -> if p3 then true else d508 ) ) ) $ ( if p1 then true else true )
        d571 : ( ( Set -> Set ) ∋ ( ( λ x574 -> if false then Bool else x574 ) ) ) $ ( if true then Bool else Bool )
        d571 = ( ( Bool -> Bool ) ∋ ( ( λ x572 -> ( ( Bool -> Bool ) ∋ ( ( λ x573 -> x573 ) ) ) $ ( d330 ) ) ) ) $ ( if d454 then false else p3 )
        d575 : ( ( Set -> Set ) ∋ ( ( λ x578 -> ( ( Set -> Set ) ∋ ( ( λ x579 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d575 = ( ( Bool -> Bool ) ∋ ( ( λ x576 -> ( ( Bool -> Bool ) ∋ ( ( λ x577 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if false then p3 else d454 )
        d580 : ( ( Set -> Set ) ∋ ( ( λ x582 -> if true then x582 else Bool ) ) ) $ ( if false then Bool else Bool )
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x581 -> if d120 then false else p3 ) ) ) $ ( if false then d465 else d204 )
        d583 : ( ( Set -> Set ) ∋ ( ( λ x584 -> ( ( Set -> Set ) ∋ ( ( λ x585 -> x584 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d583 = if if true then d488 else d295 then if false then d22 else true else if true then d550 else d553
        d586 : ( ( Set -> Set ) ∋ ( ( λ x588 -> ( ( Set -> Set ) ∋ ( ( λ x589 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d586 = ( ( Bool -> Bool ) ∋ ( ( λ x587 -> if true then d479 else d334 ) ) ) $ ( if false then p1 else p3 )
        d590 : if false then if true then Bool else Bool else if true then Bool else Bool
        d590 = if if p3 then d461 else p1 then if p1 then d516 else false else if false then p1 else p1
        d591 : ( ( Set -> Set ) ∋ ( ( λ x593 -> ( ( Set -> Set ) ∋ ( ( λ x594 -> x593 ) ) ) $ ( x593 ) ) ) ) $ ( if true then Bool else Bool )
        d591 = ( ( Bool -> Bool ) ∋ ( ( λ x592 -> if p3 then true else x592 ) ) ) $ ( if d422 then p1 else false )
        d595 : if false then if false then Bool else Bool else if false then Bool else Bool
        d595 = ( ( Bool -> Bool ) ∋ ( ( λ x596 -> if x596 then p3 else x596 ) ) ) $ ( if p3 then false else d38 )
        d597 : if false then if true then Bool else Bool else if true then Bool else Bool
        d597 = if if p1 then p3 else d66 then if p3 then d133 else d124 else if d213 then d214 else false
        d598 : ( ( Set -> Set ) ∋ ( ( λ x601 -> if false then Bool else x601 ) ) ) $ ( if true then Bool else Bool )
        d598 = ( ( Bool -> Bool ) ∋ ( ( λ x599 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> d114 ) ) ) $ ( false ) ) ) ) $ ( if p3 then d71 else p3 )
        d602 : if false then if true then Bool else Bool else if true then Bool else Bool
        d602 = if if false then p1 else true then if p3 then true else d270 else if true then d133 else true
        d603 : ( ( Set -> Set ) ∋ ( ( λ x604 -> if false then x604 else x604 ) ) ) $ ( if true then Bool else Bool )
        d603 = if if d186 then true else p1 then if true then true else d446 else if d120 then d273 else p1
        d605 : if true then if true then Bool else Bool else if true then Bool else Bool
        d605 = ( ( Bool -> Bool ) ∋ ( ( λ x606 -> ( ( Bool -> Bool ) ∋ ( ( λ x607 -> d418 ) ) ) $ ( true ) ) ) ) $ ( if false then p1 else p3 )
        d608 : ( ( Set -> Set ) ∋ ( ( λ x611 -> if true then x611 else Bool ) ) ) $ ( if false then Bool else Bool )
        d608 = ( ( Bool -> Bool ) ∋ ( ( λ x609 -> ( ( Bool -> Bool ) ∋ ( ( λ x610 -> d350 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then p1 else p3 )
        d612 : ( ( Set -> Set ) ∋ ( ( λ x615 -> ( ( Set -> Set ) ∋ ( ( λ x616 -> x615 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d612 = ( ( Bool -> Bool ) ∋ ( ( λ x613 -> ( ( Bool -> Bool ) ∋ ( ( λ x614 -> d526 ) ) ) $ ( x613 ) ) ) ) $ ( if p1 then false else true )
        d617 : ( ( Set -> Set ) ∋ ( ( λ x618 -> ( ( Set -> Set ) ∋ ( ( λ x619 -> x618 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d617 = if if true then false else d89 then if false then p1 else true else if p1 then d536 else d321
        d620 : ( ( Set -> Set ) ∋ ( ( λ x623 -> if true then Bool else x623 ) ) ) $ ( if false then Bool else Bool )
        d620 = ( ( Bool -> Bool ) ∋ ( ( λ x621 -> ( ( Bool -> Bool ) ∋ ( ( λ x622 -> true ) ) ) $ ( d143 ) ) ) ) $ ( if false then p1 else true )
        d624 : ( ( Set -> Set ) ∋ ( ( λ x626 -> if false then x626 else Bool ) ) ) $ ( if false then Bool else Bool )
        d624 = ( ( Bool -> Bool ) ∋ ( ( λ x625 -> if d287 then true else true ) ) ) $ ( if p1 then true else true )
        d627 : if true then if true then Bool else Bool else if false then Bool else Bool
        d627 = if if p1 then p1 else d57 then if p3 then d25 else p3 else if p1 then true else d414
        d628 : ( ( Set -> Set ) ∋ ( ( λ x629 -> if false then x629 else x629 ) ) ) $ ( if false then Bool else Bool )
        d628 = if if d392 then d45 else p1 then if p1 then true else d298 else if false then p1 else false
        d630 : if false then if false then Bool else Bool else if true then Bool else Bool
        d630 = if if d527 then false else p3 then if d229 then p1 else false else if d557 then p3 else true
        d631 : if false then if false then Bool else Bool else if true then Bool else Bool
        d631 = if if true then p1 else false then if p3 then p1 else p1 else if d517 then false else p1
        d632 : if false then if false then Bool else Bool else if true then Bool else Bool
        d632 = ( ( Bool -> Bool ) ∋ ( ( λ x633 -> ( ( Bool -> Bool ) ∋ ( ( λ x634 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d61 then d16 else true )
        d635 : if true then if true then Bool else Bool else if false then Bool else Bool
        d635 = if if false then true else p3 then if d164 then true else false else if d261 then d398 else false
        d636 : if false then if false then Bool else Bool else if true then Bool else Bool
        d636 = if if d190 then p3 else d624 then if p3 then p3 else false else if true then d468 else p3
        d637 : if true then if true then Bool else Bool else if true then Bool else Bool
        d637 = if if false then d35 else p1 then if true then d133 else true else if p1 then true else false
        d638 : ( ( Set -> Set ) ∋ ( ( λ x639 -> ( ( Set -> Set ) ∋ ( ( λ x640 -> Bool ) ) ) $ ( x639 ) ) ) ) $ ( if false then Bool else Bool )
        d638 = if if true then p3 else p1 then if d458 then d493 else true else if false then p3 else d503
        d641 : if true then if false then Bool else Bool else if false then Bool else Bool
        d641 = if if p1 then d514 else p3 then if d458 then d214 else d114 else if p3 then d571 else p1
        d642 : if true then if false then Bool else Bool else if true then Bool else Bool
        d642 = ( ( Bool -> Bool ) ∋ ( ( λ x643 -> if x643 then x643 else d238 ) ) ) $ ( if false then p3 else p1 )
        d644 : ( ( Set -> Set ) ∋ ( ( λ x645 -> ( ( Set -> Set ) ∋ ( ( λ x646 -> x646 ) ) ) $ ( x645 ) ) ) ) $ ( if false then Bool else Bool )
        d644 = if if p1 then d284 else p3 then if p3 then p1 else true else if p1 then false else false
        d647 : if false then if true then Bool else Bool else if true then Bool else Bool
        d647 = ( ( Bool -> Bool ) ∋ ( ( λ x648 -> if false then d364 else false ) ) ) $ ( if p3 then d226 else false )
        d649 : if true then if true then Bool else Bool else if false then Bool else Bool
        d649 = if if p1 then d156 else false then if p3 then p3 else d566 else if false then p3 else false
        d650 : ( ( Set -> Set ) ∋ ( ( λ x652 -> ( ( Set -> Set ) ∋ ( ( λ x653 -> Bool ) ) ) $ ( x652 ) ) ) ) $ ( if false then Bool else Bool )
        d650 = ( ( Bool -> Bool ) ∋ ( ( λ x651 -> if d28 then x651 else x651 ) ) ) $ ( if d261 then d276 else d83 )
        d654 : ( ( Set -> Set ) ∋ ( ( λ x655 -> if true then x655 else x655 ) ) ) $ ( if false then Bool else Bool )
        d654 = if if p1 then false else p3 then if d301 then p1 else d176 else if d32 then d631 else p1
        d656 : ( ( Set -> Set ) ∋ ( ( λ x657 -> ( ( Set -> Set ) ∋ ( ( λ x658 -> x657 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d656 = if if p3 then p3 else true then if d533 then p1 else d378 else if false then d251 else d69
        d659 : if false then if true then Bool else Bool else if false then Bool else Bool
        d659 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x661 -> d430 ) ) ) $ ( x660 ) ) ) ) $ ( if false then d468 else d294 )
        d662 : ( ( Set -> Set ) ∋ ( ( λ x663 -> ( ( Set -> Set ) ∋ ( ( λ x664 -> Bool ) ) ) $ ( x663 ) ) ) ) $ ( if true then Bool else Bool )
        d662 = if if p3 then true else false then if false then false else p3 else if d530 then d348 else p1
        d665 : ( ( Set -> Set ) ∋ ( ( λ x668 -> if true then Bool else x668 ) ) ) $ ( if false then Bool else Bool )
        d665 = ( ( Bool -> Bool ) ∋ ( ( λ x666 -> ( ( Bool -> Bool ) ∋ ( ( λ x667 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if false then false else d186 )
        d669 : ( ( Set -> Set ) ∋ ( ( λ x672 -> if true then x672 else Bool ) ) ) $ ( if false then Bool else Bool )
        d669 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x671 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then d132 else d120 )
        d673 : ( ( Set -> Set ) ∋ ( ( λ x676 -> if false then x676 else x676 ) ) ) $ ( if false then Bool else Bool )
        d673 = ( ( Bool -> Bool ) ∋ ( ( λ x674 -> ( ( Bool -> Bool ) ∋ ( ( λ x675 -> p1 ) ) ) $ ( d301 ) ) ) ) $ ( if d188 then p1 else d218 )
        d677 : ( ( Set -> Set ) ∋ ( ( λ x678 -> ( ( Set -> Set ) ∋ ( ( λ x679 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d677 = if if p3 then p3 else p3 then if false then false else p1 else if true then d328 else d11
        d680 : if false then if false then Bool else Bool else if false then Bool else Bool
        d680 = if if false then d644 else d595 then if p3 then d346 else p1 else if p1 then d276 else true
        d681 : if false then if true then Bool else Bool else if true then Bool else Bool
        d681 = if if p1 then d45 else true then if p3 then d97 else d204 else if p3 then d632 else p3
        d682 : if false then if true then Bool else Bool else if true then Bool else Bool
        d682 = ( ( Bool -> Bool ) ∋ ( ( λ x683 -> ( ( Bool -> Bool ) ∋ ( ( λ x684 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else true )
        d685 : ( ( Set -> Set ) ∋ ( ( λ x687 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d685 = ( ( Bool -> Bool ) ∋ ( ( λ x686 -> if d108 then d325 else true ) ) ) $ ( if p1 then false else false )
        d688 : if false then if true then Bool else Bool else if false then Bool else Bool
        d688 = if if true then d177 else p3 then if p1 then d207 else true else if p3 then d422 else true
        d689 : if false then if true then Bool else Bool else if true then Bool else Bool
        d689 = if if true then p1 else false then if p1 then false else d13 else if p1 then p1 else p3
        d690 : if true then if false then Bool else Bool else if true then Bool else Bool
        d690 = ( ( Bool -> Bool ) ∋ ( ( λ x691 -> ( ( Bool -> Bool ) ∋ ( ( λ x692 -> x692 ) ) ) $ ( true ) ) ) ) $ ( if d384 then p3 else true )
        d693 : ( ( Set -> Set ) ∋ ( ( λ x696 -> ( ( Set -> Set ) ∋ ( ( λ x697 -> x696 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d693 = ( ( Bool -> Bool ) ∋ ( ( λ x694 -> ( ( Bool -> Bool ) ∋ ( ( λ x695 -> d384 ) ) ) $ ( true ) ) ) ) $ ( if p1 then p3 else p1 )
        d698 : if false then if false then Bool else Bool else if true then Bool else Bool
        d698 = ( ( Bool -> Bool ) ∋ ( ( λ x699 -> if x699 then d305 else d129 ) ) ) $ ( if true then d82 else false )
        d700 : ( ( Set -> Set ) ∋ ( ( λ x701 -> if false then x701 else x701 ) ) ) $ ( if false then Bool else Bool )
        d700 = if if d468 then d190 else p3 then if d688 then d392 else d148 else if true then p3 else p1
        d702 : if false then if false then Bool else Bool else if true then Bool else Bool
        d702 = ( ( Bool -> Bool ) ∋ ( ( λ x703 -> ( ( Bool -> Bool ) ∋ ( ( λ x704 -> false ) ) ) $ ( false ) ) ) ) $ ( if d465 then d83 else p1 )
        d705 : if true then if false then Bool else Bool else if true then Bool else Bool
        d705 = ( ( Bool -> Bool ) ∋ ( ( λ x706 -> ( ( Bool -> Bool ) ∋ ( ( λ x707 -> d20 ) ) ) $ ( d129 ) ) ) ) $ ( if p3 then d527 else true )
        d708 : ( ( Set -> Set ) ∋ ( ( λ x710 -> if true then Bool else x710 ) ) ) $ ( if true then Bool else Bool )
        d708 = ( ( Bool -> Bool ) ∋ ( ( λ x709 -> if x709 then p1 else true ) ) ) $ ( if p3 then true else p1 )
        d711 : ( ( Set -> Set ) ∋ ( ( λ x713 -> ( ( Set -> Set ) ∋ ( ( λ x714 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d711 = ( ( Bool -> Bool ) ∋ ( ( λ x712 -> if d379 then d595 else true ) ) ) $ ( if p3 then false else d348 )
        d715 : if true then if true then Bool else Bool else if false then Bool else Bool
        d715 = if if p3 then p1 else d108 then if p1 then d242 else true else if false then d110 else d38
        d716 : ( ( Set -> Set ) ∋ ( ( λ x718 -> if true then x718 else Bool ) ) ) $ ( if false then Bool else Bool )
        d716 = ( ( Bool -> Bool ) ∋ ( ( λ x717 -> if false then x717 else p1 ) ) ) $ ( if p3 then false else p1 )
        d719 : if false then if true then Bool else Bool else if false then Bool else Bool
        d719 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> ( ( Bool -> Bool ) ∋ ( ( λ x721 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if true then p3 else false )
        d722 : ( ( Set -> Set ) ∋ ( ( λ x723 -> if true then Bool else x723 ) ) ) $ ( if true then Bool else Bool )
        d722 = if if d204 then d167 else false then if d25 then p1 else p1 else if p1 then d133 else false
        d724 : if true then if false then Bool else Bool else if false then Bool else Bool
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x725 -> if true then false else true ) ) ) $ ( if p3 then false else p1 )
        d726 : if true then if true then Bool else Bool else if true then Bool else Bool
        d726 = if if d143 then false else false then if d266 then p3 else d79 else if d73 then p3 else p1
        d727 : if false then if false then Bool else Bool else if true then Bool else Bool
        d727 = if if d247 then p3 else false then if true then d590 else true else if true then true else d284
        d728 : ( ( Set -> Set ) ∋ ( ( λ x729 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d728 = if if d526 then true else false then if p3 then d133 else p3 else if d311 then true else d264
        d730 : ( ( Set -> Set ) ∋ ( ( λ x731 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d730 = if if d659 then true else p3 then if false then d479 else p1 else if false then true else true
        d732 : if true then if false then Bool else Bool else if false then Bool else Bool
        d732 = ( ( Bool -> Bool ) ∋ ( ( λ x733 -> if x733 then x733 else p1 ) ) ) $ ( if false then d72 else true )
        d734 : ( ( Set -> Set ) ∋ ( ( λ x735 -> ( ( Set -> Set ) ∋ ( ( λ x736 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d734 = if if false then p1 else d493 then if d214 then true else false else if d479 then d673 else p1
        d737 : ( ( Set -> Set ) ∋ ( ( λ x739 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d737 = ( ( Bool -> Bool ) ∋ ( ( λ x738 -> if true then d698 else d642 ) ) ) $ ( if p1 then p1 else true )
        d741 : if true then if false then Bool else Bool else if true then Bool else Bool
        d741 = if if p3 then p3 else false then if p3 then p3 else d656 else if true then true else p3
    module M'  = M ( true ) 
    d742 : if true then if true then Bool else Bool else if true then Bool else Bool
    d742 = ( ( Bool -> Bool ) ∋ ( ( λ x743 -> ( M'.d516 ) $ ( ( M'.d201 ) $ ( ( M'.d292 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x744 -> x744 ) ) ) $ ( x743 ) ) ) ) ) ) ) $ ( if false then true else false )
    d745 : ( ( Set -> Set ) ∋ ( ( λ x747 -> if true then Bool else x747 ) ) ) $ ( if false then Bool else Bool )
    d745 = ( ( M.d201 ) $ ( ( M'.d294 ) $ ( ( M'.d175 ) $ ( ( ( M.d40 ) $ ( false ) ) $ ( false ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x746 -> d742 ) ) ) $ ( true ) )
    d748 : if false then if true then Bool else Bool else if false then Bool else Bool
    d748 = ( ( M.d270 ) $ ( ( M'.d269 ) $ ( ( ( M.d330 ) $ ( d745 ) ) $ ( true ) ) ) ) $ ( ( M'.d372 ) $ ( ( M'.d170 ) $ ( ( M'.d75 ) $ ( ( ( M.d700 ) $ ( d742 ) ) $ ( true ) ) ) ) )
    d749 : if true then if true then Bool else Bool else if false then Bool else Bool
    d749 = ( M'.d638 ) $ ( ( M'.d617 ) $ ( if if true then d748 else true then if d748 then d748 else d745 else if d748 then true else true ) )
    d750 : ( ( Set -> Set ) ∋ ( ( λ x751 -> ( ( Set -> Set ) ∋ ( ( λ x752 -> x752 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d750 = ( M'.d342 ) $ ( if if true then true else true then if d748 then true else d742 else if true then d745 else d748 )
    d753 : if true then if false then Bool else Bool else if false then Bool else Bool
    d753 = ( M'.d682 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x754 -> ( M'.d417 ) $ ( ( M'.d338 ) $ ( ( ( M.d350 ) $ ( if d749 then d745 else x754 ) ) $ ( if true then x754 else d749 ) ) ) ) ) ) $ ( if false then d749 else true ) )
    d755 : if false then if false then Bool else Bool else if false then Bool else Bool
    d755 = ( M'.d338 ) $ ( ( M'.d287 ) $ ( ( M'.d198 ) $ ( ( ( M.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x756 -> true ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x757 -> false ) ) ) $ ( true ) ) ) ) )
    d758 : ( ( Set -> Set ) ∋ ( ( λ x759 -> ( ( Set -> Set ) ∋ ( ( λ x760 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d758 = if if d748 then d753 else false then if true then false else true else if true then d750 else false
    d761 : ( ( Set -> Set ) ∋ ( ( λ x763 -> if false then x763 else Bool ) ) ) $ ( if false then Bool else Bool )
    d761 = ( M'.d705 ) $ ( ( ( M.d506 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x762 -> d758 ) ) ) $ ( false ) ) ) $ ( ( ( M.d47 ) $ ( d753 ) ) $ ( false ) ) )
    d764 : ( ( Set -> Set ) ∋ ( ( λ x765 -> ( ( Set -> Set ) ∋ ( ( λ x766 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d764 = ( M'.d628 ) $ ( ( ( M.d503 ) $ ( ( M'.d446 ) $ ( if true then true else true ) ) ) $ ( ( M'.d113 ) $ ( ( ( M.d247 ) $ ( false ) ) $ ( false ) ) ) )
    d767 : ( ( Set -> Set ) ∋ ( ( λ x768 -> ( ( Set -> Set ) ∋ ( ( λ x769 -> x769 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d767 = ( M'.d418 ) $ ( if if true then d761 else true then if d755 then d753 else true else if d758 then d742 else d753 )
    d770 : if false then if false then Bool else Bool else if false then Bool else Bool
    d770 = ( M'.d485 ) $ ( ( M'.d513 ) $ ( ( M'.d734 ) $ ( ( M'.d21 ) $ ( ( M'.d298 ) $ ( ( M'.d384 ) $ ( ( M'.d20 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x771 -> ( ( M.d79 ) $ ( if true then d750 else x771 ) ) $ ( if true then x771 else d755 ) ) ) ) $ ( if d742 then d748 else d750 ) ) ) ) ) ) ) )
    d772 : if true then if true then Bool else Bool else if true then Bool else Bool
    d772 = ( M'.d276 ) $ ( ( ( M.d223 ) $ ( if d753 then d767 else false ) ) $ ( if d767 then false else false ) )
    d773 : ( ( Set -> Set ) ∋ ( ( λ x774 -> ( ( Set -> Set ) ∋ ( ( λ x775 -> Bool ) ) ) $ ( x774 ) ) ) ) $ ( if false then Bool else Bool )
    d773 = ( M'.d513 ) $ ( ( M'.d630 ) $ ( ( M'.d289 ) $ ( if if true then d770 else d764 then if d772 then true else false else if true then true else true ) ) )
    d776 : ( ( Set -> Set ) ∋ ( ( λ x778 -> if false then x778 else Bool ) ) ) $ ( if true then Bool else Bool )
    d776 = ( M'.d69 ) $ ( ( M'.d617 ) $ ( ( ( M.d284 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x777 -> x777 ) ) ) $ ( d764 ) ) ) $ ( ( ( M.d567 ) $ ( d745 ) ) $ ( false ) ) ) )
    d779 : if false then if true then Bool else Bool else if false then Bool else Bool
    d779 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> ( ( M.d590 ) $ ( if x780 then d772 else x780 ) ) $ ( if d776 then d758 else d755 ) ) ) ) $ ( if true then false else d745 )
    d781 : ( ( Set -> Set ) ∋ ( ( λ x782 -> if true then x782 else x782 ) ) ) $ ( if true then Bool else Bool )
    d781 = if if d748 then true else true then if false then d742 else d758 else if true then true else false
    d783 : ( ( Set -> Set ) ∋ ( ( λ x784 -> ( ( Set -> Set ) ∋ ( ( λ x785 -> Bool ) ) ) $ ( x784 ) ) ) ) $ ( if true then Bool else Bool )
    d783 = if if d770 then true else d745 then if false then false else d772 else if d742 then d749 else false
    d786 : if true then if false then Bool else Bool else if true then Bool else Bool
    d786 = ( M'.d567 ) $ ( ( M'.d638 ) $ ( ( M'.d66 ) $ ( ( M'.d95 ) $ ( ( M'.d508 ) $ ( if if d758 then d764 else d772 then if true then d749 else d767 else if d750 then d779 else d781 ) ) ) ) )
    d787 : if false then if true then Bool else Bool else if true then Bool else Bool
    d787 = ( M'.d430 ) $ ( ( M'.d133 ) $ ( ( ( M.d737 ) $ ( ( ( M.d328 ) $ ( d772 ) ) $ ( d761 ) ) ) $ ( if false then false else d753 ) ) )
    d788 : ( ( Set -> Set ) ∋ ( ( λ x789 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d788 = ( M'.d214 ) $ ( if if d748 then false else false then if true then false else false else if d776 then false else d748 )
    d790 : if true then if false then Bool else Bool else if false then Bool else Bool
    d790 = ( M'.d376 ) $ ( ( ( M.d483 ) $ ( ( ( M.d54 ) $ ( d750 ) ) $ ( false ) ) ) $ ( if false then d767 else d758 ) )
    d791 : if false then if false then Bool else Bool else if true then Bool else Bool
    d791 = if if false then d776 else false then if d786 then false else true else if false then true else false
    d792 : ( ( Set -> Set ) ∋ ( ( λ x794 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d792 = ( M'.d226 ) $ ( ( ( M.d493 ) $ ( if d790 then d776 else d764 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x793 -> x793 ) ) ) $ ( false ) ) )
    d795 : ( ( Set -> Set ) ∋ ( ( λ x797 -> ( ( Set -> Set ) ∋ ( ( λ x798 -> x797 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d795 = ( M'.d292 ) $ ( ( M'.d418 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x796 -> ( M'.d531 ) $ ( ( ( M.d536 ) $ ( if d788 then true else x796 ) ) $ ( if true then d788 else true ) ) ) ) ) $ ( if d791 then true else false ) ) )
    d799 : if true then if false then Bool else Bool else if true then Bool else Bool
    d799 = ( M'.d441 ) $ ( ( M'.d249 ) $ ( ( M'.d113 ) $ ( ( M'.d372 ) $ ( ( M'.d377 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( M.d45 ) $ ( if d767 then x800 else x800 ) ) $ ( if d755 then d792 else d767 ) ) ) ) $ ( if true then d773 else false ) ) ) ) ) )
    d801 : if false then if true then Bool else Bool else if true then Bool else Bool
    d801 = ( M'.d418 ) $ ( ( M'.d527 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x802 -> if x802 then true else d791 ) ) ) $ ( if false then d787 else d770 ) ) )
    d803 : ( ( Set -> Set ) ∋ ( ( λ x805 -> if true then Bool else x805 ) ) ) $ ( if false then Bool else Bool )
    d803 = ( M'.d498 ) $ ( ( M'.d430 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x804 -> ( M'.d422 ) $ ( if x804 then x804 else x804 ) ) ) ) $ ( if true then d742 else true ) ) )
    d806 : ( ( Set -> Set ) ∋ ( ( λ x808 -> if false then x808 else x808 ) ) ) $ ( if false then Bool else Bool )
    d806 = ( M'.d726 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x807 -> ( ( M.d741 ) $ ( if d770 then d799 else x807 ) ) $ ( if x807 then d773 else d773 ) ) ) ) $ ( if true then d761 else d742 ) )
    d809 : if true then if true then Bool else Bool else if false then Bool else Bool
    d809 = ( M'.d524 ) $ ( ( ( M.d422 ) $ ( ( M'.d454 ) $ ( ( M'.d72 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x810 -> false ) ) ) $ ( false ) ) ) ) ) $ ( ( ( M.d524 ) $ ( false ) ) $ ( d761 ) ) )
    d811 : if false then if true then Bool else Bool else if false then Bool else Bool
    d811 = if if true then true else false then if d745 then d749 else true else if d764 then true else false
    d812 : if false then if true then Bool else Bool else if true then Bool else Bool
    d812 = ( ( Bool -> Bool ) ∋ ( ( λ x813 -> if false then d801 else d745 ) ) ) $ ( if d809 then true else true )
    d814 : if true then if false then Bool else Bool else if true then Bool else Bool
    d814 = if if d786 then d787 else d773 then if true then d790 else true else if d773 then false else d806
    d815 : ( ( Set -> Set ) ∋ ( ( λ x816 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d815 = ( ( M.d29 ) $ ( ( M'.d170 ) $ ( ( ( M.d737 ) $ ( d753 ) ) $ ( true ) ) ) ) $ ( ( M'.d515 ) $ ( ( M'.d276 ) $ ( if true then true else true ) ) )
    d817 : if true then if false then Bool else Bool else if false then Bool else Bool
    d817 = if if true then true else d758 then if d801 then true else d742 else if false then d787 else false
    d818 : ( ( Set -> Set ) ∋ ( ( λ x819 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> x819 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d818 = ( ( M.d448 ) $ ( ( M'.d83 ) $ ( ( ( M.d367 ) $ ( true ) ) $ ( false ) ) ) ) $ ( ( M'.d293 ) $ ( if true then d809 else d773 ) )
    d821 : if true then if true then Bool else Bool else if true then Bool else Bool
    d821 = ( M'.d241 ) $ ( if if d814 then d801 else false then if false then false else d773 else if d781 then d749 else d776 )
    d822 : if true then if false then Bool else Bool else if true then Bool else Bool
    d822 = ( ( Bool -> Bool ) ∋ ( ( λ x823 -> ( M'.d129 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x824 -> x823 ) ) ) $ ( d781 ) ) ) ) ) $ ( if true then true else true )
    d825 : ( ( Set -> Set ) ∋ ( ( λ x826 -> ( ( Set -> Set ) ∋ ( ( λ x827 -> x827 ) ) ) $ ( x826 ) ) ) ) $ ( if false then Bool else Bool )
    d825 = ( M'.d597 ) $ ( ( M'.d210 ) $ ( ( ( M.d693 ) $ ( ( M'.d730 ) $ ( ( ( M.d225 ) $ ( d817 ) ) $ ( d788 ) ) ) ) $ ( ( M'.d514 ) $ ( ( M'.d476 ) $ ( ( M'.d659 ) $ ( ( M'.d356 ) $ ( ( ( M.d517 ) $ ( d753 ) ) $ ( false ) ) ) ) ) ) ) )
    d828 : ( ( Set -> Set ) ∋ ( ( λ x830 -> if true then Bool else x830 ) ) ) $ ( if false then Bool else Bool )
    d828 = ( ( Bool -> Bool ) ∋ ( ( λ x829 -> ( ( M.d287 ) $ ( if d814 then d801 else x829 ) ) $ ( if false then x829 else false ) ) ) ) $ ( if false then true else d821 )
    d831 : if false then if false then Bool else Bool else if true then Bool else Bool
    d831 = ( ( Bool -> Bool ) ∋ ( ( λ x832 -> if d788 then true else d791 ) ) ) $ ( if d779 then false else d806 )
    d833 : ( ( Set -> Set ) ∋ ( ( λ x834 -> ( ( Set -> Set ) ∋ ( ( λ x835 -> x835 ) ) ) $ ( x834 ) ) ) ) $ ( if true then Bool else Bool )
    d833 = ( M'.d715 ) $ ( if if true then d758 else false then if d817 then d809 else true else if d815 then false else false )
    d836 : if true then if true then Bool else Bool else if true then Bool else Bool
    d836 = ( M'.d79 ) $ ( if if d786 then d764 else false then if d790 then true else true else if d792 then d755 else true )
    d837 : if false then if true then Bool else Bool else if false then Bool else Bool
    d837 = ( M'.d531 ) $ ( ( M'.d530 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x838 -> ( ( Bool -> Bool ) ∋ ( ( λ x839 -> true ) ) ) $ ( x838 ) ) ) ) $ ( if d833 then true else false ) ) )
    d840 : ( ( Set -> Set ) ∋ ( ( λ x842 -> if false then Bool else x842 ) ) ) $ ( if true then Bool else Bool )
    d840 = ( ( Bool -> Bool ) ∋ ( ( λ x841 -> ( ( M.d308 ) $ ( if d767 then true else d801 ) ) $ ( if x841 then d825 else x841 ) ) ) ) $ ( if d758 then d811 else true )
    d843 : ( ( Set -> Set ) ∋ ( ( λ x846 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d843 = ( M'.d120 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x844 -> ( ( Bool -> Bool ) ∋ ( ( λ x845 -> x845 ) ) ) $ ( false ) ) ) ) $ ( if true then d776 else d809 ) )
    d847 : if true then if false then Bool else Bool else if true then Bool else Bool
    d847 = if if d806 then true else false then if true then d781 else false else if true then true else d818
    d848 : if true then if true then Bool else Bool else if false then Bool else Bool
    d848 = if if d764 then d812 else d831 then if d786 then d742 else d773 else if true then true else false
    d849 : ( ( Set -> Set ) ∋ ( ( λ x851 -> if true then x851 else x851 ) ) ) $ ( if false then Bool else Bool )
    d849 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> ( M'.d13 ) $ ( ( M'.d114 ) $ ( if x850 then false else false ) ) ) ) ) $ ( if d755 then d791 else d809 )
    d852 : if true then if true then Bool else Bool else if false then Bool else Bool
    d852 = ( M'.d567 ) $ ( if if false then d811 else false then if d787 then false else d749 else if true then d761 else d836 )