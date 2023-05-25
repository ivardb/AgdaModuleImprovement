module Param4Test1  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if true then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : if false then if true then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if false then p2 else true ) ) ) $ ( if p3 then p4 else p2 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( x9 ) ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if p3 then p2 else d5 ) ) ) $ ( if p3 then true else d5 )
        d11 : if true then if false then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> d5 ) ) ) $ ( d5 ) ) ) ) $ ( if d7 then p1 else d7 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x15 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if if p3 then p3 else false then if true then true else d11 else if p2 then false else true
        d17 : if false then if false then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> p3 ) ) ) $ ( p4 ) ) ) ) $ ( if d7 then false else true )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then Bool else x23 ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> x22 ) ) ) $ ( x21 ) ) ) ) $ ( if d5 then p3 else d7 )
        d24 : if false then if false then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> p1 ) ) ) $ ( d5 ) ) ) ) $ ( if d5 then p1 else d14 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x29 ) ) ) $ ( x28 ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if if true then d14 else false then if d17 then d5 else p4 else if p3 then true else d24
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( x31 ) ) ) ) $ ( if false then Bool else Bool )
        d30 = if if p2 then d24 else p2 then if d24 then false else p1 else if p4 then d24 else d11
        d33 : if true then if false then Bool else Bool else if false then Bool else Bool
        d33 = if if d11 then d27 else true then if d30 then false else p4 else if p1 then p2 else p1
        d34 : if false then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if true then d27 else false then if d24 then p2 else d17 else if false then false else p1
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d34 then d11 else p1 ) ) ) $ ( if d17 then d33 else p4 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if false then x42 else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> p2 ) ) ) $ ( true ) ) ) ) $ ( if d33 then true else d20 )
        d43 : if true then if true then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if true then x44 else true ) ) ) $ ( if true then true else p2 )
        d45 : if false then if false then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if d20 then false else true ) ) ) $ ( if false then true else d30 )
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = if if p3 then p3 else p3 then if false then d14 else d7 else if d17 then d24 else d30
        d48 : if true then if true then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> d45 ) ) ) $ ( true ) ) ) ) $ ( if true then d24 else d14 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if true then x54 else Bool ) ) ) $ ( if false then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> p4 ) ) ) $ ( x52 ) ) ) ) $ ( if true then true else false )
        d55 : if false then if true then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if p4 then p3 else d24 )
        d58 : if false then if true then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if x59 then d27 else d11 ) ) ) $ ( if true then d7 else true )
        d60 : if false then if false then Bool else Bool else if false then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if d43 then x61 else true ) ) ) $ ( if false then false else p2 )
        d62 : if true then if true then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if d58 then p1 else p3 ) ) ) $ ( if true then true else false )
        d64 : if false then if false then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> true ) ) ) $ ( d34 ) ) ) ) $ ( if d51 then d34 else true )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if p4 then x68 else false ) ) ) $ ( if d62 then d14 else p2 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> Bool ) ) ) $ ( x72 ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if p1 then true else true ) ) ) $ ( if p3 then d27 else true )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> p4 ) ) ) $ ( false ) ) ) ) $ ( if p2 then true else d67 )
        d79 : if false then if true then Bool else Bool else if false then Bool else Bool
        d79 = if if false then true else p4 then if p4 then d7 else false else if d20 then d48 else false
        d80 : if false then if false then Bool else Bool else if false then Bool else Bool
        d80 = if if p2 then d48 else true then if true then d45 else false else if p1 then p4 else d45
        d81 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> d48 ) ) ) $ ( d45 ) ) ) ) $ ( if d7 then p4 else d5 )
        d86 : if false then if false then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> d24 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d14 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if false then Bool else x91 ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if p3 then d11 else p2 ) ) ) $ ( if d35 then d27 else d24 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if true then p3 else false ) ) ) $ ( if d79 then false else true )
        d95 : if true then if false then Bool else Bool else if false then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if true then p4 else d39 ) ) ) $ ( if d45 then p3 else d58 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d97 = if if p4 then true else false then if true then d55 else d47 else if true then d70 else p2
        d100 : if false then if true then Bool else Bool else if false then Bool else Bool
        d100 = if if p4 then p4 else p1 then if d79 then false else d27 else if d11 then true else p3
        d101 : if true then if true then Bool else Bool else if false then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then p4 else p1 )
        d104 : if true then if true then Bool else Bool else if false then Bool else Bool
        d104 = if if d14 then false else d24 then if true then d62 else d70 else if true then true else d51
        d105 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if false then x108 else x108 ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> d7 ) ) ) $ ( false ) ) ) ) $ ( if p2 then p4 else d43 )
        d109 : if false then if false then Bool else Bool else if false then Bool else Bool
        d109 = if if p2 then true else d27 then if false then p4 else p3 else if true then false else d58
        d110 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d7 ) ) ) $ ( true ) ) ) ) $ ( if d33 then p4 else p2 )
    d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then Bool else x116 ) ) ) $ ( if false then Bool else Bool )
    d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if x115 then x115 else x115 ) ) ) $ ( if true then true else false )
    d117 : if false then if true then Bool else Bool else if true then Bool else Bool
    d117 = ( ( ( ( M.d47 ) $ ( d114 ) ) $ ( d114 ) ) $ ( true ) ) $ ( d114 )
    d118 : if false then if false then Bool else Bool else if true then Bool else Bool
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d117 ) ) ) $ ( x119 ) ) ) ) $ ( if d117 then d114 else d114 )
    d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> x122 ) ) ) $ ( x122 ) ) ) ) $ ( if false then Bool else Bool )
    d121 = ( ( ( ( M.d62 ) $ ( true ) ) $ ( true ) ) $ ( false ) ) $ ( d118 )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> x126 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d124 = ( ( ( ( M.d45 ) $ ( true ) ) $ ( d117 ) ) $ ( true ) ) $ ( d114 )
    d127 : if true then if true then Bool else Bool else if false then Bool else Bool
    d127 = ( ( ( ( M.d100 ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( true )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if true then x129 else x129 ) ) ) $ ( if true then Bool else Bool )
    d128 = ( ( ( ( M.d105 ) $ ( d118 ) ) $ ( false ) ) $ ( d121 ) ) $ ( false )
    d130 : if true then if false then Bool else Bool else if true then Bool else Bool
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if true then d114 else true ) ) ) $ ( if d127 then d114 else true )
    d132 : if true then if true then Bool else Bool else if true then Bool else Bool
    d132 = if if d124 then true else d127 then if d121 then d114 else true else if true then true else true
    d133 : if true then if false then Bool else Bool else if true then Bool else Bool
    d133 = if if false then d124 else true then if true then true else true else if true then d114 else d130
    d134 : ( ( Set -> Set ) ∋ ( ( λ x137 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> ( ( Bool -> Bool ) ∋ ( ( λ x136 -> true ) ) ) $ ( d117 ) ) ) ) $ ( if false then d127 else true )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x139 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> Bool ) ) ) $ ( x139 ) ) ) ) $ ( if false then Bool else Bool )
    d138 = if if d118 then false else d134 then if false then true else d128 else if false then false else d114
    d141 : if false then if true then Bool else Bool else if false then Bool else Bool
    d141 = if if d128 then true else true then if d132 then true else true else if d114 then d133 else d132
    d142 : if false then if false then Bool else Bool else if false then Bool else Bool
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> if true then false else d124 ) ) ) $ ( if d118 then true else false )
    d144 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if false then x145 else x145 ) ) ) $ ( if false then Bool else Bool )
    d144 = if if d114 then true else false then if true then d132 else false else if d118 then d128 else d138
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if true then x147 else x147 ) ) ) $ ( if false then Bool else Bool )
    d146 = ( ( ( ( M.d64 ) $ ( d133 ) ) $ ( d144 ) ) $ ( d127 ) ) $ ( true )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> if true then Bool else x149 ) ) ) $ ( if false then Bool else Bool )
    d148 = ( ( ( ( M.d30 ) $ ( true ) ) $ ( d146 ) ) $ ( d132 ) ) $ ( false )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> if false then Bool else x151 ) ) ) $ ( if false then Bool else Bool )
    d150 = if if true then d128 else false then if false then d148 else d114 else if d128 then d127 else d134
    d152 : if true then if false then Bool else Bool else if false then Bool else Bool
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> if x153 then false else true ) ) ) $ ( if true then false else false )
    d154 : if true then if false then Bool else Bool else if true then Bool else Bool
    d154 = ( ( ( ( M.d5 ) $ ( d117 ) ) $ ( d134 ) ) $ ( d117 ) ) $ ( d121 )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> if d146 then d117 else x156 ) ) ) $ ( if d142 then true else d141 )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> Bool ) ) ) $ ( x160 ) ) ) ) $ ( if true then Bool else Bool )
    d159 = ( ( ( ( M.d55 ) $ ( d114 ) ) $ ( d144 ) ) $ ( false ) ) $ ( false )
    d162 : if false then if true then Bool else Bool else if true then Bool else Bool
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> ( ( Bool -> Bool ) ∋ ( ( λ x164 -> x164 ) ) ) $ ( d138 ) ) ) ) $ ( if true then false else false )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> x167 ) ) ) $ ( x167 ) ) ) ) $ ( if false then Bool else Bool )
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> ( ( ( ( M.d5 ) $ ( true ) ) $ ( d138 ) ) $ ( true ) ) $ ( d124 ) ) ) ) $ ( if d121 then false else d127 )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d169 = if if d128 then true else true then if d138 then false else d148 else if d128 then d132 else true
    d171 : ( ( Set -> Set ) ∋ ( ( λ x172 -> if false then x172 else x172 ) ) ) $ ( if false then Bool else Bool )
    d171 = if if d134 then true else false then if d124 then d118 else true else if d165 then true else false
    d173 : if true then if true then Bool else Bool else if true then Bool else Bool
    d173 = if if true then d155 else d118 then if d118 then false else true else if false then d146 else d134
    d174 : ( ( Set -> Set ) ∋ ( ( λ x175 -> if false then x175 else Bool ) ) ) $ ( if true then Bool else Bool )
    d174 = ( ( ( ( M.d81 ) $ ( d152 ) ) $ ( d121 ) ) $ ( true ) ) $ ( d127 )
    d176 : if false then if true then Bool else Bool else if false then Bool else Bool
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> if d114 then d141 else d169 ) ) ) $ ( if d154 then d133 else true )
    d178 : if false then if false then Bool else Bool else if true then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( d176 ) ) ) ) $ ( if false then d117 else d176 )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> Bool ) ) ) $ ( x183 ) ) ) ) $ ( if true then Bool else Bool )
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> if true then d138 else x182 ) ) ) $ ( if true then true else false )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> if false then x186 else x186 ) ) ) $ ( if false then Bool else Bool )
    d185 = if if d148 then true else d118 then if true then d130 else true else if d159 then true else d141
    d187 : ( ( Set -> Set ) ∋ ( ( λ x189 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d187 = ( ( Bool -> Bool ) ∋ ( ( λ x188 -> if true then d174 else d159 ) ) ) $ ( if d155 then d162 else d138 )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x194 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d191 = ( ( Bool -> Bool ) ∋ ( ( λ x192 -> ( ( Bool -> Bool ) ∋ ( ( λ x193 -> d142 ) ) ) $ ( d117 ) ) ) ) $ ( if d173 then d124 else d171 )
    d195 : ( ( Set -> Set ) ∋ ( ( λ x196 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d195 = if if true then d185 else d165 then if true then true else d118 else if false then true else false
    d197 : if false then if true then Bool else Bool else if true then Bool else Bool
    d197 = if if d141 then false else d181 then if false then false else true else if true then d159 else false
    d198 : ( ( Set -> Set ) ∋ ( ( λ x199 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d198 = if if false then true else d132 then if true then d197 else false else if true then d165 else d152
    d201 : ( ( Set -> Set ) ∋ ( ( λ x202 -> ( ( Set -> Set ) ∋ ( ( λ x203 -> x202 ) ) ) $ ( x202 ) ) ) ) $ ( if true then Bool else Bool )
    d201 = ( ( ( ( M.d95 ) $ ( false ) ) $ ( false ) ) $ ( d132 ) ) $ ( true )
    d204 : ( ( Set -> Set ) ∋ ( ( λ x205 -> if true then x205 else x205 ) ) ) $ ( if true then Bool else Bool )
    d204 = if if d114 then d132 else false then if d169 then true else false else if false then true else d152
    d206 : if false then if true then Bool else Bool else if false then Bool else Bool
    d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> if x207 then false else true ) ) ) $ ( if false then d150 else true )