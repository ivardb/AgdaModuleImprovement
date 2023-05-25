module Param4Test13  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if true then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then p3 else p2 )
        d9 : if true then if true then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if false then p4 else true ) ) ) $ ( if p4 then false else false )
        d11 : if false then if false then Bool else Bool else if false then Bool else Bool
        d11 = if if p1 then d9 else p1 then if true then d9 else true else if false then p2 else false
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( x15 ) ) ) ) $ ( if false then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> d9 ) ) ) $ ( x13 ) ) ) ) $ ( if p1 then d9 else d9 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> p4 ) ) ) $ ( false ) ) ) ) $ ( if d12 then p4 else p2 )
        d22 : if false then if false then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d5 ) ) ) $ ( d12 ) ) ) ) $ ( if p4 then true else true )
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> p1 ) ) ) $ ( d9 ) ) ) ) $ ( if false then d12 else p1 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then x29 else Bool ) ) ) $ ( if true then Bool else Bool )
        d28 = if if d12 then false else d25 then if true then p4 else d11 else if p3 then p2 else p4
        d30 : if false then if false then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if false then true else true ) ) ) $ ( if d9 then p3 else true )
        d32 : if true then if false then Bool else Bool else if false then Bool else Bool
        d32 = if if d12 then p2 else d5 then if d30 then d11 else p3 else if false then p4 else p1
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if false then x36 else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> true ) ) ) $ ( true ) ) ) ) $ ( if d12 then true else false )
        d37 : if false then if true then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if false then p4 else d9 ) ) ) $ ( if d17 then false else true )
        d39 : if false then if true then Bool else Bool else if true then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if p3 then d28 else p3 ) ) ) $ ( if true then d33 else true )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x44 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if d37 then true else p1 ) ) ) $ ( if true then p3 else p2 )
        d45 : if true then if true then Bool else Bool else if false then Bool else Bool
        d45 = if if true then p2 else p4 then if true then true else d17 else if false then p1 else p1
        d46 : if false then if true then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if true then p3 else true ) ) ) $ ( if d37 then true else d30 )
        d48 : if true then if true then Bool else Bool else if false then Bool else Bool
        d48 = if if false then p4 else true then if false then false else true else if true then true else true
        d49 : if false then if false then Bool else Bool else if false then Bool else Bool
        d49 = if if true then p1 else p1 then if p3 then d33 else true else if p3 then p3 else d28
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x51 ) ) ) $ ( x51 ) ) ) ) $ ( if true then Bool else Bool )
        d50 = if if d41 then false else false then if true then d49 else d12 else if true then d25 else p1
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> x54 ) ) ) $ ( x54 ) ) ) ) $ ( if true then Bool else Bool )
        d53 = if if p4 then p2 else d37 then if true then d5 else true else if true then p1 else d9
        d56 : if false then if true then Bool else Bool else if false then Bool else Bool
        d56 = if if p3 then false else d30 then if d9 then p4 else d53 else if d41 then d17 else p2
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x59 ) ) ) $ ( x58 ) ) ) ) $ ( if true then Bool else Bool )
        d57 = if if d25 then p3 else d37 then if p3 then p1 else d37 else if p2 then false else false
        d60 : if true then if true then Bool else Bool else if true then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> true ) ) ) $ ( d57 ) ) ) ) $ ( if p4 then d25 else p1 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then Bool else x64 ) ) ) $ ( if false then Bool else Bool )
        d63 = if if d57 then d57 else d46 then if p3 then true else d11 else if false then true else false
        d65 : if false then if true then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> p2 ) ) ) $ ( d57 ) ) ) ) $ ( if d5 then false else false )
        d68 : if true then if false then Bool else Bool else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> false ) ) ) $ ( d41 ) ) ) ) $ ( if true then p2 else d28 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if x72 then false else p3 ) ) ) $ ( if d22 then p1 else p1 )
        d74 : if true then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d71 ) ) ) $ ( true ) ) ) ) $ ( if true then false else p2 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> x78 ) ) ) $ ( x78 ) ) ) ) $ ( if false then Bool else Bool )
        d77 = if if p3 then true else true then if true then d41 else p3 else if d17 then d68 else d65
        d80 : if false then if true then Bool else Bool else if false then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if false then d25 else d12 ) ) ) $ ( if d48 then false else d22 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x85 ) ) ) $ ( x84 ) ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if false then false else true ) ) ) $ ( if p2 then d45 else true )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x88 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d86 = if if true then d74 else true then if p3 then true else d57 else if p2 then p1 else p2
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> x90 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d89 = if if p2 then true else p2 then if d82 then d17 else d86 else if d48 then false else d22
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d92 = if if d11 then p1 else d12 then if p2 then d32 else false else if d9 then true else d32
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = if if true then d41 else true then if p4 then true else false else if p4 then true else d28
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then Bool else x97 ) ) ) $ ( if false then Bool else Bool )
        d96 = if if true then p4 else false then if false then p2 else p2 else if d33 then true else p2
        d98 : if true then if false then Bool else Bool else if false then Bool else Bool
        d98 = if if false then d46 else p1 then if d74 then p1 else true else if d56 then true else true
        d99 : if false then if true then Bool else Bool else if true then Bool else Bool
        d99 = if if true then p4 else d80 then if p4 then d74 else false else if d11 then false else d95
        d100 : if false then if true then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if p1 then d92 else x101 ) ) ) $ ( if false then true else false )
        d102 : if true then if false then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> d80 ) ) ) $ ( p1 ) ) ) ) $ ( if d56 then false else false )
    d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then x106 else Bool ) ) ) $ ( if true then Bool else Bool )
    d105 = ( ( ( ( M.d65 ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( true )
    d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( x108 ) ) ) ) $ ( if false then Bool else Bool )
    d107 = ( ( ( ( M.d96 ) $ ( false ) ) $ ( false ) ) $ ( true ) ) $ ( true )
    d110 : if false then if true then Bool else Bool else if false then Bool else Bool
    d110 = ( ( ( ( M.d99 ) $ ( false ) ) $ ( d105 ) ) $ ( d105 ) ) $ ( false )
    d111 : if false then if false then Bool else Bool else if true then Bool else Bool
    d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if x112 then x112 else false ) ) ) $ ( if false then d110 else true )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( x114 ) ) ) ) $ ( if false then Bool else Bool )
    d113 = ( ( ( ( M.d86 ) $ ( d111 ) ) $ ( d111 ) ) $ ( d105 ) ) $ ( d105 )
    d116 : if false then if true then Bool else Bool else if false then Bool else Bool
    d116 = ( ( ( ( M.d46 ) $ ( true ) ) $ ( true ) ) $ ( d110 ) ) $ ( d107 )
    d117 : if false then if true then Bool else Bool else if true then Bool else Bool
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> false ) ) ) $ ( d107 ) ) ) ) $ ( if false then d110 else true )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then Bool else x122 ) ) ) $ ( if true then Bool else Bool )
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if d110 then d116 else x121 ) ) ) $ ( if false then d117 else true )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( x125 ) ) ) ) $ ( if false then Bool else Bool )
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( ( ( M.d60 ) $ ( d110 ) ) $ ( false ) ) $ ( d110 ) ) $ ( false ) ) ) ) $ ( if d116 then d120 else true )
    d127 : if false then if false then Bool else Bool else if false then Bool else Bool
    d127 = ( ( ( ( M.d17 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( false )
    d128 : if true then if false then Bool else Bool else if true then Bool else Bool
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> if x129 then x129 else false ) ) ) $ ( if true then false else false )
    d130 : if false then if false then Bool else Bool else if false then Bool else Bool
    d130 = ( ( ( ( M.d80 ) $ ( d111 ) ) $ ( false ) ) $ ( d116 ) ) $ ( d127 )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( x132 ) ) ) ) $ ( if false then Bool else Bool )
    d131 = ( ( ( ( M.d60 ) $ ( false ) ) $ ( d130 ) ) $ ( false ) ) $ ( d113 )
    d134 : if false then if true then Bool else Bool else if false then Bool else Bool
    d134 = ( ( ( ( M.d46 ) $ ( d120 ) ) $ ( false ) ) $ ( true ) ) $ ( false )
    d135 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> x136 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d135 = ( ( ( ( M.d32 ) $ ( true ) ) $ ( d120 ) ) $ ( d110 ) ) $ ( d128 )
    d138 : if true then if true then Bool else Bool else if true then Bool else Bool
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> true ) ) ) $ ( x139 ) ) ) ) $ ( if d123 then d123 else false )
    d141 : if true then if false then Bool else Bool else if false then Bool else Bool
    d141 = ( ( ( ( M.d82 ) $ ( false ) ) $ ( d105 ) ) $ ( d131 ) ) $ ( d116 )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if true then Bool else x144 ) ) ) $ ( if true then Bool else Bool )
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> if d116 then true else d123 ) ) ) $ ( if false then true else false )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> ( ( Set -> Set ) ∋ ( ( λ x147 -> x146 ) ) ) $ ( x146 ) ) ) ) $ ( if false then Bool else Bool )
    d145 = ( ( ( ( M.d41 ) $ ( d111 ) ) $ ( d123 ) ) $ ( d120 ) ) $ ( true )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d148 = if if true then false else d117 then if false then d105 else d138 else if d123 then true else true
    d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if true then Bool else x152 ) ) ) $ ( if true then Bool else Bool )
    d151 = ( ( ( ( M.d86 ) $ ( d135 ) ) $ ( d117 ) ) $ ( true ) ) $ ( d117 )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> if false then x154 else Bool ) ) ) $ ( if true then Bool else Bool )
    d153 = ( ( ( ( M.d48 ) $ ( d148 ) ) $ ( d145 ) ) $ ( d148 ) ) $ ( d105 )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x156 -> if false then x156 else x156 ) ) ) $ ( if true then Bool else Bool )
    d155 = if if false then d131 else d138 then if false then true else false else if false then d123 else true
    d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> x159 ) ) ) $ ( x158 ) ) ) ) $ ( if false then Bool else Bool )
    d157 = ( ( ( ( M.d30 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( d138 )
    d160 : ( ( Set -> Set ) ∋ ( ( λ x162 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( ( ( M.d11 ) $ ( x161 ) ) $ ( x161 ) ) $ ( d120 ) ) $ ( false ) ) ) ) $ ( if d141 then d117 else true )
    d163 : if false then if false then Bool else Bool else if false then Bool else Bool
    d163 = if if d117 then false else true then if d110 then false else true else if true then false else true
    d164 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if false then x166 else Bool ) ) ) $ ( if true then Bool else Bool )
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( ( ( M.d48 ) $ ( x165 ) ) $ ( d157 ) ) $ ( x165 ) ) $ ( true ) ) ) ) $ ( if d141 then false else true )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x169 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> Bool ) ) ) $ ( x169 ) ) ) ) $ ( if false then Bool else Bool )
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> ( ( ( ( M.d53 ) $ ( true ) ) $ ( d148 ) ) $ ( x168 ) ) $ ( false ) ) ) ) $ ( if d131 then true else d164 )
    d171 : if true then if true then Bool else Bool else if false then Bool else Bool
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( ( ( M.d33 ) $ ( x172 ) ) $ ( d110 ) ) $ ( x172 ) ) $ ( x172 ) ) ) ) $ ( if d120 then d167 else false )
    d173 : if true then if false then Bool else Bool else if true then Bool else Bool
    d173 = if if false then true else d138 then if d116 then d105 else d164 else if false then d130 else d142
    d174 : if true then if true then Bool else Bool else if true then Bool else Bool
    d174 = ( ( ( ( M.d89 ) $ ( d141 ) ) $ ( true ) ) $ ( false ) ) $ ( false )
    d175 : ( ( Set -> Set ) ∋ ( ( λ x177 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> if x176 then d113 else x176 ) ) ) $ ( if d110 then d153 else true )
    d178 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if true then x181 else x181 ) ) ) $ ( if false then Bool else Bool )
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d153 ) ) ) $ ( x179 ) ) ) ) $ ( if d131 then false else true )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if true then x184 else x184 ) ) ) $ ( if false then Bool else Bool )
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( ( ( M.d92 ) $ ( true ) ) $ ( d141 ) ) $ ( d145 ) ) $ ( d164 ) ) ) ) $ ( if d160 then d163 else true )
    d185 : if false then if true then Bool else Bool else if true then Bool else Bool
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( Bool -> Bool ) ∋ ( ( λ x187 -> x187 ) ) ) $ ( true ) ) ) ) $ ( if d182 then false else false )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> x189 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d188 = if if true then d128 else false then if false then true else d111 else if false then d135 else false
    d191 : ( ( Set -> Set ) ∋ ( ( λ x192 -> if false then Bool else x192 ) ) ) $ ( if true then Bool else Bool )
    d191 = if if d134 then false else d141 then if d142 then false else false else if true then d171 else d142
    d193 : if true then if false then Bool else Bool else if false then Bool else Bool
    d193 = ( ( ( ( M.d98 ) $ ( true ) ) $ ( d171 ) ) $ ( d182 ) ) $ ( d128 )
    d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> x195 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d194 = ( ( ( ( M.d25 ) $ ( false ) ) $ ( d117 ) ) $ ( d157 ) ) $ ( d130 )
    d197 : if false then if true then Bool else Bool else if false then Bool else Bool
    d197 = ( ( ( ( M.d60 ) $ ( d178 ) ) $ ( d157 ) ) $ ( d117 ) ) $ ( true )