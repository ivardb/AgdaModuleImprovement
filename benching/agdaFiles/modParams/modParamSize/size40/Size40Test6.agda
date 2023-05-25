module Size40Test6  where
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

    module M ( p1 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool ) ( p2 : if true then ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d5 = if if p1 then p1 else true then if p1 then p1 else p2 else if p2 then true else p2
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then Bool else x9 ) ) ) $ ( if false then Bool else Bool )
        d8 = if if true then false else p2 then if p1 then d5 else false else if false then d5 else d5
        d10 : if true then if true then Bool else Bool else if false then Bool else Bool
        d10 = if if d5 then p2 else false then if false then d8 else p2 else if false then true else p1
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> x13 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d11 = if if p1 then d5 else false then if false then d8 else d8 else if p2 then p1 else false
        d14 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x18 ) ) ) $ ( x17 ) ) ) ) $ ( if true then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> false ) ) ) $ ( false ) ) ) ) $ ( if p2 then p1 else p2 )
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = if if d14 then p2 else false then if p1 then false else true else if d11 then p1 else d14
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( x23 ) ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( true ) ) ) ) $ ( if d19 then p1 else d11 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> p1 ) ) ) $ ( p2 ) ) ) ) $ ( if false then true else d20 )
        d30 : if false then if true then Bool else Bool else if false then Bool else Bool
        d30 = if if true then true else p1 then if d19 then false else true else if true then false else true
        d31 : if false then if true then Bool else Bool else if true then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if d25 then false else true ) ) ) $ ( if true then true else p2 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then Bool else x34 ) ) ) $ ( if true then Bool else Bool )
        d33 = if if p2 then d20 else p1 then if p1 then p1 else d5 else if p2 then d10 else false
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if p1 then false else false ) ) ) $ ( if true then d14 else d20 )
        d39 : if true then if false then Bool else Bool else if true then Bool else Bool
        d39 = if if d14 then true else p2 then if true then d35 else d33 else if d31 then d30 else true
        d40 : if false then if false then Bool else Bool else if false then Bool else Bool
        d40 = if if d25 then false else true then if true then true else p1 else if d35 then false else false
        d41 : if false then if false then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> false ) ) ) $ ( x42 ) ) ) ) $ ( if false then d25 else false )
        d44 : if false then if false then Bool else Bool else if true then Bool else Bool
        d44 = if if true then true else d19 then if false then true else d10 else if d10 then false else true
        d45 : if false then if true then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> p1 ) ) ) $ ( d20 ) ) ) ) $ ( if p1 then false else p2 )
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if d45 then d14 else d44 then if d5 then p1 else d40 else if d5 then d10 else p2
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if true then x51 else x51 ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if p1 then p2 else d45 ) ) ) $ ( if p2 then true else p2 )
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = if if p2 then false else d5 then if p2 then p1 else false else if d40 then d8 else p1
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> x55 ) ) ) $ ( x54 ) ) ) ) $ ( if false then Bool else Bool )
        d53 = if if p2 then d19 else true then if false then d10 else p1 else if p1 then true else d44
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x59 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if d20 then d48 else true ) ) ) $ ( if p1 then p2 else p2 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d60 = if if true then p1 else p1 then if true then d40 else p1 else if true then p2 else true
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d62 = if if false then d49 else true then if false then true else d41 else if p2 then true else false
        d65 : if true then if true then Bool else Bool else if false then Bool else Bool
        d65 = if if d35 then d5 else p2 then if p2 then true else p1 else if d30 then p1 else true
        d66 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then Bool else x69 ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( p2 ) ) ) ) $ ( if p1 then d44 else true )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x71 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d70 = if if true then true else d60 then if p1 then d39 else d53 else if true then p1 else p2
        d73 : if false then if true then Bool else Bool else if true then Bool else Bool
        d73 = if if d10 then d52 else true then if d66 then p1 else p1 else if p1 then d5 else false
        d74 : if true then if true then Bool else Bool else if true then Bool else Bool
        d74 = if if false then false else d25 then if p2 then p1 else d53 else if p1 then p1 else d53
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> x77 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d75 = if if true then true else p2 then if true then d62 else p1 else if false then false else true
        d78 : if true then if false then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> d73 ) ) ) $ ( d65 ) ) ) ) $ ( if d62 then d11 else p2 )
        d81 : if false then if false then Bool else Bool else if true then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if false then p2 else d30 ) ) ) $ ( if p1 then p1 else false )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if false then d66 else p2 )
        d87 : if true then if false then Bool else Bool else if false then Bool else Bool
        d87 = if if p1 then true else true then if d30 then false else p1 else if d8 then true else d65
        d88 : if false then if true then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if d8 then d25 else p2 ) ) ) $ ( if false then d44 else p2 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if true then x92 else Bool ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if p1 then true else false ) ) ) $ ( if d73 then d78 else false )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d93 = if if false then p2 else true then if true then true else p1 else if d40 then d87 else d90
        d95 : if true then if false then Bool else Bool else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> false ) ) ) $ ( x96 ) ) ) ) $ ( if false then p1 else false )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d98 = if if d60 then p2 else d81 then if true then d93 else p2 else if p2 then d10 else d95
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if true then x102 else Bool ) ) ) $ ( if true then Bool else Bool )
        d101 = if if p2 then d81 else p1 then if d53 then d19 else d70 else if false then false else d35
    d103 : if false then if true then Bool else Bool else if true then Bool else Bool
    d103 = ( ( M.d45 ) $ ( if false then true else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x104 -> false ) ) ) $ ( true ) )
    d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x108 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( M.d81 ) $ ( if d103 then x106 else d103 ) ) $ ( if x106 then d103 else d103 ) ) ) ) $ ( if d103 then d103 else false )
    d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else x110 ) ) ) $ ( if false then Bool else Bool )
    d109 = if if d105 then true else d105 then if d103 then d103 else d105 else if d103 then d103 else false
    d111 : if true then if true then Bool else Bool else if true then Bool else Bool
    d111 = ( ( M.d88 ) $ ( if false then d109 else false ) ) $ ( if d109 then false else d105 )
    d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> Bool ) ) ) $ ( x113 ) ) ) ) $ ( if true then Bool else Bool )
    d112 = ( ( M.d48 ) $ ( if d103 then d105 else d103 ) ) $ ( if d105 then true else false )
    d115 : if true then if true then Bool else Bool else if false then Bool else Bool
    d115 = ( ( M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x116 -> x116 ) ) ) $ ( true ) ) ) $ ( if d103 then d103 else true )
    d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d117 = if if false then false else d115 then if d115 then true else d109 else if d109 then false else true
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x120 ) ) ) $ ( x120 ) ) ) ) $ ( if true then Bool else Bool )
    d119 = if if true then false else d111 then if false then d109 else d103 else if false then true else d105
    d122 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> x124 ) ) ) $ ( x123 ) ) ) ) $ ( if d115 then true else true )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d126 = if if d105 then d109 else true then if d112 then true else false else if d109 then true else false
    d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> x130 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d129 = ( ( M.d78 ) $ ( if d119 then d117 else true ) ) $ ( if false then false else d103 )
    d132 : if true then if true then Bool else Bool else if true then Bool else Bool
    d132 = if if true then d122 else d119 then if d129 then false else true else if d112 then false else d122
    d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> Bool ) ) ) $ ( x134 ) ) ) ) $ ( if false then Bool else Bool )
    d133 = ( ( M.d40 ) $ ( ( ( M.d11 ) $ ( true ) ) $ ( d111 ) ) ) $ ( ( ( M.d35 ) $ ( false ) ) $ ( false ) )
    d136 : ( ( Set -> Set ) ∋ ( ( λ x137 -> ( ( Set -> Set ) ∋ ( ( λ x138 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d136 = ( ( M.d56 ) $ ( ( ( M.d88 ) $ ( false ) ) $ ( true ) ) ) $ ( if d132 then d126 else false )
    d139 : if true then if false then Bool else Bool else if true then Bool else Bool
    d139 = if if d105 then false else true then if true then d109 else d115 else if d132 then d112 else d103
    d140 : if false then if false then Bool else Bool else if true then Bool else Bool
    d140 = if if true then d126 else true then if d111 then false else false else if d129 then d109 else true
    d141 : if true then if true then Bool else Bool else if false then Bool else Bool
    d141 = if if false then true else d126 then if true then d117 else d132 else if true then false else false
    d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> ( ( Set -> Set ) ∋ ( ( λ x144 -> x143 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d142 = if if d126 then true else d133 then if false then d117 else true else if true then d112 else d105
    d145 : if true then if true then Bool else Bool else if false then Bool else Bool
    d145 = ( ( M.d101 ) $ ( ( ( M.d87 ) $ ( true ) ) $ ( d136 ) ) ) $ ( if false then false else d112 )
    d146 : ( ( Set -> Set ) ∋ ( ( λ x148 -> ( ( Set -> Set ) ∋ ( ( λ x149 -> x148 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> if x147 then x147 else true ) ) ) $ ( if d103 then d109 else false )
    d150 : if true then if false then Bool else Bool else if false then Bool else Bool
    d150 = ( ( M.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x151 -> false ) ) ) $ ( true ) ) ) $ ( ( ( M.d45 ) $ ( d122 ) ) $ ( false ) )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> Bool ) ) ) $ ( x153 ) ) ) ) $ ( if true then Bool else Bool )
    d152 = ( ( M.d49 ) $ ( if d119 then true else d141 ) ) $ ( ( ( M.d81 ) $ ( d141 ) ) $ ( true ) )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x156 -> if true then Bool else x156 ) ) ) $ ( if false then Bool else Bool )
    d155 = if if d126 then d140 else false then if d141 then true else true else if d112 then true else d150
    d157 : ( ( Set -> Set ) ∋ ( ( λ x159 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( x159 ) ) ) ) $ ( if false then Bool else Bool )
    d157 = ( ( M.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x158 -> d111 ) ) ) $ ( true ) ) ) $ ( if false then true else false )
    d161 : if false then if false then Bool else Bool else if true then Bool else Bool
    d161 = ( ( M.d49 ) $ ( if d150 then false else d155 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x162 -> d115 ) ) ) $ ( false ) )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> Bool ) ) ) $ ( x165 ) ) ) ) $ ( if true then Bool else Bool )
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> if d117 then d132 else true ) ) ) $ ( if d105 then true else true )
    d167 : if false then if false then Bool else Bool else if false then Bool else Bool
    d167 = ( ( M.d95 ) $ ( ( ( M.d62 ) $ ( false ) ) $ ( true ) ) ) $ ( if d126 then d112 else d139 )
    d168 : if false then if false then Bool else Bool else if true then Bool else Bool
    d168 = ( ( M.d75 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x169 -> true ) ) ) $ ( d119 ) ) ) $ ( ( ( M.d98 ) $ ( false ) ) $ ( true ) )
    d170 : ( ( Set -> Set ) ∋ ( ( λ x173 -> if false then Bool else x173 ) ) ) $ ( if false then Bool else Bool )
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then d152 else d142 )
    d174 : ( ( Set -> Set ) ∋ ( ( λ x176 -> ( ( Set -> Set ) ∋ ( ( λ x177 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d174 = ( ( M.d52 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x175 -> x175 ) ) ) $ ( true ) ) ) $ ( ( ( M.d40 ) $ ( false ) ) $ ( d155 ) )
    d178 : if true then if false then Bool else Bool else if false then Bool else Bool
    d178 = ( ( M.d88 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x179 -> d115 ) ) ) $ ( d132 ) ) ) $ ( if d129 then true else false )
    d180 : if false then if true then Bool else Bool else if true then Bool else Bool
    d180 = if if true then true else d170 then if d129 then d141 else d152 else if d115 then d140 else false
    d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d181 = ( ( M.d30 ) $ ( ( ( M.d14 ) $ ( d103 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x182 -> d129 ) ) ) $ ( d103 ) )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x187 -> ( ( Set -> Set ) ∋ ( ( λ x188 -> x187 ) ) ) $ ( x187 ) ) ) ) $ ( if true then Bool else Bool )
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> if x186 then d146 else d111 ) ) ) $ ( if true then false else d163 )
    d189 : if true then if false then Bool else Bool else if true then Bool else Bool
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x191 -> x191 ) ) ) $ ( false ) ) ) ) $ ( if d161 then d180 else d178 )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x194 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d192 = ( ( M.d5 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x193 -> x193 ) ) ) $ ( d152 ) ) ) $ ( if d117 then true else true )
    d195 : if false then if false then Bool else Bool else if true then Bool else Bool
    d195 = ( ( Bool -> Bool ) ∋ ( ( λ x196 -> ( ( Bool -> Bool ) ∋ ( ( λ x197 -> d150 ) ) ) $ ( x196 ) ) ) ) $ ( if false then false else true )
    d198 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d198 = ( ( M.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x199 -> d115 ) ) ) $ ( true ) ) ) $ ( ( ( M.d30 ) $ ( d105 ) ) $ ( false ) )
    d201 : if true then if false then Bool else Bool else if false then Bool else Bool
    d201 = if if true then d122 else false then if true then true else true else if d180 then false else false
    d202 : ( ( Set -> Set ) ∋ ( ( λ x204 -> ( ( Set -> Set ) ∋ ( ( λ x205 -> x204 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d202 = ( ( Bool -> Bool ) ∋ ( ( λ x203 -> if d142 then x203 else x203 ) ) ) $ ( if true then d185 else true )