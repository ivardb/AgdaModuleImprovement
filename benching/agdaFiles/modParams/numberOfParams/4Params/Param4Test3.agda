module Param4Test3  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if true then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : if false then if false then Bool else Bool else if true then Bool else Bool
        d5 = if if true then true else p2 then if true then p2 else true else if p4 then false else false
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d5 then x7 else d5 ) ) ) $ ( if d5 then false else d5 )
        d10 : if true then if false then Bool else Bool else if true then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> p2 ) ) ) $ ( d6 ) ) ) ) $ ( if p4 then p4 else true )
        d13 : if false then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if d10 then x14 else d6 ) ) ) $ ( if p4 then p3 else d10 )
        d15 : if true then if false then Bool else Bool else if true then Bool else Bool
        d15 = if if p1 then p2 else p4 then if false then d5 else p4 else if true then p2 else p3
        d16 : if false then if true then Bool else Bool else if true then Bool else Bool
        d16 = if if d6 then true else true then if d6 then false else true else if p4 then p4 else d13
        d17 : if false then if false then Bool else Bool else if false then Bool else Bool
        d17 = if if p4 then false else d16 then if false then true else d10 else if p4 then false else false
        d18 : if false then if false then Bool else Bool else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> d10 ) ) ) $ ( d13 ) ) ) ) $ ( if d5 then p1 else p1 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( x23 ) ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if p2 then true else p4 ) ) ) $ ( if false then false else p4 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if true then x27 else x27 ) ) ) $ ( if false then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if d15 then p1 else d16 ) ) ) $ ( if d5 then p2 else p1 )
        d28 : if false then if false then Bool else Bool else if false then Bool else Bool
        d28 = if if false then false else p3 then if d6 then false else p2 else if p4 then p4 else true
        d29 : if true then if true then Bool else Bool else if true then Bool else Bool
        d29 = if if d15 then true else false then if false then false else p2 else if p4 then d15 else d16
        d30 : if true then if false then Bool else Bool else if true then Bool else Bool
        d30 = if if d10 then true else p2 then if p3 then p1 else true else if false then true else true
        d31 : if false then if true then Bool else Bool else if false then Bool else Bool
        d31 = if if p3 then d25 else d28 then if true then d10 else d6 else if d13 then true else p3
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> x34 ) ) ) $ ( x34 ) ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if d25 then true else true ) ) ) $ ( if p3 then true else true )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x37 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d36 = if if false then true else d10 then if true then d10 else p3 else if p1 then false else d5
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d39 = if if p1 then d29 else true then if false then p1 else p4 else if false then d30 else d36
        d42 : if true then if false then Bool else Bool else if true then Bool else Bool
        d42 = if if d25 then d13 else p1 then if d16 then p1 else true else if d28 then d32 else true
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d43 = if if true then d39 else true then if false then p2 else d36 else if p3 then d10 else d28
        d46 : if false then if true then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if d6 then true else d42 ) ) ) $ ( if d15 then false else false )
        d48 : if true then if true then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> p3 ) ) ) $ ( p2 ) ) ) ) $ ( if p3 then d30 else d28 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then Bool else x53 ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if p4 then d48 else false ) ) ) $ ( if false then false else true )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then x55 else x55 ) ) ) $ ( if false then Bool else Bool )
        d54 = if if false then false else p1 then if p1 then d15 else true else if true then p1 else p1
        d56 : if true then if false then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if true then d51 else d25 ) ) ) $ ( if false then p3 else p1 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d58 = if if p1 then false else p3 then if d10 then d30 else p4 else if d10 then d13 else false
        d61 : if true then if true then Bool else Bool else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> x62 ) ) ) $ ( p2 ) ) ) ) $ ( if false then false else d58 )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if true then Bool else x65 ) ) ) $ ( if true then Bool else Bool )
        d64 = if if p2 then d58 else p4 then if true then true else false else if d18 then p1 else d13
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if d31 then p1 else d13 ) ) ) $ ( if p3 then d51 else false )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d69 = if if p2 then d21 else false then if true then false else false else if p1 then d43 else p1
        d72 : if false then if true then Bool else Bool else if true then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if d39 then d39 else true ) ) ) $ ( if p3 then false else false )
        d74 : if false then if true then Bool else Bool else if true then Bool else Bool
        d74 = if if d54 then false else true then if p3 then false else true else if p2 then true else p3
        d75 : if true then if false then Bool else Bool else if false then Bool else Bool
        d75 = if if p2 then d18 else false then if d5 then p2 else p1 else if false then p1 else d72
        d76 : if false then if true then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if x77 then d75 else true ) ) ) $ ( if p2 then true else true )
        d78 : if false then if false then Bool else Bool else if true then Bool else Bool
        d78 = if if d10 then false else d28 then if true then p1 else d15 else if p4 then false else true
        d79 : if false then if false then Bool else Bool else if true then Bool else Bool
        d79 = if if false then false else p3 then if p3 then d16 else false else if d64 then d25 else false
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if true then x81 else x81 ) ) ) $ ( if false then Bool else Bool )
        d80 = if if false then false else p4 then if true then d6 else p1 else if p1 then p4 else p4
        d82 : if true then if true then Bool else Bool else if false then Bool else Bool
        d82 = if if d31 then d69 else d29 then if false then p4 else p3 else if d56 then d39 else d61
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then Bool else x84 ) ) ) $ ( if true then Bool else Bool )
        d83 = if if p1 then false else d69 then if false then p3 else p4 else if d29 then d48 else p2
        d85 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then Bool else x88 ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> d32 ) ) ) $ ( false ) ) ) ) $ ( if false then p3 else true )
        d89 : if false then if true then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if x90 then false else d48 ) ) ) $ ( if d25 then d64 else true )
    d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d91 = ( ( ( ( M.d82 ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( true )
    d93 : if true then if true then Bool else Bool else if true then Bool else Bool
    d93 = if if false then d91 else d91 then if d91 then true else false else if d91 then true else false
    d94 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( x97 ) ) ) ) $ ( if true then Bool else Bool )
    d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> false ) ) ) $ ( d93 ) ) ) ) $ ( if d91 then false else d91 )
    d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then x100 else x100 ) ) ) $ ( if true then Bool else Bool )
    d99 = ( ( ( ( M.d18 ) $ ( true ) ) $ ( d94 ) ) $ ( false ) ) $ ( d94 )
    d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if true then x102 else x102 ) ) ) $ ( if false then Bool else Bool )
    d101 = ( ( ( ( M.d61 ) $ ( true ) ) $ ( false ) ) $ ( d99 ) ) $ ( d91 )
    d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( ( ( M.d58 ) $ ( x104 ) ) $ ( d94 ) ) $ ( x104 ) ) $ ( x104 ) ) ) ) $ ( if true then d93 else false )
    d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( x108 ) ) ) ) $ ( if false then Bool else Bool )
    d107 = ( ( ( ( M.d39 ) $ ( d99 ) ) $ ( d99 ) ) $ ( d99 ) ) $ ( d93 )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d110 = if if false then d91 else false then if d93 then false else false else if true then true else true
    d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d112 = ( ( ( ( M.d82 ) $ ( d110 ) ) $ ( d93 ) ) $ ( d94 ) ) $ ( true )
    d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then x115 else x115 ) ) ) $ ( if false then Bool else Bool )
    d114 = if if d107 then true else false then if true then d91 else false else if true then false else true
    d116 : if false then if false then Bool else Bool else if true then Bool else Bool
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if d110 then d91 else x117 ) ) ) $ ( if false then d99 else d94 )
    d118 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x121 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> false ) ) ) $ ( x119 ) ) ) ) $ ( if d112 then false else d94 )
    d123 : if true then if true then Bool else Bool else if false then Bool else Bool
    d123 = ( ( ( ( M.d16 ) $ ( true ) ) $ ( false ) ) $ ( d118 ) ) $ ( true )
    d124 : if true then if false then Bool else Bool else if true then Bool else Bool
    d124 = ( ( ( ( M.d15 ) $ ( false ) ) $ ( d118 ) ) $ ( d99 ) ) $ ( d99 )
    d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if true then x126 else Bool ) ) ) $ ( if true then Bool else Bool )
    d125 = ( ( ( ( M.d30 ) $ ( true ) ) $ ( d91 ) ) $ ( d114 ) ) $ ( true )
    d127 : if true then if true then Bool else Bool else if true then Bool else Bool
    d127 = if if false then false else d112 then if d123 then true else d103 else if false then true else d110
    d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if true then x129 else x129 ) ) ) $ ( if false then Bool else Bool )
    d128 = ( ( ( ( M.d46 ) $ ( false ) ) $ ( false ) ) $ ( d123 ) ) $ ( d124 )
    d130 : if true then if false then Bool else Bool else if false then Bool else Bool
    d130 = ( ( ( ( M.d79 ) $ ( true ) ) $ ( false ) ) $ ( d124 ) ) $ ( true )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> x132 ) ) ) $ ( x132 ) ) ) ) $ ( if true then Bool else Bool )
    d131 = ( ( ( ( M.d74 ) $ ( d93 ) ) $ ( false ) ) $ ( true ) ) $ ( d110 )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> Bool ) ) ) $ ( x135 ) ) ) ) $ ( if true then Bool else Bool )
    d134 = if if d94 then true else d101 then if true then d107 else false else if d112 then d103 else false
    d137 : if false then if false then Bool else Bool else if false then Bool else Bool
    d137 = ( ( ( ( M.d56 ) $ ( false ) ) $ ( true ) ) $ ( d110 ) ) $ ( d130 )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> x141 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> if x139 then d110 else true ) ) ) $ ( if false then d127 else false )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> if d127 then x143 else true ) ) ) $ ( if d112 then d137 else true )
    d146 : if false then if true then Bool else Bool else if true then Bool else Bool
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> ( ( ( ( M.d54 ) $ ( false ) ) $ ( d131 ) ) $ ( x147 ) ) $ ( x147 ) ) ) ) $ ( if d142 then d124 else true )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d148 = if if true then true else d137 then if true then false else d91 else if d91 then true else false
    d150 : if false then if false then Bool else Bool else if true then Bool else Bool
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> if d137 then x151 else d123 ) ) ) $ ( if false then true else d128 )
    d152 : if true then if true then Bool else Bool else if false then Bool else Bool
    d152 = ( ( ( ( M.d82 ) $ ( d148 ) ) $ ( true ) ) $ ( true ) ) $ ( d142 )
    d153 : if true then if false then Bool else Bool else if false then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( Bool -> Bool ) ∋ ( ( λ x155 -> true ) ) ) $ ( x154 ) ) ) ) $ ( if false then d107 else d150 )
    d156 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> x159 ) ) ) $ ( x158 ) ) ) ) $ ( if false then Bool else Bool )
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( ( ( M.d61 ) $ ( false ) ) $ ( d153 ) ) $ ( d127 ) ) $ ( x157 ) ) ) ) $ ( if true then true else d146 )
    d160 : if false then if false then Bool else Bool else if false then Bool else Bool
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> if x161 then true else x161 ) ) ) $ ( if true then false else false )
    d162 : if true then if false then Bool else Bool else if true then Bool else Bool
    d162 = if if d134 then false else d160 then if false then d123 else d156 else if false then true else true
    d163 : if false then if true then Bool else Bool else if false then Bool else Bool
    d163 = ( ( ( ( M.d54 ) $ ( d99 ) ) $ ( d94 ) ) $ ( false ) ) $ ( true )
    d164 : if false then if false then Bool else Bool else if false then Bool else Bool
    d164 = ( ( ( ( M.d36 ) $ ( false ) ) $ ( true ) ) $ ( d91 ) ) $ ( true )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> Bool ) ) ) $ ( x167 ) ) ) ) $ ( if true then Bool else Bool )
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> ( ( ( ( M.d51 ) $ ( d116 ) ) $ ( x166 ) ) $ ( x166 ) ) $ ( true ) ) ) ) $ ( if d152 then d146 else false )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x171 -> ( ( Set -> Set ) ∋ ( ( λ x172 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( ( ( M.d48 ) $ ( d156 ) ) $ ( x170 ) ) $ ( false ) ) $ ( x170 ) ) ) ) $ ( if d130 then d130 else false )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x175 -> ( ( Set -> Set ) ∋ ( ( λ x176 -> x176 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d173 = ( ( Bool -> Bool ) ∋ ( ( λ x174 -> ( ( ( ( M.d80 ) $ ( d118 ) ) $ ( true ) ) $ ( d101 ) ) $ ( false ) ) ) ) $ ( if d169 then false else d146 )
    d177 : if true then if true then Bool else Bool else if false then Bool else Bool
    d177 = ( ( ( ( M.d29 ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( true )
    d178 : if false then if true then Bool else Bool else if false then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> ( ( ( ( M.d6 ) $ ( d123 ) ) $ ( true ) ) $ ( true ) ) $ ( d112 ) ) ) ) $ ( if true then d91 else false )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> ( ( Set -> Set ) ∋ ( ( λ x182 -> x181 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d180 = if if true then true else false then if d173 then true else false else if false then false else d91
    d183 : if false then if false then Bool else Bool else if true then Bool else Bool
    d183 = ( ( ( ( M.d18 ) $ ( true ) ) $ ( false ) ) $ ( d130 ) ) $ ( true )