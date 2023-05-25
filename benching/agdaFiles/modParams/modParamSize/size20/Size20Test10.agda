module Size20Test10  where
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

    module M ( p1 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2 -> Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> if true then Bool else Bool ) ) ) $ ( x4 ) ) ) ) $ ( if true then Bool else Bool ) )  where
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then Bool else x7 ) ) ) $ ( if false then Bool else Bool )
        d6 = if if p1 then p1 else p1 then if p3 then false else true else if false then p1 else p3
        d8 : if false then if true then Bool else Bool else if true then Bool else Bool
        d8 = if if p3 then false else false then if p1 then d6 else true else if p1 then p1 else d6
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x11 ) ) ) $ ( x10 ) ) ) ) $ ( if true then Bool else Bool )
        d9 = if if d8 then false else false then if p3 then p1 else p1 else if true then p3 else d6
        d12 : if false then if true then Bool else Bool else if true then Bool else Bool
        d12 = if if d9 then false else p1 then if d6 then d6 else true else if p3 then p3 else false
        d13 : if true then if false then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if false then d8 else false )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else x19 ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> x18 ) ) ) $ ( false ) ) ) ) $ ( if true then false else p1 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then x22 else x22 ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if p1 then true else x21 ) ) ) $ ( if false then p3 else true )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if d9 then false else d12 ) ) ) $ ( if d16 then false else p1 )
        d26 : if true then if false then Bool else Bool else if true then Bool else Bool
        d26 = if if d16 then p1 else false then if d23 then d23 else d23 else if d6 then p1 else p3
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then x30 else x30 ) ) ) $ ( if true then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> x28 ) ) ) $ ( d20 ) ) ) ) $ ( if true then p3 else p3 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if d27 then p3 else false ) ) ) $ ( if d9 then false else d8 )
        d35 : if true then if true then Bool else Bool else if true then Bool else Bool
        d35 = if if p1 then true else p3 then if p3 then p1 else false else if d8 then false else p3
        d36 : if true then if true then Bool else Bool else if true then Bool else Bool
        d36 = if if p3 then d20 else d16 then if d31 then p3 else p1 else if true then p1 else p1
        d37 : if false then if true then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> d12 ) ) ) $ ( x38 ) ) ) ) $ ( if false then d8 else false )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d40 = if if true then false else d27 then if p1 then true else d37 else if d37 then p1 else d8
        d42 : if true then if false then Bool else Bool else if false then Bool else Bool
        d42 = if if p1 then p3 else p3 then if false then p3 else p1 else if p3 then d40 else false
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> Bool ) ) ) $ ( x44 ) ) ) ) $ ( if true then Bool else Bool )
        d43 = if if p1 then false else d26 then if p3 then p1 else p1 else if p1 then d13 else d31
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d46 = if if p1 then false else d36 then if p3 then true else true else if d12 then d40 else p1
        d49 : if false then if false then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if d23 then p1 else false )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then x53 else x53 ) ) ) $ ( if true then Bool else Bool )
        d52 = if if true then true else d46 then if false then d23 else true else if p1 then p1 else p3
        d54 : if false then if false then Bool else Bool else if false then Bool else Bool
        d54 = if if p3 then false else d13 then if d12 then true else d23 else if true then p1 else d52
        d55 : if false then if true then Bool else Bool else if false then Bool else Bool
        d55 = if if p1 then false else d46 then if true then p3 else p3 else if p1 then false else d9
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> x57 ) ) ) $ ( x57 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if p3 then d54 else true then if d46 then d20 else d9 else if d35 then p3 else p1
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> true ) ) ) $ ( true ) ) ) ) $ ( if d12 then d27 else d6 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if true then false else false ) ) ) $ ( if p3 then p1 else d42 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then x68 else x68 ) ) ) $ ( if true then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if p1 then d12 else false ) ) ) $ ( if p3 then false else d62 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x70 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d69 = if if d66 then p1 else p1 then if p3 then p1 else p1 else if true then p3 else d40
        d72 : if false then if true then Bool else Bool else if true then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if p3 then d69 else false ) ) ) $ ( if d23 then d20 else false )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( x75 ) ) ) ) $ ( if false then Bool else Bool )
        d74 = if if false then true else d20 then if d36 then p1 else d8 else if true then d43 else d49
        d77 : if false then if false then Bool else Bool else if false then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> x78 ) ) ) $ ( true ) ) ) ) $ ( if d55 then d12 else d59 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> x82 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then true else p3 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if true then x86 else Bool ) ) ) $ ( if true then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if true then x85 else d16 ) ) ) $ ( if true then d43 else true )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> x88 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d87 = if if p1 then false else p3 then if p1 then p3 else d31 else if false then false else true
        d90 : if true then if true then Bool else Bool else if false then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if p1 then x91 else p3 ) ) ) $ ( if false then p1 else false )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x94 ) ) ) $ ( x93 ) ) ) ) $ ( if false then Bool else Bool )
        d92 = if if p3 then false else d40 then if p3 then p1 else p3 else if d9 then d20 else true
        d95 : if false then if true then Bool else Bool else if true then Bool else Bool
        d95 = if if d77 then d74 else false then if p3 then true else d46 else if d87 then p3 else d20
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( x97 ) ) ) ) $ ( if true then Bool else Bool )
        d96 = if if p3 then d90 else p1 then if false then p1 else d77 else if p3 then d49 else p1
        d99 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then x101 else Bool ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if d54 then x100 else d77 ) ) ) $ ( if p1 then p1 else d69 )
        d102 : if true then if true then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if p3 then x103 else d8 ) ) ) $ ( if true then d42 else d13 )
        d104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if d80 then p3 else d90 ) ) ) $ ( if d80 then p3 else p3 )
    d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d106 = if if false then false else true then if true then true else true else if false then false else false
    d108 : if true then if false then Bool else Bool else if false then Bool else Bool
    d108 = ( ( M.d26 ) $ ( if d106 then d106 else false ) ) $ ( ( ( M.d72 ) $ ( d106 ) ) $ ( false ) )
    d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x111 ) ) ) $ ( x110 ) ) ) ) $ ( if true then Bool else Bool )
    d109 = if if d108 then d108 else d106 then if d108 then true else d106 else if true then d108 else d106
    d112 : if true then if true then Bool else Bool else if false then Bool else Bool
    d112 = ( ( M.d40 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x113 -> false ) ) ) $ ( false ) ) ) $ ( if d109 then d109 else d106 )
    d114 : if false then if true then Bool else Bool else if true then Bool else Bool
    d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( M.d74 ) $ ( if x115 then x115 else d108 ) ) $ ( if false then false else x115 ) ) ) ) $ ( if d109 then true else true )
    d116 : if false then if false then Bool else Bool else if true then Bool else Bool
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if x117 then x117 else x117 ) ) ) $ ( if false then false else true )
    d118 : if false then if false then Bool else Bool else if false then Bool else Bool
    d118 = if if d114 then true else d109 then if d109 then false else false else if true then d108 else d108
    d119 : if false then if false then Bool else Bool else if false then Bool else Bool
    d119 = if if d112 then d112 else false then if true then false else true else if d108 then true else false
    d120 : if false then if false then Bool else Bool else if false then Bool else Bool
    d120 = if if d119 then d119 else d119 then if true then true else false else if d119 then false else true
    d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> x122 ) ) ) $ ( d109 ) ) ) ) $ ( if d120 then true else d116 )
    d126 : if false then if true then Bool else Bool else if false then Bool else Bool
    d126 = if if true then true else true then if d109 then true else d106 else if d119 then false else false
    d127 : if false then if true then Bool else Bool else if false then Bool else Bool
    d127 = ( ( M.d8 ) $ ( ( ( M.d56 ) $ ( true ) ) $ ( false ) ) ) $ ( if d109 then d118 else d121 )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> x129 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d128 = if if false then true else d109 then if true then true else d126 else if false then d126 else d109
    d131 : if true then if false then Bool else Bool else if true then Bool else Bool
    d131 = ( ( M.d95 ) $ ( if d106 then true else true ) ) $ ( if true then d106 else d126 )
    d132 : if false then if false then Bool else Bool else if true then Bool else Bool
    d132 = ( ( M.d99 ) $ ( if d109 then d108 else d108 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x133 -> x133 ) ) ) $ ( true ) )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d134 = ( ( M.d6 ) $ ( ( ( M.d12 ) $ ( d120 ) ) $ ( true ) ) ) $ ( ( ( M.d55 ) $ ( true ) ) $ ( d119 ) )
    d137 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d137 = if if d112 then d109 else d109 then if true then d120 else d118 else if false then true else false
    d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d140 = if if false then true else true then if d119 then d120 else d132 else if true then d131 else false
    d142 : if false then if false then Bool else Bool else if true then Bool else Bool
    d142 = ( ( M.d12 ) $ ( if d127 then false else true ) ) $ ( ( ( M.d56 ) $ ( true ) ) $ ( d109 ) )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if true then Bool else x145 ) ) ) $ ( if false then Bool else Bool )
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> if x144 then x144 else d132 ) ) ) $ ( if d116 then true else d120 )
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if false then Bool else x147 ) ) ) $ ( if true then Bool else Bool )
    d146 = if if d112 then false else false then if d116 then true else false else if d132 then true else false
    d148 : if false then if false then Bool else Bool else if true then Bool else Bool
    d148 = ( ( M.d69 ) $ ( if true then true else false ) ) $ ( if d128 then false else false )
    d149 : if false then if false then Bool else Bool else if false then Bool else Bool
    d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if x150 then x150 else d118 ) ) ) $ ( if false then d132 else d131 )
    d151 : if true then if true then Bool else Bool else if true then Bool else Bool
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> if x152 then d131 else false ) ) ) $ ( if false then true else d131 )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> Bool ) ) ) $ ( x154 ) ) ) ) $ ( if false then Bool else Bool )
    d153 = if if false then false else false then if d118 then d140 else true else if false then true else d118
    d156 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> x158 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( M.d87 ) $ ( if x157 then d121 else d137 ) ) $ ( if x157 then d106 else d134 ) ) ) ) $ ( if true then d151 else false )
    d160 : if true then if false then Bool else Bool else if true then Bool else Bool
    d160 = if if true then true else true then if false then true else d156 else if false then true else d127
    d161 : if true then if true then Bool else Bool else if false then Bool else Bool
    d161 = ( ( M.d102 ) $ ( if true then false else true ) ) $ ( if true then true else d118 )
    d162 : if true then if true then Bool else Bool else if true then Bool else Bool
    d162 = ( ( M.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x163 -> x163 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x164 -> true ) ) ) $ ( d161 ) )
    d165 : if true then if false then Bool else Bool else if true then Bool else Bool
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> ( ( Bool -> Bool ) ∋ ( ( λ x167 -> d116 ) ) ) $ ( d127 ) ) ) ) $ ( if false then d149 else false )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d168 = if if d108 then d118 else false then if true then false else false else if false then d121 else d121
    d171 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> x173 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( M.d37 ) $ ( if d112 then x172 else x172 ) ) $ ( if false then d114 else x172 ) ) ) ) $ ( if false then true else d168 )
    d175 : ( ( Set -> Set ) ∋ ( ( λ x177 -> if true then Bool else x177 ) ) ) $ ( if true then Bool else Bool )
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> if d134 then false else x176 ) ) ) $ ( if true then d109 else d143 )
    d178 : if true then if true then Bool else Bool else if true then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> ( ( M.d26 ) $ ( if x179 then false else d148 ) ) $ ( if x179 then x179 else d121 ) ) ) ) $ ( if d120 then false else d112 )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d180 = ( ( M.d42 ) $ ( ( ( M.d66 ) $ ( d116 ) ) $ ( d156 ) ) ) $ ( ( ( M.d96 ) $ ( d146 ) ) $ ( true ) )
    d182 : if false then if true then Bool else Bool else if true then Bool else Bool
    d182 = if if d180 then d153 else false then if true then true else d156 else if d116 then false else true
    d183 : if true then if false then Bool else Bool else if true then Bool else Bool
    d183 = ( ( M.d20 ) $ ( if true then d112 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x184 -> false ) ) ) $ ( true ) )
    d185 : if false then if false then Bool else Bool else if false then Bool else Bool
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( M.d77 ) $ ( if x186 then x186 else d171 ) ) $ ( if false then false else x186 ) ) ) ) $ ( if d132 then d134 else d162 )
    d187 : if false then if false then Bool else Bool else if false then Bool else Bool
    d187 = ( ( Bool -> Bool ) ∋ ( ( λ x188 -> ( ( Bool -> Bool ) ∋ ( ( λ x189 -> d112 ) ) ) $ ( x188 ) ) ) ) $ ( if true then false else d185 )
    d190 : if false then if false then Bool else Bool else if true then Bool else Bool
    d190 = if if false then d109 else true then if true then d151 else false else if false then d131 else false