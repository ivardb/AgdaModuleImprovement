module Param2Test3  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : if false then if true then Bool else Bool else if true then Bool else Bool
        d3 = if if true then false else p1 then if false then false else true else if false then p1 else false
        d4 : if false then if true then Bool else Bool else if true then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> d3 ) ) ) $ ( p1 ) ) ) ) $ ( if p2 then p2 else d3 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> x8 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d7 = if if d3 then d3 else true then if d3 then false else true else if d4 then d3 else p1
        d10 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if d4 then true else false ) ) ) $ ( if d7 then true else p2 )
        d14 : if true then if false then Bool else Bool else if false then Bool else Bool
        d14 = if if d4 then p2 else true then if false then d7 else false else if d10 then true else p2
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then x18 else Bool ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> d7 ) ) ) $ ( p1 ) ) ) ) $ ( if d4 then true else false )
        d19 : if true then if true then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then d7 else p2 )
        d22 : if true then if false then Bool else Bool else if true then Bool else Bool
        d22 = if if p2 then p1 else p2 then if true then p1 else true else if false then d15 else d10
        d23 : if true then if false then Bool else Bool else if true then Bool else Bool
        d23 = if if p1 then p2 else p1 then if true then p2 else false else if p2 then false else d15
        d24 : if false then if false then Bool else Bool else if false then Bool else Bool
        d24 = if if p1 then d7 else p2 then if true then d14 else false else if p1 then d14 else d4
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if false then Bool else x26 ) ) ) $ ( if true then Bool else Bool )
        d25 = if if true then d7 else true then if true then d14 else d19 else if p2 then d19 else d14
        d27 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if true then d22 else x28 ) ) ) $ ( if d19 then false else p2 )
        d31 : if true then if true then Bool else Bool else if false then Bool else Bool
        d31 = if if false then false else d15 then if true then p1 else false else if d22 then d4 else d22
        d32 : if false then if true then Bool else Bool else if true then Bool else Bool
        d32 = if if p1 then d25 else p1 then if false then d14 else p1 else if p1 then d3 else p1
        d33 : if true then if true then Bool else Bool else if false then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> x35 ) ) ) $ ( d32 ) ) ) ) $ ( if false then d19 else true )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d36 = if if d7 then d14 else true then if d33 then d7 else true else if false then d3 else p1
        d38 : if false then if true then Bool else Bool else if true then Bool else Bool
        d38 = if if p1 then p2 else d31 then if true then p1 else d33 else if true then p1 else p1
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d39 = if if true then p1 else d25 then if true then false else true else if p2 then false else d10
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> x44 ) ) ) $ ( d3 ) ) ) ) $ ( if false then p1 else d39 )
        d45 : if false then if true then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if true then d39 else d19 ) ) ) $ ( if true then true else false )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d47 = if if false then false else false then if d24 then d38 else d24 else if d15 then d3 else p2
        d49 : if false then if true then Bool else Bool else if true then Bool else Bool
        d49 = if if true then d31 else d27 then if p2 then d31 else false else if d38 then p1 else d36
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if p1 then true else p2 )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d55 = if if false then p2 else p1 then if p1 then d33 else p1 else if p1 then true else false
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> Bool ) ) ) $ ( x58 ) ) ) ) $ ( if false then Bool else Bool )
        d57 = if if d50 then true else p1 then if d49 then p2 else d23 else if d33 then d31 else d3
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d60 = if if p1 then false else d22 then if d4 then d23 else d19 else if true then d45 else false
        d63 : if false then if false then Bool else Bool else if false then Bool else Bool
        d63 = if if d55 then d60 else false then if d27 then p2 else d60 else if false then d38 else false
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if x65 then p2 else x65 ) ) ) $ ( if false then false else d63 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if false then false else d25 ) ) ) $ ( if d39 then p2 else false )
        d72 : if true then if true then Bool else Bool else if false then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> true ) ) ) $ ( true ) ) ) ) $ ( if p1 then false else false )
        d75 : if false then if false then Bool else Bool else if false then Bool else Bool
        d75 = if if true then p1 else d60 then if p1 then true else p2 else if p1 then true else false
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( x79 ) ) ) ) $ ( if false then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> p2 ) ) ) $ ( d50 ) ) ) ) $ ( if p2 then p2 else false )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d81 = if if p2 then d64 else p1 then if true then true else false else if d45 then d4 else p2
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( x85 ) ) ) ) $ ( if true then Bool else Bool )
        d84 = if if d22 then d25 else true then if false then d15 else d47 else if false then p1 else d39
        d87 : if false then if false then Bool else Bool else if false then Bool else Bool
        d87 = if if true then true else p1 then if d4 then false else d76 else if d27 then d42 else p1
        d88 : if false then if true then Bool else Bool else if false then Bool else Bool
        d88 = if if p1 then d36 else d64 then if p1 then p1 else d57 else if true then p1 else d50
        d89 : if true then if false then Bool else Bool else if false then Bool else Bool
        d89 = if if false then p2 else d31 then if false then false else p2 else if false then p2 else false
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if true then x92 else x92 ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if p1 then true else x91 ) ) ) $ ( if true then d50 else false )
        d93 : if false then if true then Bool else Bool else if true then Bool else Bool
        d93 = if if p2 then p1 else true then if d23 then d45 else true else if false then d14 else false
        d94 : if false then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if p1 then false else p2 then if d36 then false else d32 else if p1 then p1 else p1
    d95 : if true then if true then Bool else Bool else if false then Bool else Bool
    d95 = ( ( M.d3 ) $ ( if false then true else false ) ) $ ( ( ( M.d64 ) $ ( false ) ) $ ( true ) )
    d96 : if false then if true then Bool else Bool else if false then Bool else Bool
    d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> x97 ) ) ) $ ( false ) ) ) ) $ ( if d95 then d95 else d95 )
    d99 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( M.d24 ) $ ( if d96 then true else x100 ) ) $ ( if d95 then x100 else d95 ) ) ) ) $ ( if d96 then d96 else d95 )
    d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then Bool else x103 ) ) ) $ ( if true then Bool else Bool )
    d102 = if if false then false else false then if d99 then false else true else if d96 then d96 else true
    d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( M.d93 ) $ ( if x105 then false else d96 ) ) $ ( if false then x105 else d99 ) ) ) ) $ ( if true then false else d95 )
    d107 : if false then if true then Bool else Bool else if true then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( M.d23 ) $ ( if true then d95 else true ) ) $ ( if d99 then true else d96 ) ) ) ) $ ( if d104 then d99 else d99 )
    d109 : if true then if false then Bool else Bool else if true then Bool else Bool
    d109 = if if true then d107 else d102 then if false then d102 else d107 else if d95 then true else false
    d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then Bool else x112 ) ) ) $ ( if true then Bool else Bool )
    d110 = ( ( M.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x111 -> true ) ) ) $ ( true ) ) ) $ ( ( ( M.d49 ) $ ( true ) ) $ ( false ) )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then x115 else Bool ) ) ) $ ( if true then Bool else Bool )
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( M.d10 ) $ ( if x114 then d95 else x114 ) ) $ ( if d95 then d99 else x114 ) ) ) ) $ ( if true then false else d104 )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then x117 else Bool ) ) ) $ ( if false then Bool else Bool )
    d116 = if if d104 then d109 else true then if true then d102 else d107 else if d110 then false else d113
    d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d118 = if if d116 then false else false then if d116 then true else true else if true then d104 else d95
    d121 : if false then if true then Bool else Bool else if true then Bool else Bool
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( M.d94 ) $ ( if d95 then d99 else true ) ) $ ( if x122 then d95 else x122 ) ) ) ) $ ( if d96 then true else true )
    d123 : if true then if true then Bool else Bool else if true then Bool else Bool
    d123 = ( ( M.d55 ) $ ( if false then d109 else d95 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x124 -> d99 ) ) ) $ ( d118 ) )
    d125 : if true then if true then Bool else Bool else if false then Bool else Bool
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( M.d27 ) $ ( if x126 then x126 else x126 ) ) $ ( if x126 then x126 else x126 ) ) ) ) $ ( if false then d113 else d96 )
    d127 : if true then if false then Bool else Bool else if false then Bool else Bool
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( Bool -> Bool ) ∋ ( ( λ x129 -> x128 ) ) ) $ ( x128 ) ) ) ) $ ( if d123 then d95 else false )
    d130 : if true then if true then Bool else Bool else if false then Bool else Bool
    d130 = ( ( M.d32 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x131 -> d127 ) ) ) $ ( false ) ) ) $ ( ( ( M.d14 ) $ ( true ) ) $ ( d99 ) )
    d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> x133 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d132 = if if d96 then true else false then if true then false else d127 else if true then d110 else d127
    d135 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> Bool ) ) ) $ ( x136 ) ) ) ) $ ( if false then Bool else Bool )
    d135 = if if d121 then true else d116 then if d109 then true else d110 else if d109 then d96 else true
    d138 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if true then Bool else x139 ) ) ) $ ( if true then Bool else Bool )
    d138 = ( ( M.d14 ) $ ( ( ( M.d19 ) $ ( false ) ) $ ( d123 ) ) ) $ ( ( ( M.d49 ) $ ( d123 ) ) $ ( false ) )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d140 = ( ( M.d94 ) $ ( ( ( M.d47 ) $ ( false ) ) $ ( d135 ) ) ) $ ( if d138 then true else true )
    d142 : if false then if false then Bool else Bool else if false then Bool else Bool
    d142 = ( ( M.d39 ) $ ( if false then d118 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x143 -> d109 ) ) ) $ ( d113 ) )
    d144 : if false then if false then Bool else Bool else if false then Bool else Bool
    d144 = if if false then false else d132 then if d121 then true else d99 else if d121 then false else d95
    d145 : if false then if false then Bool else Bool else if false then Bool else Bool
    d145 = ( ( M.d19 ) $ ( if true then false else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x146 -> d130 ) ) ) $ ( d104 ) )
    d147 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if true then Bool else x148 ) ) ) $ ( if true then Bool else Bool )
    d147 = ( ( M.d76 ) $ ( ( ( M.d89 ) $ ( true ) ) $ ( d123 ) ) ) $ ( if d110 then d99 else false )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then x150 else x150 ) ) ) $ ( if true then Bool else Bool )
    d149 = ( ( M.d24 ) $ ( if d123 then true else true ) ) $ ( ( ( M.d45 ) $ ( d107 ) ) $ ( d140 ) )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> Bool ) ) ) $ ( x154 ) ) ) ) $ ( if false then Bool else Bool )
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( Bool -> Bool ) ∋ ( ( λ x153 -> x152 ) ) ) $ ( false ) ) ) ) $ ( if d145 then d144 else true )
    d156 : if true then if false then Bool else Bool else if true then Bool else Bool
    d156 = ( ( M.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x157 -> d95 ) ) ) $ ( false ) ) ) $ ( ( ( M.d25 ) $ ( true ) ) $ ( false ) )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> if true then Bool else x159 ) ) ) $ ( if false then Bool else Bool )
    d158 = if if false then true else true then if d144 then d99 else true else if false then d104 else d109
    d160 : if true then if false then Bool else Bool else if false then Bool else Bool
    d160 = if if true then d149 else true then if d158 then true else true else if d151 then d123 else d151
    d161 : ( ( Set -> Set ) ∋ ( ( λ x163 -> ( ( Set -> Set ) ∋ ( ( λ x164 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( M.d42 ) $ ( if d95 then d132 else true ) ) $ ( if true then x162 else d107 ) ) ) ) $ ( if false then d96 else true )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d165 = ( ( M.d42 ) $ ( if true then d107 else d110 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x166 -> false ) ) ) $ ( true ) )
    d168 : if true then if true then Bool else Bool else if false then Bool else Bool
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> if x169 then false else false ) ) ) $ ( if d144 then d138 else false )
    d170 : ( ( Set -> Set ) ∋ ( ( λ x172 -> ( ( Set -> Set ) ∋ ( ( λ x173 -> x173 ) ) ) $ ( x172 ) ) ) ) $ ( if true then Bool else Bool )
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( M.d3 ) $ ( if d121 then true else false ) ) $ ( if false then x171 else d99 ) ) ) ) $ ( if d113 then d135 else d140 )
    d174 : ( ( Set -> Set ) ∋ ( ( λ x177 -> ( ( Set -> Set ) ∋ ( ( λ x178 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> ( ( Bool -> Bool ) ∋ ( ( λ x176 -> x175 ) ) ) $ ( d99 ) ) ) ) $ ( if true then d104 else false )
    d179 : if true then if false then Bool else Bool else if false then Bool else Bool
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( M.d64 ) $ ( if true then x180 else true ) ) $ ( if d109 then d160 else true ) ) ) ) $ ( if d138 then false else false )
    d181 : if true then if false then Bool else Bool else if true then Bool else Bool
    d181 = ( ( M.d39 ) $ ( ( ( M.d42 ) $ ( false ) ) $ ( d144 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x182 -> false ) ) ) $ ( true ) )
    d183 : if true then if true then Bool else Bool else if false then Bool else Bool
    d183 = ( ( M.d47 ) $ ( if d116 then d121 else d96 ) ) $ ( if true then d142 else d170 )
    d184 : if false then if false then Bool else Bool else if true then Bool else Bool
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> ( ( Bool -> Bool ) ∋ ( ( λ x186 -> false ) ) ) $ ( true ) ) ) ) $ ( if d170 then d140 else false )
    d187 : if false then if true then Bool else Bool else if true then Bool else Bool
    d187 = if if false then false else d151 then if d144 then d149 else false else if d130 then d149 else true
    d188 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d188 = ( ( M.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x189 -> d138 ) ) ) $ ( d187 ) ) ) $ ( ( ( M.d63 ) $ ( false ) ) $ ( false ) )