module Size40Test10  where
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

    module M ( p1 : if true then ( ( Set -> Set ) ∋ ( ( λ x2 -> ( ( Set -> Set ) ∋ ( ( λ x3 -> Bool ) ) ) $ ( x2 ) ) ) ) $ ( Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool ) ( p4 : if true then ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool )  where
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> x9 ) ) ) $ ( x8 ) ) ) ) $ ( if true then Bool else Bool )
        d7 = if if true then false else true then if true then p4 else p1 else if p4 then p4 else true
        d10 : if false then if true then Bool else Bool else if true then Bool else Bool
        d10 = if if p1 then d7 else d7 then if false then p1 else false else if p4 then p1 else false
        d11 : if true then if true then Bool else Bool else if false then Bool else Bool
        d11 = if if d10 then false else d10 then if p4 then d7 else p1 else if false then d10 else p1
        d12 : if true then if false then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if true then d7 else false ) ) ) $ ( if d7 then false else d7 )
        d14 : if true then if true then Bool else Bool else if false then Bool else Bool
        d14 = if if false then d11 else p4 then if d7 then p1 else false else if d12 then p4 else d12
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> true ) ) ) $ ( d10 ) ) ) ) $ ( if p1 then p1 else true )
        d20 : if true then if false then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if false then true else d7 ) ) ) $ ( if p4 then p4 else false )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d10 ) ) ) $ ( d20 ) ) ) ) $ ( if true then p4 else p4 )
        d26 : if true then if false then Bool else Bool else if false then Bool else Bool
        d26 = if if d22 then false else true then if d20 then false else d12 else if true then p4 else p4
        d27 : if false then if true then Bool else Bool else if false then Bool else Bool
        d27 = if if p1 then p1 else d11 then if p4 then p4 else p4 else if p1 then d14 else p1
        d28 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if false then x31 else Bool ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( d26 ) ) ) ) $ ( if false then false else d22 )
        d32 : if true then if true then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> true ) ) ) $ ( true ) ) ) ) $ ( if p1 then p1 else d22 )
        d35 : if true then if true then Bool else Bool else if false then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if true then true else true ) ) ) $ ( if d11 then d20 else false )
        d37 : if false then if true then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> d12 ) ) ) $ ( p4 ) ) ) ) $ ( if p4 then p1 else d14 )
        d40 : if false then if false then Bool else Bool else if false then Bool else Bool
        d40 = if if p4 then d37 else d12 then if d7 then p4 else p1 else if p4 then d15 else true
        d41 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then Bool else x44 ) ) ) $ ( if false then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> true ) ) ) $ ( x42 ) ) ) ) $ ( if p1 then d32 else d37 )
        d45 : if false then if true then Bool else Bool else if true then Bool else Bool
        d45 = if if d12 then d37 else d12 then if p4 then true else true else if p4 then p4 else d35
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> Bool ) ) ) $ ( x47 ) ) ) ) $ ( if true then Bool else Bool )
        d46 = if if p4 then false else false then if true then p4 else d26 else if p1 then false else p1
        d49 : if true then if true then Bool else Bool else if true then Bool else Bool
        d49 = if if p4 then false else false then if p1 then p1 else d41 else if false then true else d14
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then x51 else x51 ) ) ) $ ( if false then Bool else Bool )
        d50 = if if d27 then d10 else d49 then if d27 then p1 else true else if d45 then p1 else true
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if d11 then true else d35 ) ) ) $ ( if true then d22 else d49 )
        d54 : if true then if true then Bool else Bool else if true then Bool else Bool
        d54 = if if p1 then true else p1 then if d50 then p1 else false else if true then p4 else d15
        d55 : if true then if false then Bool else Bool else if true then Bool else Bool
        d55 = if if p4 then d11 else p4 then if true then true else d35 else if d54 then d7 else false
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x58 ) ) ) $ ( x58 ) ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if p4 then p1 else p4 ) ) ) $ ( if p1 then d14 else d12 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if if d27 then p4 else d54 then if false then true else d45 else if d10 then d54 else false
        d63 : if false then if false then Bool else Bool else if false then Bool else Bool
        d63 = if if d11 then true else p1 then if false then d32 else true else if d27 then true else p1
        d64 : if true then if true then Bool else Bool else if false then Bool else Bool
        d64 = if if d54 then p1 else true then if d14 then false else d40 else if p1 then p1 else p1
        d65 : if true then if true then Bool else Bool else if true then Bool else Bool
        d65 = if if true then d41 else p4 then if false then d28 else false else if d32 then p4 else p4
        d66 : if false then if true then Bool else Bool else if true then Bool else Bool
        d66 = if if d26 then p4 else d10 then if p1 then true else p4 else if p1 then d40 else d11
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x70 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> p4 ) ) ) $ ( d28 ) ) ) ) $ ( if true then true else d52 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then Bool else x73 ) ) ) $ ( if true then Bool else Bool )
        d72 = if if d64 then d45 else p1 then if d52 then false else d67 else if false then false else p1
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if true then Bool else x75 ) ) ) $ ( if true then Bool else Bool )
        d74 = if if false then true else p1 then if d10 then d40 else p1 else if true then d20 else d63
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( x77 ) ) ) ) $ ( if true then Bool else Bool )
        d76 = if if d67 then p4 else p4 then if d14 then true else p1 else if p1 then p1 else d46
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x81 ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d79 = if if p4 then d66 else d26 then if p1 then p4 else p4 else if p4 then false else d65
        d82 : if false then if false then Bool else Bool else if false then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> p1 ) ) ) $ ( d60 ) ) ) ) $ ( if false then true else p1 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x88 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if p1 then d45 else p4 ) ) ) $ ( if false then p1 else p1 )
        d89 : if false then if true then Bool else Bool else if true then Bool else Bool
        d89 = if if d45 then p4 else p4 then if d50 then d35 else p4 else if p1 then d10 else true
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( x91 ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if p4 then p1 else p4 then if false then true else false else if false then false else d89
        d93 : if false then if false then Bool else Bool else if false then Bool else Bool
        d93 = if if d74 then false else false then if p4 then p4 else p4 else if d41 then d11 else d12
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if true then Bool else Bool )
        d94 = if if false then p1 else p1 then if false then d65 else true else if p1 then d27 else false
    d97 : if false then if false then Bool else Bool else if true then Bool else Bool
    d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> x99 ) ) ) $ ( x98 ) ) ) ) $ ( if false then true else false )
    d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then Bool else x101 ) ) ) $ ( if true then Bool else Bool )
    d100 = if if true then true else d97 then if true then d97 else d97 else if d97 then d97 else d97
    d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then x103 else Bool ) ) ) $ ( if true then Bool else Bool )
    d102 = ( ( M.d46 ) $ ( if true then false else true ) ) $ ( if d97 then false else d100 )
    d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then x106 else Bool ) ) ) $ ( if false then Bool else Bool )
    d104 = ( ( M.d56 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x105 -> x105 ) ) ) $ ( false ) ) ) $ ( ( ( M.d15 ) $ ( true ) ) $ ( d102 ) )
    d107 : if false then if false then Bool else Bool else if false then Bool else Bool
    d107 = if if d102 then false else false then if d100 then true else d104 else if d104 then d104 else false
    d108 : if true then if false then Bool else Bool else if true then Bool else Bool
    d108 = ( ( M.d28 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x109 -> d104 ) ) ) $ ( d102 ) ) ) $ ( if d107 then false else false )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> Bool ) ) ) $ ( x112 ) ) ) ) $ ( if true then Bool else Bool )
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( M.d64 ) $ ( if d100 then d97 else true ) ) $ ( if true then x111 else true ) ) ) ) $ ( if true then true else d104 )
    d114 : if false then if false then Bool else Bool else if false then Bool else Bool
    d114 = if if true then d104 else d110 then if d104 then true else d102 else if false then d107 else d100
    d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if false then x116 else Bool ) ) ) $ ( if false then Bool else Bool )
    d115 = if if true then d100 else d102 then if false then d114 else false else if d102 then true else true
    d117 : if true then if true then Bool else Bool else if false then Bool else Bool
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> d104 ) ) ) $ ( d102 ) ) ) ) $ ( if d97 then true else false )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if true then x121 else x121 ) ) ) $ ( if false then Bool else Bool )
    d120 = ( ( M.d67 ) $ ( ( ( M.d37 ) $ ( d100 ) ) $ ( false ) ) ) $ ( ( ( M.d66 ) $ ( d115 ) ) $ ( true ) )
    d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then x123 else x123 ) ) ) $ ( if true then Bool else Bool )
    d122 = if if d120 then true else d107 then if d117 then true else true else if false then d114 else true
    d124 : if true then if false then Bool else Bool else if false then Bool else Bool
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if x125 then false else d104 ) ) ) $ ( if d110 then true else true )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if true then Bool else x128 ) ) ) $ ( if false then Bool else Bool )
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if d97 then true else true ) ) ) $ ( if d97 then d117 else d120 )
    d129 : if false then if false then Bool else Bool else if false then Bool else Bool
    d129 = if if false then true else false then if d107 then d110 else d107 else if true then d124 else true
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( x132 ) ) ) ) $ ( if false then Bool else Bool )
    d130 = ( ( M.d35 ) $ ( ( ( M.d67 ) $ ( d115 ) ) $ ( d102 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x131 -> false ) ) ) $ ( d100 ) )
    d134 : if false then if false then Bool else Bool else if false then Bool else Bool
    d134 = ( ( M.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x135 -> false ) ) ) $ ( false ) ) ) $ ( if d104 then false else false )
    d136 : ( ( Set -> Set ) ∋ ( ( λ x137 -> if true then x137 else Bool ) ) ) $ ( if true then Bool else Bool )
    d136 = if if false then d129 else d110 then if false then d117 else d107 else if d100 then false else d130
    d138 : if false then if false then Bool else Bool else if true then Bool else Bool
    d138 = if if d114 then false else false then if false then false else d102 else if d120 then d104 else true
    d139 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x141 -> x141 ) ) ) $ ( x140 ) ) ) ) $ ( if d130 then false else true )
    d144 : if true then if true then Bool else Bool else if false then Bool else Bool
    d144 = if if d104 then false else d100 then if false then d134 else d139 else if true then true else d136
    d145 : if false then if false then Bool else Bool else if true then Bool else Bool
    d145 = ( ( M.d26 ) $ ( ( ( M.d37 ) $ ( true ) ) $ ( d138 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x146 -> true ) ) ) $ ( false ) )
    d147 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if true then Bool else x148 ) ) ) $ ( if true then Bool else Bool )
    d147 = if if d144 then d124 else d136 then if false then d139 else true else if false then d108 else true
    d149 : if true then if false then Bool else Bool else if true then Bool else Bool
    d149 = ( ( M.d76 ) $ ( if false then true else d120 ) ) $ ( if true then d110 else d130 )
    d150 : if false then if true then Bool else Bool else if true then Bool else Bool
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> ( ( Bool -> Bool ) ∋ ( ( λ x152 -> false ) ) ) $ ( x151 ) ) ) ) $ ( if true then d145 else d144 )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x156 -> if false then Bool else x156 ) ) ) $ ( if false then Bool else Bool )
    d153 = ( ( M.d28 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x154 -> false ) ) ) $ ( d134 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x155 -> d144 ) ) ) $ ( false ) )
    d157 : if true then if true then Bool else Bool else if false then Bool else Bool
    d157 = ( ( M.d37 ) $ ( if false then true else d122 ) ) $ ( ( ( M.d45 ) $ ( false ) ) $ ( false ) )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x161 -> ( ( Set -> Set ) ∋ ( ( λ x162 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d158 = ( ( M.d79 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x159 -> true ) ) ) $ ( d149 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( true ) )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d163 = if if d153 then false else d145 then if d150 then d158 else true else if true then true else true
    d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> x168 ) ) ) $ ( x167 ) ) ) ) $ ( if true then Bool else Bool )
    d166 = if if true then false else true then if true then d97 else false else if true then d149 else false
    d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x171 -> Bool ) ) ) $ ( x170 ) ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( M.d41 ) $ ( ( ( M.d10 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( M.d93 ) $ ( false ) ) $ ( true ) )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if false then x174 else x174 ) ) ) $ ( if false then Bool else Bool )
    d172 = ( ( M.d66 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x173 -> true ) ) ) $ ( d153 ) ) ) $ ( if true then true else d150 )
    d175 : if false then if true then Bool else Bool else if true then Bool else Bool
    d175 = ( ( M.d56 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> d100 ) ) ) $ ( false ) ) ) $ ( ( ( M.d66 ) $ ( d104 ) ) $ ( d144 ) )
    d177 : if true then if false then Bool else Bool else if false then Bool else Bool
    d177 = if if d166 then d117 else false then if true then d120 else true else if true then false else d120
    d178 : if true then if false then Bool else Bool else if true then Bool else Bool
    d178 = ( ( M.d41 ) $ ( if d166 then false else false ) ) $ ( ( ( M.d85 ) $ ( true ) ) $ ( d149 ) )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x182 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x181 -> d166 ) ) ) $ ( true ) ) ) ) $ ( if d120 then d97 else true )
    d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> ( ( Set -> Set ) ∋ ( ( λ x185 -> x184 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d183 = if if true then false else true then if false then false else true else if true then d150 else false
    d186 : if true then if false then Bool else Bool else if false then Bool else Bool
    d186 = ( ( M.d28 ) $ ( ( ( M.d46 ) $ ( d108 ) ) $ ( false ) ) ) $ ( ( ( M.d12 ) $ ( d150 ) ) $ ( true ) )
    d187 : ( ( Set -> Set ) ∋ ( ( λ x189 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> x189 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d187 = ( ( M.d63 ) $ ( ( ( M.d94 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x188 -> d122 ) ) ) $ ( d129 ) )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x193 -> if false then x193 else x193 ) ) ) $ ( if true then Bool else Bool )
    d191 = ( ( M.d60 ) $ ( if d144 then d158 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x192 -> false ) ) ) $ ( true ) )