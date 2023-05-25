module Size40Test8  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( x3 ) ) ) ) $ ( x3 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x6 -> Bool ) ) ) $ ( x2 ) ) ) ) ) $ ( if false then Bool else Bool ) ) ( p7 : if false then ( ( Set -> Set ) ∋ ( ( λ x8 -> if true then x8 else x8 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then x9 else Bool ) ) ) $ ( Bool ) )  where
        d10 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if false then x11 else p1 ) ) ) $ ( if false then true else p7 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then x15 else Bool ) ) ) $ ( if true then Bool else Bool )
        d14 = if if p7 then true else false then if true then p1 else p7 else if d10 then false else p7
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> x19 ) ) ) $ ( x19 ) ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> false ) ) ) $ ( d14 ) ) ) ) $ ( if false then false else true )
        d21 : if true then if false then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p7 then d14 else false )
        d24 : if false then if true then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> p1 ) ) ) $ ( d10 ) ) ) ) $ ( if p7 then true else p7 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then Bool else x29 ) ) ) $ ( if true then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if true then d21 else d10 ) ) ) $ ( if d14 then p1 else false )
        d30 : if false then if false then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if p7 then false else p7 ) ) ) $ ( if d10 then d16 else p1 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> x33 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d32 = if if p1 then d21 else d21 then if p7 then p7 else p7 else if d16 then p7 else d30
        d35 : if true then if true then Bool else Bool else if false then Bool else Bool
        d35 = if if d27 then false else d27 then if p7 then false else d16 else if p1 then d30 else p1
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( x37 ) ) ) ) $ ( if true then Bool else Bool )
        d36 = if if d16 then true else p1 then if d14 then p7 else p7 else if p1 then true else false
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> Bool ) ) ) $ ( x42 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> p7 ) ) ) $ ( false ) ) ) ) $ ( if d14 then p1 else d10 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> x46 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d44 = if if d30 then d36 else false then if p7 then true else true else if d32 then d27 else d10
        d47 : if false then if true then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> p7 ) ) ) $ ( p1 ) ) ) ) $ ( if true then false else false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = if if d36 then true else true then if true then true else d35 else if d24 then true else d16
        d53 : if false then if false then Bool else Bool else if true then Bool else Bool
        d53 = if if p1 then d36 else p1 then if d24 then p1 else true else if d32 then d16 else d39
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d54 = if if p1 then true else p7 then if d44 then false else p1 else if true then true else d53
        d57 : if false then if false then Bool else Bool else if false then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> true ) ) ) $ ( p7 ) ) ) ) $ ( if false then d27 else false )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> x63 ) ) ) $ ( x63 ) ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> x61 ) ) ) $ ( d35 ) ) ) ) $ ( if d47 then p1 else false )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( x67 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if p7 then true else false ) ) ) $ ( if false then true else p7 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then Bool else x72 ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> true ) ) ) $ ( false ) ) ) ) $ ( if p7 then true else d14 )
        d73 : if false then if true then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if d27 then x74 else false ) ) ) $ ( if true then d30 else false )
        d75 : if false then if true then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if d54 then x76 else d39 ) ) ) $ ( if p1 then d30 else p7 )
        d77 : if false then if false then Bool else Bool else if true then Bool else Bool
        d77 = if if d57 then false else true then if d36 then d73 else true else if d14 then false else d14
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if true then x81 else x81 ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> true ) ) ) $ ( false ) ) ) ) $ ( if p7 then p7 else true )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x85 ) ) ) $ ( x84 ) ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if d32 then d78 else false ) ) ) $ ( if true then d39 else false )
        d86 : if false then if true then Bool else Bool else if false then Bool else Bool
        d86 = if if p1 then false else d24 then if d65 then p1 else false else if p1 then false else p1
        d87 : if false then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if d75 then false else false ) ) ) $ ( if d54 then p7 else d21 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x90 else x90 ) ) ) $ ( if true then Bool else Bool )
        d89 = if if d39 then d54 else false then if p1 then true else d77 else if d87 then true else false
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d91 = if if d87 then p1 else d82 then if true then d65 else d24 else if p1 then d27 else true
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> x96 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d94 = if if false then true else p7 then if true then false else p7 else if d89 then true else p1
        d97 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> x101 ) ) ) $ ( x100 ) ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> x99 ) ) ) $ ( x98 ) ) ) ) $ ( if d32 then p1 else d50 )
        d102 : if false then if false then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if x103 then x103 else p1 ) ) ) $ ( if p1 then true else false )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if true then Bool else x105 ) ) ) $ ( if true then Bool else Bool )
        d104 = if if d86 then false else false then if d16 then false else false else if p7 then false else d47
        d106 : if true then if false then Bool else Bool else if false then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> d44 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d109 : if true then if true then Bool else Bool else if false then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> p1 ) ) ) $ ( d57 ) ) ) ) $ ( if p7 then true else d60 )
        d112 : if false then if false then Bool else Bool else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if true then p1 else x113 ) ) ) $ ( if d57 then false else d106 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if false then x116 else Bool ) ) ) $ ( if false then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if d75 then d35 else true ) ) ) $ ( if p1 then d112 else false )
        d117 : if false then if true then Bool else Bool else if true then Bool else Bool
        d117 = if if p1 then p1 else false then if false then p7 else p1 else if p1 then p1 else false
        d118 : if true then if false then Bool else Bool else if true then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d10 ) ) ) $ ( d36 ) ) ) ) $ ( if p1 then p1 else d60 )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> x124 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if d32 then p7 else d75 ) ) ) $ ( if d75 then d14 else p7 )
    d125 : if true then if true then Bool else Bool else if false then Bool else Bool
    d125 = if if true then true else true then if false then true else true else if true then true else true
    d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if false then Bool else x128 ) ) ) $ ( if false then Bool else Bool )
    d126 = ( ( M.d73 ) $ ( ( ( M.d121 ) $ ( d125 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x127 -> true ) ) ) $ ( true ) )
    d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then Bool else x130 ) ) ) $ ( if true then Bool else Bool )
    d129 = if if d125 then d125 else d125 then if true then d125 else d125 else if d125 then false else d125
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if false then Bool else x132 ) ) ) $ ( if false then Bool else Bool )
    d131 = if if true then true else d126 then if false then d126 else d126 else if true then d126 else false
    d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> if true then Bool else x134 ) ) ) $ ( if false then Bool else Bool )
    d133 = if if true then true else true then if d129 then false else d129 else if true then d131 else d131
    d135 : if true then if true then Bool else Bool else if false then Bool else Bool
    d135 = if if d129 then true else true then if false then d131 else d131 else if d126 then d131 else false
    d136 : if false then if true then Bool else Bool else if true then Bool else Bool
    d136 = ( ( M.d57 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x137 -> d131 ) ) ) $ ( true ) ) ) $ ( if true then d125 else d131 )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x139 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d138 = if if d136 then true else false then if true then d136 else d131 else if true then true else false
    d141 : if false then if true then Bool else Bool else if false then Bool else Bool
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> ( ( M.d21 ) $ ( if x142 then d129 else d131 ) ) $ ( if false then x142 else d126 ) ) ) ) $ ( if true then d129 else d131 )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> ( ( Set -> Set ) ∋ ( ( λ x145 -> x144 ) ) ) $ ( x144 ) ) ) ) $ ( if false then Bool else Bool )
    d143 = if if d135 then d133 else d135 then if d133 then d129 else d126 else if true then false else d125
    d146 : if false then if true then Bool else Bool else if false then Bool else Bool
    d146 = ( ( M.d69 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x147 -> x147 ) ) ) $ ( d136 ) ) ) $ ( ( ( M.d16 ) $ ( d143 ) ) $ ( d131 ) )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> Bool ) ) ) $ ( x151 ) ) ) ) $ ( if false then Bool else Bool )
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> true ) ) ) $ ( true ) ) ) ) $ ( if d131 then false else false )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> Bool ) ) ) $ ( x154 ) ) ) ) $ ( if true then Bool else Bool )
    d153 = if if d138 then d133 else false then if d135 then d148 else d131 else if d146 then d146 else true
    d156 : ( ( Set -> Set ) ∋ ( ( λ x158 -> if false then x158 else Bool ) ) ) $ ( if false then Bool else Bool )
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( M.d53 ) $ ( if x157 then d129 else d153 ) ) $ ( if false then true else x157 ) ) ) ) $ ( if d138 then false else d136 )
    d159 : if false then if true then Bool else Bool else if true then Bool else Bool
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( M.d87 ) $ ( if true then x160 else x160 ) ) $ ( if d129 then d135 else true ) ) ) ) $ ( if d125 then d138 else d125 )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x163 -> ( ( Set -> Set ) ∋ ( ( λ x164 -> x163 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( M.d87 ) $ ( if false then x162 else d143 ) ) $ ( if x162 then x162 else false ) ) ) ) $ ( if false then d138 else false )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> ( ( M.d14 ) $ ( if x166 then false else d146 ) ) $ ( if x166 then false else true ) ) ) ) $ ( if true then false else false )
    d169 : if false then if false then Bool else Bool else if true then Bool else Bool
    d169 = if if d165 then false else false then if false then d129 else d135 else if true then true else d125
    d170 : ( ( Set -> Set ) ∋ ( ( λ x171 -> ( ( Set -> Set ) ∋ ( ( λ x172 -> Bool ) ) ) $ ( x171 ) ) ) ) $ ( if false then Bool else Bool )
    d170 = if if d138 then true else d148 then if true then d138 else true else if false then d138 else d141
    d173 : ( ( Set -> Set ) ∋ ( ( λ x175 -> ( ( Set -> Set ) ∋ ( ( λ x176 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d173 = ( ( Bool -> Bool ) ∋ ( ( λ x174 -> ( ( M.d53 ) $ ( if true then x174 else true ) ) $ ( if false then x174 else x174 ) ) ) ) $ ( if false then true else d125 )
    d177 : if true then if false then Bool else Bool else if true then Bool else Bool
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> ( ( Bool -> Bool ) ∋ ( ( λ x179 -> d141 ) ) ) $ ( d133 ) ) ) ) $ ( if d170 then d133 else d138 )
    d180 : if true then if true then Bool else Bool else if false then Bool else Bool
    d180 = if if true then d148 else false then if d136 then true else true else if true then d177 else true
    d181 : if true then if false then Bool else Bool else if false then Bool else Bool
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> ( ( M.d44 ) $ ( if x182 then d138 else d129 ) ) $ ( if d129 then d136 else x182 ) ) ) ) $ ( if true then d148 else true )
    d183 : if false then if false then Bool else Bool else if false then Bool else Bool
    d183 = ( ( Bool -> Bool ) ∋ ( ( λ x184 -> ( ( Bool -> Bool ) ∋ ( ( λ x185 -> d180 ) ) ) $ ( false ) ) ) ) $ ( if d156 then d161 else d141 )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x188 -> ( ( Set -> Set ) ∋ ( ( λ x189 -> x189 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> ( ( M.d44 ) $ ( if d156 then x187 else true ) ) $ ( if true then d129 else d183 ) ) ) ) $ ( if d135 then true else d181 )
    d190 : ( ( Set -> Set ) ∋ ( ( λ x193 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d190 = ( ( M.d39 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x191 -> d153 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x192 -> d165 ) ) ) $ ( d180 ) )
    d194 : if false then if true then Bool else Bool else if false then Bool else Bool
    d194 = if if d143 then false else true then if d170 then false else true else if true then d133 else false
    d195 : ( ( Set -> Set ) ∋ ( ( λ x197 -> if true then x197 else x197 ) ) ) $ ( if true then Bool else Bool )
    d195 = ( ( Bool -> Bool ) ∋ ( ( λ x196 -> ( ( M.d60 ) $ ( if d126 then d159 else d131 ) ) $ ( if x196 then x196 else false ) ) ) ) $ ( if true then d129 else false )
    d198 : if true then if true then Bool else Bool else if true then Bool else Bool
    d198 = if if d129 then d135 else true then if true then false else true else if d173 then d181 else d156
    d199 : if true then if false then Bool else Bool else if false then Bool else Bool
    d199 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x201 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then false else d125 )
    d202 : ( ( Set -> Set ) ∋ ( ( λ x204 -> ( ( Set -> Set ) ∋ ( ( λ x205 -> x205 ) ) ) $ ( x204 ) ) ) ) $ ( if false then Bool else Bool )
    d202 = ( ( Bool -> Bool ) ∋ ( ( λ x203 -> ( ( M.d53 ) $ ( if x203 then false else d126 ) ) $ ( if d169 then x203 else true ) ) ) ) $ ( if d190 then d135 else false )
    d206 : if false then if false then Bool else Bool else if false then Bool else Bool
    d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> if true then d180 else x207 ) ) ) $ ( if false then d199 else d195 )
    d208 : ( ( Set -> Set ) ∋ ( ( λ x211 -> ( ( Set -> Set ) ∋ ( ( λ x212 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d208 = ( ( Bool -> Bool ) ∋ ( ( λ x209 -> ( ( Bool -> Bool ) ∋ ( ( λ x210 -> d125 ) ) ) $ ( true ) ) ) ) $ ( if d146 then false else false )
    d213 : ( ( Set -> Set ) ∋ ( ( λ x214 -> ( ( Set -> Set ) ∋ ( ( λ x215 -> x215 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d213 = if if d202 then d180 else false then if false then d125 else false else if false then d129 else true
    d216 : ( ( Set -> Set ) ∋ ( ( λ x218 -> if true then x218 else x218 ) ) ) $ ( if false then Bool else Bool )
    d216 = ( ( Bool -> Bool ) ∋ ( ( λ x217 -> if false then x217 else x217 ) ) ) $ ( if true then true else false )
    d219 : if true then if false then Bool else Bool else if true then Bool else Bool
    d219 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> ( ( Bool -> Bool ) ∋ ( ( λ x221 -> x221 ) ) ) $ ( x220 ) ) ) ) $ ( if true then false else d206 )
    d222 : ( ( Set -> Set ) ∋ ( ( λ x225 -> if false then x225 else x225 ) ) ) $ ( if false then Bool else Bool )
    d222 = ( ( Bool -> Bool ) ∋ ( ( λ x223 -> ( ( Bool -> Bool ) ∋ ( ( λ x224 -> false ) ) ) $ ( d165 ) ) ) ) $ ( if false then d202 else d180 )
    d226 : if false then if true then Bool else Bool else if true then Bool else Bool
    d226 = ( ( Bool -> Bool ) ∋ ( ( λ x227 -> ( ( Bool -> Bool ) ∋ ( ( λ x228 -> x227 ) ) ) $ ( x227 ) ) ) ) $ ( if d146 then false else true )
    d229 : ( ( Set -> Set ) ∋ ( ( λ x230 -> if true then Bool else x230 ) ) ) $ ( if false then Bool else Bool )
    d229 = if if d216 then d126 else d222 then if false then d216 else d153 else if d206 then d161 else true
    d231 : ( ( Set -> Set ) ∋ ( ( λ x233 -> ( ( Set -> Set ) ∋ ( ( λ x234 -> x233 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d231 = ( ( Bool -> Bool ) ∋ ( ( λ x232 -> if true then true else true ) ) ) $ ( if true then true else d129 )