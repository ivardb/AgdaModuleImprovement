module Param4Test5  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if false then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if false then p4 else p3 ) ) ) $ ( if true then p3 else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( x11 ) ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> true ) ) ) $ ( false ) ) ) ) $ ( if p4 then true else true )
        d13 : if false then if false then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if false then true else d5 ) ) ) $ ( if p4 then d5 else p4 )
        d15 : if false then if true then Bool else Bool else if true then Bool else Bool
        d15 = if if p1 then d8 else p2 then if p3 then false else true else if d5 then false else p3
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if d15 then d5 else d15 ) ) ) $ ( if d13 then true else true )
        d20 : if false then if true then Bool else Bool else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> p4 ) ) ) $ ( false ) ) ) ) $ ( if p2 then false else d15 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> x27 ) ) ) $ ( x26 ) ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> d20 ) ) ) $ ( d8 ) ) ) ) $ ( if d5 then d20 else p1 )
        d28 : if true then if false then Bool else Bool else if false then Bool else Bool
        d28 = if if false then p4 else d13 then if false then p3 else d8 else if false then p2 else p4
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then x30 else x30 ) ) ) $ ( if false then Bool else Bool )
        d29 = if if d20 then d16 else p4 then if false then p4 else d5 else if d15 then false else false
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d31 = if if false then d28 else d8 then if d29 then p3 else d13 else if d23 then false else d20
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d33 = if if d8 then true else true then if d13 then p4 else p3 else if p1 then d5 else d13
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then x37 else Bool ) ) ) $ ( if false then Bool else Bool )
        d36 = if if true then p2 else p2 then if false then true else d16 else if p4 then p4 else false
        d38 : if true then if true then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> true ) ) ) $ ( true ) ) ) ) $ ( if p1 then d28 else p4 )
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = if if p3 then false else d8 then if d36 then p1 else true else if p1 then p1 else true
        d42 : if true then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> p2 ) ) ) $ ( d15 ) ) ) ) $ ( if true then true else p2 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if false then x46 else Bool ) ) ) $ ( if false then Bool else Bool )
        d45 = if if true then d13 else false then if d41 then p1 else p2 else if d13 then p1 else p4
        d47 : if true then if false then Bool else Bool else if false then Bool else Bool
        d47 = if if p4 then p2 else true then if p4 then d45 else p1 else if d33 then false else p1
        d48 : if true then if true then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> d8 ) ) ) $ ( d5 ) ) ) ) $ ( if p2 then p2 else d38 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then x54 else x54 ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> d33 ) ) ) $ ( p4 ) ) ) ) $ ( if true then p4 else d23 )
        d55 : if false then if true then Bool else Bool else if false then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if d23 then d5 else x56 ) ) ) $ ( if true then p4 else p3 )
        d57 : if true then if false then Bool else Bool else if true then Bool else Bool
        d57 = if if d28 then p3 else p3 then if p1 then true else d16 else if d23 then false else p3
        d58 : if true then if true then Bool else Bool else if false then Bool else Bool
        d58 = if if false then p1 else d51 then if d47 then false else d33 else if p2 then d15 else p4
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = if if d15 then p2 else d55 then if false then d42 else true else if false then d58 else false
        d60 : if true then if false then Bool else Bool else if true then Bool else Bool
        d60 = if if false then true else true then if false then d5 else false else if true then p2 else d20
        d61 : if false then if false then Bool else Bool else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> d15 ) ) ) $ ( true ) ) ) ) $ ( if d48 then d36 else p2 )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x67 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if d57 then p1 else d36 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then x70 else x70 ) ) ) $ ( if true then Bool else Bool )
        d69 = if if p4 then p4 else p4 then if p4 then p3 else d60 else if true then p4 else true
        d71 : if false then if true then Bool else Bool else if false then Bool else Bool
        d71 = if if p2 then p3 else d28 then if p2 then d51 else true else if p1 then false else d13
        d72 : if false then if true then Bool else Bool else if true then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if d48 then false else d29 ) ) ) $ ( if d41 then d55 else d8 )
        d74 : if true then if true then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> true ) ) ) $ ( true ) ) ) ) $ ( if d13 then d59 else p4 )
        d77 : if false then if true then Bool else Bool else if true then Bool else Bool
        d77 = if if d16 then p1 else p2 then if p2 then p1 else false else if p3 then p1 else d36
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( x79 ) ) ) ) $ ( if false then Bool else Bool )
        d78 = if if false then d55 else false then if false then false else p4 else if d38 then d74 else true
        d81 : if false then if false then Bool else Bool else if false then Bool else Bool
        d81 = if if p4 then p4 else d58 then if true then d23 else d57 else if d60 then p2 else d57
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( false ) ) ) ) $ ( if d71 then d71 else d60 )
        d86 : if false then if false then Bool else Bool else if false then Bool else Bool
        d86 = if if d81 then true else true then if false then d23 else true else if p1 then p2 else d59
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( x89 ) ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if d57 then p1 else p3 ) ) ) $ ( if p2 then true else true )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if d36 then p1 else d58 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d96 = if if d69 then d31 else p4 then if false then p4 else true else if d55 then p1 else d20
        d99 : if true then if true then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if false then p2 else p2 ) ) ) $ ( if true then p4 else p3 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> false ) ) ) $ ( true ) ) ) ) $ ( if p1 then true else p2 )
    d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> x106 ) ) ) $ ( x106 ) ) ) ) $ ( if false then Bool else Bool )
    d105 = if if false then true else true then if false then true else true else if false then true else true
    d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x111 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( ( ( M.d101 ) $ ( x109 ) ) $ ( d105 ) ) $ ( x109 ) ) $ ( d105 ) ) ) ) $ ( if d105 then true else false )
    d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> Bool ) ) ) $ ( x113 ) ) ) ) $ ( if true then Bool else Bool )
    d112 = ( ( ( ( M.d5 ) $ ( d108 ) ) $ ( true ) ) $ ( false ) ) $ ( false )
    d115 : if true then if false then Bool else Bool else if true then Bool else Bool
    d115 = if if true then d108 else false then if d112 then true else false else if d112 then d112 else d105
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then x117 else Bool ) ) ) $ ( if true then Bool else Bool )
    d116 = ( ( ( ( M.d58 ) $ ( d112 ) ) $ ( false ) ) $ ( d112 ) ) $ ( false )
    d118 : if false then if false then Bool else Bool else if false then Bool else Bool
    d118 = ( ( ( ( M.d60 ) $ ( false ) ) $ ( d115 ) ) $ ( false ) ) $ ( false )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> Bool ) ) ) $ ( x120 ) ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( ( ( M.d45 ) $ ( d116 ) ) $ ( d105 ) ) $ ( true ) ) $ ( false )
    d122 : if true then if false then Bool else Bool else if false then Bool else Bool
    d122 = ( ( ( ( M.d33 ) $ ( d105 ) ) $ ( d115 ) ) $ ( d116 ) ) $ ( d105 )
    d123 : if false then if true then Bool else Bool else if true then Bool else Bool
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if d105 then d105 else d119 ) ) ) $ ( if false then true else true )
    d125 : if true then if true then Bool else Bool else if false then Bool else Bool
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> x126 ) ) ) $ ( false ) ) ) ) $ ( if d112 then true else true )
    d128 : if true then if false then Bool else Bool else if true then Bool else Bool
    d128 = ( ( ( ( M.d15 ) $ ( true ) ) $ ( d118 ) ) $ ( d125 ) ) $ ( false )
    d129 : if false then if false then Bool else Bool else if false then Bool else Bool
    d129 = if if true then false else d108 then if false then d112 else d125 else if d128 then d116 else true
    d130 : if false then if true then Bool else Bool else if false then Bool else Bool
    d130 = ( ( ( ( M.d5 ) $ ( d128 ) ) $ ( true ) ) $ ( d116 ) ) $ ( false )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if true then Bool else x132 ) ) ) $ ( if true then Bool else Bool )
    d131 = if if true then d123 else false then if true then true else d130 else if true then true else d105
    d133 : if true then if true then Bool else Bool else if true then Bool else Bool
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> if d105 then d129 else d130 ) ) ) $ ( if d125 then d122 else true )
    d135 : if true then if false then Bool else Bool else if false then Bool else Bool
    d135 = ( ( ( ( M.d64 ) $ ( false ) ) $ ( d123 ) ) $ ( d131 ) ) $ ( false )
    d136 : if false then if true then Bool else Bool else if true then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( ( ( M.d57 ) $ ( x137 ) ) $ ( x137 ) ) $ ( d128 ) ) $ ( true ) ) ) ) $ ( if d112 then d112 else false )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> ( ( ( ( M.d78 ) $ ( d116 ) ) $ ( x139 ) ) $ ( true ) ) $ ( false ) ) ) ) $ ( if d130 then true else false )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if false then Bool else x144 ) ) ) $ ( if false then Bool else Bool )
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> if d123 then x143 else true ) ) ) $ ( if true then true else d129 )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d145 = ( ( ( ( M.d47 ) $ ( true ) ) $ ( true ) ) $ ( d131 ) ) $ ( true )
    d147 : if false then if true then Bool else Bool else if true then Bool else Bool
    d147 = if if true then d133 else d112 then if d108 then d128 else d136 else if d142 then d145 else true
    d148 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( ( ( M.d20 ) $ ( x149 ) ) $ ( x149 ) ) $ ( x149 ) ) $ ( x149 ) ) ) ) $ ( if false then false else false )
    d151 : if true then if false then Bool else Bool else if false then Bool else Bool
    d151 = if if false then true else d136 then if d115 then true else d135 else if d119 then true else d118
    d152 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> x154 ) ) ) $ ( x153 ) ) ) ) $ ( if false then Bool else Bool )
    d152 = if if false then d136 else false then if d136 then true else true else if d142 then false else false
    d155 : if true then if true then Bool else Bool else if false then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> if true then false else d122 ) ) ) $ ( if false then false else true )
    d157 : if false then if true then Bool else Bool else if true then Bool else Bool
    d157 = ( ( ( ( M.d36 ) $ ( d138 ) ) $ ( d133 ) ) $ ( d142 ) ) $ ( false )
    d158 : if false then if false then Bool else Bool else if false then Bool else Bool
    d158 = ( ( ( ( M.d36 ) $ ( true ) ) $ ( d116 ) ) $ ( true ) ) $ ( false )
    d159 : if false then if false then Bool else Bool else if false then Bool else Bool
    d159 = ( ( ( ( M.d5 ) $ ( d147 ) ) $ ( d138 ) ) $ ( d125 ) ) $ ( d147 )
    d160 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if true then Bool else x163 ) ) ) $ ( if true then Bool else Bool )
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( Bool -> Bool ) ∋ ( ( λ x162 -> false ) ) ) $ ( x161 ) ) ) ) $ ( if false then d116 else d123 )
    d164 : if false then if true then Bool else Bool else if false then Bool else Bool
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( ( ( M.d101 ) $ ( x165 ) ) $ ( x165 ) ) $ ( d136 ) ) $ ( d159 ) ) ) ) $ ( if true then false else false )
    d166 : if true then if false then Bool else Bool else if false then Bool else Bool
    d166 = if if d135 then d128 else d131 then if true then true else d142 else if true then d158 else false
    d167 : if false then if true then Bool else Bool else if false then Bool else Bool
    d167 = ( ( ( ( M.d96 ) $ ( true ) ) $ ( d112 ) ) $ ( false ) ) $ ( d112 )
    d168 : if true then if false then Bool else Bool else if false then Bool else Bool
    d168 = if if d130 then d112 else true then if d158 then true else d112 else if d133 then true else true
    d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then x170 else x170 ) ) ) $ ( if true then Bool else Bool )
    d169 = if if false then d112 else false then if true then false else d158 else if true then d167 else d105
    d171 : ( ( Set -> Set ) ∋ ( ( λ x172 -> if true then x172 else x172 ) ) ) $ ( if true then Bool else Bool )
    d171 = ( ( ( ( M.d13 ) $ ( d116 ) ) $ ( true ) ) $ ( d169 ) ) $ ( true )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> x175 ) ) ) $ ( x174 ) ) ) ) $ ( if true then Bool else Bool )
    d173 = if if false then true else false then if true then false else false else if true then false else d131
    d176 : if false then if true then Bool else Bool else if true then Bool else Bool
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( Bool -> Bool ) ∋ ( ( λ x178 -> false ) ) ) $ ( d129 ) ) ) ) $ ( if d148 then false else true )
    d179 : if false then if true then Bool else Bool else if false then Bool else Bool
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if false then false else d152 ) ) ) $ ( if false then d166 else d176 )
    d181 : if false then if true then Bool else Bool else if true then Bool else Bool
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> ( ( ( ( M.d91 ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( d157 ) ) ) ) $ ( if true then d176 else d167 )
    d183 : if true then if true then Bool else Bool else if true then Bool else Bool
    d183 = if if true then false else false then if false then true else true else if d148 then true else d130