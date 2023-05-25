module Param4Test11  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if true then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : if true then if true then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if true then p4 else p3 ) ) ) $ ( if p3 then p3 else p2 )
        d7 : if false then if true then Bool else Bool else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if false then false else d5 ) ) ) $ ( if false then p2 else p4 )
        d9 : if false then if false then Bool else Bool else if true then Bool else Bool
        d9 = if if d7 then d7 else p4 then if p3 then d7 else false else if p3 then false else p1
        d10 : if false then if false then Bool else Bool else if true then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if d9 then d5 else p3 ) ) ) $ ( if p1 then false else d7 )
        d12 : if true then if false then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if p4 then d10 else d10 ) ) ) $ ( if d5 then d9 else p1 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if true then x17 else Bool ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> d9 ) ) ) $ ( false ) ) ) ) $ ( if p3 then false else false )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then x21 else x21 ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( true ) ) ) ) $ ( if d7 then false else d7 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> x24 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if if false then true else p2 then if true then d9 else d10 else if false then p2 else true
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d25 = if if p2 then p1 else p1 then if true then p1 else p4 else if d18 then p3 else d7
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( x29 ) ) ) ) $ ( if false then Bool else Bool )
        d28 = if if p2 then p4 else p1 then if p2 then p1 else p4 else if d5 then d7 else p1
        d31 : if false then if true then Bool else Bool else if false then Bool else Bool
        d31 = if if p1 then false else true then if false then p3 else d22 else if d10 then true else false
        d32 : if true then if false then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if true then p2 else d12 ) ) ) $ ( if false then false else p2 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( x36 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if d12 then false else p3 ) ) ) $ ( if d31 then d28 else d7 )
        d38 : if false then if false then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> true ) ) ) $ ( false ) ) ) ) $ ( if d34 then false else p4 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if false then x46 else Bool ) ) ) $ ( if false then Bool else Bool )
        d45 = if if p4 then d25 else true then if p4 then p1 else p4 else if p4 then d41 else p1
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if true then Bool else x48 ) ) ) $ ( if false then Bool else Bool )
        d47 = if if true then true else d9 then if false then false else p3 else if p2 then d10 else d31
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then x50 else Bool ) ) ) $ ( if true then Bool else Bool )
        d49 = if if p4 then d41 else d34 then if p3 then p1 else p4 else if d47 then p4 else true
        d51 : if false then if false then Bool else Bool else if false then Bool else Bool
        d51 = if if p3 then d7 else p1 then if true then d38 else d25 else if false then d47 else false
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d52 = if if d9 then d45 else d25 then if p3 then d10 else p2 else if p1 then false else true
        d55 : if false then if true then Bool else Bool else if false then Bool else Bool
        d55 = if if d14 then p4 else d51 then if true then p2 else false else if true then true else p3
        d56 : if false then if true then Bool else Bool else if true then Bool else Bool
        d56 = if if p2 then true else d47 then if p2 then false else true else if false then p1 else p1
        d57 : if false then if true then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if false then true else false ) ) ) $ ( if d56 then true else true )
        d59 : if false then if false then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> p4 ) ) ) $ ( d18 ) ) ) ) $ ( if false then p1 else false )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d62 = if if false then d7 else d45 then if d34 then d34 else false else if p3 then p2 else p2
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> Bool ) ) ) $ ( x68 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d5 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d32 else false )
        d70 : if true then if true then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> true ) ) ) $ ( d5 ) ) ) ) $ ( if p3 then p1 else p1 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d73 = if if p1 then true else p4 then if true then d10 else true else if p1 then true else d65
        d76 : if true then if true then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> d47 ) ) ) $ ( false ) ) ) ) $ ( if d14 then true else d28 )
        d79 : if false then if true then Bool else Bool else if false then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if d59 then p2 else p1 ) ) ) $ ( if true then false else p2 )
        d81 : if true then if true then Bool else Bool else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if true then false else x82 ) ) ) $ ( if true then d38 else d18 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if p2 then d56 else false ) ) ) $ ( if true then d56 else true )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then x87 else x87 ) ) ) $ ( if true then Bool else Bool )
        d86 = if if p4 then true else d41 then if true then d10 else true else if d12 then true else p1
        d88 : if false then if true then Bool else Bool else if true then Bool else Bool
        d88 = if if p4 then false else p3 then if p1 then false else p3 else if false then d52 else true
        d89 : if true then if false then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> true ) ) ) $ ( p4 ) ) ) ) $ ( if p1 then p4 else d86 )
        d92 : if false then if false then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if false then false else false ) ) ) $ ( if p4 then d32 else true )
        d94 : if true then if true then Bool else Bool else if false then Bool else Bool
        d94 = if if d34 then p2 else p3 then if false then d52 else d76 else if d57 then false else d56
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if p4 then x96 else p2 ) ) ) $ ( if d52 then d22 else p4 )
        d97 : if true then if false then Bool else Bool else if false then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if false then false else d49 )
        d100 : if true then if true then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if d38 then p4 else p2 ) ) ) $ ( if true then d25 else false )
    d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x104 ) ) ) $ ( x104 ) ) ) ) $ ( if false then Bool else Bool )
    d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if true then x103 else true ) ) ) $ ( if false then true else false )
    d106 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> x108 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d102 )
    d111 : if true then if false then Bool else Bool else if false then Bool else Bool
    d111 = if if true then true else false then if true then d102 else d106 else if d102 then true else d106
    d112 : if true then if true then Bool else Bool else if false then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( ( ( M.d7 ) $ ( d111 ) ) $ ( d106 ) ) $ ( x113 ) ) $ ( x113 ) ) ) ) $ ( if d106 then d102 else true )
    d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> Bool ) ) ) $ ( x115 ) ) ) ) $ ( if true then Bool else Bool )
    d114 = ( ( ( ( M.d41 ) $ ( d112 ) ) $ ( true ) ) $ ( d102 ) ) $ ( d111 )
    d117 : if false then if false then Bool else Bool else if false then Bool else Bool
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if x118 then x118 else d102 ) ) ) $ ( if d111 then d106 else d114 )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( x121 ) ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if true then x120 else true ) ) ) $ ( if d106 then false else d102 )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if false then x124 else Bool ) ) ) $ ( if false then Bool else Bool )
    d123 = ( ( ( ( M.d12 ) $ ( false ) ) $ ( false ) ) $ ( d119 ) ) $ ( d111 )
    d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if true then x126 else x126 ) ) ) $ ( if true then Bool else Bool )
    d125 = ( ( ( ( M.d18 ) $ ( d106 ) ) $ ( false ) ) $ ( d102 ) ) $ ( false )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d127 = if if true then d106 else true then if d102 then true else false else if d111 then false else d102
    d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then x130 else Bool ) ) ) $ ( if true then Bool else Bool )
    d129 = if if true then d112 else true then if d106 then d117 else true else if d117 then false else false
    d131 : if true then if true then Bool else Bool else if false then Bool else Bool
    d131 = if if d112 then false else d114 then if d106 then false else false else if true then d114 else d129
    d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if false then x133 else Bool ) ) ) $ ( if false then Bool else Bool )
    d132 = if if d112 then true else false then if d119 then d112 else d112 else if false then false else d112
    d134 : if false then if false then Bool else Bool else if false then Bool else Bool
    d134 = ( ( ( ( M.d28 ) $ ( d112 ) ) $ ( true ) ) $ ( true ) ) $ ( false )
    d135 : if true then if true then Bool else Bool else if true then Bool else Bool
    d135 = ( ( ( ( M.d41 ) $ ( d134 ) ) $ ( true ) ) $ ( d123 ) ) $ ( true )
    d136 : if true then if false then Bool else Bool else if true then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> if d123 then d117 else true ) ) ) $ ( if d127 then true else d102 )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x139 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d138 = ( ( ( ( M.d18 ) $ ( d123 ) ) $ ( false ) ) $ ( d123 ) ) $ ( d134 )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> x142 ) ) ) $ ( x142 ) ) ) ) $ ( if false then Bool else Bool )
    d141 = ( ( ( ( M.d83 ) $ ( d127 ) ) $ ( d117 ) ) $ ( true ) ) $ ( false )
    d144 : if true then if false then Bool else Bool else if false then Bool else Bool
    d144 = if if d119 then false else false then if false then false else false else if false then true else d119
    d145 : if true then if false then Bool else Bool else if false then Bool else Bool
    d145 = ( ( ( ( M.d9 ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( false )
    d146 : if true then if false then Bool else Bool else if true then Bool else Bool
    d146 = ( ( ( ( M.d62 ) $ ( false ) ) $ ( d119 ) ) $ ( false ) ) $ ( d134 )
    d147 : if false then if false then Bool else Bool else if true then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> if d134 then false else d145 ) ) ) $ ( if d144 then false else d127 )
    d149 : if true then if true then Bool else Bool else if false then Bool else Bool
    d149 = ( ( ( ( M.d34 ) $ ( false ) ) $ ( true ) ) $ ( d144 ) ) $ ( false )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> ( ( ( ( M.d25 ) $ ( d144 ) ) $ ( d147 ) ) $ ( d145 ) ) $ ( d125 ) ) ) ) $ ( if false then true else d132 )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d153 = ( ( ( ( M.d100 ) $ ( d136 ) ) $ ( false ) ) $ ( true ) ) $ ( false )
    d155 : if false then if false then Bool else Bool else if false then Bool else Bool
    d155 = ( ( ( ( M.d79 ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( false )
    d156 : if true then if true then Bool else Bool else if false then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( ( ( M.d92 ) $ ( x157 ) ) $ ( d135 ) ) $ ( d123 ) ) $ ( x157 ) ) ) ) $ ( if false then false else false )
    d158 : if true then if true then Bool else Bool else if true then Bool else Bool
    d158 = ( ( ( ( M.d25 ) $ ( true ) ) $ ( d156 ) ) $ ( true ) ) $ ( d135 )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d159 = if if d129 then true else d114 then if d125 then d135 else false else if d156 then true else true
    d162 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if true then x163 else Bool ) ) ) $ ( if false then Bool else Bool )
    d162 = ( ( ( ( M.d49 ) $ ( d127 ) ) $ ( true ) ) $ ( d145 ) ) $ ( true )
    d164 : if false then if true then Bool else Bool else if false then Bool else Bool
    d164 = ( ( ( ( M.d49 ) $ ( d150 ) ) $ ( true ) ) $ ( d162 ) ) $ ( false )
    d165 : if true then if false then Bool else Bool else if true then Bool else Bool
    d165 = if if d135 then d102 else d164 then if false then true else true else if true then true else d131
    d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if true then x167 else Bool ) ) ) $ ( if true then Bool else Bool )
    d166 = if if false then d147 else d114 then if false then true else true else if d125 then false else false
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if false then x169 else Bool ) ) ) $ ( if true then Bool else Bool )
    d168 = ( ( ( ( M.d81 ) $ ( true ) ) $ ( d123 ) ) $ ( d146 ) ) $ ( d119 )
    d170 : ( ( Set -> Set ) ∋ ( ( λ x172 -> if false then x172 else x172 ) ) ) $ ( if false then Bool else Bool )
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> if x171 then false else false ) ) ) $ ( if true then true else d166 )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if true then x174 else Bool ) ) ) $ ( if true then Bool else Bool )
    d173 = if if false then d141 else d134 then if true then true else true else if false then true else d153
    d175 : if false then if false then Bool else Bool else if true then Bool else Bool
    d175 = ( ( ( ( M.d83 ) $ ( d144 ) ) $ ( d150 ) ) $ ( d153 ) ) $ ( d166 )
    d176 : if true then if true then Bool else Bool else if false then Bool else Bool
    d176 = if if d138 then d156 else false then if d136 then d170 else true else if false then true else false
    d177 : if false then if false then Bool else Bool else if false then Bool else Bool
    d177 = if if false then d114 else d156 then if true then false else false else if true then d147 else d112
    d178 : ( ( Set -> Set ) ∋ ( ( λ x179 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d178 = if if false then false else true then if d127 then d173 else true else if d111 then true else d150