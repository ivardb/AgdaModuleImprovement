module Size5Test7  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : if false then if true then Bool else Bool else if true then Bool else Bool
        d3 = if if p1 then p2 else false then if p1 then false else true else if p2 then p1 else p1
        d4 : if true then if false then Bool else Bool else if true then Bool else Bool
        d4 = if if d3 then p2 else d3 then if true then p1 else p1 else if d3 then true else d3
        d5 : if true then if true then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> d4 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then x9 else x9 ) ) ) $ ( if true then Bool else Bool )
        d8 = if if true then d5 else true then if d4 then p1 else p1 else if d4 then false else p2
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then Bool else x11 ) ) ) $ ( if false then Bool else Bool )
        d10 = if if false then p1 else d8 then if d5 then p2 else false else if true then p2 else d5
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then x15 else x15 ) ) ) $ ( if true then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> d3 ) ) ) $ ( false ) ) ) ) $ ( if true then p2 else p1 )
        d16 : if true then if true then Bool else Bool else if true then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if true then p1 else p2 ) ) ) $ ( if d10 then p1 else d10 )
        d18 : if true then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if false then false else true ) ) ) $ ( if d3 then p2 else p1 )
        d20 : if true then if true then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if d3 then d18 else d4 ) ) ) $ ( if p1 then false else d8 )
        d22 : if true then if false then Bool else Bool else if true then Bool else Bool
        d22 = if if true then p1 else true then if p1 then p1 else d4 else if p1 then p1 else p2
        d23 : if false then if true then Bool else Bool else if false then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> true ) ) ) $ ( true ) ) ) ) $ ( if d18 then d10 else false )
        d26 : if true then if false then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> false ) ) ) $ ( x27 ) ) ) ) $ ( if true then p1 else d5 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then x31 else x31 ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if d4 then p1 else true ) ) ) $ ( if d8 then d3 else d16 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d32 = if if false then d26 else true then if d23 then true else d18 else if d4 then d20 else true
        d35 : if true then if true then Bool else Bool else if false then Bool else Bool
        d35 = if if p2 then true else p2 then if true then d32 else p1 else if p1 then p2 else d3
        d36 : if false then if false then Bool else Bool else if true then Bool else Bool
        d36 = if if p2 then p1 else p2 then if d18 then p2 else true else if d4 then p2 else true
        d37 : if false then if false then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if true then x38 else d3 ) ) ) $ ( if d32 then d8 else p2 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> x42 ) ) ) $ ( x41 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if true then d10 else d37 ) ) ) $ ( if d23 then d4 else d23 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then Bool else x45 ) ) ) $ ( if false then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if d37 then p1 else d23 ) ) ) $ ( if true then false else false )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then x47 else x47 ) ) ) $ ( if true then Bool else Bool )
        d46 = if if d3 then true else false then if false then false else d22 else if d5 then p1 else d37
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if false then true else p2 ) ) ) $ ( if d12 then false else p2 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d52 = if if p2 then d5 else p1 then if d48 then d48 else p2 else if d37 then p1 else p2
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x55 ) ) ) $ ( x55 ) ) ) ) $ ( if true then Bool else Bool )
        d54 = if if d26 then p2 else d20 then if d43 then false else p2 else if p2 then d8 else d26
        d57 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if false then d48 else d35 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if true then d46 else p2 ) ) ) $ ( if false then d26 else p1 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> x66 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = if if d22 then true else false then if d32 then false else p1 else if p2 then true else d16
        d68 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x71 ) ) ) $ ( x71 ) ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d52 ) ) ) $ ( d35 ) ) ) ) $ ( if false then d36 else true )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> x74 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d73 = if if true then p2 else d5 then if d35 then true else false else if true then p1 else p1
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x77 ) ) ) $ ( x77 ) ) ) ) $ ( if false then Bool else Bool )
        d76 = if if d32 then p2 else false then if false then true else true else if p2 then d65 else p1
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( true ) ) ) ) $ ( if p2 then p1 else false )
        d84 : if false then if false then Bool else Bool else if true then Bool else Bool
        d84 = if if false then p2 else true then if d52 then d10 else p2 else if p2 then false else false
        d85 : if false then if true then Bool else Bool else if false then Bool else Bool
        d85 = if if true then d35 else p1 then if false then p1 else d10 else if d29 then d84 else d68
        d86 : if false then if true then Bool else Bool else if true then Bool else Bool
        d86 = if if true then d32 else p1 then if p1 then d23 else d57 else if d20 then d85 else d37
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then x88 else x88 ) ) ) $ ( if true then Bool else Bool )
        d87 = if if d32 then d85 else true then if d48 then p1 else d85 else if d10 then p2 else p1
        d89 : if false then if false then Bool else Bool else if true then Bool else Bool
        d89 = if if p1 then d4 else false then if true then p2 else true else if false then false else d3
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if true then x91 else x91 ) ) ) $ ( if true then Bool else Bool )
        d90 = if if p1 then d48 else p1 then if false then true else false else if false then p1 else true
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x93 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d92 = if if d90 then false else false then if false then d90 else d84 else if p1 then d4 else p2
        d95 : if true then if false then Bool else Bool else if true then Bool else Bool
        d95 = if if d54 then d90 else p1 then if d3 then p2 else false else if true then true else d36
        d96 : if false then if true then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if true then false else d29 ) ) ) $ ( if p2 then p2 else p2 )
        d98 : if false then if false then Bool else Bool else if true then Bool else Bool
        d98 = if if p2 then d18 else d57 then if d37 then false else p2 else if d10 then p1 else d16
    d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d99 = if if true then true else true then if false then true else true else if false then false else false
    d101 : if false then if false then Bool else Bool else if false then Bool else Bool
    d101 = if if false then d99 else d99 then if true then d99 else true else if false then false else d99
    d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x105 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( M.d76 ) $ ( if d99 then d101 else d99 ) ) $ ( if x103 then true else true ) ) ) ) $ ( if false then d99 else false )
    d106 : if false then if false then Bool else Bool else if true then Bool else Bool
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( M.d12 ) $ ( if false then true else x107 ) ) $ ( if d101 then x107 else d102 ) ) ) ) $ ( if d101 then d99 else false )
    d108 : if true then if true then Bool else Bool else if false then Bool else Bool
    d108 = ( ( M.d76 ) $ ( if d106 then d101 else false ) ) $ ( ( ( M.d68 ) $ ( d101 ) ) $ ( d106 ) )
    d109 : if false then if false then Bool else Bool else if true then Bool else Bool
    d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( M.d65 ) $ ( if x110 then true else x110 ) ) $ ( if x110 then false else d99 ) ) ) ) $ ( if d106 then d99 else d101 )
    d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then x112 else x112 ) ) ) $ ( if false then Bool else Bool )
    d111 = if if true then d108 else false then if d109 then d108 else false else if true then d108 else d99
    d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d113 = ( ( M.d46 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d106 ) ) ) $ ( false ) ) ) $ ( if true then false else false )
    d117 : if true then if true then Bool else Bool else if true then Bool else Bool
    d117 = if if true then false else true then if d109 then false else false else if d101 then false else false
    d118 : if false then if false then Bool else Bool else if true then Bool else Bool
    d118 = ( ( M.d10 ) $ ( if true then d113 else d111 ) ) $ ( ( ( M.d8 ) $ ( false ) ) $ ( d99 ) )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d119 = if if d101 then d111 else d106 then if true then false else d106 else if d101 then d109 else false
    d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> x123 ) ) ) $ ( d111 ) ) ) ) $ ( if true then false else true )
    d125 : if false then if false then Bool else Bool else if false then Bool else Bool
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> d109 ) ) ) $ ( d118 ) ) ) ) $ ( if d111 then false else d99 )
    d128 : if true then if false then Bool else Bool else if false then Bool else Bool
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> x129 ) ) ) $ ( d109 ) ) ) ) $ ( if false then true else d99 )
    d131 : if true then if false then Bool else Bool else if false then Bool else Bool
    d131 = if if true then d113 else true then if d119 then d121 else true else if d117 then d109 else false
    d132 : if false then if true then Bool else Bool else if true then Bool else Bool
    d132 = if if d125 then d121 else true then if true then d99 else true else if false then false else d108
    d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> x135 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( M.d39 ) $ ( if true then x134 else d121 ) ) $ ( if x134 then x134 else false ) ) ) ) $ ( if d106 then d117 else d121 )
    d137 : if false then if true then Bool else Bool else if true then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( M.d46 ) $ ( if x138 then d109 else x138 ) ) $ ( if true then d131 else x138 ) ) ) ) $ ( if d118 then false else false )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> x142 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( M.d92 ) $ ( if d131 then d121 else x140 ) ) $ ( if x140 then x140 else x140 ) ) ) ) $ ( if false then true else false )
    d143 : if false then if false then Bool else Bool else if false then Bool else Bool
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> if x144 then x144 else x144 ) ) ) $ ( if true then false else d132 )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> ( ( Set -> Set ) ∋ ( ( λ x147 -> x146 ) ) ) $ ( x146 ) ) ) ) $ ( if true then Bool else Bool )
    d145 = if if true then false else false then if d121 then d102 else d118 else if true then false else true
    d148 : if false then if false then Bool else Bool else if false then Bool else Bool
    d148 = if if false then true else false then if true then true else d137 else if d111 then d131 else d131
    d149 : if false then if false then Bool else Bool else if false then Bool else Bool
    d149 = ( ( M.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x150 -> d99 ) ) ) $ ( d137 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x151 -> true ) ) ) $ ( d102 ) )
    d152 : if true then if false then Bool else Bool else if true then Bool else Bool
    d152 = if if d101 then true else false then if false then d102 else d143 else if d113 then d137 else false
    d153 : if false then if false then Bool else Bool else if false then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> if d121 then false else d119 ) ) ) $ ( if d149 then d125 else true )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> ( ( M.d12 ) $ ( if false then d109 else false ) ) $ ( if x156 then d143 else x156 ) ) ) ) $ ( if false then true else true )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if false then Bool else x160 ) ) ) $ ( if true then Bool else Bool )
    d159 = if if true then d125 else true then if d148 then true else false else if d137 then false else d113
    d161 : if false then if true then Bool else Bool else if false then Bool else Bool
    d161 = ( ( M.d12 ) $ ( ( ( M.d57 ) $ ( d102 ) ) $ ( false ) ) ) $ ( ( ( M.d84 ) $ ( false ) ) $ ( true ) )
    d162 : if true then if true then Bool else Bool else if false then Bool else Bool
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> if x163 then false else d101 ) ) ) $ ( if true then false else false )
    d164 : if false then if true then Bool else Bool else if true then Bool else Bool
    d164 = if if d153 then true else false then if d143 then false else d161 else if d159 then false else d152
    d165 : if false then if true then Bool else Bool else if true then Bool else Bool
    d165 = ( ( M.d4 ) $ ( if false then false else false ) ) $ ( if true then false else d99 )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> x168 ) ) ) $ ( x168 ) ) ) ) $ ( if false then Bool else Bool )
    d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> if true then true else x167 ) ) ) $ ( if true then true else true )
    d170 : if true then if true then Bool else Bool else if false then Bool else Bool
    d170 = ( ( M.d8 ) $ ( if d133 then d162 else d145 ) ) $ ( if d165 then d99 else d139 )
    d171 : if true then if true then Bool else Bool else if true then Bool else Bool
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( M.d23 ) $ ( if x172 then d143 else false ) ) $ ( if x172 then x172 else x172 ) ) ) ) $ ( if d108 then d161 else false )
    d173 : if false then if true then Bool else Bool else if true then Bool else Bool
    d173 = ( ( M.d86 ) $ ( ( ( M.d95 ) $ ( true ) ) $ ( d106 ) ) ) $ ( if d145 then true else false )
    d174 : ( ( Set -> Set ) ∋ ( ( λ x176 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d174 = ( ( M.d61 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x175 -> d101 ) ) ) $ ( d101 ) ) ) $ ( ( ( M.d79 ) $ ( false ) ) $ ( d133 ) )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x179 -> if true then x179 else Bool ) ) ) $ ( if true then Bool else Bool )
    d177 = ( ( M.d68 ) $ ( if true then d170 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x178 -> false ) ) ) $ ( true ) )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if false then x181 else x181 ) ) ) $ ( if false then Bool else Bool )
    d180 = ( ( M.d73 ) $ ( ( ( M.d84 ) $ ( d125 ) ) $ ( d139 ) ) ) $ ( if true then d108 else false )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x183 -> ( ( Set -> Set ) ∋ ( ( λ x184 -> x183 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d182 = if if false then true else d149 then if d117 then d137 else d109 else if false then false else true
    d185 : ( ( Set -> Set ) ∋ ( ( λ x187 -> ( ( Set -> Set ) ∋ ( ( λ x188 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d185 = ( ( M.d65 ) $ ( ( ( M.d85 ) $ ( d131 ) ) $ ( d118 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x186 -> x186 ) ) ) $ ( d174 ) )