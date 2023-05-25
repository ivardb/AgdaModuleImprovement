module Param4Test7  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if true then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if false then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> x7 ) ) ) $ ( x7 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if x6 then false else false ) ) ) $ ( if p2 then p1 else false )
        d9 : if false then if true then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if true then p2 else false ) ) ) $ ( if d5 then true else d5 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d11 = if if d5 then p1 else p4 then if false then true else true else if false then p4 else d5
        d13 : if true then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> d5 ) ) ) $ ( p1 ) ) ) ) $ ( if d5 then p3 else p3 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( x18 ) ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if p1 then false else false ) ) ) $ ( if d9 then d5 else d13 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then x21 else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = if if p2 then false else false then if p4 then d11 else d5 else if p2 then p4 else d9
        d22 : if false then if false then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if false then true else d16 ) ) ) $ ( if d13 then d11 else true )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if false then x27 else Bool ) ) ) $ ( if true then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> d11 ) ) ) $ ( false ) ) ) ) $ ( if p3 then p2 else true )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> x31 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if d13 then true else d22 ) ) ) $ ( if p2 then false else true )
        d32 : if false then if false then Bool else Bool else if true then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if p1 then true else false ) ) ) $ ( if true then true else false )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then Bool else x35 ) ) ) $ ( if true then Bool else Bool )
        d34 = if if true then d11 else d28 then if false then true else p4 else if false then p2 else true
        d36 : if true then if true then Bool else Bool else if false then Bool else Bool
        d36 = if if p3 then p2 else d9 then if false then p1 else d13 else if p4 then p3 else p2
        d37 : if true then if true then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> true ) ) ) $ ( true ) ) ) ) $ ( if p2 then false else d11 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> x42 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d40 = if if d36 then false else d20 then if true then d22 else d9 else if true then d16 else true
        d43 : if false then if false then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> false ) ) ) $ ( false ) ) ) ) $ ( if p1 then p3 else true )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( x49 ) ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d20 ) ) ) $ ( false ) ) ) ) $ ( if p3 then d37 else d24 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then x53 else Bool ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if true then p2 else p4 ) ) ) $ ( if true then p1 else d28 )
        d54 : if true then if true then Bool else Bool else if false then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if false then true else p1 ) ) ) $ ( if false then d20 else d51 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x59 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if p1 then p2 else false ) ) ) $ ( if d32 then true else d22 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if true then x63 else Bool ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> false ) ) ) $ ( false ) ) ) ) $ ( if d22 then true else true )
        d64 : if false then if true then Bool else Bool else if false then Bool else Bool
        d64 = if if d20 then d43 else false then if p2 then p3 else d5 else if false then d32 else p2
        d65 : if true then if false then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if p3 then d5 else true ) ) ) $ ( if d28 then d56 else d16 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d67 = if if d51 then d13 else false then if false then true else d20 else if d51 then p4 else p2
        d70 : if true then if true then Bool else Bool else if true then Bool else Bool
        d70 = if if false then true else p4 then if false then p2 else true else if false then true else false
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> Bool ) ) ) $ ( x72 ) ) ) ) $ ( if true then Bool else Bool )
        d71 = if if p4 then true else true then if true then d40 else false else if d56 then d51 else true
        d74 : if false then if false then Bool else Bool else if true then Bool else Bool
        d74 = if if p3 then true else d64 then if false then true else false else if false then d32 else false
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d75 = if if d56 then p4 else p2 then if d46 then d13 else p1 else if d40 then d71 else true
        d77 : if true then if false then Bool else Bool else if false then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> p2 ) ) ) $ ( d34 ) ) ) ) $ ( if p4 then p3 else p4 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d80 = if if p3 then d46 else p3 then if d65 then true else d34 else if false then false else true
        d82 : if false then if false then Bool else Bool else if false then Bool else Bool
        d82 = if if p2 then p3 else p4 then if false then d46 else p2 else if p3 then true else true
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then x84 else x84 ) ) ) $ ( if false then Bool else Bool )
        d83 = if if true then d20 else d71 then if p4 then d22 else p1 else if p2 then p3 else false
        d85 : if true then if false then Bool else Bool else if true then Bool else Bool
        d85 = if if p4 then true else d5 then if p1 then p4 else d56 else if true then d13 else true
        d86 : if false then if false then Bool else Bool else if false then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if false then d13 else d80 ) ) ) $ ( if p4 then false else true )
        d88 : if false then if true then Bool else Bool else if false then Bool else Bool
        d88 = if if true then p3 else d24 then if false then p4 else p2 else if d75 then p3 else true
        d89 : if true then if false then Bool else Bool else if false then Bool else Bool
        d89 = if if p3 then p3 else p4 then if false then p4 else d86 else if p4 then d51 else p3
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then x93 else Bool ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> x92 ) ) ) $ ( p3 ) ) ) ) $ ( if true then true else true )
        d94 : if false then if true then Bool else Bool else if false then Bool else Bool
        d94 = if if p2 then d75 else d74 then if false then d13 else false else if d32 then p2 else d37
        d95 : if true then if true then Bool else Bool else if true then Bool else Bool
        d95 = if if false then d5 else true then if d24 then p1 else d40 else if d54 then d36 else p1
        d96 : if true then if false then Bool else Bool else if false then Bool else Bool
        d96 = if if d88 then true else p2 then if false then p4 else d22 else if d56 then true else true
        d97 : if true then if false then Bool else Bool else if false then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> p2 ) ) ) $ ( d94 ) ) ) ) $ ( if d40 then d54 else false )
    d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( x103 ) ) ) ) $ ( if true then Bool else Bool )
    d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> false ) ) ) $ ( x101 ) ) ) ) $ ( if true then true else true )
    d105 : if false then if true then Bool else Bool else if false then Bool else Bool
    d105 = ( ( ( ( M.d90 ) $ ( true ) ) $ ( d100 ) ) $ ( d100 ) ) $ ( true )
    d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d106 = if if false then d100 else d100 then if false then d100 else false else if d100 then d105 else d105
    d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( x110 ) ) ) ) $ ( if false then Bool else Bool )
    d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if true then true else d100 ) ) ) $ ( if d106 then d106 else d105 )
    d112 : if false then if true then Bool else Bool else if false then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if false then d108 else true ) ) ) $ ( if false then false else true )
    d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then Bool else x115 ) ) ) $ ( if true then Bool else Bool )
    d114 = ( ( ( ( M.d34 ) $ ( true ) ) $ ( false ) ) $ ( d112 ) ) $ ( false )
    d116 : if true then if false then Bool else Bool else if false then Bool else Bool
    d116 = if if d100 then d114 else d114 then if d112 then true else d100 else if true then true else d108
    d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x118 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d117 = ( ( ( ( M.d20 ) $ ( d106 ) ) $ ( true ) ) $ ( false ) ) $ ( true )
    d120 : if true then if false then Bool else Bool else if true then Bool else Bool
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( ( ( M.d54 ) $ ( true ) ) $ ( d114 ) ) $ ( true ) ) $ ( x121 ) ) ) ) $ ( if d112 then false else d100 )
    d122 : if true then if true then Bool else Bool else if true then Bool else Bool
    d122 = ( ( ( ( M.d88 ) $ ( d105 ) ) $ ( false ) ) $ ( false ) ) $ ( false )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if false then Bool else x126 ) ) ) $ ( if false then Bool else Bool )
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> d122 ) ) ) $ ( true ) ) ) ) $ ( if true then d106 else true )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if false then x128 else x128 ) ) ) $ ( if false then Bool else Bool )
    d127 = if if d105 then d106 else false then if false then d108 else true else if d112 then d123 else true
    d129 : if true then if true then Bool else Bool else if false then Bool else Bool
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d123 then d112 else d100 ) ) ) $ ( if false then true else false )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if true then x132 else Bool ) ) ) $ ( if false then Bool else Bool )
    d131 = if if d108 then d116 else false then if true then d112 else false else if d127 then false else true
    d133 : if true then if false then Bool else Bool else if false then Bool else Bool
    d133 = if if true then d122 else d122 then if d112 then d100 else d123 else if d123 then d131 else false
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> Bool ) ) ) $ ( x135 ) ) ) ) $ ( if false then Bool else Bool )
    d134 = ( ( ( ( M.d80 ) $ ( false ) ) $ ( d112 ) ) $ ( d100 ) ) $ ( d123 )
    d137 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> x141 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( Bool -> Bool ) ∋ ( ( λ x139 -> x138 ) ) ) $ ( x138 ) ) ) ) $ ( if d108 then false else true )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d142 = if if true then d122 else d106 then if false then d131 else d117 else if false then true else d133
    d144 : ( ( Set -> Set ) ∋ ( ( λ x145 -> ( ( Set -> Set ) ∋ ( ( λ x146 -> x146 ) ) ) $ ( x145 ) ) ) ) $ ( if false then Bool else Bool )
    d144 = ( ( ( ( M.d34 ) $ ( d129 ) ) $ ( d112 ) ) $ ( true ) ) $ ( d114 )
    d147 : if true then if false then Bool else Bool else if true then Bool else Bool
    d147 = if if d144 then true else d144 then if d105 then d100 else true else if true then false else d134
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d148 = if if false then d129 else d100 then if true then false else true else if true then true else false
    d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> Bool ) ) ) $ ( x151 ) ) ) ) $ ( if true then Bool else Bool )
    d150 = if if d147 then false else d129 then if d108 then false else false else if false then true else true
    d153 : if true then if false then Bool else Bool else if false then Bool else Bool
    d153 = if if false then true else false then if false then false else true else if true then false else d147
    d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> ( ( Set -> Set ) ∋ ( ( λ x156 -> x155 ) ) ) $ ( x155 ) ) ) ) $ ( if true then Bool else Bool )
    d154 = ( ( ( ( M.d37 ) $ ( true ) ) $ ( true ) ) $ ( d116 ) ) $ ( true )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> x158 ) ) ) $ ( x158 ) ) ) ) $ ( if true then Bool else Bool )
    d157 = ( ( ( ( M.d16 ) $ ( true ) ) $ ( d147 ) ) $ ( d100 ) ) $ ( true )
    d160 : if true then if false then Bool else Bool else if true then Bool else Bool
    d160 = if if true then d153 else d120 then if false then true else d114 else if d117 then true else d137
    d161 : if false then if true then Bool else Bool else if true then Bool else Bool
    d161 = ( ( ( ( M.d60 ) $ ( false ) ) $ ( d112 ) ) $ ( d134 ) ) $ ( false )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d162 = ( ( ( ( M.d71 ) $ ( false ) ) $ ( d116 ) ) $ ( true ) ) $ ( d161 )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x165 -> if true then Bool else x165 ) ) ) $ ( if true then Bool else Bool )
    d164 = ( ( ( ( M.d90 ) $ ( d154 ) ) $ ( true ) ) $ ( true ) ) $ ( true )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if true then x167 else x167 ) ) ) $ ( if false then Bool else Bool )
    d166 = if if false then true else d129 then if false then d116 else d123 else if false then d144 else true
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if false then x169 else x169 ) ) ) $ ( if true then Bool else Bool )
    d168 = if if false then d142 else d108 then if true then d120 else true else if false then false else false
    d170 : ( ( Set -> Set ) ∋ ( ( λ x172 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( ( ( M.d75 ) $ ( x171 ) ) $ ( d168 ) ) $ ( x171 ) ) $ ( x171 ) ) ) ) $ ( if d105 then false else d100 )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d173 = if if d154 then d170 else true then if d168 then false else d108 else if d137 then d148 else d133
    d175 : ( ( Set -> Set ) ∋ ( ( λ x176 -> if true then Bool else x176 ) ) ) $ ( if false then Bool else Bool )
    d175 = ( ( ( ( M.d89 ) $ ( d112 ) ) $ ( d154 ) ) $ ( d137 ) ) $ ( d133 )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d177 = ( ( ( ( M.d71 ) $ ( d144 ) ) $ ( d133 ) ) $ ( true ) ) $ ( false )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> ( ( Set -> Set ) ∋ ( ( λ x182 -> x182 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d180 = if if true then false else true then if d164 then d170 else d137 else if false then d114 else false
    d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if true then x184 else Bool ) ) ) $ ( if true then Bool else Bool )
    d183 = if if true then true else d100 then if d108 then d168 else false else if d105 then false else false
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> ( ( Set -> Set ) ∋ ( ( λ x187 -> Bool ) ) ) $ ( x186 ) ) ) ) $ ( if false then Bool else Bool )
    d185 = ( ( ( ( M.d89 ) $ ( d153 ) ) $ ( false ) ) $ ( d105 ) ) $ ( true )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> if d183 then true else d114 ) ) ) $ ( if d177 then d161 else d177 )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x193 -> ( ( Set -> Set ) ∋ ( ( λ x194 -> x194 ) ) ) $ ( x193 ) ) ) ) $ ( if true then Bool else Bool )
    d191 = ( ( Bool -> Bool ) ∋ ( ( λ x192 -> if x192 then x192 else d106 ) ) ) $ ( if d188 then d127 else true )