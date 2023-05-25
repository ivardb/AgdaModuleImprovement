module Size5Test10  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool )  where
        d3 : if false then if false then Bool else Bool else if true then Bool else Bool
        d3 = if if true then false else true then if p1 then p1 else true else if p2 then false else true
        d4 : if false then if true then Bool else Bool else if true then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> d3 ) ) ) $ ( d3 ) ) ) ) $ ( if p1 then false else p1 )
        d7 : if true then if false then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if true then d3 else false ) ) ) $ ( if false then false else p1 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d9 = if if true then p1 else d3 then if true then d7 else d7 else if true then p1 else d7
        d11 : if true then if true then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if p2 then d9 else d4 ) ) ) $ ( if p1 then true else false )
        d13 : if false then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if p1 then p1 else true ) ) ) $ ( if false then p1 else false )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( x18 ) ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( p1 ) ) ) ) $ ( if true then d11 else d3 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then x21 else x21 ) ) ) $ ( if true then Bool else Bool )
        d20 = if if d11 then p1 else true then if true then true else d7 else if false then d7 else false
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if if true then p1 else p1 then if true then p2 else d20 else if d4 then false else d13
        d25 : if false then if true then Bool else Bool else if false then Bool else Bool
        d25 = if if true then p1 else false then if d20 then true else p1 else if d9 then p2 else p2
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d26 = if if d13 then p1 else false then if p2 then d4 else d22 else if true then d7 else true
        d28 : if false then if false then Bool else Bool else if true then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> d25 ) ) ) $ ( d11 ) ) ) ) $ ( if d13 then true else true )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d31 = if if false then d25 else d9 then if true then true else true else if d7 then d28 else p1
        d33 : if true then if false then Bool else Bool else if false then Bool else Bool
        d33 = if if d11 then d13 else p2 then if p1 then false else d3 else if true then p1 else true
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d34 = if if p1 then true else d20 then if d25 then d28 else false else if p2 then p2 else p1
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( x38 ) ) ) ) $ ( if false then Bool else Bool )
        d37 = if if d11 then false else p1 then if false then false else p2 else if p1 then true else d15
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x44 ) ) ) $ ( x43 ) ) ) ) $ ( if false then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> d20 ) ) ) $ ( d37 ) ) ) ) $ ( if true then false else false )
        d45 : if false then if false then Bool else Bool else if false then Bool else Bool
        d45 = if if d26 then d4 else p2 then if d31 then true else d15 else if p2 then false else d11
        d46 : if true then if true then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d13 ) ) ) $ ( d28 ) ) ) ) $ ( if true then p2 else p2 )
        d49 : if true then if false then Bool else Bool else if true then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> x50 ) ) ) $ ( d28 ) ) ) ) $ ( if false then false else d22 )
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if d46 then true else x53 ) ) ) $ ( if d22 then d34 else d7 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( x55 ) ) ) ) $ ( if false then Bool else Bool )
        d54 = if if p2 then true else p1 then if d3 then d52 else d33 else if true then d34 else true
        d57 : if true then if false then Bool else Bool else if false then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if p2 then true else d46 ) ) ) $ ( if p2 then d33 else p2 )
        d59 : if true then if true then Bool else Bool else if false then Bool else Bool
        d59 = if if d33 then p1 else p2 then if p1 then true else false else if d22 then p1 else true
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d60 = if if false then true else p1 then if true then d37 else true else if d4 then p1 else false
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> x64 ) ) ) $ ( x63 ) ) ) ) $ ( if false then Bool else Bool )
        d62 = if if p1 then d26 else d15 then if p2 then d11 else p1 else if p2 then p1 else d57
        d65 : if true then if true then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d13 ) ) ) $ ( false ) ) ) ) $ ( if d54 then d20 else p2 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d37 ) ) ) $ ( d11 ) ) ) ) $ ( if false then false else p1 )
        d73 : if false then if true then Bool else Bool else if true then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> x74 ) ) ) $ ( d59 ) ) ) ) $ ( if false then p2 else d20 )
        d76 : if true then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d68 then d15 else p1 ) ) ) $ ( if true then p1 else true )
        d78 : if false then if false then Bool else Bool else if false then Bool else Bool
        d78 = if if d40 then true else true then if d22 then d34 else p1 else if p1 then true else true
        d79 : if false then if true then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if p2 then false else false ) ) ) $ ( if p2 then p1 else d9 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then Bool else x82 ) ) ) $ ( if true then Bool else Bool )
        d81 = if if true then p1 else true then if d33 then d13 else false else if d52 then true else true
        d83 : if false then if false then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if true then d60 else true )
        d86 : if true then if false then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if d7 then true else p2 ) ) ) $ ( if d68 then true else d20 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d88 = if if p2 then false else p2 then if d73 then true else p2 else if true then p2 else true
        d91 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then x93 else Bool ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if p1 then d20 else p2 ) ) ) $ ( if d22 then false else p2 )
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> d91 ) ) ) $ ( d4 ) ) ) ) $ ( if d60 then p1 else p2 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if false then Bool else x99 ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if true then false else x98 ) ) ) $ ( if false then d88 else p2 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then x101 else Bool ) ) ) $ ( if false then Bool else Bool )
        d100 = if if d34 then p2 else d62 then if true then d81 else true else if true then p2 else true
    d102 : if true then if false then Bool else Bool else if true then Bool else Bool
    d102 = if if true then true else false then if false then true else true else if true then false else false
    d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> x106 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d103 = ( ( M.d22 ) $ ( if true then true else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x104 -> false ) ) ) $ ( false ) )
    d107 : if true then if false then Bool else Bool else if true then Bool else Bool
    d107 = if if true then d103 else d103 then if false then d103 else d103 else if d102 then false else d102
    d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x110 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( M.d15 ) $ ( if x109 then x109 else d102 ) ) $ ( if false then false else x109 ) ) ) ) $ ( if false then false else false )
    d112 : if true then if true then Bool else Bool else if true then Bool else Bool
    d112 = ( ( M.d94 ) $ ( ( ( M.d100 ) $ ( true ) ) $ ( d102 ) ) ) $ ( ( ( M.d31 ) $ ( d108 ) ) $ ( false ) )
    d113 : if false then if false then Bool else Bool else if true then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if d112 then d107 else x114 ) ) ) $ ( if d107 then d103 else d112 )
    d115 : if false then if true then Bool else Bool else if true then Bool else Bool
    d115 = ( ( M.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x116 -> d113 ) ) ) $ ( d107 ) ) ) $ ( if false then d113 else false )
    d117 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( M.d94 ) $ ( if d107 then d107 else d103 ) ) $ ( if false then x118 else true ) ) ) ) $ ( if false then d115 else true )
    d120 : if true then if false then Bool else Bool else if false then Bool else Bool
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if x121 then false else x121 ) ) ) $ ( if d117 then false else d103 )
    d122 : if false then if false then Bool else Bool else if false then Bool else Bool
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> d103 ) ) ) $ ( false ) ) ) ) $ ( if true then d102 else d103 )
    d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> x127 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d125 = if if d120 then false else d122 then if true then d120 else d112 else if true then true else true
    d128 : if true then if false then Bool else Bool else if true then Bool else Bool
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( M.d4 ) $ ( if x129 then d122 else x129 ) ) $ ( if true then true else false ) ) ) ) $ ( if true then false else d113 )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> ( ( Set -> Set ) ∋ ( ( λ x132 -> x132 ) ) ) $ ( x131 ) ) ) ) $ ( if true then Bool else Bool )
    d130 = if if d107 then d120 else d103 then if d122 then true else false else if d112 then false else false
    d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> x135 ) ) ) $ ( x134 ) ) ) ) $ ( if false then Bool else Bool )
    d133 = if if d117 then true else d112 then if true then false else false else if d122 then d117 else false
    d136 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> Bool ) ) ) $ ( x138 ) ) ) ) $ ( if false then Bool else Bool )
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( M.d49 ) $ ( if d128 then x137 else d112 ) ) $ ( if x137 then false else x137 ) ) ) ) $ ( if true then d113 else d122 )
    d140 : if false then if false then Bool else Bool else if true then Bool else Bool
    d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> ( ( Bool -> Bool ) ∋ ( ( λ x142 -> x141 ) ) ) $ ( d112 ) ) ) ) $ ( if d130 then true else d112 )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if true then Bool else x146 ) ) ) $ ( if true then Bool else Bool )
    d143 = ( ( M.d26 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x144 -> d103 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x145 -> x145 ) ) ) $ ( true ) )
    d147 : if false then if false then Bool else Bool else if false then Bool else Bool
    d147 = ( ( M.d59 ) $ ( if d133 then false else d128 ) ) $ ( if false then false else d102 )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> if true then Bool else x149 ) ) ) $ ( if true then Bool else Bool )
    d148 = if if true then d115 else true then if d130 then true else d108 else if d140 then d140 else d115
    d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> Bool ) ) ) $ ( x151 ) ) ) ) $ ( if true then Bool else Bool )
    d150 = if if d136 then d130 else d143 then if true then d112 else d113 else if true then d107 else false
    d153 : if false then if true then Bool else Bool else if true then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> if true then x154 else x154 ) ) ) $ ( if true then false else true )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if true then x157 else Bool ) ) ) $ ( if false then Bool else Bool )
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> if x156 then d113 else d113 ) ) ) $ ( if d117 then true else d103 )
    d158 : if true then if false then Bool else Bool else if false then Bool else Bool
    d158 = ( ( M.d76 ) $ ( if d155 then d120 else d122 ) ) $ ( if true then d113 else true )
    d159 : if false then if false then Bool else Bool else if false then Bool else Bool
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x161 -> d148 ) ) ) $ ( x160 ) ) ) ) $ ( if d153 then d155 else d130 )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x164 -> if false then x164 else x164 ) ) ) $ ( if false then Bool else Bool )
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> if x163 then x163 else false ) ) ) $ ( if true then d120 else d103 )
    d165 : if true then if false then Bool else Bool else if false then Bool else Bool
    d165 = if if d107 then d162 else true then if d158 then d113 else d140 else if false then d133 else true
    d166 : if false then if false then Bool else Bool else if false then Bool else Bool
    d166 = if if true then false else true then if false then false else true else if true then d165 else d112
    d167 : if true then if false then Bool else Bool else if false then Bool else Bool
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> if d165 then d130 else d120 ) ) ) $ ( if d120 then true else true )
    d169 : if true then if false then Bool else Bool else if true then Bool else Bool
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( M.d88 ) $ ( if true then x170 else d112 ) ) $ ( if d120 then true else x170 ) ) ) ) $ ( if true then false else d162 )
    d171 : if false then if true then Bool else Bool else if true then Bool else Bool
    d171 = ( ( M.d33 ) $ ( if d108 then d140 else true ) ) $ ( ( ( M.d62 ) $ ( true ) ) $ ( true ) )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d172 = if if d125 then false else d162 then if d103 then d171 else d133 else if false then d150 else d130
    d175 : ( ( Set -> Set ) ∋ ( ( λ x177 -> ( ( Set -> Set ) ∋ ( ( λ x178 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> ( ( M.d97 ) $ ( if d148 then true else d162 ) ) $ ( if d113 then x176 else true ) ) ) ) $ ( if false then true else d153 )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> Bool ) ) ) $ ( x180 ) ) ) ) $ ( if true then Bool else Bool )
    d179 = ( ( M.d76 ) $ ( ( ( M.d83 ) $ ( false ) ) $ ( false ) ) ) $ ( if true then d166 else d171 )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if false then x183 else x183 ) ) ) $ ( if true then Bool else Bool )
    d182 = ( ( M.d94 ) $ ( if d155 then false else d108 ) ) $ ( ( ( M.d22 ) $ ( d162 ) ) $ ( d155 ) )
    d184 : ( ( Set -> Set ) ∋ ( ( λ x186 -> if true then Bool else x186 ) ) ) $ ( if true then Bool else Bool )
    d184 = ( ( M.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x185 -> d147 ) ) ) $ ( true ) ) ) $ ( ( ( M.d37 ) $ ( false ) ) $ ( true ) )
    d187 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if true then Bool else x188 ) ) ) $ ( if true then Bool else Bool )
    d187 = if if d117 then d115 else d147 then if true then true else d112 else if d162 then true else d175
    d189 : if true then if true then Bool else Bool else if true then Bool else Bool
    d189 = if if d103 then d128 else d103 then if d125 then false else d175 else if true then false else true
    d190 : ( ( Set -> Set ) ∋ ( ( λ x193 -> if false then Bool else x193 ) ) ) $ ( if false then Bool else Bool )
    d190 = ( ( Bool -> Bool ) ∋ ( ( λ x191 -> ( ( Bool -> Bool ) ∋ ( ( λ x192 -> x192 ) ) ) $ ( d120 ) ) ) ) $ ( if d122 then d147 else d182 )
    d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> Bool ) ) ) $ ( x195 ) ) ) ) $ ( if true then Bool else Bool )
    d194 = if if true then false else true then if d159 then d184 else true else if d148 then d148 else true
    d197 : if false then if false then Bool else Bool else if true then Bool else Bool
    d197 = ( ( M.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x198 -> x198 ) ) ) $ ( d128 ) ) ) $ ( ( ( M.d37 ) $ ( false ) ) $ ( d147 ) )