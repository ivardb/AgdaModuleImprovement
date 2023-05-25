module Size20Test12  where
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

    module M ( p1 : if false then if true then Bool else Bool else if true then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else Bool ) ) ) $ ( x3 ) ) ) ) $ ( if false then Bool else Bool ) )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d5 = if if p2 then p1 else p1 then if p2 then true else false else if true then true else false
        d7 : if true then if true then Bool else Bool else if false then Bool else Bool
        d7 = if if true then p2 else false then if p1 then p1 else d5 else if p1 then d5 else p1
        d8 : if true then if true then Bool else Bool else if false then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> p2 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d5 )
        d11 : if true then if true then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> p2 ) ) ) $ ( d5 ) ) ) ) $ ( if d5 then p2 else true )
        d14 : if true then if false then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> p1 ) ) ) $ ( p2 ) ) ) ) $ ( if d5 then p1 else d8 )
        d17 : if false then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> true ) ) ) $ ( d11 ) ) ) ) $ ( if d14 then d7 else p2 )
        d20 : if false then if true then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if true then true else x21 ) ) ) $ ( if d11 then true else true )
        d22 : if false then if true then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if true then d7 else p2 ) ) ) $ ( if p2 then true else d14 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if true then Bool else x27 ) ) ) $ ( if false then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> x25 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p2 else d5 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( x31 ) ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( false ) ) ) ) $ ( if p1 then true else false )
        d33 : if false then if true then Bool else Bool else if true then Bool else Bool
        d33 = if if d8 then d22 else false then if false then d28 else p1 else if true then d8 else d20
        d34 : if false then if false then Bool else Bool else if true then Bool else Bool
        d34 = if if true then true else p2 then if false then d8 else p1 else if d24 then d17 else true
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d35 = if if p1 then p2 else true then if d14 then d24 else p2 else if d5 then d17 else true
        d38 : if true then if true then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if false then p1 else true ) ) ) $ ( if p2 then p1 else d33 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if true then x41 else x41 ) ) ) $ ( if false then Bool else Bool )
        d40 = if if p1 then false else d35 then if p2 then p2 else d7 else if p2 then true else p2
        d42 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if false then x44 else x44 ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if true then true else true ) ) ) $ ( if true then d14 else false )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if false then x46 else Bool ) ) ) $ ( if true then Bool else Bool )
        d45 = if if true then false else p2 then if true then d28 else true else if false then false else d33
        d47 : if true then if false then Bool else Bool else if false then Bool else Bool
        d47 = if if d7 then p2 else p1 then if p2 then p1 else p1 else if false then p1 else false
        d48 : if true then if true then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> d7 ) ) ) $ ( false ) ) ) ) $ ( if d22 then d17 else false )
        d51 : if false then if false then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if d40 then x52 else p2 ) ) ) $ ( if p1 then false else p1 )
        d53 : if false then if false then Bool else Bool else if true then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if d11 then d11 else d24 ) ) ) $ ( if p2 then false else p2 )
        d55 : if true then if false then Bool else Bool else if true then Bool else Bool
        d55 = if if true then true else d34 then if d38 then p2 else d22 else if p2 then p1 else p1
        d56 : if false then if false then Bool else Bool else if true then Bool else Bool
        d56 = if if p2 then false else d40 then if d38 then p1 else d17 else if false then true else p1
        d57 : if true then if false then Bool else Bool else if false then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if p1 then p1 else true ) ) ) $ ( if true then p1 else p2 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> x62 ) ) ) $ ( x62 ) ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> d11 ) ) ) $ ( d28 ) ) ) ) $ ( if true then true else d51 )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> x66 ) ) ) $ ( x66 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if p2 then x65 else p2 ) ) ) $ ( if d45 then d57 else d11 )
        d68 : if true then if false then Bool else Bool else if false then Bool else Bool
        d68 = if if true then p2 else d47 then if p2 then false else d24 else if true then p2 else true
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if false then Bool else x71 ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if d35 then x70 else x70 ) ) ) $ ( if d7 then p1 else true )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x74 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = if if d8 then true else false then if d33 then d57 else true else if true then d28 else d55
        d75 : if true then if true then Bool else Bool else if true then Bool else Bool
        d75 = if if p1 then true else p1 then if p2 then d45 else true else if false then d20 else d45
        d76 : if true then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if false then d53 else d47 then if d40 then p1 else false else if d28 then p2 else p1
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> x78 ) ) ) $ ( x78 ) ) ) ) $ ( if false then Bool else Bool )
        d77 = if if d24 then d11 else d38 then if d11 then true else d11 else if d53 then d40 else false
        d80 : if true then if false then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else d51 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if true then x86 else Bool ) ) ) $ ( if true then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if p2 then d5 else p1 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d87 = if if true then p2 else d68 then if p2 then p2 else d83 else if p2 then true else p2
        d89 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> d51 ) ) ) $ ( d77 ) ) ) ) $ ( if d42 then p2 else d20 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d93 = if if true then d56 else true then if d69 then d59 else p1 else if d83 then true else true
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = if if true then false else d11 then if p2 then d47 else d51 else if true then p2 else d38
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d96 = if if p1 then true else true then if d80 then d40 else p1 else if true then p1 else false
        d98 : if false then if true then Bool else Bool else if true then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if x99 then p2 else d53 ) ) ) $ ( if false then d75 else d14 )
    d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then Bool else x101 ) ) ) $ ( if true then Bool else Bool )
    d100 = if if false then false else false then if false then false else true else if false then false else true
    d102 : if false then if true then Bool else Bool else if true then Bool else Bool
    d102 = ( ( M.d87 ) $ ( ( ( M.d11 ) $ ( true ) ) $ ( d100 ) ) ) $ ( if false then d100 else d100 )
    d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then x104 else Bool ) ) ) $ ( if false then Bool else Bool )
    d103 = if if d100 then d100 else false then if true then d100 else d102 else if true then true else true
    d105 : if false then if true then Bool else Bool else if false then Bool else Bool
    d105 = if if d100 then d103 else d102 then if false then true else false else if d100 then d100 else d102
    d106 : if true then if false then Bool else Bool else if false then Bool else Bool
    d106 = if if true then d105 else true then if true then false else false else if true then d105 else true
    d107 : if true then if true then Bool else Bool else if false then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> d106 ) ) ) $ ( x108 ) ) ) ) $ ( if d102 then d105 else d105 )
    d110 : if true then if true then Bool else Bool else if false then Bool else Bool
    d110 = ( ( M.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x111 -> false ) ) ) $ ( false ) ) ) $ ( ( ( M.d20 ) $ ( d107 ) ) $ ( false ) )
    d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d112 = if if true then d110 else true then if d106 then d103 else d106 else if true then false else false
    d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then x115 else x115 ) ) ) $ ( if false then Bool else Bool )
    d114 = if if d110 then d110 else false then if false then false else true else if d112 then d107 else d100
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x118 ) ) ) $ ( x117 ) ) ) ) $ ( if true then Bool else Bool )
    d116 = ( ( M.d53 ) $ ( ( ( M.d28 ) $ ( true ) ) $ ( d102 ) ) ) $ ( ( ( M.d48 ) $ ( d102 ) ) $ ( false ) )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x120 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d119 = if if d107 then d114 else d106 then if d107 then d107 else true else if true then false else false
    d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x124 ) ) ) $ ( x124 ) ) ) ) $ ( if true then Bool else Bool )
    d122 = ( ( M.d47 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x123 -> d114 ) ) ) $ ( d112 ) ) ) $ ( ( ( M.d83 ) $ ( d100 ) ) $ ( true ) )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> x128 ) ) ) $ ( x127 ) ) ) ) $ ( if false then Bool else Bool )
    d126 = if if false then false else false then if d116 then d107 else d106 else if false then false else false
    d129 : if true then if true then Bool else Bool else if false then Bool else Bool
    d129 = if if d102 then false else false then if d119 then d116 else false else if d102 then true else d116
    d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> ( ( Set -> Set ) ∋ ( ( λ x132 -> Bool ) ) ) $ ( x131 ) ) ) ) $ ( if true then Bool else Bool )
    d130 = if if d103 then d119 else false then if true then false else d126 else if d110 then d107 else true
    d133 : if false then if false then Bool else Bool else if true then Bool else Bool
    d133 = ( ( M.d20 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x134 -> d116 ) ) ) $ ( true ) ) ) $ ( ( ( M.d11 ) $ ( false ) ) $ ( false ) )
    d135 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> Bool ) ) ) $ ( x136 ) ) ) ) $ ( if false then Bool else Bool )
    d135 = ( ( M.d55 ) $ ( if d102 then true else d119 ) ) $ ( if d106 then d126 else d106 )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if true then x139 else Bool ) ) ) $ ( if true then Bool else Bool )
    d138 = if if true then false else d114 then if d110 then true else d106 else if d122 then true else d114
    d140 : if true then if false then Bool else Bool else if false then Bool else Bool
    d140 = if if false then d130 else d135 then if true then d122 else d110 else if true then false else false
    d141 : if false then if false then Bool else Bool else if true then Bool else Bool
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> ( ( Bool -> Bool ) ∋ ( ( λ x143 -> x142 ) ) ) $ ( d140 ) ) ) ) $ ( if d105 then false else d110 )
    d144 : ( ( Set -> Set ) ∋ ( ( λ x146 -> ( ( Set -> Set ) ∋ ( ( λ x147 -> Bool ) ) ) $ ( x146 ) ) ) ) $ ( if true then Bool else Bool )
    d144 = ( ( Bool -> Bool ) ∋ ( ( λ x145 -> if true then true else x145 ) ) ) $ ( if false then true else true )
    d148 : if true then if true then Bool else Bool else if true then Bool else Bool
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( M.d89 ) $ ( if false then x149 else x149 ) ) $ ( if d116 then d114 else x149 ) ) ) ) $ ( if d119 then d119 else false )
    d150 : if false then if true then Bool else Bool else if false then Bool else Bool
    d150 = if if false then true else d135 then if true then false else d129 else if false then d100 else d105
    d151 : if true then if true then Bool else Bool else if false then Bool else Bool
    d151 = ( ( M.d48 ) $ ( ( ( M.d47 ) $ ( true ) ) $ ( false ) ) ) $ ( if true then d126 else d138 )
    d152 : if false then if false then Bool else Bool else if true then Bool else Bool
    d152 = if if d103 then d107 else true then if d103 then false else true else if true then true else d135
    d153 : if false then if false then Bool else Bool else if false then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( M.d87 ) $ ( if d148 then x154 else false ) ) $ ( if false then d141 else false ) ) ) ) $ ( if true then false else d107 )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x156 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d155 = ( ( M.d80 ) $ ( ( ( M.d24 ) $ ( true ) ) $ ( d107 ) ) ) $ ( if true then false else d114 )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> Bool ) ) ) $ ( x158 ) ) ) ) $ ( if false then Bool else Bool )
    d157 = if if d106 then d103 else false then if d106 then d152 else true else if d130 then d148 else d114
    d160 : ( ( Set -> Set ) ∋ ( ( λ x162 -> if false then x162 else Bool ) ) ) $ ( if true then Bool else Bool )
    d160 = ( ( M.d76 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x161 -> false ) ) ) $ ( true ) ) ) $ ( ( ( M.d48 ) $ ( d155 ) ) $ ( d148 ) )
    d163 : if false then if false then Bool else Bool else if false then Bool else Bool
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> ( ( M.d8 ) $ ( if d144 then false else d151 ) ) $ ( if d152 then x164 else x164 ) ) ) ) $ ( if d135 then d103 else d110 )
    d165 : if true then if true then Bool else Bool else if false then Bool else Bool
    d165 = ( ( M.d56 ) $ ( if d103 then d130 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x166 -> d116 ) ) ) $ ( false ) )
    d167 : if false then if true then Bool else Bool else if false then Bool else Bool
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> ( ( Bool -> Bool ) ∋ ( ( λ x169 -> x168 ) ) ) $ ( true ) ) ) ) $ ( if d114 then d151 else false )
    d170 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> Bool ) ) ) $ ( x173 ) ) ) ) $ ( if false then Bool else Bool )
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> x172 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
    d175 : if true then if true then Bool else Bool else if false then Bool else Bool
    d175 = ( ( M.d56 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> true ) ) ) $ ( false ) ) ) $ ( ( ( M.d40 ) $ ( d141 ) ) $ ( d114 ) )
    d177 : if true then if false then Bool else Bool else if false then Bool else Bool
    d177 = ( ( M.d33 ) $ ( if d106 then false else d157 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x178 -> d106 ) ) ) $ ( d157 ) )
    d179 : if true then if true then Bool else Bool else if true then Bool else Bool
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x181 -> true ) ) ) $ ( x180 ) ) ) ) $ ( if d126 then true else d152 )
    d182 : if false then if true then Bool else Bool else if false then Bool else Bool
    d182 = ( ( M.d72 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x183 -> d141 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x184 -> d106 ) ) ) $ ( false ) )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d185 = ( ( M.d5 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x186 -> d179 ) ) ) $ ( d130 ) ) ) $ ( if true then true else d165 )
    d188 : if true then if false then Bool else Bool else if false then Bool else Bool
    d188 = ( ( M.d38 ) $ ( if false then true else true ) ) $ ( ( ( M.d7 ) $ ( d110 ) ) $ ( true ) )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> Bool ) ) ) $ ( x191 ) ) ) ) $ ( if true then Bool else Bool )
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( M.d38 ) $ ( if x190 then false else d167 ) ) $ ( if false then x190 else x190 ) ) ) ) $ ( if d170 then false else false )