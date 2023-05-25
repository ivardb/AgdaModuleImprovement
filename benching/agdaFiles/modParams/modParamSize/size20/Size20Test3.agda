module Size20Test3  where
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

    module M ( p1 : if true then ( ( Set -> Set ) ∋ ( ( λ x2 -> x2 ) ) ) $ ( Bool ) else if true then Bool else Bool ) ( p3 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4 -> x4 ) ) ) $ ( Bool ) )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> x8 ) ) ) $ ( x8 ) ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> true ) ) ) $ ( false ) ) ) ) $ ( if p3 then p3 else p1 )
        d10 : if true then if false then Bool else Bool else if false then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> x11 ) ) ) $ ( true ) ) ) ) $ ( if p3 then false else false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> Bool ) ) ) $ ( x14 ) ) ) ) $ ( if false then Bool else Bool )
        d13 = if if p1 then p1 else d5 then if d5 then d10 else p3 else if d5 then p3 else d5
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x17 ) ) ) $ ( x17 ) ) ) ) $ ( if true then Bool else Bool )
        d16 = if if d10 then false else p3 then if p1 then true else d13 else if true then p3 else d13
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = if if true then d13 else d16 then if p3 then false else p3 else if d5 then p3 else p1
        d20 : if true then if false then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if d10 then d19 else d16 ) ) ) $ ( if false then true else false )
        d22 : if false then if true then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if p3 then d19 else p1 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> x27 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d25 = if if p3 then p1 else p1 then if d20 then p1 else d5 else if p3 then p1 else false
        d28 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then x31 else Bool ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> p3 ) ) ) $ ( d25 ) ) ) ) $ ( if d25 then p1 else true )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then x34 else Bool ) ) ) $ ( if true then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if d13 then d10 else true ) ) ) $ ( if d25 then d19 else false )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x38 ) ) ) $ ( x37 ) ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d22 then p1 else d28 ) ) ) $ ( if d32 then d16 else p3 )
        d39 : if true then if false then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if x40 then true else d25 ) ) ) $ ( if p3 then d16 else false )
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = if if false then d16 else true then if p3 then true else true else if p1 then p3 else d35
        d42 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if false then x44 else Bool ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if p1 then d5 else p1 ) ) ) $ ( if p1 then p1 else true )
        d45 : if false then if false then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if false then d22 else x46 ) ) ) $ ( if p1 then p1 else true )
        d47 : if true then if true then Bool else Bool else if true then Bool else Bool
        d47 = if if false then false else p3 then if p1 then d25 else d19 else if p3 then p3 else d16
        d48 : if false then if false then Bool else Bool else if true then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if d25 then true else x49 ) ) ) $ ( if true then d25 else d42 )
        d50 : if false then if false then Bool else Bool else if false then Bool else Bool
        d50 = if if true then p3 else d48 then if true then p3 else d41 else if false then p1 else false
        d51 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> true ) ) ) $ ( true ) ) ) ) $ ( if p1 then d16 else true )
        d55 : if false then if true then Bool else Bool else if false then Bool else Bool
        d55 = if if d48 then p1 else p1 then if true then false else d28 else if d50 then d47 else false
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> x57 ) ) ) $ ( x57 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if true then d28 else true then if d22 then d39 else p1 else if d39 then p3 else p1
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then x62 else x62 ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> p1 ) ) ) $ ( d39 ) ) ) ) $ ( if true then d56 else p1 )
        d63 : if true then if false then Bool else Bool else if false then Bool else Bool
        d63 = if if p1 then d48 else false then if true then p3 else d45 else if d39 then true else d59
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then d39 else d39 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x71 ) ) ) $ ( x71 ) ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then false else d5 )
        d73 : if false then if false then Bool else Bool else if true then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> true ) ) ) $ ( d32 ) ) ) ) $ ( if false then false else d45 )
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if d22 then false else d10 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d79 = if if p1 then p3 else true then if d10 then p3 else d63 else if true then p1 else p3
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if d56 then false else d73 then if d32 then true else false else if p1 then true else false
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = if if d32 then p1 else p1 then if true then d32 else p1 else if p3 then d16 else d50
        d86 : if false then if true then Bool else Bool else if false then Bool else Bool
        d86 = if if p1 then p3 else true then if d41 then false else false else if true then p3 else p1
        d87 : if false then if true then Bool else Bool else if false then Bool else Bool
        d87 = if if p3 then d22 else p1 then if false then true else p3 else if d47 then false else p1
        d88 : if false then if true then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> true ) ) ) $ ( false ) ) ) ) $ ( if p3 then p3 else p1 )
        d91 : if false then if true then Bool else Bool else if true then Bool else Bool
        d91 = if if false then d45 else p3 then if true then p1 else p3 else if true then d42 else true
        d92 : if true then if true then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if x93 then true else p1 ) ) ) $ ( if false then d22 else p3 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if false then Bool else Bool )
        d94 = if if p1 then p1 else true then if p1 then d47 else d10 else if p1 then false else p3
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> x99 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d97 = if if true then d56 else true then if d94 then true else p3 else if false then d32 else d25
        d100 : if true then if false then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> p1 ) ) ) $ ( d79 ) ) ) ) $ ( if d63 then p3 else d91 )
        d103 : if true then if true then Bool else Bool else if true then Bool else Bool
        d103 = if if d35 then p1 else false then if p1 then false else true else if true then d82 else true
        d104 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x107 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> x106 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then true else d63 )
    d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then x110 else x110 ) ) ) $ ( if true then Bool else Bool )
    d109 = if if false then true else false then if true then true else true else if false then false else false
    d111 : if false then if true then Bool else Bool else if true then Bool else Bool
    d111 = ( ( M.d97 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( false ) ) ) $ ( if true then d109 else false )
    d113 : if false then if true then Bool else Bool else if false then Bool else Bool
    d113 = if if d111 then false else false then if d111 then true else d111 else if true then d111 else d111
    d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d114 = if if d111 then true else false then if true then d111 else false else if d113 then d113 else d113
    d117 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( M.d10 ) $ ( if x118 then false else false ) ) $ ( if x118 then true else x118 ) ) ) ) $ ( if d114 then false else false )
    d120 : if false then if false then Bool else Bool else if true then Bool else Bool
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( M.d104 ) $ ( if x121 then d113 else false ) ) $ ( if d117 then true else false ) ) ) ) $ ( if d114 then d109 else d111 )
    d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( x124 ) ) ) ) $ ( if true then Bool else Bool )
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( M.d48 ) $ ( if d120 then d113 else d117 ) ) $ ( if d120 then false else x123 ) ) ) ) $ ( if true then true else true )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d126 = ( ( M.d41 ) $ ( ( ( M.d45 ) $ ( false ) ) $ ( d122 ) ) ) $ ( if true then d117 else false )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x131 -> ( ( Set -> Set ) ∋ ( ( λ x132 -> Bool ) ) ) $ ( x131 ) ) ) ) $ ( if true then Bool else Bool )
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> false ) ) ) $ ( x129 ) ) ) ) $ ( if d117 then true else false )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> x136 ) ) ) $ ( x135 ) ) ) ) $ ( if false then Bool else Bool )
    d133 = ( ( M.d22 ) $ ( ( ( M.d19 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x134 -> false ) ) ) $ ( false ) )
    d137 : if true then if true then Bool else Bool else if false then Bool else Bool
    d137 = ( ( M.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x138 -> x138 ) ) ) $ ( d111 ) ) ) $ ( ( ( M.d47 ) $ ( true ) ) $ ( true ) )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d139 = ( ( M.d56 ) $ ( if d128 then true else d117 ) ) $ ( if d137 then true else d122 )
    d141 : if false then if true then Bool else Bool else if false then Bool else Bool
    d141 = if if true then d122 else d114 then if true then d114 else true else if d120 then d139 else false
    d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if false then x143 else x143 ) ) ) $ ( if true then Bool else Bool )
    d142 = ( ( M.d39 ) $ ( if false then d141 else false ) ) $ ( if false then d122 else true )
    d144 : if false then if true then Bool else Bool else if true then Bool else Bool
    d144 = if if d113 then d133 else d133 then if false then d117 else true else if false then false else false
    d145 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> ( ( M.d32 ) $ ( if d139 then d117 else true ) ) $ ( if x146 then d120 else true ) ) ) ) $ ( if false then false else false )
    d149 : if false then if false then Bool else Bool else if false then Bool else Bool
    d149 = if if d126 then false else d109 then if false then d120 else true else if true then d144 else false
    d150 : if true then if false then Bool else Bool else if false then Bool else Bool
    d150 = if if d142 then false else true then if false then d144 else false else if false then d120 else false
    d151 : if false then if true then Bool else Bool else if false then Bool else Bool
    d151 = if if false then d114 else true then if d113 then true else false else if d133 then d126 else d139
    d152 : if false then if false then Bool else Bool else if false then Bool else Bool
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> ( ( M.d91 ) $ ( if x153 then false else true ) ) $ ( if false then x153 else true ) ) ) ) $ ( if d144 then true else d126 )
    d154 : if true then if true then Bool else Bool else if false then Bool else Bool
    d154 = ( ( Bool -> Bool ) ∋ ( ( λ x155 -> ( ( Bool -> Bool ) ∋ ( ( λ x156 -> x155 ) ) ) $ ( false ) ) ) ) $ ( if d122 then true else false )
    d157 : if false then if true then Bool else Bool else if true then Bool else Bool
    d157 = ( ( Bool -> Bool ) ∋ ( ( λ x158 -> ( ( Bool -> Bool ) ∋ ( ( λ x159 -> d122 ) ) ) $ ( d145 ) ) ) ) $ ( if d117 then false else false )
    d160 : if true then if false then Bool else Bool else if true then Bool else Bool
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( M.d68 ) $ ( if false then true else true ) ) $ ( if x161 then true else x161 ) ) ) ) $ ( if d144 then true else true )
    d162 : if false then if true then Bool else Bool else if false then Bool else Bool
    d162 = if if false then false else false then if d151 then true else false else if d152 then d133 else false
    d163 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> x164 ) ) ) $ ( x164 ) ) ) ) $ ( if false then Bool else Bool )
    d163 = ( ( M.d103 ) $ ( ( ( M.d85 ) $ ( d142 ) ) $ ( false ) ) ) $ ( ( ( M.d63 ) $ ( false ) ) $ ( false ) )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> Bool ) ) ) $ ( x167 ) ) ) ) $ ( if false then Bool else Bool )
    d166 = ( ( M.d16 ) $ ( ( ( M.d28 ) $ ( false ) ) $ ( true ) ) ) $ ( if d145 then d111 else d160 )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x171 -> ( ( Set -> Set ) ∋ ( ( λ x172 -> x171 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( M.d10 ) $ ( if d149 then true else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x170 -> false ) ) ) $ ( false ) )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x175 -> ( ( Set -> Set ) ∋ ( ( λ x176 -> x175 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d173 = ( ( Bool -> Bool ) ∋ ( ( λ x174 -> ( ( M.d103 ) $ ( if d111 then x174 else d111 ) ) $ ( if x174 then d154 else x174 ) ) ) ) $ ( if d142 then false else d150 )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x179 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> if true then false else d150 ) ) ) $ ( if d173 then d151 else d150 )
    d180 : if true then if true then Bool else Bool else if false then Bool else Bool
    d180 = if if d177 then d137 else d173 then if false then true else d109 else if d114 then true else d114
    d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d181 = ( ( M.d32 ) $ ( if d142 then d113 else d113 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x182 -> d177 ) ) ) $ ( d137 ) )
    d184 : if true then if true then Bool else Bool else if true then Bool else Bool
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> if x185 then false else d142 ) ) ) $ ( if d160 then true else d154 )
    d186 : if false then if false then Bool else Bool else if true then Bool else Bool
    d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> ( ( Bool -> Bool ) ∋ ( ( λ x188 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then d111 else true )
    d189 : if true then if true then Bool else Bool else if false then Bool else Bool
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x191 -> false ) ) ) $ ( x190 ) ) ) ) $ ( if false then d133 else false )
    d192 : if false then if false then Bool else Bool else if false then Bool else Bool
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> if x193 then d157 else x193 ) ) ) $ ( if d162 then false else true )
    d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d194 = ( ( M.d35 ) $ ( if true then true else true ) ) $ ( if false then true else false )
    d197 : if true then if false then Bool else Bool else if false then Bool else Bool
    d197 = ( ( M.d5 ) $ ( if d142 then false else d166 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x198 -> d184 ) ) ) $ ( d177 ) )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x202 -> ( ( Set -> Set ) ∋ ( ( λ x203 -> x202 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d199 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x201 -> d139 ) ) ) $ ( true ) ) ) ) $ ( if d142 then d151 else true )
    d204 : if false then if true then Bool else Bool else if false then Bool else Bool
    d204 = ( ( M.d68 ) $ ( if false then d154 else d126 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x205 -> false ) ) ) $ ( false ) )
    d206 : ( ( Set -> Set ) ∋ ( ( λ x207 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d206 = ( ( M.d97 ) $ ( ( ( M.d79 ) $ ( true ) ) $ ( d109 ) ) ) $ ( if d197 then true else false )