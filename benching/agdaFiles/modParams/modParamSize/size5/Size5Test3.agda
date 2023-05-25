module Size5Test3  where
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
        d3 : if true then if false then Bool else Bool else if false then Bool else Bool
        d3 = if if false then false else p1 then if true then true else true else if false then p1 else p2
        d4 : if false then if false then Bool else Bool else if true then Bool else Bool
        d4 = if if true then p1 else p1 then if p1 then p1 else false else if p2 then d3 else p2
        d5 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then Bool else x8 ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> d4 ) ) ) $ ( false ) ) ) ) $ ( if true then d3 else p2 )
        d9 : if false then if false then Bool else Bool else if true then Bool else Bool
        d9 = if if false then true else p2 then if p2 then false else p1 else if d5 then d5 else true
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then Bool else x11 ) ) ) $ ( if false then Bool else Bool )
        d10 = if if true then p1 else true then if d3 then d4 else true else if d4 then d4 else p2
        d12 : if true then if false then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if d3 then true else true ) ) ) $ ( if d5 then d10 else p2 )
        d14 : if true then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if d5 then d5 else p1 then if d9 then true else d9 else if d9 then true else true
        d15 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x18 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if p2 then true else d9 ) ) ) $ ( if p1 then false else d3 )
        d19 : if true then if false then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> p2 ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then true else p1 )
        d22 : if false then if false then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> true ) ) ) $ ( d15 ) ) ) ) $ ( if d15 then d14 else p2 )
        d25 : if true then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> d12 ) ) ) $ ( false ) ) ) ) $ ( if d3 then p1 else p1 )
        d28 : if false then if false then Bool else Bool else if false then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if p1 then p1 else p2 ) ) ) $ ( if d4 then p2 else p2 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( x32 ) ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if true then false else p2 ) ) ) $ ( if false then d10 else true )
        d34 : if false then if false then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if p1 then true else p1 ) ) ) $ ( if true then p2 else d22 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then x39 else x39 ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d10 ) ) ) $ ( false ) ) ) ) $ ( if p1 then d28 else p1 )
        d40 : if true then if false then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if p2 then p2 else false ) ) ) $ ( if p1 then d15 else d12 )
        d42 : if true then if true then Bool else Bool else if false then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> x43 ) ) ) $ ( x43 ) ) ) ) $ ( if true then d15 else p2 )
        d45 : if true then if true then Bool else Bool else if true then Bool else Bool
        d45 = if if d9 then d42 else p1 then if p2 then d10 else p1 else if d30 then p1 else false
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if true then x47 else Bool ) ) ) $ ( if false then Bool else Bool )
        d46 = if if false then d5 else true then if true then p2 else false else if p1 then p2 else d34
        d48 : if false then if true then Bool else Bool else if false then Bool else Bool
        d48 = if if p2 then false else d25 then if p1 then d25 else p1 else if p1 then p2 else d42
        d49 : if false then if false then Bool else Bool else if false then Bool else Bool
        d49 = if if false then p1 else p2 then if true then p1 else true else if p2 then false else p2
        d50 : if false then if true then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> d46 ) ) ) $ ( true ) ) ) ) $ ( if p2 then p1 else d9 )
        d53 : if false then if true then Bool else Bool else if true then Bool else Bool
        d53 = if if p2 then true else d3 then if true then d30 else false else if d10 then true else d36
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x56 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d54 = if if p1 then d36 else false then if p2 then p1 else p1 else if false then true else d50
        d57 : if true then if false then Bool else Bool else if false then Bool else Bool
        d57 = if if d40 then p2 else false then if p1 then p1 else false else if p1 then true else p2
        d58 : if true then if true then Bool else Bool else if true then Bool else Bool
        d58 = if if p2 then true else p2 then if true then true else p2 else if d10 then p1 else false
        d59 : if false then if true then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> false ) ) ) $ ( d12 ) ) ) ) $ ( if d36 then true else p2 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if true then Bool else x63 ) ) ) $ ( if false then Bool else Bool )
        d62 = if if d54 then false else false then if false then p2 else d36 else if p1 then false else p2
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then x67 else Bool ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x66 ) ) ) $ ( true ) ) ) ) $ ( if false then p1 else true )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then x69 else x69 ) ) ) $ ( if true then Bool else Bool )
        d68 = if if false then false else p2 then if d40 then true else d9 else if d59 then d40 else false
        d70 : if true then if false then Bool else Bool else if true then Bool else Bool
        d70 = if if p1 then d25 else d25 then if d68 then true else true else if false then true else d49
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then x72 else Bool ) ) ) $ ( if true then Bool else Bool )
        d71 = if if true then d57 else true then if true then d49 else p2 else if d68 then false else true
        d73 : if true then if true then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> true ) ) ) $ ( d71 ) ) ) ) $ ( if d71 then p1 else d40 )
        d76 : if false then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if false then true else p2 then if d45 then false else d15 else if d5 then d40 else false
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> x78 ) ) ) $ ( x78 ) ) ) ) $ ( if true then Bool else Bool )
        d77 = if if d30 then p2 else true then if d76 then p2 else d19 else if true then d49 else p2
        d80 : if false then if true then Bool else Bool else if false then Bool else Bool
        d80 = if if true then p2 else p2 then if p2 then d28 else d42 else if d10 then p1 else false
        d81 : if true then if false then Bool else Bool else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> p2 ) ) ) $ ( d9 ) ) ) ) $ ( if p1 then false else p1 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if false then x85 else Bool ) ) ) $ ( if true then Bool else Bool )
        d84 = if if d81 then d59 else d68 then if p1 then true else d10 else if d22 then d77 else true
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> d64 ) ) ) $ ( x87 ) ) ) ) $ ( if p1 then p2 else p2 )
        d91 : if true then if false then Bool else Bool else if true then Bool else Bool
        d91 = if if false then false else true then if p2 then true else d3 else if d80 then p1 else p2
    d92 : if false then if false then Bool else Bool else if true then Bool else Bool
    d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> x94 ) ) ) $ ( x93 ) ) ) ) $ ( if false then false else false )
    d95 : if false then if true then Bool else Bool else if true then Bool else Bool
    d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( M.d73 ) $ ( if d92 then d92 else x96 ) ) $ ( if d92 then x96 else d92 ) ) ) ) $ ( if d92 then d92 else false )
    d97 : if true then if true then Bool else Bool else if false then Bool else Bool
    d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> false ) ) ) $ ( d95 ) ) ) ) $ ( if d95 then d92 else false )
    d100 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> x102 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if true then true else x101 ) ) ) $ ( if true then d97 else true )
    d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if true then x105 else x105 ) ) ) $ ( if false then Bool else Bool )
    d104 = ( ( M.d48 ) $ ( ( ( M.d36 ) $ ( d100 ) ) $ ( d100 ) ) ) $ ( if false then true else d100 )
    d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then Bool else x107 ) ) ) $ ( if false then Bool else Bool )
    d106 = if if d100 then false else d100 then if d100 then d104 else d100 else if false then d92 else d97
    d108 : if true then if true then Bool else Bool else if true then Bool else Bool
    d108 = if if false then true else d100 then if d95 then d104 else true else if d95 then d95 else true
    d109 : if true then if false then Bool else Bool else if true then Bool else Bool
    d109 = if if d97 then true else d104 then if d95 then false else d92 else if d104 then d106 else true
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( x111 ) ) ) ) $ ( if false then Bool else Bool )
    d110 = if if d108 then false else false then if true then d108 else false else if d104 then d108 else true
    d113 : if false then if true then Bool else Bool else if false then Bool else Bool
    d113 = if if d97 then d108 else d109 then if d97 then true else d92 else if false then d92 else false
    d114 : if true then if true then Bool else Bool else if false then Bool else Bool
    d114 = ( ( M.d59 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x115 -> x115 ) ) ) $ ( d100 ) ) ) $ ( ( ( M.d84 ) $ ( d106 ) ) $ ( d92 ) )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if false then x119 else x119 ) ) ) $ ( if false then Bool else Bool )
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> x117 ) ) ) $ ( true ) ) ) ) $ ( if d108 then d100 else true )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d120 = if if true then d114 else false then if d114 then true else false else if d116 then d95 else d110
    d123 : if false then if true then Bool else Bool else if true then Bool else Bool
    d123 = ( ( M.d12 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x124 -> x124 ) ) ) $ ( true ) ) ) $ ( if d100 then d104 else d114 )
    d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> x126 ) ) ) $ ( x126 ) ) ) ) $ ( if false then Bool else Bool )
    d125 = if if true then d123 else d106 then if true then false else true else if d116 then false else false
    d128 : if false then if true then Bool else Bool else if false then Bool else Bool
    d128 = ( ( M.d64 ) $ ( ( ( M.d30 ) $ ( d92 ) ) $ ( d114 ) ) ) $ ( ( ( M.d9 ) $ ( d92 ) ) $ ( true ) )
    d129 : if false then if true then Bool else Bool else if false then Bool else Bool
    d129 = ( ( M.d59 ) $ ( if d113 then d114 else false ) ) $ ( ( ( M.d15 ) $ ( true ) ) $ ( false ) )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d130 = ( ( M.d91 ) $ ( ( ( M.d80 ) $ ( d108 ) ) $ ( d116 ) ) ) $ ( if true then d92 else false )
    d132 : if true then if false then Bool else Bool else if false then Bool else Bool
    d132 = if if false then d92 else true then if true then d125 else true else if d120 then true else d128
    d133 : if true then if false then Bool else Bool else if true then Bool else Bool
    d133 = ( ( M.d4 ) $ ( if true then d108 else d114 ) ) $ ( ( ( M.d48 ) $ ( d104 ) ) $ ( true ) )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d134 = if if true then false else true then if d114 then true else true else if false then false else d123
    d136 : if true then if false then Bool else Bool else if true then Bool else Bool
    d136 = if if d116 then d108 else true then if false then true else d106 else if true then d128 else false
    d137 : ( ( Set -> Set ) ∋ ( ( λ x138 -> if false then Bool else x138 ) ) ) $ ( if false then Bool else Bool )
    d137 = ( ( M.d54 ) $ ( ( ( M.d25 ) $ ( d132 ) ) $ ( d136 ) ) ) $ ( ( ( M.d22 ) $ ( d120 ) ) $ ( d116 ) )
    d139 : if false then if false then Bool else Bool else if true then Bool else Bool
    d139 = ( ( M.d64 ) $ ( if true then false else false ) ) $ ( if true then false else d100 )
    d140 : if true then if false then Bool else Bool else if true then Bool else Bool
    d140 = if if false then true else d125 then if d136 then d136 else false else if d97 then false else false
    d141 : if false then if false then Bool else Bool else if true then Bool else Bool
    d141 = ( ( M.d86 ) $ ( ( ( M.d64 ) $ ( d123 ) ) $ ( false ) ) ) $ ( ( ( M.d77 ) $ ( d106 ) ) $ ( true ) )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if false then x143 else x143 ) ) ) $ ( if false then Bool else Bool )
    d142 = if if d139 then false else false then if false then true else d139 else if d120 then false else false
    d144 : ( ( Set -> Set ) ∋ ( ( λ x145 -> ( ( Set -> Set ) ∋ ( ( λ x146 -> Bool ) ) ) $ ( x145 ) ) ) ) $ ( if true then Bool else Bool )
    d144 = if if d114 then false else true then if true then false else d125 else if true then d116 else d100
    d147 : ( ( Set -> Set ) ∋ ( ( λ x149 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x149 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d147 = ( ( M.d59 ) $ ( if true then false else d92 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x148 -> d104 ) ) ) $ ( d125 ) )
    d151 : if false then if true then Bool else Bool else if true then Bool else Bool
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( M.d22 ) $ ( if d142 then d137 else true ) ) $ ( if d108 then d123 else false ) ) ) ) $ ( if false then true else d133 )
    d153 : if true then if true then Bool else Bool else if true then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( Bool -> Bool ) ∋ ( ( λ x155 -> true ) ) ) $ ( x154 ) ) ) ) $ ( if d97 then d123 else d97 )
    d156 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> Bool ) ) ) $ ( x158 ) ) ) ) $ ( if false then Bool else Bool )
    d156 = ( ( M.d57 ) $ ( ( ( M.d40 ) $ ( d142 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x157 -> x157 ) ) ) $ ( d139 ) )
    d160 : ( ( Set -> Set ) ∋ ( ( λ x162 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( M.d62 ) $ ( if true then x161 else false ) ) $ ( if true then d110 else false ) ) ) ) $ ( if d95 then d125 else d147 )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d163 = if if d97 then d130 else d134 then if true then true else false else if d114 then d106 else d156
    d166 : if false then if true then Bool else Bool else if true then Bool else Bool
    d166 = ( ( M.d34 ) $ ( if false then true else d106 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x167 -> x167 ) ) ) $ ( d137 ) )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> Bool ) ) ) $ ( x169 ) ) ) ) $ ( if false then Bool else Bool )
    d168 = if if d160 then false else d129 then if d133 then d163 else d109 else if d95 then d166 else d144
    d171 : ( ( Set -> Set ) ∋ ( ( λ x172 -> if true then x172 else x172 ) ) ) $ ( if true then Bool else Bool )
    d171 = if if d132 then true else d163 then if d129 then d108 else d123 else if false then false else d144
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if false then x174 else Bool ) ) ) $ ( if false then Bool else Bool )
    d173 = ( ( M.d86 ) $ ( ( ( M.d15 ) $ ( d97 ) ) $ ( true ) ) ) $ ( if d120 then d109 else true )
    d175 : if true then if false then Bool else Bool else if true then Bool else Bool
    d175 = ( ( M.d49 ) $ ( ( ( M.d36 ) $ ( d123 ) ) $ ( d109 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> true ) ) ) $ ( d166 ) )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> x179 ) ) ) $ ( x178 ) ) ) ) $ ( if false then Bool else Bool )
    d177 = if if false then true else d136 then if true then false else true else if d108 then d147 else true