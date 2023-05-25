module Size5Test1  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : if false then if false then Bool else Bool else if true then Bool else Bool
        d3 = if if false then p2 else p2 then if p2 then p2 else true else if p2 then true else true
        d4 : if false then if false then Bool else Bool else if true then Bool else Bool
        d4 = if if d3 then false else d3 then if d3 then true else d3 else if d3 then d3 else d3
        d5 : if true then if false then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if d4 then d4 else d3 ) ) ) $ ( if d3 then d4 else d3 )
        d7 : if true then if true then Bool else Bool else if true then Bool else Bool
        d7 = if if true then false else d5 then if false then p2 else d3 else if d4 then d4 else d3
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then x10 else x10 ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if false then d7 else false ) ) ) $ ( if p2 then false else true )
        d11 : if false then if true then Bool else Bool else if true then Bool else Bool
        d11 = if if true then d5 else d3 then if d7 then p1 else p1 else if false then true else d8
        d12 : if false then if true then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> false ) ) ) $ ( true ) ) ) ) $ ( if p2 then true else p2 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x17 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if x16 then false else x16 ) ) ) $ ( if true then false else true )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d19 = if if true then d15 else d11 then if d7 then true else false else if d8 then false else d5
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else x25 ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> true ) ) ) $ ( true ) ) ) ) $ ( if d11 then d12 else d3 )
        d26 : if true then if true then Bool else Bool else if true then Bool else Bool
        d26 = if if p1 then p2 else p1 then if false then true else p2 else if true then true else p1
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> Bool ) ) ) $ ( x30 ) ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> p2 ) ) ) $ ( d7 ) ) ) ) $ ( if true then p1 else p2 )
        d32 : if true then if false then Bool else Bool else if true then Bool else Bool
        d32 = if if false then p1 else d4 then if d7 then true else false else if d5 then d15 else false
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if false then x36 else Bool ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> d32 ) ) ) $ ( true ) ) ) ) $ ( if d32 then false else d32 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d37 = if if false then false else p2 then if d22 then false else p2 else if false then true else d8
        d39 : if true then if false then Bool else Bool else if false then Bool else Bool
        d39 = if if false then d26 else p1 then if false then true else true else if false then d15 else false
        d40 : if false then if true then Bool else Bool else if true then Bool else Bool
        d40 = if if true then p2 else false then if d39 then d26 else p1 else if d26 then p2 else true
        d41 : if true then if false then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if true then d32 else p2 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> x46 ) ) ) $ ( x45 ) ) ) ) $ ( if true then Bool else Bool )
        d44 = if if p2 then d22 else d19 then if p2 then p1 else true else if false then d32 else p2
        d47 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x49 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if p2 then false else d19 ) ) ) $ ( if p2 then true else false )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d51 = if if false then false else true then if true then false else p1 else if p1 then false else p1
        d54 : if true then if true then Bool else Bool else if false then Bool else Bool
        d54 = if if true then p1 else true then if false then p1 else d41 else if false then p1 else false
        d55 : if false then if false then Bool else Bool else if false then Bool else Bool
        d55 = if if p2 then d39 else p1 then if true then p2 else d26 else if false then p2 else p2
        d56 : if false then if false then Bool else Bool else if true then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d55 else p2 )
        d59 : if true then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d3 then false else x60 ) ) ) $ ( if true then true else p2 )
        d61 : if true then if false then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if d7 then true else d55 ) ) ) $ ( if d47 then p2 else false )
        d63 : if true then if true then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if true then false else x64 ) ) ) $ ( if true then d32 else d33 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then x67 else x67 ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if x66 then p2 else false ) ) ) $ ( if p2 then p2 else d56 )
        d68 : if false then if true then Bool else Bool else if false then Bool else Bool
        d68 = if if p2 then p1 else p2 then if false then p2 else d7 else if d63 then d51 else true
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then x70 else x70 ) ) ) $ ( if false then Bool else Bool )
        d69 = if if true then true else d63 then if d11 then true else p1 else if true then d7 else true
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d71 = if if d27 then true else false then if d51 then d44 else d5 else if false then d8 else false
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( x75 ) ) ) ) $ ( if true then Bool else Bool )
        d74 = if if true then true else p2 then if p1 then p2 else d37 else if d19 then p1 else true
        d77 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if p1 then d54 else p1 ) ) ) $ ( if p1 then p1 else p2 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x83 ) ) ) $ ( x82 ) ) ) ) $ ( if false then Bool else Bool )
        d81 = if if false then true else true then if true then d56 else d22 else if d56 then p1 else p2
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if true then x85 else x85 ) ) ) $ ( if false then Bool else Bool )
        d84 = if if true then d12 else p1 then if d59 then p2 else p1 else if p2 then false else p1
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then Bool else x87 ) ) ) $ ( if true then Bool else Bool )
        d86 = if if p1 then p2 else p2 then if p1 then p1 else true else if d71 then false else p1
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d88 = if if d54 then d44 else p1 then if true then false else d8 else if p2 then d32 else d59
        d90 : if true then if false then Bool else Bool else if false then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> d37 ) ) ) $ ( p2 ) ) ) ) $ ( if true then false else false )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d93 = if if d8 then false else true then if d8 then p1 else false else if true then d4 else p1
        d95 : if true then if true then Bool else Bool else if true then Bool else Bool
        d95 = if if true then d88 else false then if p2 then true else d4 else if d93 then p2 else d59
    d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( x97 ) ) ) ) $ ( if true then Bool else Bool )
    d96 = if if false then false else true then if true then true else false else if true then true else true
    d99 : if false then if false then Bool else Bool else if false then Bool else Bool
    d99 = if if d96 then true else d96 then if true then false else d96 else if false then false else d96
    d100 : if true then if true then Bool else Bool else if true then Bool else Bool
    d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if x101 then d99 else false ) ) ) $ ( if false then d96 else true )
    d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x104 ) ) ) $ ( x103 ) ) ) ) $ ( if false then Bool else Bool )
    d102 = if if true then d96 else true then if true then false else d99 else if d96 then d99 else false
    d105 : if false then if false then Bool else Bool else if false then Bool else Bool
    d105 = if if d96 then d99 else d102 then if d96 then d99 else false else if d99 then false else d99
    d106 : if true then if true then Bool else Bool else if false then Bool else Bool
    d106 = if if d102 then true else true then if false then d102 else d102 else if d100 then d105 else d96
    d107 : if false then if true then Bool else Bool else if false then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> d102 ) ) ) $ ( x108 ) ) ) ) $ ( if d105 then d96 else true )
    d110 : if true then if false then Bool else Bool else if true then Bool else Bool
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if x111 then false else false ) ) ) $ ( if d105 then true else false )
    d112 : if false then if true then Bool else Bool else if true then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> x114 ) ) ) $ ( d105 ) ) ) ) $ ( if true then d99 else d100 )
    d115 : if false then if false then Bool else Bool else if true then Bool else Bool
    d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if true then d100 else x116 ) ) ) $ ( if true then d110 else true )
    d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> Bool ) ) ) $ ( x118 ) ) ) ) $ ( if true then Bool else Bool )
    d117 = if if true then true else d105 then if true then d105 else false else if true then d115 else d106
    d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if false then x121 else Bool ) ) ) $ ( if true then Bool else Bool )
    d120 = if if true then d110 else true then if false then d115 else false else if true then true else d99
    d122 : if true then if true then Bool else Bool else if true then Bool else Bool
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( M.d11 ) $ ( if d112 then x123 else x123 ) ) $ ( if d107 then x123 else d106 ) ) ) ) $ ( if false then d99 else d120 )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( x125 ) ) ) ) $ ( if true then Bool else Bool )
    d124 = if if d102 then true else true then if d110 then d110 else true else if false then true else d102
    d127 : if false then if true then Bool else Bool else if false then Bool else Bool
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( M.d19 ) $ ( if false then d99 else x128 ) ) $ ( if x128 then false else d110 ) ) ) ) $ ( if true then d100 else true )
    d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> x130 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d129 = if if false then d100 else true then if true then d105 else d110 else if true then d99 else d106
    d132 : if true then if true then Bool else Bool else if false then Bool else Bool
    d132 = if if d112 then d105 else false then if false then d117 else d106 else if false then d96 else false
    d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d133 = ( ( M.d84 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x134 -> x134 ) ) ) $ ( true ) ) ) $ ( ( ( M.d86 ) $ ( false ) ) $ ( true ) )
    d136 : if false then if true then Bool else Bool else if false then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( Bool -> Bool ) ∋ ( ( λ x138 -> x138 ) ) ) $ ( false ) ) ) ) $ ( if true then d105 else d100 )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> x142 ) ) ) $ ( x142 ) ) ) ) $ ( if true then Bool else Bool )
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x141 -> x141 ) ) ) $ ( d110 ) ) ) ) $ ( if true then false else false )
    d144 : if false then if true then Bool else Bool else if false then Bool else Bool
    d144 = if if d112 then true else d112 then if d105 then d127 else d100 else if d106 then false else true
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if false then x146 else Bool ) ) ) $ ( if true then Bool else Bool )
    d145 = if if d139 then true else d122 then if true then d115 else true else if true then d110 else false
    d147 : ( ( Set -> Set ) ∋ ( ( λ x149 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x149 ) ) ) $ ( x149 ) ) ) ) $ ( if false then Bool else Bool )
    d147 = ( ( M.d11 ) $ ( if d122 then d110 else d127 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x148 -> true ) ) ) $ ( d99 ) )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> ( ( Set -> Set ) ∋ ( ( λ x153 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d151 = ( ( M.d11 ) $ ( ( ( M.d59 ) $ ( false ) ) $ ( true ) ) ) $ ( ( ( M.d33 ) $ ( false ) ) $ ( d129 ) )
    d154 : if false then if false then Bool else Bool else if false then Bool else Bool
    d154 = if if false then d127 else d112 then if false then d99 else d112 else if d122 then d112 else true
    d155 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> if d127 then x156 else d132 ) ) ) $ ( if false then false else false )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x161 -> ( ( Set -> Set ) ∋ ( ( λ x162 -> Bool ) ) ) $ ( x161 ) ) ) ) $ ( if true then Bool else Bool )
    d159 = ( ( M.d77 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x160 -> false ) ) ) $ ( true ) ) ) $ ( ( ( M.d68 ) $ ( true ) ) $ ( d129 ) )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if false then x166 else x166 ) ) ) $ ( if false then Bool else Bool )
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> ( ( Bool -> Bool ) ∋ ( ( λ x165 -> d96 ) ) ) $ ( d112 ) ) ) ) $ ( if d124 then d100 else true )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d167 = if if d155 then d155 else d110 then if d163 then false else d96 else if false then d117 else d136
    d170 : ( ( Set -> Set ) ∋ ( ( λ x171 -> if false then x171 else Bool ) ) ) $ ( if false then Bool else Bool )
    d170 = if if d155 then d124 else d100 then if d154 then false else d96 else if d117 then d129 else d117
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d172 = if if false then d105 else false then if d100 then false else false else if d144 then true else false
    d174 : if true then if true then Bool else Bool else if false then Bool else Bool
    d174 = ( ( M.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x175 -> x175 ) ) ) $ ( d145 ) ) ) $ ( ( ( M.d5 ) $ ( d105 ) ) $ ( false ) )
    d176 : if false then if false then Bool else Bool else if true then Bool else Bool
    d176 = ( ( M.d86 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x177 -> x177 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x178 -> true ) ) ) $ ( true ) )
    d179 : if false then if false then Bool else Bool else if false then Bool else Bool
    d179 = ( ( M.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d144 ) ) ) $ ( true ) ) ) $ ( if true then true else d100 )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d181 = ( ( M.d93 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x182 -> d147 ) ) ) $ ( d136 ) ) ) $ ( ( ( M.d86 ) $ ( d100 ) ) $ ( d172 ) )
    d184 : ( ( Set -> Set ) ∋ ( ( λ x185 -> if false then Bool else x185 ) ) ) $ ( if true then Bool else Bool )
    d184 = if if d120 then d163 else true then if false then false else d127 else if d99 then true else false
    d186 : if false then if true then Bool else Bool else if false then Bool else Bool
    d186 = ( ( M.d88 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x187 -> x187 ) ) ) $ ( false ) ) ) $ ( if d184 then true else d163 )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( M.d32 ) $ ( if d115 then false else true ) ) $ ( if x189 then true else d99 ) ) ) ) $ ( if d176 then true else false )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x193 -> if true then Bool else x193 ) ) ) $ ( if true then Bool else Bool )
    d191 = ( ( M.d77 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x192 -> false ) ) ) $ ( false ) ) ) $ ( if d115 then false else d112 )
    d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> if true then Bool else x195 ) ) ) $ ( if true then Bool else Bool )
    d194 = if if true then d151 else false then if d186 then d117 else false else if true then false else d144