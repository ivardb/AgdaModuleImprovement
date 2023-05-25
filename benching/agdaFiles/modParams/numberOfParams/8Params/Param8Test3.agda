module Param8Test3  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if true then Bool else Bool ) ( p5 : if true then Bool else Bool ) ( p6 : if false then Bool else Bool ) ( p7 : if true then Bool else Bool ) ( p8 : if true then Bool else Bool )  where
        d9 : if false then if false then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if true then true else p3 ) ) ) $ ( if p3 then false else true )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d11 = if if d9 then d9 else p6 then if p2 then p3 else true else if false then p5 else d9
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if if p5 then d11 else d11 then if p4 then false else true else if p2 then false else true
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then x19 else x19 ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if d9 then false else d9 ) ) ) $ ( if p2 then p4 else true )
        d20 : if true then if false then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> false ) ) ) $ ( true ) ) ) ) $ ( if p7 then p2 else p3 )
        d23 : if false then if false then Bool else Bool else if false then Bool else Bool
        d23 = if if true then d20 else d11 then if p3 then true else p5 else if p2 then p6 else true
        d24 : if true then if true then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> false ) ) ) $ ( true ) ) ) ) $ ( if d9 then true else d20 )
        d27 : if false then if false then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if false then false else p6 ) ) ) $ ( if d14 then false else d14 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then p4 else false ) ) ) $ ( if d23 then p8 else p2 )
        d32 : if true then if true then Bool else Bool else if true then Bool else Bool
        d32 = if if d11 then p3 else d9 then if d27 then p8 else p2 else if p1 then p7 else d9
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if false then false else d23 ) ) ) $ ( if d14 then true else false )
        d36 : if true then if true then Bool else Bool else if false then Bool else Bool
        d36 = if if false then p5 else p8 then if d14 then true else p8 else if d24 then d11 else d9
        d37 : if false then if false then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if true then d32 else d11 ) ) ) $ ( if p1 then p6 else d14 )
        d39 : if true then if true then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> true ) ) ) $ ( d33 ) ) ) ) $ ( if d11 then d24 else p1 )
        d42 : if false then if false then Bool else Bool else if false then Bool else Bool
        d42 = if if false then d36 else p6 then if d32 then false else d36 else if p2 then p2 else d14
        d43 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> d17 ) ) ) $ ( p5 ) ) ) ) $ ( if p4 then d17 else false )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x48 ) ) ) $ ( x48 ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if true then d29 else d24 then if p6 then d43 else p1 else if p7 then false else d29
        d50 : if true then if true then Bool else Bool else if false then Bool else Bool
        d50 = if if d47 then d27 else false then if p1 then p5 else p1 else if d27 then p2 else true
        d51 : if false then if false then Bool else Bool else if true then Bool else Bool
        d51 = if if false then p1 else d20 then if false then true else d50 else if true then d11 else p6
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then Bool else x53 ) ) ) $ ( if true then Bool else Bool )
        d52 = if if false then d51 else false then if false then d39 else p3 else if d27 then true else p6
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d54 = if if p1 then false else p3 then if true then p5 else true else if p8 then d33 else false
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( x57 ) ) ) ) $ ( if false then Bool else Bool )
        d56 = if if d29 then p8 else d24 then if true then p6 else p4 else if false then false else d52
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = if if false then p3 else true then if false then p7 else d32 else if p2 then p2 else p5
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x61 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if if false then true else true then if p4 then p2 else p5 else if true then false else p2
        d63 : if false then if true then Bool else Bool else if false then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if p6 then false else d39 ) ) ) $ ( if true then p7 else p4 )
        d65 : if true then if true then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if d52 then d42 else d51 ) ) ) $ ( if d36 then p8 else false )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if true then x69 else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if d39 then d36 else d42 ) ) ) $ ( if p7 then d56 else p5 )
        d70 : if true then if false then Bool else Bool else if false then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> p3 ) ) ) $ ( d20 ) ) ) ) $ ( if p7 then d43 else true )
        d73 : if true then if true then Bool else Bool else if false then Bool else Bool
        d73 = if if p7 then p1 else d14 then if p4 then true else p3 else if d32 then p8 else true
        d74 : if true then if true then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if true then false else x75 ) ) ) $ ( if p3 then true else false )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if true then Bool else x77 ) ) ) $ ( if true then Bool else Bool )
        d76 = if if d24 then p1 else d9 then if d60 then d50 else d39 else if true then true else p8
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then Bool else x79 ) ) ) $ ( if true then Bool else Bool )
        d78 = if if p2 then p8 else d36 then if true then true else p1 else if d63 then false else d47
        d80 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if false then x83 else Bool ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> d47 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d56 else true )
        d84 : if false then if true then Bool else Bool else if true then Bool else Bool
        d84 = if if d11 then true else d11 then if true then true else d11 else if false then d27 else d63
        d85 : if false then if false then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> p8 ) ) ) $ ( p2 ) ) ) ) $ ( if false then d52 else d47 )
        d88 : if true then if true then Bool else Bool else if false then Bool else Bool
        d88 = if if p5 then d11 else p3 then if p5 then true else true else if true then p2 else true
        d89 : if false then if true then Bool else Bool else if true then Bool else Bool
        d89 = if if false then true else p5 then if false then true else d73 else if true then p1 else p8
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( x91 ) ) ) ) $ ( if false then Bool else Bool )
        d90 = if if true then p7 else true then if false then d73 else d52 else if d43 then p4 else p2
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d93 = if if true then d60 else true then if false then p1 else false else if p8 then p7 else d73
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = if if d17 then true else p3 then if false then d39 else p7 else if p3 then p3 else true
    d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d96 = ( ( ( ( ( ( ( ( M.d29 ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( true )
    d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( x100 ) ) ) ) $ ( if false then Bool else Bool )
    d99 = if if true then d96 else d96 then if d96 then d96 else d96 else if false then true else d96
    d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then Bool else x103 ) ) ) $ ( if false then Bool else Bool )
    d102 = ( ( ( ( ( ( ( ( M.d63 ) $ ( false ) ) $ ( d96 ) ) $ ( true ) ) $ ( d96 ) ) $ ( true ) ) $ ( false ) ) $ ( d96 ) ) $ ( d96 )
    d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d104 = if if true then true else true then if true then true else d102 else if false then false else d96
    d106 : if true then if true then Bool else Bool else if false then Bool else Bool
    d106 = if if d102 then false else false then if false then d104 else false else if false then d102 else true
    d107 : if false then if true then Bool else Bool else if false then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if x108 then x108 else x108 ) ) ) $ ( if d102 then false else false )
    d109 : if true then if false then Bool else Bool else if false then Bool else Bool
    d109 = ( ( ( ( ( ( ( ( M.d85 ) $ ( d104 ) ) $ ( d99 ) ) $ ( false ) ) $ ( d106 ) ) $ ( d99 ) ) $ ( true ) ) $ ( d106 ) ) $ ( false )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d110 = if if false then false else true then if true then false else d107 else if d96 then d104 else d109
    d112 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then x114 else Bool ) ) ) $ ( if true then Bool else Bool )
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( ( ( ( ( ( ( M.d70 ) $ ( x113 ) ) $ ( false ) ) $ ( d102 ) ) $ ( false ) ) $ ( d99 ) ) $ ( x113 ) ) $ ( false ) ) $ ( x113 ) ) ) ) $ ( if true then false else d106 )
    d115 : if true then if true then Bool else Bool else if false then Bool else Bool
    d115 = ( ( ( ( ( ( ( ( M.d65 ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( d107 ) ) $ ( false ) ) $ ( d106 ) ) $ ( d106 ) ) $ ( false )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then x117 else x117 ) ) ) $ ( if false then Bool else Bool )
    d116 = if if true then d106 else true then if d96 then d102 else d104 else if false then true else false
    d118 : if false then if false then Bool else Bool else if true then Bool else Bool
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( ( ( ( ( ( ( M.d54 ) $ ( x119 ) ) $ ( x119 ) ) $ ( x119 ) ) $ ( true ) ) $ ( x119 ) ) $ ( true ) ) $ ( true ) ) $ ( x119 ) ) ) ) $ ( if false then true else false )
    d120 : if true then if false then Bool else Bool else if true then Bool else Bool
    d120 = ( ( ( ( ( ( ( ( M.d78 ) $ ( false ) ) $ ( d109 ) ) $ ( true ) ) $ ( d116 ) ) $ ( false ) ) $ ( d115 ) ) $ ( false ) ) $ ( true )
    d121 : if true then if true then Bool else Bool else if false then Bool else Bool
    d121 = ( ( ( ( ( ( ( ( M.d88 ) $ ( d106 ) ) $ ( d110 ) ) $ ( false ) ) $ ( d109 ) ) $ ( d104 ) ) $ ( d107 ) ) $ ( true ) ) $ ( false )
    d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if d121 then false else d110 ) ) ) $ ( if true then false else d116 )
    d125 : if true then if true then Bool else Bool else if false then Bool else Bool
    d125 = if if d112 then false else true then if false then d99 else true else if d102 then false else d115
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if true then Bool else x127 ) ) ) $ ( if true then Bool else Bool )
    d126 = ( ( ( ( ( ( ( ( M.d14 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( d118 ) ) $ ( false ) ) $ ( true ) ) $ ( d122 ) ) $ ( true )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if true then x129 else x129 ) ) ) $ ( if true then Bool else Bool )
    d128 = ( ( ( ( ( ( ( ( M.d33 ) $ ( d116 ) ) $ ( false ) ) $ ( d106 ) ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( d107 ) ) $ ( false )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if false then x131 else x131 ) ) ) $ ( if false then Bool else Bool )
    d130 = if if true then true else d96 then if d99 then d118 else true else if d109 then d102 else false
    d132 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> Bool ) ) ) $ ( x135 ) ) ) ) $ ( if true then Bool else Bool )
    d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> ( ( Bool -> Bool ) ∋ ( ( λ x134 -> true ) ) ) $ ( d112 ) ) ) ) $ ( if d110 then false else d118 )
    d137 : if true then if false then Bool else Bool else if false then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> if d128 then false else x138 ) ) ) $ ( if false then false else false )
    d139 : if true then if true then Bool else Bool else if true then Bool else Bool
    d139 = ( ( ( ( ( ( ( ( M.d59 ) $ ( d120 ) ) $ ( d120 ) ) $ ( d118 ) ) $ ( d121 ) ) $ ( false ) ) $ ( false ) ) $ ( d118 ) ) $ ( d130 )
    d140 : if false then if true then Bool else Bool else if false then Bool else Bool
    d140 = ( ( ( ( ( ( ( ( M.d67 ) $ ( d107 ) ) $ ( d137 ) ) $ ( d112 ) ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( d96 ) ) $ ( d102 )
    d141 : if false then if true then Bool else Bool else if false then Bool else Bool
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> ( ( ( ( ( ( ( ( M.d60 ) $ ( x142 ) ) $ ( d125 ) ) $ ( true ) ) $ ( true ) ) $ ( x142 ) ) $ ( d120 ) ) $ ( d112 ) ) $ ( true ) ) ) ) $ ( if true then d102 else true )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> Bool ) ) ) $ ( x144 ) ) ) ) $ ( if true then Bool else Bool )
    d143 = ( ( ( ( ( ( ( ( M.d37 ) $ ( d102 ) ) $ ( false ) ) $ ( d140 ) ) $ ( true ) ) $ ( true ) ) $ ( d106 ) ) $ ( false ) ) $ ( true )
    d146 : if false then if false then Bool else Bool else if false then Bool else Bool
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> if d141 then false else true ) ) ) $ ( if d107 then d109 else d121 )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then x150 else Bool ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( ( ( ( ( ( ( M.d39 ) $ ( d121 ) ) $ ( d107 ) ) $ ( d132 ) ) $ ( d140 ) ) $ ( true ) ) $ ( d122 ) ) $ ( x149 ) ) $ ( d137 ) ) ) ) $ ( if d121 then false else d110 )
    d151 : if true then if true then Bool else Bool else if true then Bool else Bool
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( Bool -> Bool ) ∋ ( ( λ x153 -> x152 ) ) ) $ ( true ) ) ) ) $ ( if d141 then false else false )
    d154 : if false then if true then Bool else Bool else if true then Bool else Bool
    d154 = ( ( ( ( ( ( ( ( M.d89 ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( d139 ) ) $ ( false ) ) $ ( d137 ) ) $ ( d99 )
    d155 : if false then if true then Bool else Bool else if true then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> if true then false else d106 ) ) ) $ ( if true then true else d126 )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> if true then x158 else x158 ) ) ) $ ( if false then Bool else Bool )
    d157 = if if true then true else d151 then if d115 then false else d125 else if false then d115 else false
    d159 : ( ( Set -> Set ) ∋ ( ( λ x162 -> ( ( Set -> Set ) ∋ ( ( λ x163 -> x163 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x161 -> x161 ) ) ) $ ( x160 ) ) ) ) $ ( if d141 then false else d96 )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> ( ( ( ( ( ( ( ( M.d11 ) $ ( true ) ) $ ( x165 ) ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( false ) ) $ ( x165 ) ) $ ( true ) ) ) ) $ ( if d106 then false else true )
    d167 : if false then if false then Bool else Bool else if true then Bool else Bool
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> ( ( Bool -> Bool ) ∋ ( ( λ x169 -> x169 ) ) ) $ ( d157 ) ) ) ) $ ( if true then true else true )
    d170 : if false then if true then Bool else Bool else if false then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( ( ( ( ( ( ( M.d56 ) $ ( x171 ) ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( x171 ) ) ) ) $ ( if true then false else true )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> Bool ) ) ) $ ( x173 ) ) ) ) $ ( if true then Bool else Bool )
    d172 = ( ( ( ( ( ( ( ( M.d56 ) $ ( d125 ) ) $ ( d141 ) ) $ ( true ) ) $ ( d125 ) ) $ ( true ) ) $ ( false ) ) $ ( d125 ) ) $ ( true )
    d175 : ( ( Set -> Set ) ∋ ( ( λ x176 -> if false then x176 else Bool ) ) ) $ ( if false then Bool else Bool )
    d175 = if if d96 then d140 else d96 then if d118 then true else d122 else if false then d104 else d110
    d177 : if true then if true then Bool else Bool else if true then Bool else Bool
    d177 = ( ( ( ( ( ( ( ( M.d27 ) $ ( d125 ) ) $ ( true ) ) $ ( d148 ) ) $ ( d122 ) ) $ ( false ) ) $ ( false ) ) $ ( d146 ) ) $ ( d126 )
    d178 : if false then if false then Bool else Bool else if false then Bool else Bool
    d178 = ( ( ( ( ( ( ( ( M.d36 ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( d110 ) ) $ ( false ) ) $ ( false ) ) $ ( true ) ) $ ( d104 )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then Bool else x180 ) ) ) $ ( if true then Bool else Bool )
    d179 = if if true then false else true then if d107 then false else d170 else if false then d154 else false