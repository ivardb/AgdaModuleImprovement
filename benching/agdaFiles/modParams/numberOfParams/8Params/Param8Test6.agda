module Param8Test6  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if false then Bool else Bool ) ( p5 : if false then Bool else Bool ) ( p6 : if false then Bool else Bool ) ( p7 : if false then Bool else Bool ) ( p8 : if false then Bool else Bool )  where
        d9 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( x11 ) ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if p1 then p2 else false ) ) ) $ ( if p6 then true else p1 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> x14 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d13 = if if p5 then false else d9 then if d9 then false else d9 else if p7 then false else true
        d16 : if true then if false then Bool else Bool else if false then Bool else Bool
        d16 = if if true then p7 else false then if p7 then d13 else p8 else if false then p6 else d13
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> Bool ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> p1 ) ) ) $ ( d16 ) ) ) ) $ ( if d16 then p8 else p3 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else x23 ) ) ) $ ( if false then Bool else Bool )
        d22 = if if false then p3 else p1 then if p3 then d17 else false else if p3 then false else false
        d24 : if false then if true then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> p1 ) ) ) $ ( p7 ) ) ) ) $ ( if d13 then d13 else d22 )
        d27 : if false then if false then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if x28 then true else d22 ) ) ) $ ( if p8 then d16 else false )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> Bool ) ) ) $ ( x30 ) ) ) ) $ ( if false then Bool else Bool )
        d29 = if if false then d13 else true then if false then d13 else d24 else if d27 then p2 else false
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then x33 else Bool ) ) ) $ ( if true then Bool else Bool )
        d32 = if if d17 then d16 else d24 then if d13 then d13 else d27 else if d16 then true else p5
        d34 : if false then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if p8 then true else p7 then if p6 then p2 else d17 else if true then p7 else p5
        d35 : if false then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if true then d27 else d13 ) ) ) $ ( if d32 then p8 else d24 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if false then x38 else Bool ) ) ) $ ( if true then Bool else Bool )
        d37 = if if d24 then d29 else d35 then if p6 then p4 else false else if p4 then p6 else p2
        d39 : if true then if true then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> d37 ) ) ) $ ( p8 ) ) ) ) $ ( if true then true else d9 )
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = if if d17 then d27 else true then if p5 then p8 else p2 else if false then d16 else d24
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if false then x44 else x44 ) ) ) $ ( if false then Bool else Bool )
        d43 = if if true then false else false then if p1 then false else true else if true then d17 else p6
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d45 = if if false then d16 else p5 then if p6 then d27 else d22 else if false then p8 else p7
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> p5 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d37 else p1 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if true then x52 else x52 ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if false then d47 else true ) ) ) $ ( if p5 then d16 else p3 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if false then Bool else x55 ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if d32 then d50 else true ) ) ) $ ( if p4 then true else p3 )
        d56 : if true then if true then Bool else Bool else if true then Bool else Bool
        d56 = if if d13 then false else p3 then if false then p3 else d45 else if p7 then d47 else p8
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x58 ) ) ) $ ( x58 ) ) ) ) $ ( if false then Bool else Bool )
        d57 = if if p7 then p6 else false then if false then p2 else d47 else if false then p4 else p6
        d60 : if false then if false then Bool else Bool else if true then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( true ) ) ) ) $ ( if d34 then false else p5 )
        d63 : if true then if false then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if p3 then d42 else false ) ) ) $ ( if d17 then false else p1 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( x66 ) ) ) ) $ ( if true then Bool else Bool )
        d65 = if if true then p4 else d63 then if true then p5 else true else if false then d27 else p5
        d68 : if false then if true then Bool else Bool else if true then Bool else Bool
        d68 = if if false then d37 else d37 then if d29 then false else p8 else if true then false else p7
        d69 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then p1 else p7 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> x77 ) ) ) $ ( x76 ) ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> p4 ) ) ) $ ( p8 ) ) ) ) $ ( if false then p8 else d16 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then Bool else x79 ) ) ) $ ( if false then Bool else Bool )
        d78 = if if d56 then false else p2 then if d22 then true else d22 else if p2 then d56 else d60
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if false then x81 else x81 ) ) ) $ ( if false then Bool else Bool )
        d80 = if if false then d65 else false then if p6 then p6 else false else if true then false else d68
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( x83 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if false then d34 else true then if d56 then p8 else false else if p2 then p7 else d27
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> x86 ) ) ) $ ( x86 ) ) ) ) $ ( if true then Bool else Bool )
        d85 = if if true then p3 else d50 then if p6 then p8 else true else if p4 then d42 else p7
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d88 = if if false then d68 else d22 then if d80 then p3 else p8 else if true then d27 else p1
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else x92 ) ) ) $ ( if false then Bool else Bool )
        d91 = if if d53 then p2 else true then if false then true else d24 else if p8 then true else false
        d93 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> d9 ) ) ) $ ( p6 ) ) ) ) $ ( if p7 then p2 else p1 )
        d98 : if false then if true then Bool else Bool else if false then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> true ) ) ) $ ( d34 ) ) ) ) $ ( if false then d57 else true )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> x103 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d101 = if if d82 then true else p5 then if d42 then true else false else if p4 then false else p5
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then Bool else x105 ) ) ) $ ( if true then Bool else Bool )
        d104 = if if p1 then p4 else true then if d63 then d101 else d69 else if true then p4 else d50
        d106 : if false then if true then Bool else Bool else if false then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if p5 then false else false ) ) ) $ ( if d104 then true else p1 )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else x110 ) ) ) $ ( if true then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if false then p2 else true ) ) ) $ ( if d34 then p2 else false )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then Bool else x112 ) ) ) $ ( if false then Bool else Bool )
        d111 = if if d16 then d29 else p4 then if false then true else d104 else if d73 then true else false
    d113 : if true then if true then Bool else Bool else if false then Bool else Bool
    d113 = if if true then true else false then if false then true else false else if true then true else false
    d114 : if true then if false then Bool else Bool else if false then Bool else Bool
    d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> x116 ) ) ) $ ( x115 ) ) ) ) $ ( if d113 then false else d113 )
    d117 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( x119 ) ) ) ) $ ( if false then Bool else Bool )
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if x118 then x118 else false ) ) ) $ ( if false then true else d114 )
    d121 : if true then if false then Bool else Bool else if false then Bool else Bool
    d121 = if if d114 then d114 else d117 then if false then false else d117 else if false then true else d117
    d122 : if false then if false then Bool else Bool else if false then Bool else Bool
    d122 = if if false then true else true then if d114 then true else false else if d114 then d114 else d113
    d123 : if true then if true then Bool else Bool else if true then Bool else Bool
    d123 = if if d113 then true else d113 then if true then false else true else if d122 then true else d114
    d124 : if false then if true then Bool else Bool else if true then Bool else Bool
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> ( ( ( ( ( ( ( ( M.d24 ) $ ( x125 ) ) $ ( x125 ) ) $ ( d117 ) ) $ ( d121 ) ) $ ( d121 ) ) $ ( d123 ) ) $ ( d113 ) ) $ ( x125 ) ) ) ) $ ( if true then d114 else true )
    d126 : if false then if false then Bool else Bool else if true then Bool else Bool
    d126 = ( ( ( ( ( ( ( ( M.d88 ) $ ( true ) ) $ ( false ) ) $ ( d121 ) ) $ ( true ) ) $ ( true ) ) $ ( false ) ) $ ( d122 ) ) $ ( false )
    d127 : if false then if true then Bool else Bool else if true then Bool else Bool
    d127 = if if d117 then d124 else d114 then if true then true else true else if d114 then false else true
    d128 : if true then if false then Bool else Bool else if true then Bool else Bool
    d128 = if if d117 then d122 else false then if false then d122 else d114 else if d123 then d113 else true
    d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then Bool else x130 ) ) ) $ ( if false then Bool else Bool )
    d129 = ( ( ( ( ( ( ( ( M.d47 ) $ ( d128 ) ) $ ( false ) ) $ ( d122 ) ) $ ( d126 ) ) $ ( d113 ) ) $ ( d121 ) ) $ ( d127 ) ) $ ( d121 )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d131 = if if d126 then true else d128 then if true then d124 else false else if d124 then true else d123
    d133 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> x137 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> d124 ) ) ) $ ( d131 ) ) ) ) $ ( if false then d113 else false )
    d138 : if false then if false then Bool else Bool else if true then Bool else Bool
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> if x139 then d133 else false ) ) ) $ ( if d133 then d127 else d124 )
    d140 : if true then if true then Bool else Bool else if false then Bool else Bool
    d140 = if if true then true else d138 then if false then false else d121 else if false then d138 else false
    d141 : if true then if true then Bool else Bool else if false then Bool else Bool
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> ( ( ( ( ( ( ( ( M.d16 ) $ ( true ) ) $ ( d122 ) ) $ ( false ) ) $ ( x142 ) ) $ ( x142 ) ) $ ( x142 ) ) $ ( true ) ) $ ( d117 ) ) ) ) $ ( if true then true else true )
    d143 : if true then if false then Bool else Bool else if false then Bool else Bool
    d143 = if if d141 then d124 else false then if false then false else true else if d138 then d117 else false
    d144 : ( ( Set -> Set ) ∋ ( ( λ x145 -> ( ( Set -> Set ) ∋ ( ( λ x146 -> x145 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d144 = if if true then true else d143 then if false then false else false else if true then d127 else d143
    d147 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> x150 ) ) ) $ ( x150 ) ) ) ) $ ( if false then Bool else Bool )
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( Bool -> Bool ) ∋ ( ( λ x149 -> true ) ) ) $ ( d123 ) ) ) ) $ ( if d126 then d141 else d114 )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d152 = if if true then d143 else true then if false then d121 else d143 else if d129 then true else d123
    d155 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> Bool ) ) ) $ ( x157 ) ) ) ) $ ( if false then Bool else Bool )
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> if d113 then true else d113 ) ) ) $ ( if false then d121 else d147 )
    d159 : if true then if false then Bool else Bool else if false then Bool else Bool
    d159 = ( ( ( ( ( ( ( ( M.d80 ) $ ( false ) ) $ ( true ) ) $ ( d113 ) ) $ ( d117 ) ) $ ( true ) ) $ ( true ) ) $ ( d128 ) ) $ ( false )
    d160 : ( ( Set -> Set ) ∋ ( ( λ x162 -> ( ( Set -> Set ) ∋ ( ( λ x163 -> Bool ) ) ) $ ( x162 ) ) ) ) $ ( if false then Bool else Bool )
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( ( ( ( ( ( ( M.d42 ) $ ( x161 ) ) $ ( true ) ) $ ( x161 ) ) $ ( x161 ) ) $ ( x161 ) ) $ ( d122 ) ) $ ( d127 ) ) $ ( d129 ) ) ) ) $ ( if d144 then d144 else false )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> if d140 then d147 else d113 ) ) ) $ ( if d141 then true else false )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d167 = ( ( ( ( ( ( ( ( M.d101 ) $ ( d121 ) ) $ ( false ) ) $ ( d127 ) ) $ ( true ) ) $ ( true ) ) $ ( d126 ) ) $ ( d124 ) ) $ ( d164 )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x171 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d169 = ( ( ( ( ( ( ( ( M.d78 ) $ ( true ) ) $ ( d144 ) ) $ ( d122 ) ) $ ( true ) ) $ ( d129 ) ) $ ( false ) ) $ ( false ) ) $ ( false )
    d172 : if true then if false then Bool else Bool else if false then Bool else Bool
    d172 = ( ( ( ( ( ( ( ( M.d17 ) $ ( false ) ) $ ( d169 ) ) $ ( d117 ) ) $ ( d169 ) ) $ ( true ) ) $ ( d141 ) ) $ ( d121 ) ) $ ( d143 )
    d173 : if true then if true then Bool else Bool else if false then Bool else Bool
    d173 = ( ( ( ( ( ( ( ( M.d80 ) $ ( d143 ) ) $ ( d113 ) ) $ ( d129 ) ) $ ( true ) ) $ ( d128 ) ) $ ( d128 ) ) $ ( true ) ) $ ( true )
    d174 : if false then if true then Bool else Bool else if false then Bool else Bool
    d174 = if if d155 then false else true then if false then d143 else false else if d129 then d167 else false
    d175 : ( ( Set -> Set ) ∋ ( ( λ x176 -> ( ( Set -> Set ) ∋ ( ( λ x177 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d175 = ( ( ( ( ( ( ( ( M.d108 ) $ ( d138 ) ) $ ( true ) ) $ ( d117 ) ) $ ( true ) ) $ ( d122 ) ) $ ( d114 ) ) $ ( true ) ) $ ( d140 )
    d178 : if false then if true then Bool else Bool else if true then Bool else Bool
    d178 = if if true then d138 else d160 then if true then d114 else false else if d169 then true else d114
    d179 : if true then if false then Bool else Bool else if true then Bool else Bool
    d179 = if if false then d141 else true then if false then d152 else false else if false then false else d121
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if false then Bool else x181 ) ) ) $ ( if false then Bool else Bool )
    d180 = ( ( ( ( ( ( ( ( M.d108 ) $ ( true ) ) $ ( d129 ) ) $ ( d143 ) ) $ ( d167 ) ) $ ( d144 ) ) $ ( true ) ) $ ( false ) ) $ ( false )
    d182 : if true then if false then Bool else Bool else if false then Bool else Bool
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( Bool -> Bool ) ∋ ( ( λ x184 -> d172 ) ) ) $ ( true ) ) ) ) $ ( if d113 then true else d155 )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> ( ( Set -> Set ) ∋ ( ( λ x187 -> x186 ) ) ) $ ( x186 ) ) ) ) $ ( if false then Bool else Bool )
    d185 = if if d122 then false else d127 then if true then d180 else true else if true then d178 else false
    d188 : if true then if false then Bool else Bool else if false then Bool else Bool
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d179 ) ) ) $ ( true ) ) ) ) $ ( if d121 then true else d128 )
    d191 : if false then if true then Bool else Bool else if false then Bool else Bool
    d191 = if if true then false else d141 then if d155 then false else d141 else if d159 then false else true
    d192 : if true then if false then Bool else Bool else if true then Bool else Bool
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> if false then true else x193 ) ) ) $ ( if d160 then d140 else false )
    d194 : if false then if true then Bool else Bool else if false then Bool else Bool
    d194 = ( ( ( ( ( ( ( ( M.d9 ) $ ( true ) ) $ ( d173 ) ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( true )
    d195 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> x197 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d195 = ( ( ( ( ( ( ( ( M.d50 ) $ ( d185 ) ) $ ( d178 ) ) $ ( d160 ) ) $ ( d155 ) ) $ ( true ) ) $ ( true ) ) $ ( d152 ) ) $ ( false )