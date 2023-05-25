module Param2Test12  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if false then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then x6 else x6 ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> ( ( Bool -> Bool ) ∋ ( ( λ x5 -> p2 ) ) ) $ ( false ) ) ) ) $ ( if p2 then true else false )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then x10 else Bool ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> d3 ) ) ) $ ( true ) ) ) ) $ ( if p2 then p2 else true )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> x13 ) ) ) $ ( p1 ) ) ) ) $ ( if d3 then p1 else d7 )
        d15 : if true then if true then Bool else Bool else if true then Bool else Bool
        d15 = if if d3 then d7 else d7 then if p2 then p2 else p1 else if true then true else d3
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if d15 then p2 else x17 ) ) ) $ ( if true then false else d15 )
        d19 : if false then if true then Bool else Bool else if true then Bool else Bool
        d19 = if if d11 then d15 else p1 then if d3 then p1 else p1 else if p1 then p1 else true
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d20 = if if false then d3 else p2 then if p1 then d19 else true else if p2 then p1 else p1
        d23 : if true then if false then Bool else Bool else if true then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if d16 then false else false ) ) ) $ ( if d20 then d20 else p1 )
        d25 : if true then if true then Bool else Bool else if true then Bool else Bool
        d25 = if if false then d20 else p1 then if d15 then false else p2 else if p2 then p2 else p2
        d26 : if true then if true then Bool else Bool else if false then Bool else Bool
        d26 = if if d3 then d7 else true then if d3 then true else d16 else if true then true else p2
        d27 : if true then if true then Bool else Bool else if true then Bool else Bool
        d27 = if if d7 then p1 else p1 then if true then d11 else d20 else if p1 then d3 else d20
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d28 = if if d20 then d25 else p2 then if p1 then d20 else d11 else if p2 then false else p1
        d30 : if true then if false then Bool else Bool else if false then Bool else Bool
        d30 = if if true then d7 else p1 then if false then true else true else if d28 then true else p1
        d31 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if d20 then p2 else d16 ) ) ) $ ( if d25 then d26 else p2 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> Bool ) ) ) $ ( x35 ) ) ) ) $ ( if false then Bool else Bool )
        d34 = if if false then p1 else d25 then if d16 then p1 else true else if false then p2 else true
        d37 : if true then if false then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if p2 then p1 else p2 ) ) ) $ ( if false then d16 else d30 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> true ) ) ) $ ( true ) ) ) ) $ ( if d23 then p1 else p2 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> x44 ) ) ) $ ( x44 ) ) ) ) $ ( if false then Bool else Bool )
        d43 = if if false then d26 else false then if d37 then p1 else p1 else if p1 then false else d31
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then x49 else x49 ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d27 ) ) ) $ ( d43 ) ) ) ) $ ( if false then p2 else p1 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if true then x51 else Bool ) ) ) $ ( if false then Bool else Bool )
        d50 = if if p2 then p2 else d7 then if d37 then p1 else false else if d26 then p1 else true
        d52 : if false then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if p2 then d19 else false ) ) ) $ ( if false then false else d20 )
        d54 : if true then if false then Bool else Bool else if true then Bool else Bool
        d54 = if if d46 then d26 else true then if d27 then true else p2 else if d19 then p1 else true
        d55 : if false then if false then Bool else Bool else if false then Bool else Bool
        d55 = if if d31 then false else d34 then if d25 then p2 else d50 else if p2 then true else true
        d56 : if true then if false then Bool else Bool else if false then Bool else Bool
        d56 = if if d23 then d52 else d31 then if p1 then p1 else true else if false then true else d54
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if d20 then d31 else true ) ) ) $ ( if true then d3 else d20 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> true ) ) ) $ ( false ) ) ) ) $ ( if d57 then p1 else p2 )
        d65 : if false then if false then Bool else Bool else if false then Bool else Bool
        d65 = if if false then d23 else d34 then if d43 then d23 else p1 else if d30 then d52 else p1
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else x67 ) ) ) $ ( if false then Bool else Bool )
        d66 = if if true then d43 else p1 then if d25 then d28 else p2 else if d61 then p1 else true
        d68 : if true then if false then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d16 ) ) ) $ ( d28 ) ) ) ) $ ( if p2 then true else true )
        d71 : if true then if false then Bool else Bool else if true then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> p1 ) ) ) $ ( d37 ) ) ) ) $ ( if false then true else false )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if true then x77 else Bool ) ) ) $ ( if true then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> false ) ) ) $ ( d57 ) ) ) ) $ ( if d37 then d27 else p2 )
        d78 : if false then if false then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if d7 then x79 else false ) ) ) $ ( if d34 then p2 else p1 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if false then x81 else x81 ) ) ) $ ( if false then Bool else Bool )
        d80 = if if p2 then d7 else false then if true then d54 else p2 else if d39 then false else true
        d82 : if true then if true then Bool else Bool else if false then Bool else Bool
        d82 = if if true then p1 else d43 then if p1 then false else d25 else if d20 then true else d11
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if false then x85 else Bool ) ) ) $ ( if true then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if true then d52 else p1 ) ) ) $ ( if d52 then p2 else false )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( x87 ) ) ) ) $ ( if true then Bool else Bool )
        d86 = if if true then d39 else false then if true then false else p1 else if p2 then d55 else d23
        d89 : if false then if true then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> d55 ) ) ) $ ( false ) ) ) ) $ ( if p1 then true else true )
        d92 : if false then if true then Bool else Bool else if true then Bool else Bool
        d92 = if if p1 then p2 else d30 then if p1 then d54 else p2 else if d82 then false else false
        d93 : if false then if false then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if d27 then p1 else x94 ) ) ) $ ( if true then d68 else d27 )
        d95 : if true then if true then Bool else Bool else if true then Bool else Bool
        d95 = if if p1 then d55 else d80 then if p1 then d3 else d19 else if p2 then true else d43
    d96 : if false then if true then Bool else Bool else if false then Bool else Bool
    d96 = ( ( M.d20 ) $ ( if false then false else true ) ) $ ( ( ( M.d23 ) $ ( false ) ) $ ( false ) )
    d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then Bool else x98 ) ) ) $ ( if true then Bool else Bool )
    d97 = if if false then d96 else false then if d96 then d96 else d96 else if d96 then true else d96
    d99 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> x102 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( M.d26 ) $ ( if x100 then d97 else true ) ) $ ( if false then x100 else false ) ) ) ) $ ( if d96 then false else false )
    d103 : if true then if true then Bool else Bool else if false then Bool else Bool
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( M.d31 ) $ ( if false then false else d99 ) ) $ ( if false then d96 else true ) ) ) ) $ ( if false then d96 else false )
    d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then x106 else Bool ) ) ) $ ( if true then Bool else Bool )
    d105 = if if true then true else d103 then if d103 then d96 else d97 else if d99 then false else d103
    d107 : if true then if true then Bool else Bool else if false then Bool else Bool
    d107 = if if d97 then d96 else true then if d96 then true else true else if false then d99 else true
    d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( x109 ) ) ) ) $ ( if false then Bool else Bool )
    d108 = ( ( M.d86 ) $ ( ( ( M.d23 ) $ ( d96 ) ) $ ( false ) ) ) $ ( ( ( M.d78 ) $ ( false ) ) $ ( d99 ) )
    d111 : if false then if true then Bool else Bool else if false then Bool else Bool
    d111 = if if false then true else d99 then if true then true else true else if true then d108 else false
    d112 : if true then if false then Bool else Bool else if true then Bool else Bool
    d112 = if if true then d111 else d107 then if d111 then true else false else if false then true else d105
    d113 : if false then if false then Bool else Bool else if false then Bool else Bool
    d113 = if if d107 then d103 else false then if true then false else false else if d111 then d97 else false
    d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if true then d97 else true ) ) ) $ ( if true then d112 else false )
    d117 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then Bool else x120 ) ) ) $ ( if true then Bool else Bool )
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> d96 ) ) ) $ ( x118 ) ) ) ) $ ( if true then d112 else false )
    d121 : if true then if true then Bool else Bool else if true then Bool else Bool
    d121 = ( ( M.d56 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( d97 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x123 -> x123 ) ) ) $ ( false ) )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> x127 ) ) ) $ ( x127 ) ) ) ) $ ( if false then Bool else Bool )
    d124 = ( ( M.d15 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x125 -> x125 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x126 -> x126 ) ) ) $ ( d121 ) )
    d129 : if true then if false then Bool else Bool else if false then Bool else Bool
    d129 = if if true then d111 else d103 then if d108 then d117 else d107 else if false then true else d114
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if true then x132 else Bool ) ) ) $ ( if false then Bool else Bool )
    d130 = ( ( M.d80 ) $ ( if d113 then d113 else d117 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x131 -> x131 ) ) ) $ ( true ) )
    d133 : if true then if true then Bool else Bool else if true then Bool else Bool
    d133 = ( ( M.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x134 -> x134 ) ) ) $ ( true ) ) ) $ ( if d112 then d107 else false )
    d135 : if false then if false then Bool else Bool else if false then Bool else Bool
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( M.d80 ) $ ( if true then true else x136 ) ) $ ( if d121 then x136 else false ) ) ) ) $ ( if false then false else d105 )
    d137 : ( ( Set -> Set ) ∋ ( ( λ x138 -> if true then x138 else x138 ) ) ) $ ( if true then Bool else Bool )
    d137 = if if d135 then d114 else true then if true then false else true else if false then d113 else true
    d139 : if true then if true then Bool else Bool else if false then Bool else Bool
    d139 = if if false then d105 else true then if true then d117 else d103 else if d112 then false else d96
    d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> if false then x141 else x141 ) ) ) $ ( if false then Bool else Bool )
    d140 = ( ( M.d74 ) $ ( if true then d124 else true ) ) $ ( ( ( M.d11 ) $ ( d103 ) ) $ ( d111 ) )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> ( ( Set -> Set ) ∋ ( ( λ x144 -> x144 ) ) ) $ ( x143 ) ) ) ) $ ( if false then Bool else Bool )
    d142 = ( ( M.d7 ) $ ( if false then d108 else d121 ) ) $ ( if d130 then d113 else true )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if false then x146 else Bool ) ) ) $ ( if false then Bool else Bool )
    d145 = if if true then d142 else d137 then if false then d114 else true else if d108 then false else false
    d147 : if true then if true then Bool else Bool else if true then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( M.d68 ) $ ( if d135 then x148 else d113 ) ) $ ( if false then d124 else d139 ) ) ) ) $ ( if d121 then true else false )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d149 = ( ( M.d92 ) $ ( if d142 then d113 else d112 ) ) $ ( ( ( M.d80 ) $ ( false ) ) $ ( false ) )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> Bool ) ) ) $ ( x153 ) ) ) ) $ ( if false then Bool else Bool )
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> if true then d145 else d149 ) ) ) $ ( if false then d135 else d103 )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> x159 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> ( ( Bool -> Bool ) ∋ ( ( λ x157 -> false ) ) ) $ ( x156 ) ) ) ) $ ( if false then false else d97 )
    d160 : if true then if true then Bool else Bool else if true then Bool else Bool
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> if d97 then x161 else false ) ) ) $ ( if d107 then true else d155 )
    d162 : if false then if false then Bool else Bool else if false then Bool else Bool
    d162 = if if d96 then false else d151 then if d121 then true else d139 else if d151 then d140 else false
    d163 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> Bool ) ) ) $ ( x165 ) ) ) ) $ ( if false then Bool else Bool )
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> ( ( M.d80 ) $ ( if true then true else x164 ) ) $ ( if d117 then x164 else true ) ) ) ) $ ( if d108 then d124 else d117 )
    d167 : if true then if false then Bool else Bool else if false then Bool else Bool
    d167 = if if false then false else false then if true then false else false else if d117 then false else true
    d168 : if false then if false then Bool else Bool else if true then Bool else Bool
    d168 = ( ( M.d93 ) $ ( if true then d108 else d133 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x169 -> true ) ) ) $ ( false ) )
    d170 : if true then if false then Bool else Bool else if true then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> true ) ) ) $ ( x171 ) ) ) ) $ ( if true then d129 else true )
    d173 : if false then if true then Bool else Bool else if false then Bool else Bool
    d173 = if if true then d163 else d103 then if d103 then true else d112 else if true then d113 else true
    d174 : if false then if false then Bool else Bool else if true then Bool else Bool
    d174 = ( ( M.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x175 -> d105 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> d124 ) ) ) $ ( true ) )
    d177 : if false then if true then Bool else Bool else if true then Bool else Bool
    d177 = ( ( M.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x178 -> x178 ) ) ) $ ( d160 ) ) ) $ ( ( ( M.d55 ) $ ( d160 ) ) $ ( d170 ) )
    d179 : if true then if false then Bool else Bool else if false then Bool else Bool
    d179 = if if false then d107 else false then if d114 then d121 else true else if true then false else false
    d180 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> ( ( Bool -> Bool ) ∋ ( ( λ x182 -> d162 ) ) ) $ ( d170 ) ) ) ) $ ( if d160 then d179 else true )
    d184 : if false then if true then Bool else Bool else if true then Bool else Bool
    d184 = if if d99 then d107 else d135 then if d108 then d96 else false else if d107 then d142 else d137
    d185 : if true then if false then Bool else Bool else if false then Bool else Bool
    d185 = if if true then true else false then if true then false else false else if true then false else true