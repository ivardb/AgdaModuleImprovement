module Size20Test11  where
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

    module M ( p1 : if true then if false then Bool else Bool else if false then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then x4 else x3 ) ) ) $ ( x3 ) ) ) ) $ ( if false then Bool else Bool ) )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then Bool else x8 ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p2 then p1 else p1 )
        d9 : if true then if false then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if d5 then d5 else x10 ) ) ) $ ( if true then p2 else p2 )
        d11 : if false then if false then Bool else Bool else if true then Bool else Bool
        d11 = if if p1 then true else d5 then if p2 then false else true else if true then d5 else p1
        d12 : if true then if true then Bool else Bool else if false then Bool else Bool
        d12 = if if p1 then true else p1 then if false then false else false else if false then p1 else d9
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> d5 ) ) ) $ ( true ) ) ) ) $ ( if d5 then d9 else false )
        d18 : if true then if true then Bool else Bool else if false then Bool else Bool
        d18 = if if p1 then p2 else false then if false then p1 else d5 else if d12 then false else d13
        d19 : if false then if false then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if p2 then d12 else p1 ) ) ) $ ( if p2 then d9 else false )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x23 ) ) ) $ ( x22 ) ) ) ) $ ( if false then Bool else Bool )
        d21 = if if d11 then d11 else d12 then if p2 then true else p2 else if d19 then false else d12
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d24 = if if d13 then d18 else false then if false then d5 else p2 else if d5 then false else p2
        d27 : if false then if false then Bool else Bool else if true then Bool else Bool
        d27 = if if true then false else false then if p2 then false else false else if d9 then d21 else d18
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( x29 ) ) ) ) $ ( if false then Bool else Bool )
        d28 = if if false then true else true then if p2 then d9 else true else if d18 then p2 else p1
        d31 : if false then if true then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if false then false else p2 ) ) ) $ ( if p2 then p1 else p2 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = if if false then true else d18 then if false then p2 else d9 else if d19 then p1 else p2
        d35 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> Bool ) ) ) $ ( x38 ) ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> x37 ) ) ) $ ( p1 ) ) ) ) $ ( if p2 then p1 else true )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then Bool else x43 ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> false ) ) ) $ ( p2 ) ) ) ) $ ( if d28 then true else d28 )
        d44 : if false then if true then Bool else Bool else if false then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> d5 ) ) ) $ ( d24 ) ) ) ) $ ( if p1 then p1 else d40 )
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if false then x48 else false ) ) ) $ ( if true then p1 else d19 )
        d49 : if false then if true then Bool else Bool else if true then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> true ) ) ) $ ( d18 ) ) ) ) $ ( if true then p1 else d13 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x54 ) ) ) $ ( x53 ) ) ) ) $ ( if true then Bool else Bool )
        d52 = if if p1 then d31 else false then if false then p2 else true else if p2 then false else true
        d55 : if false then if false then Bool else Bool else if false then Bool else Bool
        d55 = if if d21 then false else d52 then if d27 then d52 else p1 else if d52 then d21 else d18
        d56 : if false then if false then Bool else Bool else if true then Bool else Bool
        d56 = if if true then true else d52 then if d33 then d52 else false else if d55 then p2 else p1
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if true then x58 else x58 ) ) ) $ ( if true then Bool else Bool )
        d57 = if if true then false else d31 then if false then true else d31 else if true then p1 else true
        d59 : if false then if true then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if p1 then p2 else p1 ) ) ) $ ( if true then d5 else false )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if false then x64 else x64 ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> false ) ) ) $ ( d13 ) ) ) ) $ ( if d13 then false else false )
        d65 : if true then if false then Bool else Bool else if false then Bool else Bool
        d65 = if if p1 then true else p1 then if false then d52 else p1 else if p2 then true else p1
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> Bool ) ) ) $ ( x68 ) ) ) ) $ ( if true then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if p1 then x67 else p2 ) ) ) $ ( if false then true else p1 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( x73 ) ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> false ) ) ) $ ( x71 ) ) ) ) $ ( if p1 then d55 else p1 )
        d75 : if true then if false then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> d18 ) ) ) $ ( true ) ) ) ) $ ( if true then true else p2 )
        d78 : if true then if true then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if p2 then p2 else false ) ) ) $ ( if p1 then false else p2 )
        d80 : if false then if false then Bool else Bool else if false then Bool else Bool
        d80 = if if true then p1 else p2 then if true then d33 else false else if false then true else d65
        d81 : if true then if true then Bool else Bool else if true then Bool else Bool
        d81 = if if true then false else false then if d44 then p2 else p2 else if true then p2 else p1
        d82 : if true then if false then Bool else Bool else if false then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if true then true else p2 ) ) ) $ ( if p2 then d21 else false )
        d84 : if true then if true then Bool else Bool else if true then Bool else Bool
        d84 = if if d11 then p2 else d27 then if d5 then true else true else if false then p2 else d19
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if p1 then p1 else d9 ) ) ) $ ( if d9 then p1 else p2 )
        d89 : if true then if true then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if false then p2 else d18 ) ) ) $ ( if p2 then d52 else p1 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> x92 ) ) ) $ ( x92 ) ) ) ) $ ( if false then Bool else Bool )
        d91 = if if p1 then d75 else p1 then if true then d55 else p1 else if d89 then p2 else true
        d94 : if false then if false then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if d18 then p2 else d21 ) ) ) $ ( if d28 then false else true )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if d75 then d70 else d57 ) ) ) $ ( if d49 then p1 else d59 )
        d100 : if true then if false then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> x101 ) ) ) $ ( d81 ) ) ) ) $ ( if d82 then d5 else true )
        d103 : if true then if true then Bool else Bool else if true then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if d82 then d56 else p1 ) ) ) $ ( if d12 then true else d65 )
    d105 : if true then if true then Bool else Bool else if true then Bool else Bool
    d105 = if if false then false else false then if true then true else true else if true then false else true
    d106 : if false then if false then Bool else Bool else if true then Bool else Bool
    d106 = if if d105 then true else false then if d105 then d105 else d105 else if true then true else d105
    d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if false then x108 else Bool ) ) ) $ ( if false then Bool else Bool )
    d107 = if if d106 then false else d105 then if d105 then false else d105 else if d105 then d105 else d106
    d109 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if true then Bool else x111 ) ) ) $ ( if false then Bool else Bool )
    d109 = ( ( M.d55 ) $ ( ( ( M.d89 ) $ ( d106 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x110 -> false ) ) ) $ ( d107 ) )
    d112 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> Bool ) ) ) $ ( x115 ) ) ) ) $ ( if false then Bool else Bool )
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d106 ) ) ) $ ( x113 ) ) ) ) $ ( if d105 then d106 else d106 )
    d117 : if true then if true then Bool else Bool else if true then Bool else Bool
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> x118 ) ) ) $ ( d106 ) ) ) ) $ ( if false then true else false )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d120 = if if true then d112 else d112 then if d109 then d106 else false else if false then d112 else false
    d123 : if false then if false then Bool else Bool else if true then Bool else Bool
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if d106 then x124 else x124 ) ) ) $ ( if d109 then false else false )
    d125 : if true then if false then Bool else Bool else if false then Bool else Bool
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( M.d5 ) $ ( if true then false else true ) ) $ ( if x126 then false else x126 ) ) ) ) $ ( if false then d107 else true )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( x129 ) ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if true then x128 else x128 ) ) ) $ ( if d120 then true else d107 )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> x132 ) ) ) $ ( x132 ) ) ) ) $ ( if false then Bool else Bool )
    d131 = ( ( M.d11 ) $ ( ( ( M.d40 ) $ ( true ) ) $ ( false ) ) ) $ ( if false then d106 else d105 )
    d134 : if true then if true then Bool else Bool else if true then Bool else Bool
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> ( ( Bool -> Bool ) ∋ ( ( λ x136 -> d123 ) ) ) $ ( d125 ) ) ) ) $ ( if true then d109 else d125 )
    d137 : if false then if false then Bool else Bool else if false then Bool else Bool
    d137 = ( ( M.d65 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x138 -> d120 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x139 -> d125 ) ) ) $ ( d107 ) )
    d140 : if false then if true then Bool else Bool else if true then Bool else Bool
    d140 = ( ( M.d66 ) $ ( if d137 then d134 else d131 ) ) $ ( if true then true else d120 )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d141 = if if d123 then d127 else d123 then if false then false else true else if false then false else d137
    d143 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if false then x145 else x145 ) ) ) $ ( if false then Bool else Bool )
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( M.d57 ) $ ( if d137 then x144 else true ) ) $ ( if d112 then d112 else x144 ) ) ) ) $ ( if d140 then d134 else false )
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if true then x147 else x147 ) ) ) $ ( if true then Bool else Bool )
    d146 = if if false then d120 else d143 then if d105 then d143 else false else if false then true else d137
    d148 : if false then if true then Bool else Bool else if true then Bool else Bool
    d148 = if if false then true else true then if d146 then true else true else if d131 then d141 else true
    d149 : if true then if true then Bool else Bool else if true then Bool else Bool
    d149 = ( ( M.d24 ) $ ( ( ( M.d12 ) $ ( d141 ) ) $ ( true ) ) ) $ ( if d137 then d105 else false )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> Bool ) ) ) $ ( x153 ) ) ) ) $ ( if false then Bool else Bool )
    d150 = ( ( M.d5 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x151 -> x151 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x152 -> false ) ) ) $ ( d127 ) )
    d155 : if false then if true then Bool else Bool else if false then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> if x156 then false else d149 ) ) ) $ ( if d140 then false else true )
    d157 : if false then if true then Bool else Bool else if true then Bool else Bool
    d157 = ( ( M.d18 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x158 -> x158 ) ) ) $ ( d148 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x159 -> d123 ) ) ) $ ( false ) )
    d160 : if false then if true then Bool else Bool else if true then Bool else Bool
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( Bool -> Bool ) ∋ ( ( λ x162 -> d112 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if false then x166 else x166 ) ) ) $ ( if true then Bool else Bool )
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> ( ( Bool -> Bool ) ∋ ( ( λ x165 -> d143 ) ) ) $ ( false ) ) ) ) $ ( if d123 then d137 else true )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> if true then x168 else Bool ) ) ) $ ( if true then Bool else Bool )
    d167 = if if d131 then d148 else false then if d120 then d125 else false else if d137 then false else d123
    d169 : if false then if true then Bool else Bool else if false then Bool else Bool
    d169 = ( ( M.d9 ) $ ( ( ( M.d100 ) $ ( true ) ) $ ( d160 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x170 -> false ) ) ) $ ( d120 ) )
    d171 : if true then if true then Bool else Bool else if true then Bool else Bool
    d171 = ( ( M.d89 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x172 -> x172 ) ) ) $ ( true ) ) ) $ ( if false then d125 else true )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> if true then Bool else x174 ) ) ) $ ( if false then Bool else Bool )
    d173 = ( ( M.d52 ) $ ( ( ( M.d85 ) $ ( d171 ) ) $ ( false ) ) ) $ ( ( ( M.d47 ) $ ( false ) ) $ ( true ) )
    d175 : if true then if true then Bool else Bool else if false then Bool else Bool
    d175 = ( ( M.d82 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> d148 ) ) ) $ ( true ) ) ) $ ( if true then d150 else d107 )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x179 -> if true then x179 else x179 ) ) ) $ ( if false then Bool else Bool )
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> if true then d140 else d120 ) ) ) $ ( if d134 then false else true )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x182 -> ( ( Set -> Set ) ∋ ( ( λ x183 -> Bool ) ) ) $ ( x182 ) ) ) ) $ ( if false then Bool else Bool )
    d180 = ( ( M.d65 ) $ ( if d177 then d175 else d167 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x181 -> d127 ) ) ) $ ( d160 ) )
    d184 : ( ( Set -> Set ) ∋ ( ( λ x185 -> if false then Bool else x185 ) ) ) $ ( if true then Bool else Bool )
    d184 = if if true then true else false then if d180 then d141 else true else if d117 then true else d107
    d186 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if true then Bool else x187 ) ) ) $ ( if false then Bool else Bool )
    d186 = if if false then false else false then if false then d167 else d109 else if true then d109 else true
    d188 : if false then if true then Bool else Bool else if true then Bool else Bool
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d155 ) ) ) $ ( d125 ) ) ) ) $ ( if d171 then true else d173 )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x192 -> if false then x192 else Bool ) ) ) $ ( if true then Bool else Bool )
    d191 = if if false then false else d163 then if true then d109 else d134 else if d160 then d149 else false
    d193 : ( ( Set -> Set ) ∋ ( ( λ x195 -> if true then x195 else x195 ) ) ) $ ( if false then Bool else Bool )
    d193 = ( ( M.d13 ) $ ( ( ( M.d94 ) $ ( d173 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x194 -> d177 ) ) ) $ ( true ) )
    d196 : ( ( Set -> Set ) ∋ ( ( λ x198 -> ( ( Set -> Set ) ∋ ( ( λ x199 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d196 = ( ( Bool -> Bool ) ∋ ( ( λ x197 -> ( ( M.d91 ) $ ( if d184 then false else false ) ) $ ( if x197 then true else x197 ) ) ) ) $ ( if true then d146 else false )
    d200 : if true then if true then Bool else Bool else if false then Bool else Bool
    d200 = ( ( M.d66 ) $ ( if true then false else true ) ) $ ( ( ( M.d85 ) $ ( d160 ) ) $ ( d191 ) )
    d201 : if true then if false then Bool else Bool else if true then Bool else Bool
    d201 = ( ( M.d47 ) $ ( if true then false else false ) ) $ ( ( ( M.d89 ) $ ( false ) ) $ ( true ) )
    d202 : if true then if false then Bool else Bool else if false then Bool else Bool
    d202 = ( ( Bool -> Bool ) ∋ ( ( λ x203 -> if x203 then d180 else x203 ) ) ) $ ( if d146 then d149 else d131 )