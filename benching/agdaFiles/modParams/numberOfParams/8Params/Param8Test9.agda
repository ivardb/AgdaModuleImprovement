module Param8Test9  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if true then Bool else Bool ) ( p4 : if false then Bool else Bool ) ( p5 : if true then Bool else Bool ) ( p6 : if true then Bool else Bool ) ( p7 : if false then Bool else Bool ) ( p8 : if true then Bool else Bool )  where
        d9 : if true then if false then Bool else Bool else if false then Bool else Bool
        d9 = if if false then p8 else p2 then if p2 then p6 else p5 else if false then false else true
        d10 : if false then if false then Bool else Bool else if true then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> d9 ) ) ) $ ( false ) ) ) ) $ ( if d9 then d9 else d9 )
        d13 : if true then if true then Bool else Bool else if true then Bool else Bool
        d13 = if if d10 then p1 else true then if d10 then true else true else if d10 then d10 else d9
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then x15 else x15 ) ) ) $ ( if true then Bool else Bool )
        d14 = if if d13 then p2 else true then if d13 then p1 else p5 else if true then d9 else p2
        d16 : if false then if true then Bool else Bool else if true then Bool else Bool
        d16 = if if true then p2 else d14 then if d10 then p8 else p6 else if true then p6 else d9
        d17 : if true then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> d9 ) ) ) $ ( d10 ) ) ) ) $ ( if d13 then d10 else false )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then x23 else Bool ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( false ) ) ) ) $ ( if d13 then d10 else false )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then x25 else x25 ) ) ) $ ( if true then Bool else Bool )
        d24 = if if d10 then d17 else d9 then if d16 then d16 else p2 else if p3 then d20 else p8
        d26 : if true then if true then Bool else Bool else if false then Bool else Bool
        d26 = if if d13 then d16 else false then if d10 then true else false else if d14 then d10 else p6
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x28 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d27 = if if p5 then d10 else false then if p5 then true else true else if d20 then false else d20
        d30 : if false then if true then Bool else Bool else if true then Bool else Bool
        d30 = if if d17 then true else p1 then if p2 then p7 else d17 else if d16 then p2 else false
        d31 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if true then x33 else x33 ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if d16 then d24 else p8 ) ) ) $ ( if d9 then p7 else p8 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = if if p5 then d20 else d27 then if true then p7 else d20 else if p2 then p6 else p5
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then Bool else x39 ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if true then false else p3 ) ) ) $ ( if false then p8 else d14 )
        d40 : if true then if false then Bool else Bool else if false then Bool else Bool
        d40 = if if p5 then false else false then if p7 then false else true else if true then false else true
        d41 : if true then if true then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if d37 then x42 else false ) ) ) $ ( if d17 then false else p1 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then Bool else x44 ) ) ) $ ( if true then Bool else Bool )
        d43 = if if false then d16 else false then if true then p1 else p1 else if p1 then true else true
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if false then true else d43 ) ) ) $ ( if d30 then false else true )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> x50 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d49 = if if d20 then p6 else p5 then if false then p6 else false else if false then p8 else d13
        d52 : if false then if true then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if d20 then d43 else d27 )
        d55 : if true then if true then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> d52 ) ) ) $ ( false ) ) ) ) $ ( if false then p1 else p7 )
        d58 : if true then if false then Bool else Bool else if true then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if d14 then p4 else d17 ) ) ) $ ( if d37 then d14 else d24 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then x61 else x61 ) ) ) $ ( if false then Bool else Bool )
        d60 = if if d24 then true else d40 then if true then p3 else d30 else if p6 then d10 else p1
        d62 : if true then if false then Bool else Bool else if true then Bool else Bool
        d62 = if if d34 then p2 else p6 then if p8 then p2 else false else if d24 then false else d16
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if d60 then p3 else p1 then if p3 then d17 else d9 else if true then p7 else false
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( x67 ) ) ) ) $ ( if false then Bool else Bool )
        d66 = if if p3 then p6 else d13 then if false then d62 else true else if d26 then true else p1
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d69 = if if false then d58 else p2 then if d31 then d30 else d20 else if true then p7 else true
        d71 : if false then if false then Bool else Bool else if false then Bool else Bool
        d71 = if if d52 then false else true then if d20 then d13 else d14 else if true then p8 else p5
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then x73 else x73 ) ) ) $ ( if true then Bool else Bool )
        d72 = if if p7 then p1 else p3 then if p7 then d30 else p8 else if d55 then d13 else d30
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if true then x75 else Bool ) ) ) $ ( if true then Bool else Bool )
        d74 = if if true then true else p6 then if d10 then d66 else p1 else if false then d63 else true
        d76 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if false then false else d31 ) ) ) $ ( if d43 then true else p7 )
        d79 : if false then if true then Bool else Bool else if false then Bool else Bool
        d79 = if if p6 then true else false then if true then p8 else false else if d55 then p6 else p3
        d80 : if true then if true then Bool else Bool else if true then Bool else Bool
        d80 = if if p7 then true else p1 then if p5 then true else d63 else if false then p7 else p1
        d81 : if true then if false then Bool else Bool else if true then Bool else Bool
        d81 = if if true then d20 else d34 then if p4 then false else d71 else if false then p2 else false
        d82 : if true then if false then Bool else Bool else if false then Bool else Bool
        d82 = if if p6 then d34 else true then if true then d27 else p8 else if true then d24 else d63
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d83 = if if p6 then p1 else p8 then if d24 then false else p6 else if false then p7 else p4
        d85 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( x88 ) ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> false ) ) ) $ ( d9 ) ) ) ) $ ( if true then true else false )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then Bool else x93 ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if d9 then p7 else d13 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> x97 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> d81 ) ) ) $ ( d20 ) ) ) ) $ ( if d58 then p8 else p1 )
        d99 : if true then if false then Bool else Bool else if true then Bool else Bool
        d99 = if if d71 then p6 else p4 then if d14 then d58 else p2 else if p5 then true else d45
    d100 : if true then if true then Bool else Bool else if false then Bool else Bool
    d100 = if if false then false else true then if false then true else false else if false then false else false
    d101 : if true then if true then Bool else Bool else if false then Bool else Bool
    d101 = ( ( ( ( ( ( ( ( M.d43 ) $ ( d100 ) ) $ ( false ) ) $ ( true ) ) $ ( d100 ) ) $ ( d100 ) ) $ ( d100 ) ) $ ( d100 ) ) $ ( true )
    d102 : if false then if true then Bool else Bool else if false then Bool else Bool
    d102 = ( ( ( ( ( ( ( ( M.d41 ) $ ( d101 ) ) $ ( d100 ) ) $ ( d101 ) ) $ ( d100 ) ) $ ( false ) ) $ ( d101 ) ) $ ( false ) ) $ ( true )
    d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d103 = ( ( ( ( ( ( ( ( M.d10 ) $ ( d101 ) ) $ ( d102 ) ) $ ( d102 ) ) $ ( true ) ) $ ( d100 ) ) $ ( true ) ) $ ( true ) ) $ ( d101 )
    d105 : if true then if true then Bool else Bool else if true then Bool else Bool
    d105 = if if true then true else false then if false then false else d103 else if d101 then false else d102
    d106 : if true then if false then Bool else Bool else if true then Bool else Bool
    d106 = if if true then d100 else d100 then if d103 then true else false else if d103 then d100 else true
    d107 : if false then if false then Bool else Bool else if false then Bool else Bool
    d107 = ( ( ( ( ( ( ( ( M.d14 ) $ ( d105 ) ) $ ( false ) ) $ ( false ) ) $ ( d106 ) ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( false )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d108 = if if false then d106 else true then if d101 then true else d103 else if false then d101 else d103
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if true then x111 else Bool ) ) ) $ ( if true then Bool else Bool )
    d110 = ( ( ( ( ( ( ( ( M.d83 ) $ ( d108 ) ) $ ( d100 ) ) $ ( d105 ) ) $ ( true ) ) $ ( true ) ) $ ( d101 ) ) $ ( d105 ) ) $ ( false )
    d112 : if true then if true then Bool else Bool else if false then Bool else Bool
    d112 = ( ( ( ( ( ( ( ( M.d94 ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( d101 ) ) $ ( d105 ) ) $ ( d100 ) ) $ ( d110 )
    d113 : if true then if false then Bool else Bool else if true then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> d106 ) ) ) $ ( true ) ) ) ) $ ( if false then d105 else d112 )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d116 = if if true then d101 else true then if false then true else true else if false then d105 else false
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then Bool else x120 ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( ( ( ( ( ( ( M.d55 ) $ ( true ) ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( d113 ) ) $ ( false ) ) $ ( false ) ) $ ( false )
    d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then x122 else x122 ) ) ) $ ( if true then Bool else Bool )
    d121 = if if d106 then d112 else true then if d101 then false else d108 else if false then true else d119
    d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x125 ) ) ) $ ( x124 ) ) ) ) $ ( if true then Bool else Bool )
    d123 = ( ( ( ( ( ( ( ( M.d72 ) $ ( d102 ) ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( d121 ) ) $ ( d105 ) ) $ ( d113 ) ) $ ( d113 )
    d126 : if false then if false then Bool else Bool else if false then Bool else Bool
    d126 = ( ( ( ( ( ( ( ( M.d45 ) $ ( d103 ) ) $ ( d103 ) ) $ ( d106 ) ) $ ( d102 ) ) $ ( d106 ) ) $ ( true ) ) $ ( false ) ) $ ( d110 )
    d127 : if true then if false then Bool else Bool else if false then Bool else Bool
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( Bool -> Bool ) ∋ ( ( λ x129 -> x129 ) ) ) $ ( true ) ) ) ) $ ( if d123 then d123 else d107 )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> x134 ) ) ) $ ( x133 ) ) ) ) $ ( if false then Bool else Bool )
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> ( ( Bool -> Bool ) ∋ ( ( λ x132 -> d112 ) ) ) $ ( false ) ) ) ) $ ( if d101 then d102 else d127 )
    d135 : ( ( Set -> Set ) ∋ ( ( λ x137 -> if true then x137 else Bool ) ) ) $ ( if false then Bool else Bool )
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> if x136 then d130 else x136 ) ) ) $ ( if false then d101 else true )
    d138 : if false then if false then Bool else Bool else if true then Bool else Bool
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> ( ( ( ( ( ( ( ( M.d76 ) $ ( false ) ) $ ( d108 ) ) $ ( x139 ) ) $ ( x139 ) ) $ ( true ) ) $ ( d112 ) ) $ ( x139 ) ) $ ( x139 ) ) ) ) $ ( if false then d126 else d135 )
    d140 : if false then if true then Bool else Bool else if true then Bool else Bool
    d140 = ( ( ( ( ( ( ( ( M.d90 ) $ ( d123 ) ) $ ( d101 ) ) $ ( false ) ) $ ( true ) ) $ ( d135 ) ) $ ( true ) ) $ ( d112 ) ) $ ( false )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if true then Bool else x142 ) ) ) $ ( if false then Bool else Bool )
    d141 = ( ( ( ( ( ( ( ( M.d43 ) $ ( d106 ) ) $ ( d112 ) ) $ ( true ) ) $ ( false ) ) $ ( d140 ) ) $ ( d108 ) ) $ ( false ) ) $ ( d107 )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if true then Bool else x144 ) ) ) $ ( if false then Bool else Bool )
    d143 = if if d101 then d105 else d102 then if true then d121 else false else if true then d116 else true
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if false then x146 else x146 ) ) ) $ ( if false then Bool else Bool )
    d145 = ( ( ( ( ( ( ( ( M.d55 ) $ ( true ) ) $ ( d100 ) ) $ ( d126 ) ) $ ( true ) ) $ ( d126 ) ) $ ( true ) ) $ ( true ) ) $ ( false )
    d147 : if true then if false then Bool else Bool else if true then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( Bool -> Bool ) ∋ ( ( λ x149 -> d107 ) ) ) $ ( d127 ) ) ) ) $ ( if false then d126 else d105 )
    d150 : if false then if true then Bool else Bool else if false then Bool else Bool
    d150 = ( ( ( ( ( ( ( ( M.d90 ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( d147 ) ) $ ( true ) ) $ ( d101 ) ) $ ( false )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d151 = if if d116 then d130 else d147 then if d108 then d130 else d101 else if false then d116 else false
    d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> x154 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d153 = ( ( ( ( ( ( ( ( M.d34 ) $ ( d108 ) ) $ ( d108 ) ) $ ( true ) ) $ ( d112 ) ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( d135 )
    d156 : if false then if false then Bool else Bool else if true then Bool else Bool
    d156 = if if d103 then d141 else d127 then if true then false else true else if d140 then true else false
    d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> x158 ) ) ) $ ( x158 ) ) ) ) $ ( if false then Bool else Bool )
    d157 = ( ( ( ( ( ( ( ( M.d74 ) $ ( d130 ) ) $ ( d101 ) ) $ ( d150 ) ) $ ( d102 ) ) $ ( true ) ) $ ( false ) ) $ ( d151 ) ) $ ( d126 )
    d160 : ( ( Set -> Set ) ∋ ( ( λ x161 -> ( ( Set -> Set ) ∋ ( ( λ x162 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d160 = ( ( ( ( ( ( ( ( M.d94 ) $ ( true ) ) $ ( d101 ) ) $ ( d103 ) ) $ ( true ) ) $ ( d135 ) ) $ ( d106 ) ) $ ( true ) ) $ ( d123 )
    d163 : if false then if false then Bool else Bool else if false then Bool else Bool
    d163 = ( ( ( ( ( ( ( ( M.d76 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( d110 ) ) $ ( false )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if false then Bool else x166 ) ) ) $ ( if true then Bool else Bool )
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( ( ( ( ( ( ( M.d14 ) $ ( true ) ) $ ( d141 ) ) $ ( x165 ) ) $ ( true ) ) $ ( x165 ) ) $ ( d100 ) ) $ ( true ) ) $ ( d102 ) ) ) ) $ ( if d101 then true else true )
    d167 : if true then if false then Bool else Bool else if false then Bool else Bool
    d167 = if if d106 then d130 else d108 then if d140 then d150 else d130 else if d107 then d116 else d140
    d168 : if false then if false then Bool else Bool else if false then Bool else Bool
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x169 ) ) ) $ ( x169 ) ) ) ) $ ( if false then d156 else false )
    d171 : if true then if true then Bool else Bool else if true then Bool else Bool
    d171 = if if false then false else d127 then if true then true else false else if false then false else d112
    d172 : if false then if true then Bool else Bool else if false then Bool else Bool
    d172 = ( ( ( ( ( ( ( ( M.d72 ) $ ( false ) ) $ ( true ) ) $ ( d135 ) ) $ ( d110 ) ) $ ( d123 ) ) $ ( d171 ) ) $ ( d171 ) ) $ ( d130 )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> x175 ) ) ) $ ( x174 ) ) ) ) $ ( if true then Bool else Bool )
    d173 = ( ( ( ( ( ( ( ( M.d62 ) $ ( false ) ) $ ( d145 ) ) $ ( false ) ) $ ( d112 ) ) $ ( d112 ) ) $ ( true ) ) $ ( true ) ) $ ( true )
    d176 : if false then if true then Bool else Bool else if false then Bool else Bool
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( Bool -> Bool ) ∋ ( ( λ x178 -> d113 ) ) ) $ ( x177 ) ) ) ) $ ( if d105 then true else d103 )
    d179 : if false then if false then Bool else Bool else if false then Bool else Bool
    d179 = ( ( ( ( ( ( ( ( M.d55 ) $ ( true ) ) $ ( true ) ) $ ( d100 ) ) $ ( d106 ) ) $ ( false ) ) $ ( false ) ) $ ( d103 ) ) $ ( d105 )