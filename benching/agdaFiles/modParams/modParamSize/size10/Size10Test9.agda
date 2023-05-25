module Size10Test9  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else x2 ) ) ) $ ( Bool ) ) ( p3 : if true then Bool else Bool )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( x6 ) ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if p3 then false else p3 ) ) ) $ ( if false then false else p3 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if false then x10 else Bool ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if p1 then d4 else p3 ) ) ) $ ( if p3 then p1 else p1 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if false then x14 else Bool ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> x13 ) ) ) $ ( true ) ) ) ) $ ( if d8 then d8 else p3 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d15 = if if d11 then true else p3 then if false then p3 else d8 else if true then p3 else p3
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then x18 else Bool ) ) ) $ ( if true then Bool else Bool )
        d17 = if if p1 then p3 else false then if p3 then d4 else p3 else if d8 then d8 else false
        d19 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then x21 else x21 ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if true then true else d4 ) ) ) $ ( if d8 then false else d17 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d22 = if if d4 then true else p3 then if p3 then d8 else d11 else if d11 then d4 else p3
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = if if d8 then d19 else true then if p3 then p3 else d4 else if p1 then p1 else true
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if true then x26 else x26 ) ) ) $ ( if false then Bool else Bool )
        d25 = if if p1 then d11 else false then if d22 then d11 else p1 else if false then p1 else true
        d27 : if true then if false then Bool else Bool else if false then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> d25 ) ) ) $ ( false ) ) ) ) $ ( if d22 then d24 else d4 )
        d30 : if true then if true then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> false ) ) ) $ ( d25 ) ) ) ) $ ( if true then d11 else true )
        d38 : if true then if true then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( d22 ) ) ) ) $ ( if d24 then d27 else false )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x42 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d41 = if if p1 then false else d8 then if p3 then p3 else d27 else if true then d22 else true
        d44 : if false then if false then Bool else Bool else if true then Bool else Bool
        d44 = if if p3 then d24 else d11 then if p3 then p3 else true else if true then p1 else p1
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x46 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d45 = if if d11 then true else p3 then if d22 then p3 else p3 else if p1 then false else p3
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if true then false else p3 then if false then d24 else true else if p1 then d11 else true
        d49 : if true then if false then Bool else Bool else if false then Bool else Bool
        d49 = if if d11 then p1 else p1 then if false then d30 else d41 else if false then true else d33
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then Bool else x51 ) ) ) $ ( if false then Bool else Bool )
        d50 = if if p3 then true else p3 then if true then d24 else d49 else if d38 then false else false
        d52 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then x54 else Bool ) ) ) $ ( if true then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if false then d45 else d11 ) ) ) $ ( if p3 then d44 else false )
        d55 : if true then if true then Bool else Bool else if false then Bool else Bool
        d55 = if if false then p1 else d24 then if p3 then false else p3 else if true then p3 else d27
        d56 : if true then if false then Bool else Bool else if false then Bool else Bool
        d56 = if if p3 then p3 else p3 then if true then p3 else p3 else if false then false else false
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then Bool else x58 ) ) ) $ ( if false then Bool else Bool )
        d57 = if if false then false else d30 then if true then d52 else p3 else if p3 then p3 else d19
        d59 : if false then if false then Bool else Bool else if false then Bool else Bool
        d59 = if if p1 then p1 else false then if true then false else false else if p1 then d55 else false
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then x61 else x61 ) ) ) $ ( if false then Bool else Bool )
        d60 = if if p3 then d41 else d24 then if false then d44 else false else if d56 then d59 else p1
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if true then x63 else x63 ) ) ) $ ( if false then Bool else Bool )
        d62 = if if false then d27 else p1 then if d45 then true else p1 else if false then p3 else true
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( x65 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = if if true then true else p3 then if d56 then d55 else d55 else if d33 then p3 else p3
        d67 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( x69 ) ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if false then x68 else false ) ) ) $ ( if d55 then d62 else false )
        d71 : if true then if true then Bool else Bool else if true then Bool else Bool
        d71 = if if p3 then d50 else d30 then if p3 then false else p1 else if p3 then d52 else true
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x74 ) ) ) $ ( x73 ) ) ) ) $ ( if true then Bool else Bool )
        d72 = if if d8 then p1 else d30 then if d24 then false else d71 else if false then false else p1
        d75 : if true then if false then Bool else Bool else if false then Bool else Bool
        d75 = if if d56 then true else d15 then if p3 then false else d50 else if true then false else false
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then x79 else Bool ) ) ) $ ( if false then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> d17 ) ) ) $ ( x77 ) ) ) ) $ ( if d72 then d22 else p1 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x82 ) ) ) $ ( x81 ) ) ) ) $ ( if true then Bool else Bool )
        d80 = if if p3 then d22 else p3 then if d76 then true else false else if true then p1 else d56
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if x84 then d45 else d17 ) ) ) $ ( if p3 then d27 else true )
        d87 : if true then if true then Bool else Bool else if false then Bool else Bool
        d87 = if if p3 then d27 else d11 then if false then d67 else d59 else if d64 then false else d50
        d88 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( x91 ) ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> false ) ) ) $ ( x89 ) ) ) ) $ ( if p1 then true else d17 )
        d93 : if true then if false then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if d41 then false else d49 ) ) ) $ ( if true then p1 else p3 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> p1 ) ) ) $ ( d44 ) ) ) ) $ ( if p1 then d50 else p1 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if false then Bool else x103 ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> false ) ) ) $ ( d71 ) ) ) ) $ ( if d60 then false else d27 )
        d104 : if false then if true then Bool else Bool else if true then Bool else Bool
        d104 = if if d57 then d50 else p3 then if d72 then d60 else false else if p3 then true else false
    d105 : if true then if true then Bool else Bool else if false then Bool else Bool
    d105 = if if true then true else false then if false then false else false else if false then false else false
    d106 : if true then if true then Bool else Bool else if true then Bool else Bool
    d106 = if if true then d105 else true then if d105 then false else true else if d105 then d105 else d105
    d107 : if false then if true then Bool else Bool else if true then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> x109 ) ) ) $ ( true ) ) ) ) $ ( if d105 then d105 else d105 )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then x112 else x112 ) ) ) $ ( if false then Bool else Bool )
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( M.d72 ) $ ( if true then true else true ) ) $ ( if false then false else x111 ) ) ) ) $ ( if d106 then d105 else false )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> x115 ) ) ) $ ( d107 ) ) ) ) $ ( if true then true else true )
    d117 : if false then if false then Bool else Bool else if true then Bool else Bool
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if x118 then d105 else d113 ) ) ) $ ( if d113 then d113 else true )
    d119 : if false then if true then Bool else Bool else if false then Bool else Bool
    d119 = if if false then false else d113 then if d113 then d113 else true else if d117 then true else d106
    d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then Bool else x122 ) ) ) $ ( if false then Bool else Bool )
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( M.d24 ) $ ( if x121 then d110 else true ) ) $ ( if true then x121 else d106 ) ) ) ) $ ( if false then false else true )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( x125 ) ) ) ) $ ( if true then Bool else Bool )
    d123 = ( ( M.d76 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x124 -> d107 ) ) ) $ ( d110 ) ) ) $ ( ( ( M.d48 ) $ ( true ) ) $ ( true ) )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if false then x128 else Bool ) ) ) $ ( if false then Bool else Bool )
    d127 = if if d105 then false else true then if true then d110 else false else if false then false else d106
    d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> x130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d129 = if if d106 then false else d106 then if true then d106 else d110 else if d127 then true else true
    d132 : if true then if true then Bool else Bool else if false then Bool else Bool
    d132 = if if true then true else d129 then if true then false else true else if d120 then d107 else d110
    d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> x134 ) ) ) $ ( x134 ) ) ) ) $ ( if true then Bool else Bool )
    d133 = if if true then d110 else d119 then if false then d107 else true else if d120 then false else d120
    d136 : if true then if false then Bool else Bool else if false then Bool else Bool
    d136 = if if false then d132 else d132 then if d105 then true else false else if d117 then false else d120
    d137 : if false then if false then Bool else Bool else if true then Bool else Bool
    d137 = if if d113 then d136 else false then if false then false else d119 else if d113 then d132 else d107
    d138 : ( ( Set -> Set ) ∋ ( ( λ x139 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( x139 ) ) ) ) $ ( if true then Bool else Bool )
    d138 = if if d120 then d119 else false then if d137 then true else true else if d127 then true else d105
    d141 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if false then x143 else x143 ) ) ) $ ( if false then Bool else Bool )
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> if x142 then d105 else d120 ) ) ) $ ( if d107 then d105 else true )
    d144 : if false then if true then Bool else Bool else if false then Bool else Bool
    d144 = if if false then d120 else d123 then if false then d141 else true else if false then true else d141
    d145 : if false then if true then Bool else Bool else if false then Bool else Bool
    d145 = ( ( M.d44 ) $ ( if false then false else d120 ) ) $ ( if d110 then true else d106 )
    d146 : ( ( Set -> Set ) ∋ ( ( λ x148 -> ( ( Set -> Set ) ∋ ( ( λ x149 -> x148 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> ( ( M.d76 ) $ ( if false then d127 else false ) ) $ ( if x147 then true else x147 ) ) ) ) $ ( if false then d133 else d145 )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x152 -> ( ( Set -> Set ) ∋ ( ( λ x153 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> ( ( M.d93 ) $ ( if d107 then true else d145 ) ) $ ( if x151 then true else d145 ) ) ) ) $ ( if true then false else d138 )
    d154 : if true then if true then Bool else Bool else if false then Bool else Bool
    d154 = ( ( M.d44 ) $ ( ( ( M.d22 ) $ ( false ) ) $ ( d141 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x155 -> x155 ) ) ) $ ( d138 ) )
    d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d156 = if if d123 then true else true then if d106 then d146 else false else if d113 then d154 else false
    d159 : if true then if true then Bool else Bool else if false then Bool else Bool
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x161 -> d123 ) ) ) $ ( false ) ) ) ) $ ( if true then d123 else d129 )
    d162 : if false then if true then Bool else Bool else if false then Bool else Bool
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> if x163 then false else false ) ) ) $ ( if true then d105 else false )
    d164 : if false then if true then Bool else Bool else if true then Bool else Bool
    d164 = ( ( M.d88 ) $ ( ( ( M.d4 ) $ ( false ) ) $ ( true ) ) ) $ ( if d129 then d144 else true )
    d165 : if false then if false then Bool else Bool else if true then Bool else Bool
    d165 = ( ( M.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x166 -> false ) ) ) $ ( true ) ) ) $ ( ( ( M.d50 ) $ ( true ) ) $ ( true ) )
    d167 : if false then if true then Bool else Bool else if false then Bool else Bool
    d167 = ( ( M.d57 ) $ ( if false then d138 else false ) ) $ ( if d164 then d144 else d117 )
    d168 : if true then if false then Bool else Bool else if true then Bool else Bool
    d168 = ( ( M.d93 ) $ ( ( ( M.d48 ) $ ( true ) ) $ ( d138 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x169 -> d127 ) ) ) $ ( false ) )
    d170 : if true then if true then Bool else Bool else if true then Bool else Bool
    d170 = ( ( M.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x171 -> d144 ) ) ) $ ( d110 ) ) ) $ ( if d156 then d133 else true )
    d172 : if false then if false then Bool else Bool else if false then Bool else Bool
    d172 = ( ( Bool -> Bool ) ∋ ( ( λ x173 -> if true then x173 else x173 ) ) ) $ ( if d168 then d113 else d144 )
    d174 : if false then if true then Bool else Bool else if false then Bool else Bool
    d174 = if if d159 then false else false then if d136 then false else true else if false then true else d167
    d175 : ( ( Set -> Set ) ∋ ( ( λ x176 -> ( ( Set -> Set ) ∋ ( ( λ x177 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d175 = if if false then d141 else false then if true then d172 else d165 else if true then d141 else d150
    d178 : if true then if true then Bool else Bool else if true then Bool else Bool
    d178 = ( ( M.d100 ) $ ( if false then false else true ) ) $ ( if true then true else d119 )
    d179 : if true then if false then Bool else Bool else if false then Bool else Bool
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x181 -> x181 ) ) ) $ ( x180 ) ) ) ) $ ( if d117 then d123 else d105 )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d182 = if if d154 then d123 else d119 then if d150 then d113 else false else if d150 then false else d170
    d185 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if true then x187 else x187 ) ) ) $ ( if true then Bool else Bool )
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> if d110 then d159 else d127 ) ) ) $ ( if d105 then d167 else true )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d188 = if if d136 then d165 else d113 then if d136 then true else false else if d127 then d162 else d129
    d191 : if false then if false then Bool else Bool else if false then Bool else Bool
    d191 = ( ( Bool -> Bool ) ∋ ( ( λ x192 -> if d185 then d107 else x192 ) ) ) $ ( if true then false else d172 )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x194 -> if true then Bool else x194 ) ) ) $ ( if true then Bool else Bool )
    d193 = if if false then true else true then if false then false else true else if false then false else true