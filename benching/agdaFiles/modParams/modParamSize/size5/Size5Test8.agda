module Size5Test8  where
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
        d3 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> x5 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if false then false else false ) ) ) $ ( if p1 then true else false )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x11 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then false else p2 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then Bool else x15 ) ) ) $ ( if false then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> p2 ) ) ) $ ( d7 ) ) ) ) $ ( if p2 then d7 else false )
        d16 : if false then if true then Bool else Bool else if false then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if d3 then p2 else p2 ) ) ) $ ( if d12 then true else d12 )
        d18 : if false then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( d7 ) ) ) ) $ ( if false then d12 else true )
        d21 : if true then if true then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else d16 )
        d24 : if true then if false then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> p2 ) ) ) $ ( d7 ) ) ) ) $ ( if true then p2 else true )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if true then x28 else x28 ) ) ) $ ( if false then Bool else Bool )
        d27 = if if true then false else p1 then if true then p1 else d16 else if true then p1 else true
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if false then x31 else Bool ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then false else true ) ) ) $ ( if false then d21 else p2 )
        d32 : if true then if false then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> false ) ) ) $ ( false ) ) ) ) $ ( if p2 then d21 else p1 )
        d35 : if true then if true then Bool else Bool else if true then Bool else Bool
        d35 = if if p1 then p2 else false then if p2 then p2 else true else if p1 then false else true
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( x39 ) ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> p2 ) ) ) $ ( p2 ) ) ) ) $ ( if d32 then p1 else d21 )
        d41 : if true then if true then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if d7 then true else p1 ) ) ) $ ( if d29 then d18 else d16 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then x45 else x45 ) ) ) $ ( if false then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if true then d7 else true ) ) ) $ ( if true then d27 else d3 )
        d46 : if true then if true then Bool else Bool else if false then Bool else Bool
        d46 = if if d3 then d16 else d29 then if true then p1 else p2 else if d12 then p2 else d35
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if false then x48 else Bool ) ) ) $ ( if true then Bool else Bool )
        d47 = if if true then false else true then if p2 then d27 else d16 else if p1 then d7 else true
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then x50 else Bool ) ) ) $ ( if true then Bool else Bool )
        d49 = if if false then p2 else p2 then if p2 then d12 else false else if p1 then p1 else p2
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if false then Bool else x52 ) ) ) $ ( if false then Bool else Bool )
        d51 = if if false then d7 else d32 then if d29 then true else d3 else if d24 then false else p1
        d53 : if false then if false then Bool else Bool else if false then Bool else Bool
        d53 = if if p2 then d29 else d43 then if true then false else false else if false then d46 else false
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x56 ) ) ) $ ( x55 ) ) ) ) $ ( if true then Bool else Bool )
        d54 = if if d47 then d49 else p2 then if false then true else p1 else if false then true else p2
        d57 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> d49 ) ) ) $ ( false ) ) ) ) $ ( if d29 then true else p1 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then x62 else x62 ) ) ) $ ( if true then Bool else Bool )
        d61 = if if p2 then d16 else p1 then if true then d32 else d18 else if p1 then false else false
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then Bool else x64 ) ) ) $ ( if true then Bool else Bool )
        d63 = if if p2 then d61 else d27 then if d51 then true else false else if p1 then true else false
        d65 : if false then if false then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if true then d47 else d27 ) ) ) $ ( if true then true else p2 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x69 ) ) ) $ ( x68 ) ) ) ) $ ( if true then Bool else Bool )
        d67 = if if p2 then p2 else true then if true then p2 else p2 else if true then d21 else false
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if false then Bool else x71 ) ) ) $ ( if false then Bool else Bool )
        d70 = if if p2 then d63 else p2 then if true then d41 else p2 else if p1 then p2 else p1
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d72 = if if p1 then true else p1 then if p2 then true else p2 else if p2 then p1 else d16
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> x77 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d75 = if if p2 then d63 else p2 then if p2 then true else p1 else if false then p1 else p1
        d78 : if false then if false then Bool else Bool else if false then Bool else Bool
        d78 = if if p2 then false else true then if false then true else true else if d3 then true else d54
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d79 = if if p1 then true else d3 then if true then d21 else p2 else if p1 then p2 else d46
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if false then Bool else x83 ) ) ) $ ( if true then Bool else Bool )
        d82 = if if p1 then true else p1 then if true then true else d3 else if false then d57 else d67
        d84 : if true then if false then Bool else Bool else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if true then p2 else true ) ) ) $ ( if false then p2 else p1 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> d7 ) ) ) $ ( p1 ) ) ) ) $ ( if d41 then p1 else d24 )
        d90 : if false then if false then Bool else Bool else if false then Bool else Bool
        d90 = if if p2 then p1 else false then if p1 then d36 else p1 else if p2 then false else d16
        d91 : if false then if false then Bool else Bool else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if d51 then false else x92 ) ) ) $ ( if p2 then d21 else true )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then Bool else x94 ) ) ) $ ( if false then Bool else Bool )
        d93 = if if d91 then d79 else p1 then if false then d90 else p1 else if p1 then d35 else true
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if true then x96 else Bool ) ) ) $ ( if true then Bool else Bool )
        d95 = if if d67 then d78 else p2 then if p1 then false else d86 else if true then true else d54
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if false then d41 else d27 ) ) ) $ ( if p1 then p2 else p2 )
        d101 : if false then if true then Bool else Bool else if false then Bool else Bool
        d101 = if if false then true else d32 then if p1 then p2 else false else if false then false else d12
        d102 : if false then if false then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if d46 then p1 else d12 ) ) ) $ ( if false then false else true )
    d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> x107 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( M.d43 ) $ ( if true then x105 else x105 ) ) $ ( if false then true else false ) ) ) ) $ ( if true then true else true )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then x110 else Bool ) ) ) $ ( if true then Bool else Bool )
    d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( M.d75 ) $ ( if d104 then x109 else x109 ) ) $ ( if d104 then x109 else x109 ) ) ) ) $ ( if d104 then false else false )
    d111 : if true then if false then Bool else Bool else if true then Bool else Bool
    d111 = ( ( M.d90 ) $ ( ( ( M.d54 ) $ ( d104 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d104 ) ) ) $ ( d108 ) )
    d113 : if true then if true then Bool else Bool else if false then Bool else Bool
    d113 = if if d104 then d104 else true then if d104 then true else false else if d108 then false else d108
    d114 : if false then if true then Bool else Bool else if true then Bool else Bool
    d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if x115 then d111 else x115 ) ) ) $ ( if true then true else true )
    d116 : if true then if true then Bool else Bool else if true then Bool else Bool
    d116 = ( ( M.d53 ) $ ( ( ( M.d53 ) $ ( d111 ) ) $ ( d114 ) ) ) $ ( ( ( M.d72 ) $ ( false ) ) $ ( false ) )
    d117 : if false then if false then Bool else Bool else if true then Bool else Bool
    d117 = ( ( M.d57 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x118 -> d108 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( d108 ) )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if false then x123 else x123 ) ) ) $ ( if false then Bool else Bool )
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> d114 ) ) ) $ ( true ) ) ) ) $ ( if d117 then false else true )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if true then x125 else Bool ) ) ) $ ( if false then Bool else Bool )
    d124 = ( ( M.d41 ) $ ( ( ( M.d12 ) $ ( false ) ) $ ( d117 ) ) ) $ ( if d114 then true else false )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if true then x127 else x127 ) ) ) $ ( if true then Bool else Bool )
    d126 = if if d116 then true else false then if d124 then d113 else true else if d114 then d111 else false
    d128 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d128 = ( ( M.d43 ) $ ( if false then d124 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x129 -> x129 ) ) ) $ ( d111 ) )
    d131 : if false then if false then Bool else Bool else if false then Bool else Bool
    d131 = ( ( M.d97 ) $ ( ( ( M.d51 ) $ ( true ) ) $ ( d108 ) ) ) $ ( if false then d114 else d117 )
    d132 : if true then if true then Bool else Bool else if false then Bool else Bool
    d132 = ( ( M.d21 ) $ ( ( ( M.d61 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( M.d41 ) $ ( d117 ) ) $ ( true ) )
    d133 : if false then if true then Bool else Bool else if false then Bool else Bool
    d133 = ( ( M.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x134 -> x134 ) ) ) $ ( d104 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x135 -> false ) ) ) $ ( true ) )
    d136 : if true then if false then Bool else Bool else if false then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( Bool -> Bool ) ∋ ( ( λ x138 -> d108 ) ) ) $ ( x137 ) ) ) ) $ ( if false then d120 else false )
    d139 : if false then if true then Bool else Bool else if true then Bool else Bool
    d139 = if if d113 then true else d128 then if true then d120 else true else if d108 then d128 else d128
    d140 : ( ( Set -> Set ) ∋ ( ( λ x143 -> ( ( Set -> Set ) ∋ ( ( λ x144 -> Bool ) ) ) $ ( x143 ) ) ) ) $ ( if false then Bool else Bool )
    d140 = ( ( M.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x141 -> x141 ) ) ) $ ( d132 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x142 -> x142 ) ) ) $ ( d120 ) )
    d145 : if false then if false then Bool else Bool else if true then Bool else Bool
    d145 = if if d132 then false else false then if d117 then false else d104 else if true then false else true
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d146 = ( ( M.d86 ) $ ( ( ( M.d93 ) $ ( d113 ) ) $ ( d120 ) ) ) $ ( if d140 then false else false )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> x152 ) ) ) $ ( x151 ) ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> x149 ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> Bool ) ) ) $ ( x154 ) ) ) ) $ ( if true then Bool else Bool )
    d153 = ( ( M.d46 ) $ ( ( ( M.d102 ) $ ( d124 ) ) $ ( d128 ) ) ) $ ( if d131 then d136 else d145 )
    d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d156 = if if false then false else d131 then if true then d140 else false else if d139 then d140 else d132
    d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d158 = if if false then d116 else d146 then if d146 then false else true else if d120 then d153 else true
    d160 : ( ( Set -> Set ) ∋ ( ( λ x162 -> if true then x162 else Bool ) ) ) $ ( if true then Bool else Bool )
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( M.d51 ) $ ( if x161 then d148 else false ) ) $ ( if d133 then d117 else d124 ) ) ) ) $ ( if d153 then true else true )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x164 -> if true then x164 else x164 ) ) ) $ ( if true then Bool else Bool )
    d163 = if if d113 then true else d160 then if false then true else d108 else if false then true else d124
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if false then x167 else x167 ) ) ) $ ( if false then Bool else Bool )
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> if true then x166 else true ) ) ) $ ( if d158 then d136 else false )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if true then x169 else Bool ) ) ) $ ( if false then Bool else Bool )
    d168 = if if true then false else d117 then if true then d128 else d139 else if d113 then false else d108
    d170 : ( ( Set -> Set ) ∋ ( ( λ x172 -> ( ( Set -> Set ) ∋ ( ( λ x173 -> Bool ) ) ) $ ( x172 ) ) ) ) $ ( if false then Bool else Bool )
    d170 = ( ( M.d90 ) $ ( if d104 then false else d156 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x171 -> true ) ) ) $ ( true ) )
    d174 : if false then if true then Bool else Bool else if true then Bool else Bool
    d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> if d168 then true else d158 ) ) ) $ ( if true then false else false )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> Bool ) ) ) $ ( x178 ) ) ) ) $ ( if false then Bool else Bool )
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( M.d29 ) $ ( if false then false else true ) ) $ ( if d168 then x177 else x177 ) ) ) ) $ ( if d168 then false else d113 )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x182 -> ( ( Set -> Set ) ∋ ( ( λ x183 -> x183 ) ) ) $ ( x182 ) ) ) ) $ ( if false then Bool else Bool )
    d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> if d133 then x181 else x181 ) ) ) $ ( if false then true else d165 )
    d184 : if false then if false then Bool else Bool else if true then Bool else Bool
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> ( ( Bool -> Bool ) ∋ ( ( λ x186 -> false ) ) ) $ ( x185 ) ) ) ) $ ( if d108 then true else d160 )
    d187 : if true then if false then Bool else Bool else if false then Bool else Bool
    d187 = ( ( M.d43 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x188 -> true ) ) ) $ ( d176 ) ) ) $ ( ( ( M.d91 ) $ ( d104 ) ) $ ( true ) )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if true then x191 else x191 ) ) ) $ ( if true then Bool else Bool )
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if d168 then x190 else x190 ) ) ) $ ( if d111 then false else false )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x194 -> if false then Bool else x194 ) ) ) $ ( if true then Bool else Bool )
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> ( ( M.d95 ) $ ( if true then x193 else x193 ) ) $ ( if x193 then d170 else false ) ) ) ) $ ( if false then true else d132 )
    d195 : if false then if false then Bool else Bool else if false then Bool else Bool
    d195 = ( ( M.d75 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x196 -> d136 ) ) ) $ ( d165 ) ) ) $ ( ( ( M.d78 ) $ ( d114 ) ) $ ( false ) )
    d197 : ( ( Set -> Set ) ∋ ( ( λ x199 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> Bool ) ) ) $ ( x199 ) ) ) ) $ ( if true then Bool else Bool )
    d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> if x198 then false else x198 ) ) ) $ ( if d170 then true else d168 )
    d201 : ( ( Set -> Set ) ∋ ( ( λ x204 -> ( ( Set -> Set ) ∋ ( ( λ x205 -> Bool ) ) ) $ ( x204 ) ) ) ) $ ( if false then Bool else Bool )
    d201 = ( ( Bool -> Bool ) ∋ ( ( λ x202 -> ( ( Bool -> Bool ) ∋ ( ( λ x203 -> true ) ) ) $ ( d153 ) ) ) ) $ ( if true then d170 else d113 )
    d206 : if true then if false then Bool else Bool else if false then Bool else Bool
    d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> ( ( M.d24 ) $ ( if false then false else x207 ) ) $ ( if false then d126 else x207 ) ) ) ) $ ( if d192 then d136 else d136 )
    d208 : if false then if true then Bool else Bool else if true then Bool else Bool
    d208 = if if d156 then d201 else true then if d148 then d168 else d111 else if true then false else d120