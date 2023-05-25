module Param4Test15  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if true then Bool else Bool ) ( p3 : if true then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : if false then if true then Bool else Bool else if false then Bool else Bool
        d5 = if if false then p4 else true then if false then true else p3 else if true then p4 else p2
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d6 = if if p2 then true else p3 then if d5 then p2 else p3 else if d5 then p2 else true
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then x9 else x9 ) ) ) $ ( if false then Bool else Bool )
        d8 = if if true then false else false then if d5 then p1 else true else if true then p3 else d6
        d10 : if true then if false then Bool else Bool else if false then Bool else Bool
        d10 = if if d5 then p4 else true then if false then p1 else false else if true then true else false
        d11 : if true then if false then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if p1 then true else p2 ) ) ) $ ( if false then p2 else d10 )
        d13 : if true then if true then Bool else Bool else if true then Bool else Bool
        d13 = if if false then p1 else d11 then if d5 then false else false else if true then d6 else d5
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( x16 ) ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if true then d6 else d11 ) ) ) $ ( if d11 then false else true )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else x20 ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if false then d14 else d8 ) ) ) $ ( if d5 then true else p1 )
        d21 : if true then if false then Bool else Bool else if true then Bool else Bool
        d21 = if if d5 then p2 else true then if p1 then p2 else false else if d13 then false else false
        d22 : if true then if true then Bool else Bool else if false then Bool else Bool
        d22 = if if d6 then d14 else d11 then if d5 then d13 else false else if p4 then p1 else p1
        d23 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if false then x25 else x25 ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if d11 then x24 else p4 ) ) ) $ ( if p3 then d21 else d18 )
        d26 : if false then if false then Bool else Bool else if true then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> d5 ) ) ) $ ( false ) ) ) ) $ ( if d6 then true else d8 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then x32 else x32 ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if p3 then p3 else p2 )
        d33 : if false then if false then Bool else Bool else if true then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if true then d18 else p1 ) ) ) $ ( if true then p4 else d13 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( x36 ) ) ) ) $ ( if false then Bool else Bool )
        d35 = if if d29 then d10 else p4 then if true then true else p3 else if d29 then false else true
        d38 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if true then x41 else x41 ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> false ) ) ) $ ( p4 ) ) ) ) $ ( if p1 then true else true )
        d42 : if true then if false then Bool else Bool else if true then Bool else Bool
        d42 = if if false then p1 else true then if p3 then p1 else p2 else if d22 then d38 else p1
        d43 : if false then if false then Bool else Bool else if false then Bool else Bool
        d43 = if if p2 then p1 else d33 then if d13 then d29 else d35 else if d5 then d13 else d11
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> Bool ) ) ) $ ( x46 ) ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if d10 then true else x45 ) ) ) $ ( if d13 then p3 else p1 )
        d48 : if true then if true then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then true else p3 )
        d51 : if true then if false then Bool else Bool else if false then Bool else Bool
        d51 = if if d26 then p2 else p3 then if true then p2 else p4 else if false then false else d42
        d52 : if false then if false then Bool else Bool else if true then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> p3 ) ) ) $ ( d26 ) ) ) ) $ ( if p1 then true else p4 )
        d55 : if true then if false then Bool else Bool else if false then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if d38 then x56 else d23 ) ) ) $ ( if true then d13 else true )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then Bool else x58 ) ) ) $ ( if false then Bool else Bool )
        d57 = if if d48 then true else d10 then if d42 then true else true else if true then true else d11
        d59 : if true then if true then Bool else Bool else if true then Bool else Bool
        d59 = if if p2 then p1 else true then if d29 then d52 else d21 else if p2 then p1 else d26
        d60 : if false then if true then Bool else Bool else if true then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( d38 ) ) ) ) $ ( if d22 then d51 else false )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x65 ) ) ) $ ( x64 ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if d38 then d5 else d18 then if p2 then true else d29 else if d55 then p4 else p1
        d66 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then x69 else Bool ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> d51 ) ) ) $ ( d57 ) ) ) ) $ ( if false then p1 else true )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x74 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> p3 ) ) ) $ ( d48 ) ) ) ) $ ( if p3 then d10 else d63 )
        d75 : if true then if false then Bool else Bool else if true then Bool else Bool
        d75 = if if p4 then true else d14 then if d51 then false else true else if true then p1 else d60
        d76 : if false then if false then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> d48 ) ) ) $ ( p3 ) ) ) ) $ ( if d29 then p2 else false )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d79 = if if false then p2 else false then if p3 then false else true else if d5 then d66 else false
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if true then Bool else x83 ) ) ) $ ( if false then Bool else Bool )
        d82 = if if true then false else true then if p3 then p3 else false else if d59 then d14 else p1
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if false then x86 else Bool ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if false then d79 else true ) ) ) $ ( if d11 then true else false )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then Bool else x88 ) ) ) $ ( if true then Bool else Bool )
        d87 = if if p3 then false else d70 then if false then false else d18 else if d55 then false else p3
        d89 : if true then if false then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> x90 ) ) ) $ ( x90 ) ) ) ) $ ( if p3 then d33 else p1 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then x93 else Bool ) ) ) $ ( if true then Bool else Bool )
        d92 = if if false then p2 else p4 then if p4 then d44 else p2 else if p1 then p2 else p4
        d94 : if false then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if true then p3 else false then if d11 then p4 else d82 else if false then p1 else d23
        d95 : if false then if false then Bool else Bool else if true then Bool else Bool
        d95 = if if false then p4 else p1 then if d79 then d8 else d10 else if p2 then d66 else p3
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then x97 else Bool ) ) ) $ ( if false then Bool else Bool )
        d96 = if if true then d29 else d79 then if p4 then d59 else false else if d6 then true else p1
    d98 : if true then if false then Bool else Bool else if true then Bool else Bool
    d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if x99 then false else x99 ) ) ) $ ( if false then true else true )
    d100 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( x102 ) ) ) ) $ ( if true then Bool else Bool )
    d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if d98 then d98 else x101 ) ) ) $ ( if true then true else d98 )
    d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> x106 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if x105 then x105 else d100 ) ) ) $ ( if true then true else true )
    d108 : if true then if false then Bool else Bool else if true then Bool else Bool
    d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if x109 then x109 else false ) ) ) $ ( if true then d100 else d104 )
    d110 : if false then if true then Bool else Bool else if true then Bool else Bool
    d110 = if if d98 then true else true then if d104 then d108 else d104 else if d100 then d104 else true
    d111 : if false then if false then Bool else Bool else if true then Bool else Bool
    d111 = if if true then false else false then if false then d104 else d108 else if d104 then d108 else d104
    d112 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if false then true else d104 ) ) ) $ ( if d108 then d111 else d98 )
    d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> x116 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d115 = if if d98 then d112 else false then if d104 then d110 else d104 else if d110 then d108 else d104
    d118 : if false then if true then Bool else Bool else if true then Bool else Bool
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( d115 ) ) ) ) $ ( if d111 then d104 else true )
    d121 : if true then if false then Bool else Bool else if false then Bool else Bool
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> x123 ) ) ) $ ( d108 ) ) ) ) $ ( if true then d112 else d108 )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if true then Bool else x125 ) ) ) $ ( if true then Bool else Bool )
    d124 = if if d110 then true else true then if true then d115 else d104 else if d104 then true else false
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> x128 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d126 = if if d104 then d100 else d112 then if true then d110 else true else if d100 then d112 else true
    d129 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d124 then d112 else false ) ) ) $ ( if d108 then false else false )
    d132 : if true then if false then Bool else Bool else if false then Bool else Bool
    d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> ( ( Bool -> Bool ) ∋ ( ( λ x134 -> false ) ) ) $ ( x133 ) ) ) ) $ ( if d115 then true else d124 )
    d135 : if true then if false then Bool else Bool else if false then Bool else Bool
    d135 = if if true then d98 else d104 then if d132 then false else d129 else if d111 then true else d111
    d136 : ( ( Set -> Set ) ∋ ( ( λ x137 -> ( ( Set -> Set ) ∋ ( ( λ x138 -> x137 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d136 = if if d126 then true else true then if false then d110 else d132 else if d118 then true else d124
    d139 : if true then if true then Bool else Bool else if false then Bool else Bool
    d139 = ( ( ( ( M.d95 ) $ ( d132 ) ) $ ( false ) ) $ ( true ) ) $ ( d115 )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d140 = if if d121 then d126 else true then if d136 then true else d121 else if d108 then d98 else false
    d142 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> ( ( ( ( M.d92 ) $ ( true ) ) $ ( x143 ) ) $ ( x143 ) ) $ ( x143 ) ) ) ) $ ( if true then false else false )
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> Bool ) ) ) $ ( x147 ) ) ) ) $ ( if true then Bool else Bool )
    d146 = if if d108 then d110 else false then if d140 then true else false else if true then d129 else d136
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> x151 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d149 = ( ( ( ( M.d94 ) $ ( d139 ) ) $ ( d135 ) ) $ ( false ) ) $ ( true )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x153 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d152 = ( ( ( ( M.d57 ) $ ( false ) ) $ ( false ) ) $ ( d129 ) ) $ ( true )
    d154 : if false then if true then Bool else Bool else if true then Bool else Bool
    d154 = ( ( ( ( M.d66 ) $ ( d115 ) ) $ ( false ) ) $ ( false ) ) $ ( false )
    d155 : if false then if true then Bool else Bool else if true then Bool else Bool
    d155 = if if false then false else d115 then if d140 then true else true else if d154 then d139 else d118
    d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d156 = if if true then true else true then if d139 then d142 else true else if d110 then d126 else d124
    d158 : if true then if true then Bool else Bool else if false then Bool else Bool
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> if true then false else x159 ) ) ) $ ( if d108 then d152 else d140 )
    d160 : if true then if true then Bool else Bool else if false then Bool else Bool
    d160 = ( ( ( ( M.d63 ) $ ( d155 ) ) $ ( false ) ) $ ( d139 ) ) $ ( true )
    d161 : if true then if true then Bool else Bool else if false then Bool else Bool
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( Bool -> Bool ) ∋ ( ( λ x163 -> x163 ) ) ) $ ( x162 ) ) ) ) $ ( if d146 then true else false )
    d164 : if true then if false then Bool else Bool else if false then Bool else Bool
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> if true then false else d156 ) ) ) $ ( if false then d121 else d160 )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> Bool ) ) ) $ ( x168 ) ) ) ) $ ( if true then Bool else Bool )
    d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> ( ( ( ( M.d96 ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( d100 ) ) ) ) $ ( if d140 then true else d139 )
    d170 : if false then if false then Bool else Bool else if false then Bool else Bool
    d170 = if if d136 then d98 else false then if d111 then false else true else if d155 then false else d111
    d171 : if true then if false then Bool else Bool else if false then Bool else Bool
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> d154 ) ) ) $ ( d166 ) ) ) ) $ ( if d154 then d156 else false )
    d174 : if false then if false then Bool else Bool else if false then Bool else Bool
    d174 = ( ( ( ( M.d92 ) $ ( true ) ) $ ( d155 ) ) $ ( true ) ) $ ( d156 )
    d175 : if true then if false then Bool else Bool else if true then Bool else Bool
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> ( ( ( ( M.d57 ) $ ( x176 ) ) $ ( false ) ) $ ( true ) ) $ ( d161 ) ) ) ) $ ( if true then d126 else true )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x179 -> if false then Bool else x179 ) ) ) $ ( if false then Bool else Bool )
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> ( ( ( ( M.d13 ) $ ( x178 ) ) $ ( d174 ) ) $ ( true ) ) $ ( x178 ) ) ) ) $ ( if d104 then d171 else d112 )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> x183 ) ) ) $ ( x183 ) ) ) ) $ ( if true then Bool else Bool )
    d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> ( ( Bool -> Bool ) ∋ ( ( λ x182 -> x181 ) ) ) $ ( x181 ) ) ) ) $ ( if true then false else d126 )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x187 -> ( ( Set -> Set ) ∋ ( ( λ x188 -> Bool ) ) ) $ ( x187 ) ) ) ) $ ( if false then Bool else Bool )
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( ( ( M.d5 ) $ ( x186 ) ) $ ( x186 ) ) $ ( d156 ) ) $ ( true ) ) ) ) $ ( if false then false else true )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if false then Bool else x191 ) ) ) $ ( if true then Bool else Bool )
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if d115 then true else x190 ) ) ) $ ( if false then d108 else d124 )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x193 -> if true then x193 else x193 ) ) ) $ ( if false then Bool else Bool )
    d192 = if if false then d171 else false then if false then true else false else if d110 then d170 else d126
    d194 : if true then if false then Bool else Bool else if false then Bool else Bool
    d194 = ( ( ( ( M.d94 ) $ ( true ) ) $ ( true ) ) $ ( d192 ) ) $ ( true )