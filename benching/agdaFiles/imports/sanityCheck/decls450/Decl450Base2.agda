module Decl450Base2  where
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

    module M  where
        d1 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then Bool else x3 ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if x2 then true else false ) ) ) $ ( if true then false else false )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then x5 else x5 ) ) ) $ ( if true then Bool else Bool )
        d4 = if if false then d1 else true then if true then d1 else false else if d1 then d1 else d1
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> Bool ) ) ) $ ( x9 ) ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> true ) ) ) $ ( x7 ) ) ) ) $ ( if true then d1 else true )
        d11 : if true then if false then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> x13 ) ) ) $ ( false ) ) ) ) $ ( if d4 then true else false )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x15 ) ) ) $ ( x15 ) ) ) ) $ ( if true then Bool else Bool )
        d14 = if if d6 then true else true then if true then false else d4 else if false then true else d6
        d17 : if true then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> d1 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d20 : if false then if false then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( x21 ) ) ) ) $ ( if d11 then true else true )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( x24 ) ) ) ) $ ( if false then Bool else Bool )
        d23 = if if d17 then d1 else true then if true then d1 else d14 else if false then d6 else false
        d26 : if true then if true then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if x27 then d14 else d14 ) ) ) $ ( if false then true else d1 )
        d28 : if true then if true then Bool else Bool else if true then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> d20 ) ) ) $ ( d6 ) ) ) ) $ ( if true then d1 else false )
        d31 : if true then if true then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if true then false else x32 ) ) ) $ ( if false then d14 else true )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d33 = if if true then d6 else true then if d26 then d17 else false else if d1 then false else d31
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x38 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d33 then d11 else x36 ) ) ) $ ( if false then d1 else true )
        d39 : if true then if true then Bool else Bool else if false then Bool else Bool
        d39 = if if d1 then true else d1 then if d28 then d35 else true else if false then d31 else false
        d40 : if true then if true then Bool else Bool else if true then Bool else Bool
        d40 = if if false then true else true then if true then d33 else false else if false then d26 else true
        d41 : if false then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> x42 ) ) ) $ ( x42 ) ) ) ) $ ( if d23 then true else true )
        d44 : if true then if false then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> false ) ) ) $ ( false ) ) ) ) $ ( if d28 then true else true )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> Bool ) ) ) $ ( x50 ) ) ) ) $ ( if false then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> x49 ) ) ) $ ( d44 ) ) ) ) $ ( if d35 then d17 else d35 )
        d52 : if false then if true then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( d40 ) ) ) ) $ ( if true then d41 else false )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if false then x56 else Bool ) ) ) $ ( if false then Bool else Bool )
        d55 = if if d20 then d41 else d33 then if d28 then d11 else d17 else if false then false else d40
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> Bool ) ) ) $ ( x58 ) ) ) ) $ ( if true then Bool else Bool )
        d57 = if if d44 then d14 else d26 then if true then true else d28 else if true then true else false
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d60 = if if false then true else d35 then if d1 then true else false else if d40 then d52 else true
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d62 = if if d4 then d26 else true then if d47 then d60 else true else if false then false else d41
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d65 = if if true then d20 else d62 then if true then d41 else true else if d11 then true else d11
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( x69 ) ) ) ) $ ( if true then Bool else Bool )
        d68 = if if d14 then false else false then if false then d55 else true else if true then d23 else d26
        d71 : if true then if true then Bool else Bool else if true then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if true then x72 else x72 ) ) ) $ ( if false then d39 else false )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if false then Bool else x75 ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if d71 then d60 else d60 ) ) ) $ ( if d57 then true else d17 )
        d76 : if false then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if false then d40 else true then if true then d60 else d55 else if d60 then d31 else true
        d77 : if true then if true then Bool else Bool else if true then Bool else Bool
        d77 = if if false then d17 else d40 then if true then d31 else d33 else if false then true else false
        d78 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if d73 then d31 else d44 ) ) ) $ ( if d1 then true else true )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if true then x83 else x83 ) ) ) $ ( if false then Bool else Bool )
        d82 = if if d26 then false else d35 then if true then true else true else if true then false else d4
        d84 : if false then if true then Bool else Bool else if true then Bool else Bool
        d84 = if if true then d17 else d31 then if d28 then false else d17 else if d76 then true else false
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> x86 ) ) ) $ ( x86 ) ) ) ) $ ( if true then Bool else Bool )
        d85 = if if d77 then true else d73 then if d71 then d35 else true else if false then d68 else false
        d88 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then Bool else x90 ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if false then true else x89 ) ) ) $ ( if d85 then d57 else d28 )
        d91 : if false then if true then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if d44 then d52 else d60 ) ) ) $ ( if true then true else d11 )
        d93 : if true then if true then Bool else Bool else if true then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then false else d17 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if true then x99 else x99 ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> true ) ) ) $ ( x97 ) ) ) ) $ ( if d68 then d33 else d17 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if true then x102 else x102 ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if x101 then true else d91 ) ) ) $ ( if true then d23 else d41 )
        d103 : if false then if true then Bool else Bool else if true then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> x104 ) ) ) $ ( x104 ) ) ) ) $ ( if d20 then false else d44 )
        d106 : if false then if false then Bool else Bool else if false then Bool else Bool
        d106 = if if d6 then true else d65 then if d73 then d62 else false else if true then true else true
        d107 : if false then if true then Bool else Bool else if true then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if true then d78 else d26 ) ) ) $ ( if false then d23 else true )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x110 then x110 else true ) ) ) $ ( if true then true else d52 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> d35 ) ) ) $ ( x114 ) ) ) ) $ ( if true then d17 else true )
        d117 : if true then if false then Bool else Bool else if false then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> x122 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if x121 then d65 else d84 ) ) ) $ ( if true then true else d107 )
        d124 : if false then if false then Bool else Bool else if false then Bool else Bool
        d124 = if if true then true else d6 then if false then d109 else d71 else if false then d93 else false
        d125 : if true then if false then Bool else Bool else if true then Bool else Bool
        d125 = if if true then false else d60 then if false then d113 else d103 else if true then true else d77
        d126 : if false then if false then Bool else Bool else if false then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if d17 then x127 else x127 ) ) ) $ ( if true then false else true )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( x129 ) ) ) ) $ ( if false then Bool else Bool )
        d128 = if if d96 then false else false then if d28 then true else d52 else if true then d77 else d124
        d131 : if false then if true then Bool else Bool else if false then Bool else Bool
        d131 = if if true then false else false then if d33 then d71 else d107 else if false then d113 else d62
        d132 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> Bool ) ) ) $ ( x135 ) ) ) ) $ ( if false then Bool else Bool )
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> ( ( Bool -> Bool ) ∋ ( ( λ x134 -> false ) ) ) $ ( true ) ) ) ) $ ( if d62 then d39 else false )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x138 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d137 = if if true then false else d14 then if d93 then d26 else true else if d77 then false else false
        d139 : if true then if true then Bool else Bool else if false then Bool else Bool
        d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x141 -> x140 ) ) ) $ ( false ) ) ) ) $ ( if d126 then d88 else false )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if true then x143 else x143 ) ) ) $ ( if true then Bool else Bool )
        d142 = if if true then true else d132 then if d126 then true else false else if false then d91 else false
        d144 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if true then Bool else x146 ) ) ) $ ( if true then Bool else Bool )
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x145 -> if false then false else false ) ) ) $ ( if d93 then true else d23 )
        d147 : ( ( Set -> Set ) ∋ ( ( λ x148 -> ( ( Set -> Set ) ∋ ( ( λ x149 -> Bool ) ) ) $ ( x148 ) ) ) ) $ ( if true then Bool else Bool )
        d147 = if if true then false else d128 then if d52 then false else true else if true then d52 else d41
        d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> x152 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d150 = if if d17 then true else false then if false then true else d4 else if true then false else d139
        d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> x154 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d153 = if if d68 then true else d47 then if false then false else d77 else if true then false else d31
        d156 : if false then if false then Bool else Bool else if true then Bool else Bool
        d156 = if if d153 then d120 else d88 then if true then d52 else d17 else if true then true else d40
        d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> if true then Bool else x158 ) ) ) $ ( if true then Bool else Bool )
        d157 = if if false then d6 else d55 then if true then d71 else d62 else if d93 then true else d131
        d159 : if false then if true then Bool else Bool else if true then Bool else Bool
        d159 = if if d40 then d107 else d82 then if d20 then false else d120 else if d40 then false else d125
        d160 : if true then if true then Bool else Bool else if false then Bool else Bool
        d160 = if if d88 then d156 else d109 then if d91 then d28 else false else if d35 then d131 else d93
        d161 : if false then if false then Bool else Bool else if false then Bool else Bool
        d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( Bool -> Bool ) ∋ ( ( λ x163 -> d77 ) ) ) $ ( false ) ) ) ) $ ( if false then d57 else true )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x166 -> ( ( Set -> Set ) ∋ ( ( λ x167 -> x166 ) ) ) $ ( x166 ) ) ) ) $ ( if false then Bool else Bool )
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> if x165 then x165 else false ) ) ) $ ( if false then d153 else d139 )
        d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d168 = if if d6 then d39 else d35 then if d82 then true else d96 else if d103 then d100 else true
        d170 : if true then if false then Bool else Bool else if true then Bool else Bool
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> x172 ) ) ) $ ( x171 ) ) ) ) $ ( if false then d88 else d144 )
        d173 : if false then if true then Bool else Bool else if false then Bool else Bool
        d173 = ( ( Bool -> Bool ) ∋ ( ( λ x174 -> ( ( Bool -> Bool ) ∋ ( ( λ x175 -> d157 ) ) ) $ ( x174 ) ) ) ) $ ( if false then d82 else false )
        d176 : if false then if false then Bool else Bool else if true then Bool else Bool
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> if x177 then false else x177 ) ) ) $ ( if false then d93 else false )
        d178 : if false then if true then Bool else Bool else if true then Bool else Bool
        d178 = if if false then d39 else d11 then if false then d52 else false else if true then false else d147
        d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> Bool ) ) ) $ ( x180 ) ) ) ) $ ( if true then Bool else Bool )
        d179 = if if d76 then false else d57 then if d157 then d96 else d55 else if true then true else false
        d182 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if true then x184 else Bool ) ) ) $ ( if true then Bool else Bool )
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> if x183 then d85 else false ) ) ) $ ( if false then true else false )
        d185 : if false then if true then Bool else Bool else if true then Bool else Bool
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( Bool -> Bool ) ∋ ( ( λ x187 -> x187 ) ) ) $ ( d124 ) ) ) ) $ ( if true then false else true )
        d188 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if false then Bool else x191 ) ) ) $ ( if false then Bool else Bool )
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d71 ) ) ) $ ( d106 ) ) ) ) $ ( if d78 then d164 else d73 )
        d192 : ( ( Set -> Set ) ∋ ( ( λ x193 -> if false then x193 else Bool ) ) ) $ ( if true then Bool else Bool )
        d192 = if if false then d168 else false then if false then false else true else if true then d47 else d40
        d194 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> x196 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> if x195 then true else x195 ) ) ) $ ( if false then d44 else d124 )
        d198 : if true then if false then Bool else Bool else if false then Bool else Bool
        d198 = if if d188 then d76 else true then if d132 then true else d179 else if true then d52 else true
        d199 : if true then if false then Bool else Bool else if true then Bool else Bool
        d199 = if if true then true else d170 then if true then d139 else d170 else if true then false else d71
        d200 : if false then if true then Bool else Bool else if false then Bool else Bool
        d200 = if if true then d91 else true then if true then d62 else d39 else if d17 then d147 else d65
        d201 : if true then if true then Bool else Bool else if true then Bool else Bool
        d201 = ( ( Bool -> Bool ) ∋ ( ( λ x202 -> if true then false else x202 ) ) ) $ ( if d57 then true else false )
        d203 : if true then if false then Bool else Bool else if false then Bool else Bool
        d203 = if if d109 then d153 else false then if d200 then false else d179 else if false then d176 else true
        d204 : ( ( Set -> Set ) ∋ ( ( λ x205 -> if true then x205 else Bool ) ) ) $ ( if true then Bool else Bool )
        d204 = if if d125 then d137 else d33 then if d31 then d126 else true else if d179 then true else false
        d206 : ( ( Set -> Set ) ∋ ( ( λ x207 -> ( ( Set -> Set ) ∋ ( ( λ x208 -> Bool ) ) ) $ ( x207 ) ) ) ) $ ( if true then Bool else Bool )
        d206 = if if d1 then false else true then if d178 then false else d120 else if d128 then d78 else d71
        d209 : ( ( Set -> Set ) ∋ ( ( λ x212 -> if true then x212 else x212 ) ) ) $ ( if false then Bool else Bool )
        d209 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x211 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then d28 else true )
        d213 : if true then if true then Bool else Bool else if true then Bool else Bool
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x214 -> if d203 then x214 else x214 ) ) ) $ ( if d178 then false else d84 )
        d215 : ( ( Set -> Set ) ∋ ( ( λ x216 -> ( ( Set -> Set ) ∋ ( ( λ x217 -> x216 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d215 = if if d204 then false else false then if true then d150 else d91 else if false then d161 else false
        d218 : ( ( Set -> Set ) ∋ ( ( λ x219 -> if true then Bool else x219 ) ) ) $ ( if false then Bool else Bool )
        d218 = if if d160 then true else d117 then if false then true else false else if d109 then d33 else d78
        d220 : ( ( Set -> Set ) ∋ ( ( λ x221 -> ( ( Set -> Set ) ∋ ( ( λ x222 -> Bool ) ) ) $ ( x221 ) ) ) ) $ ( if false then Bool else Bool )
        d220 = if if true then false else d113 then if true then true else false else if d26 then d4 else d31
        d223 : if true then if false then Bool else Bool else if true then Bool else Bool
        d223 = ( ( Bool -> Bool ) ∋ ( ( λ x224 -> if true then x224 else false ) ) ) $ ( if d35 then true else d4 )
        d225 : if true then if true then Bool else Bool else if true then Bool else Bool
        d225 = ( ( Bool -> Bool ) ∋ ( ( λ x226 -> ( ( Bool -> Bool ) ∋ ( ( λ x227 -> d139 ) ) ) $ ( false ) ) ) ) $ ( if d164 then false else true )
        d228 : ( ( Set -> Set ) ∋ ( ( λ x229 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d228 = if if d100 then d201 else true then if d126 then false else true else if false then d137 else true
        d230 : ( ( Set -> Set ) ∋ ( ( λ x231 -> if true then x231 else x231 ) ) ) $ ( if true then Bool else Bool )
        d230 = if if d142 then true else d128 then if d31 then d55 else false else if d71 then false else d77
        d232 : if false then if true then Bool else Bool else if false then Bool else Bool
        d232 = if if d109 then true else true then if true then d93 else d204 else if d109 then false else d178
        d233 : if false then if true then Bool else Bool else if false then Bool else Bool
        d233 = if if false then d107 else false then if true then d147 else d209 else if true then d194 else d131
        d234 : if true then if false then Bool else Bool else if true then Bool else Bool
        d234 = if if d57 then d93 else true then if true then d156 else d85 else if d44 then d218 else d201
        d235 : ( ( Set -> Set ) ∋ ( ( λ x236 -> ( ( Set -> Set ) ∋ ( ( λ x237 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d235 = if if d218 then true else true then if d204 then false else d4 else if d199 then true else false
        d238 : ( ( Set -> Set ) ∋ ( ( λ x239 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d238 = if if d164 then false else d31 then if d41 then false else d233 else if d96 then true else true
        d240 : ( ( Set -> Set ) ∋ ( ( λ x242 -> if true then x242 else x242 ) ) ) $ ( if true then Bool else Bool )
        d240 = ( ( Bool -> Bool ) ∋ ( ( λ x241 -> if x241 then x241 else true ) ) ) $ ( if true then d124 else false )
        d243 : ( ( Set -> Set ) ∋ ( ( λ x246 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x244 -> ( ( Bool -> Bool ) ∋ ( ( λ x245 -> x244 ) ) ) $ ( true ) ) ) ) $ ( if d47 then false else false )
        d247 : ( ( Set -> Set ) ∋ ( ( λ x248 -> if true then x248 else Bool ) ) ) $ ( if false then Bool else Bool )
        d247 = if if false then d139 else d96 then if false then d139 else d44 else if d232 then true else d170
        d249 : if true then if true then Bool else Bool else if false then Bool else Bool
        d249 = if if d60 then true else false then if true then d88 else false else if d144 then false else false
        d250 : if false then if false then Bool else Bool else if false then Bool else Bool
        d250 = if if d109 then false else false then if true then true else false else if d150 then false else d213
        d251 : ( ( Set -> Set ) ∋ ( ( λ x254 -> ( ( Set -> Set ) ∋ ( ( λ x255 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x252 -> ( ( Bool -> Bool ) ∋ ( ( λ x253 -> false ) ) ) $ ( x252 ) ) ) ) $ ( if d220 then false else d240 )
        d256 : ( ( Set -> Set ) ∋ ( ( λ x257 -> ( ( Set -> Set ) ∋ ( ( λ x258 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d256 = if if d147 then d23 else true then if true then true else false else if d194 then false else true
        d259 : ( ( Set -> Set ) ∋ ( ( λ x260 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d259 = if if false then true else true then if false then true else true else if false then false else d73
        d261 : ( ( Set -> Set ) ∋ ( ( λ x262 -> ( ( Set -> Set ) ∋ ( ( λ x263 -> x262 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d261 = if if d215 then d39 else d31 then if false then d77 else d125 else if d209 then d144 else d128
        d264 : ( ( Set -> Set ) ∋ ( ( λ x267 -> ( ( Set -> Set ) ∋ ( ( λ x268 -> x267 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x265 -> ( ( Bool -> Bool ) ∋ ( ( λ x266 -> x265 ) ) ) $ ( d52 ) ) ) ) $ ( if d164 then d93 else d14 )
        d269 : if false then if true then Bool else Bool else if true then Bool else Bool
        d269 = if if true then true else d250 then if true then d243 else true else if true then d1 else true
        d270 : ( ( Set -> Set ) ∋ ( ( λ x273 -> ( ( Set -> Set ) ∋ ( ( λ x274 -> x274 ) ) ) $ ( x273 ) ) ) ) $ ( if true then Bool else Bool )
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x271 -> ( ( Bool -> Bool ) ∋ ( ( λ x272 -> d60 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d35 )
        d275 : if true then if true then Bool else Bool else if true then Bool else Bool
        d275 = ( ( Bool -> Bool ) ∋ ( ( λ x276 -> ( ( Bool -> Bool ) ∋ ( ( λ x277 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then false else d93 )
        d278 : ( ( Set -> Set ) ∋ ( ( λ x279 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d278 = if if d259 then d232 else d84 then if true then d35 else false else if d250 then false else true
        d280 : if true then if false then Bool else Bool else if true then Bool else Bool
        d280 = ( ( Bool -> Bool ) ∋ ( ( λ x281 -> ( ( Bool -> Bool ) ∋ ( ( λ x282 -> x281 ) ) ) $ ( x281 ) ) ) ) $ ( if d230 then true else true )
        d283 : ( ( Set -> Set ) ∋ ( ( λ x286 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d283 = ( ( Bool -> Bool ) ∋ ( ( λ x284 -> ( ( Bool -> Bool ) ∋ ( ( λ x285 -> true ) ) ) $ ( x284 ) ) ) ) $ ( if false then true else true )
        d287 : if false then if false then Bool else Bool else if false then Bool else Bool
        d287 = if if true then d124 else true then if d142 then d103 else d4 else if false then d109 else true
        d288 : if false then if false then Bool else Bool else if false then Bool else Bool
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x289 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> true ) ) ) $ ( d100 ) ) ) ) $ ( if d23 then d65 else true )
        d291 : ( ( Set -> Set ) ∋ ( ( λ x293 -> ( ( Set -> Set ) ∋ ( ( λ x294 -> x293 ) ) ) $ ( x293 ) ) ) ) $ ( if false then Bool else Bool )
        d291 = ( ( Bool -> Bool ) ∋ ( ( λ x292 -> if x292 then x292 else false ) ) ) $ ( if d204 then d91 else d39 )
        d295 : if true then if true then Bool else Bool else if false then Bool else Bool
        d295 = if if false then false else true then if d275 then d256 else false else if d41 then false else d60
        d296 : ( ( Set -> Set ) ∋ ( ( λ x298 -> ( ( Set -> Set ) ∋ ( ( λ x299 -> x299 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x297 -> if d126 then false else true ) ) ) $ ( if d168 then d179 else false )
        d300 : if true then if true then Bool else Bool else if true then Bool else Bool
        d300 = ( ( Bool -> Bool ) ∋ ( ( λ x301 -> if true then d144 else d124 ) ) ) $ ( if d1 then d126 else d234 )
        d302 : if false then if true then Bool else Bool else if true then Bool else Bool
        d302 = if if true then false else false then if d126 then false else d280 else if d275 then true else false
        d303 : if true then if false then Bool else Bool else if false then Bool else Bool
        d303 = if if d35 then d232 else false then if d234 then d223 else false else if true then false else d179
        d304 : ( ( Set -> Set ) ∋ ( ( λ x305 -> ( ( Set -> Set ) ∋ ( ( λ x306 -> Bool ) ) ) $ ( x305 ) ) ) ) $ ( if false then Bool else Bool )
        d304 = if if d194 then true else d39 then if d117 then d160 else false else if false then d206 else d225
        d307 : ( ( Set -> Set ) ∋ ( ( λ x308 -> ( ( Set -> Set ) ∋ ( ( λ x309 -> Bool ) ) ) $ ( x308 ) ) ) ) $ ( if false then Bool else Bool )
        d307 = if if d283 then true else true then if true then false else d120 else if false then true else d283
        d310 : if false then if false then Bool else Bool else if false then Bool else Bool
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x311 -> ( ( Bool -> Bool ) ∋ ( ( λ x312 -> true ) ) ) $ ( d93 ) ) ) ) $ ( if d85 then d144 else false )
        d313 : if false then if true then Bool else Bool else if false then Bool else Bool
        d313 = if if true then false else true then if false then true else d240 else if d287 then false else false
        d314 : ( ( Set -> Set ) ∋ ( ( λ x317 -> ( ( Set -> Set ) ∋ ( ( λ x318 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d314 = ( ( Bool -> Bool ) ∋ ( ( λ x315 -> ( ( Bool -> Bool ) ∋ ( ( λ x316 -> x316 ) ) ) $ ( x315 ) ) ) ) $ ( if false then true else d192 )
        d319 : if false then if true then Bool else Bool else if false then Bool else Bool
        d319 = if if d78 then true else false then if true then d106 else d303 else if true then d228 else false
        d320 : if true then if false then Bool else Bool else if true then Bool else Bool
        d320 = if if d287 then d170 else d4 then if d26 then d147 else d60 else if false then true else true
        d321 : ( ( Set -> Set ) ∋ ( ( λ x323 -> ( ( Set -> Set ) ∋ ( ( λ x324 -> Bool ) ) ) $ ( x323 ) ) ) ) $ ( if true then Bool else Bool )
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x322 -> if d1 then d303 else x322 ) ) ) $ ( if d225 then d131 else true )
        d325 : if false then if false then Bool else Bool else if false then Bool else Bool
        d325 = if if d194 then true else d85 then if true then true else d296 else if d106 then false else true
        d326 : ( ( Set -> Set ) ∋ ( ( λ x329 -> if false then Bool else x329 ) ) ) $ ( if true then Bool else Bool )
        d326 = ( ( Bool -> Bool ) ∋ ( ( λ x327 -> ( ( Bool -> Bool ) ∋ ( ( λ x328 -> x327 ) ) ) $ ( x327 ) ) ) ) $ ( if true then d250 else d204 )
        d330 : if true then if true then Bool else Bool else if true then Bool else Bool
        d330 = if if false then d153 else d100 then if false then false else d82 else if false then false else true
        d331 : if true then if true then Bool else Bool else if false then Bool else Bool
        d331 = ( ( Bool -> Bool ) ∋ ( ( λ x332 -> ( ( Bool -> Bool ) ∋ ( ( λ x333 -> true ) ) ) $ ( d131 ) ) ) ) $ ( if true then false else false )
        d334 : ( ( Set -> Set ) ∋ ( ( λ x337 -> ( ( Set -> Set ) ∋ ( ( λ x338 -> x337 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x335 -> ( ( Bool -> Bool ) ∋ ( ( λ x336 -> true ) ) ) $ ( d204 ) ) ) ) $ ( if false then d82 else d126 )
        d339 : if false then if true then Bool else Bool else if false then Bool else Bool
        d339 = if if d269 then d199 else false then if d26 then true else false else if false then d62 else d137
        d340 : if false then if false then Bool else Bool else if false then Bool else Bool
        d340 = ( ( Bool -> Bool ) ∋ ( ( λ x341 -> ( ( Bool -> Bool ) ∋ ( ( λ x342 -> false ) ) ) $ ( d85 ) ) ) ) $ ( if d139 then d103 else false )
        d343 : if true then if true then Bool else Bool else if true then Bool else Bool
        d343 = if if d139 then d251 else false then if false then d240 else false else if true then false else d303
        d344 : ( ( Set -> Set ) ∋ ( ( λ x347 -> if false then x347 else Bool ) ) ) $ ( if true then Bool else Bool )
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x345 -> ( ( Bool -> Bool ) ∋ ( ( λ x346 -> d319 ) ) ) $ ( d199 ) ) ) ) $ ( if d85 then d178 else d215 )
        d348 : ( ( Set -> Set ) ∋ ( ( λ x350 -> if false then x350 else x350 ) ) ) $ ( if true then Bool else Bool )
        d348 = ( ( Bool -> Bool ) ∋ ( ( λ x349 -> if x349 then d303 else x349 ) ) ) $ ( if true then d321 else true )
        d351 : if false then if false then Bool else Bool else if true then Bool else Bool
        d351 = if if d88 then true else d304 then if d238 then false else d199 else if false then d77 else d334
        d352 : if true then if false then Bool else Bool else if false then Bool else Bool
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x353 -> ( ( Bool -> Bool ) ∋ ( ( λ x354 -> d65 ) ) ) $ ( d278 ) ) ) ) $ ( if false then true else d47 )
        d355 : if true then if false then Bool else Bool else if true then Bool else Bool
        d355 = ( ( Bool -> Bool ) ∋ ( ( λ x356 -> ( ( Bool -> Bool ) ∋ ( ( λ x357 -> x357 ) ) ) $ ( d223 ) ) ) ) $ ( if d33 then d31 else true )
        d358 : ( ( Set -> Set ) ∋ ( ( λ x359 -> if true then Bool else x359 ) ) ) $ ( if false then Bool else Bool )
        d358 = if if true then d160 else false then if false then d339 else true else if d300 then d160 else true
        d360 : ( ( Set -> Set ) ∋ ( ( λ x363 -> ( ( Set -> Set ) ∋ ( ( λ x364 -> x364 ) ) ) $ ( x363 ) ) ) ) $ ( if true then Bool else Bool )
        d360 = ( ( Bool -> Bool ) ∋ ( ( λ x361 -> ( ( Bool -> Bool ) ∋ ( ( λ x362 -> true ) ) ) $ ( x361 ) ) ) ) $ ( if true then d247 else true )
        d365 : ( ( Set -> Set ) ∋ ( ( λ x366 -> if true then x366 else Bool ) ) ) $ ( if false then Bool else Bool )
        d365 = if if d280 then d288 else true then if false then true else d235 else if d256 then true else true
        d367 : ( ( Set -> Set ) ∋ ( ( λ x369 -> ( ( Set -> Set ) ∋ ( ( λ x370 -> Bool ) ) ) $ ( x369 ) ) ) ) $ ( if false then Bool else Bool )
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x368 -> if d113 then true else false ) ) ) $ ( if true then true else d326 )
        d371 : ( ( Set -> Set ) ∋ ( ( λ x373 -> ( ( Set -> Set ) ∋ ( ( λ x374 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d371 = ( ( Bool -> Bool ) ∋ ( ( λ x372 -> if d365 then true else d28 ) ) ) $ ( if d313 then d240 else d103 )
        d375 : if true then if false then Bool else Bool else if true then Bool else Bool
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x376 -> if d352 then true else x376 ) ) ) $ ( if false then true else false )
        d377 : if true then if true then Bool else Bool else if false then Bool else Bool
        d377 = ( ( Bool -> Bool ) ∋ ( ( λ x378 -> ( ( Bool -> Bool ) ∋ ( ( λ x379 -> true ) ) ) $ ( d303 ) ) ) ) $ ( if true then true else true )
        d380 : if true then if false then Bool else Bool else if false then Bool else Bool
        d380 = if if d20 then d204 else d295 then if d4 then d203 else true else if d314 then d176 else true
        d381 : if true then if true then Bool else Bool else if false then Bool else Bool
        d381 = if if true then d173 else d41 then if false then d206 else d310 else if d295 then d161 else true
        d382 : ( ( Set -> Set ) ∋ ( ( λ x383 -> ( ( Set -> Set ) ∋ ( ( λ x384 -> x384 ) ) ) $ ( x383 ) ) ) ) $ ( if false then Bool else Bool )
        d382 = if if true then d131 else d377 then if d157 then d41 else d126 else if d251 then false else false
        d385 : ( ( Set -> Set ) ∋ ( ( λ x388 -> if true then x388 else Bool ) ) ) $ ( if true then Bool else Bool )
        d385 = ( ( Bool -> Bool ) ∋ ( ( λ x386 -> ( ( Bool -> Bool ) ∋ ( ( λ x387 -> d156 ) ) ) $ ( d251 ) ) ) ) $ ( if false then d65 else false )
        d389 : if false then if true then Bool else Bool else if false then Bool else Bool
        d389 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if false then false else x390 ) ) ) $ ( if false then true else true )
        d391 : if true then if true then Bool else Bool else if true then Bool else Bool
        d391 = if if true then d161 else false then if false then d85 else d198 else if d344 then d52 else d278
        d392 : if false then if false then Bool else Bool else if false then Bool else Bool
        d392 = ( ( Bool -> Bool ) ∋ ( ( λ x393 -> if true then d39 else x393 ) ) ) $ ( if d235 then d355 else d223 )
        d394 : if true then if true then Bool else Bool else if true then Bool else Bool
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x395 -> ( ( Bool -> Bool ) ∋ ( ( λ x396 -> x395 ) ) ) $ ( d377 ) ) ) ) $ ( if true then false else false )
        d397 : ( ( Set -> Set ) ∋ ( ( λ x399 -> ( ( Set -> Set ) ∋ ( ( λ x400 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x398 -> if false then x398 else x398 ) ) ) $ ( if true then d85 else d131 )
        d401 : if false then if true then Bool else Bool else if true then Bool else Bool
        d401 = ( ( Bool -> Bool ) ∋ ( ( λ x402 -> if true then x402 else d310 ) ) ) $ ( if false then false else true )
        d403 : if true then if false then Bool else Bool else if false then Bool else Bool
        d403 = ( ( Bool -> Bool ) ∋ ( ( λ x404 -> if false then d331 else false ) ) ) $ ( if d137 then false else false )
        d405 : ( ( Set -> Set ) ∋ ( ( λ x406 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d405 = if if true then false else false then if true then d339 else false else if false then false else false
        d407 : ( ( Set -> Set ) ∋ ( ( λ x408 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d407 = if if d283 then false else d23 then if d203 then false else false else if d77 then true else d313
        d409 : ( ( Set -> Set ) ∋ ( ( λ x410 -> ( ( Set -> Set ) ∋ ( ( λ x411 -> x410 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d409 = if if false then true else true then if d325 then false else d117 else if false then d401 else d287
        d412 : if false then if true then Bool else Bool else if false then Bool else Bool
        d412 = if if true then true else d113 then if d291 then d164 else d173 else if d264 then true else d11
        d413 : if true then if false then Bool else Bool else if true then Bool else Bool
        d413 = if if d264 then false else d392 then if d103 then d291 else false else if true then false else d302
        d414 : ( ( Set -> Set ) ∋ ( ( λ x415 -> if true then Bool else x415 ) ) ) $ ( if false then Bool else Bool )
        d414 = if if d23 then d77 else false then if d117 then d304 else false else if false then d52 else false
        d416 : if true then if true then Bool else Bool else if true then Bool else Bool
        d416 = ( ( Bool -> Bool ) ∋ ( ( λ x417 -> if d225 then x417 else x417 ) ) ) $ ( if d225 then false else true )
        d418 : if false then if true then Bool else Bool else if true then Bool else Bool
        d418 = if if false then d144 else true then if false then true else d377 else if d303 then true else false
        d419 : if false then if true then Bool else Bool else if true then Bool else Bool
        d419 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if x420 then d44 else d303 ) ) ) $ ( if false then d192 else d82 )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x424 -> ( ( Set -> Set ) ∋ ( ( λ x425 -> Bool ) ) ) $ ( x424 ) ) ) ) $ ( if false then Bool else Bool )
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x422 -> ( ( Bool -> Bool ) ∋ ( ( λ x423 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then true else d139 )
        d426 : if true then if false then Bool else Bool else if true then Bool else Bool
        d426 = ( ( Bool -> Bool ) ∋ ( ( λ x427 -> if d232 then d137 else true ) ) ) $ ( if d403 then false else d259 )
        d428 : if false then if true then Bool else Bool else if true then Bool else Bool
        d428 = if if false then false else d182 then if false then true else d200 else if false then d287 else false
        d429 : ( ( Set -> Set ) ∋ ( ( λ x430 -> ( ( Set -> Set ) ∋ ( ( λ x431 -> x431 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d429 = if if false then false else true then if d173 then true else true else if false then d126 else d17
        d432 : if true then if true then Bool else Bool else if false then Bool else Bool
        d432 = if if d419 then false else d235 then if true then false else d344 else if d412 then true else d128
        d433 : ( ( Set -> Set ) ∋ ( ( λ x434 -> if false then Bool else x434 ) ) ) $ ( if false then Bool else Bool )
        d433 = if if true then true else d348 then if false then true else d358 else if true then true else d164
        d435 : ( ( Set -> Set ) ∋ ( ( λ x436 -> if false then x436 else Bool ) ) ) $ ( if false then Bool else Bool )
        d435 = if if false then false else d57 then if d14 then true else false else if d288 then false else false
        d437 : ( ( Set -> Set ) ∋ ( ( λ x438 -> ( ( Set -> Set ) ∋ ( ( λ x439 -> x438 ) ) ) $ ( x438 ) ) ) ) $ ( if true then Bool else Bool )
        d437 = if if false then true else d106 then if false then false else d17 else if d331 then d426 else true
        d440 : if false then if false then Bool else Bool else if false then Bool else Bool
        d440 = if if false then d150 else d125 then if d93 then true else d371 else if d213 then d291 else false
        d441 : if false then if true then Bool else Bool else if false then Bool else Bool
        d441 = if if true then d401 else true then if true then false else true else if true then d62 else true
        d442 : if true then if true then Bool else Bool else if true then Bool else Bool
        d442 = if if false then d416 else true then if false then d62 else d14 else if d375 then false else false
        d443 : if false then if true then Bool else Bool else if false then Bool else Bool
        d443 = ( ( Bool -> Bool ) ∋ ( ( λ x444 -> if false then x444 else x444 ) ) ) $ ( if true then false else false )
        d445 : ( ( Set -> Set ) ∋ ( ( λ x448 -> ( ( Set -> Set ) ∋ ( ( λ x449 -> x449 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d445 = ( ( Bool -> Bool ) ∋ ( ( λ x446 -> ( ( Bool -> Bool ) ∋ ( ( λ x447 -> d199 ) ) ) $ ( d31 ) ) ) ) $ ( if d125 then d35 else false )
        d450 : if true then if true then Bool else Bool else if false then Bool else Bool
        d450 = ( ( Bool -> Bool ) ∋ ( ( λ x451 -> if d60 then d178 else true ) ) ) $ ( if d397 then true else d232 )
        d452 : if false then if true then Bool else Bool else if false then Bool else Bool
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x453 -> if d235 then true else x453 ) ) ) $ ( if true then d355 else d375 )
        d454 : if true then if false then Bool else Bool else if false then Bool else Bool
        d454 = if if d96 then d331 else d4 then if true then false else d413 else if true then false else d78
        d455 : ( ( Set -> Set ) ∋ ( ( λ x456 -> ( ( Set -> Set ) ∋ ( ( λ x457 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d455 = if if d40 then d232 else true then if false then d418 else true else if true then false else d310
        d458 : ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x461 -> x460 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x459 -> if d380 then true else x459 ) ) ) $ ( if d57 then d391 else d28 )
        d462 : ( ( Set -> Set ) ∋ ( ( λ x463 -> if true then Bool else x463 ) ) ) $ ( if true then Bool else Bool )
        d462 = if if false then d39 else false then if d157 then false else true else if false then false else d150
        d464 : if false then if true then Bool else Bool else if false then Bool else Bool
        d464 = ( ( Bool -> Bool ) ∋ ( ( λ x465 -> ( ( Bool -> Bool ) ∋ ( ( λ x466 -> d302 ) ) ) $ ( x465 ) ) ) ) $ ( if false then d371 else true )
        d467 : if true then if true then Bool else Bool else if false then Bool else Bool
        d467 = ( ( Bool -> Bool ) ∋ ( ( λ x468 -> ( ( Bool -> Bool ) ∋ ( ( λ x469 -> true ) ) ) $ ( false ) ) ) ) $ ( if d401 then true else true )
        d470 : ( ( Set -> Set ) ∋ ( ( λ x472 -> ( ( Set -> Set ) ∋ ( ( λ x473 -> x472 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x471 -> if false then x471 else x471 ) ) ) $ ( if true then d139 else true )
        d474 : ( ( Set -> Set ) ∋ ( ( λ x475 -> if true then x475 else Bool ) ) ) $ ( if false then Bool else Bool )
        d474 = if if d352 then d280 else true then if d464 then true else true else if true then false else d160
        d476 : if true then if false then Bool else Bool else if true then Bool else Bool
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x477 -> if true then x477 else x477 ) ) ) $ ( if true then false else false )
        d478 : if true then if false then Bool else Bool else if true then Bool else Bool
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x479 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> x479 ) ) ) $ ( d339 ) ) ) ) $ ( if false then d428 else true )
        d481 : ( ( Set -> Set ) ∋ ( ( λ x484 -> ( ( Set -> Set ) ∋ ( ( λ x485 -> x484 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x482 -> ( ( Bool -> Bool ) ∋ ( ( λ x483 -> true ) ) ) $ ( d380 ) ) ) ) $ ( if false then d392 else false )
        d486 : ( ( Set -> Set ) ∋ ( ( λ x488 -> ( ( Set -> Set ) ∋ ( ( λ x489 -> x489 ) ) ) $ ( x488 ) ) ) ) $ ( if false then Bool else Bool )
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x487 -> if true then true else true ) ) ) $ ( if d302 then true else d476 )
        d490 : if false then if false then Bool else Bool else if false then Bool else Bool
        d490 = if if false then false else true then if d182 then d307 else true else if d413 then d157 else true
        d491 : ( ( Set -> Set ) ∋ ( ( λ x492 -> ( ( Set -> Set ) ∋ ( ( λ x493 -> x493 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d491 = if if d213 then true else true then if true then true else d125 else if false then true else d458
        d494 : ( ( Set -> Set ) ∋ ( ( λ x495 -> ( ( Set -> Set ) ∋ ( ( λ x496 -> x496 ) ) ) $ ( x495 ) ) ) ) $ ( if false then Bool else Bool )
        d494 = if if d233 then false else false then if d132 then false else d352 else if true then d213 else d223
        d497 : ( ( Set -> Set ) ∋ ( ( λ x500 -> ( ( Set -> Set ) ∋ ( ( λ x501 -> x501 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x498 -> ( ( Bool -> Bool ) ∋ ( ( λ x499 -> true ) ) ) $ ( d371 ) ) ) ) $ ( if false then true else true )
        d502 : ( ( Set -> Set ) ∋ ( ( λ x505 -> if false then Bool else x505 ) ) ) $ ( if true then Bool else Bool )
        d502 = ( ( Bool -> Bool ) ∋ ( ( λ x503 -> ( ( Bool -> Bool ) ∋ ( ( λ x504 -> true ) ) ) $ ( x503 ) ) ) ) $ ( if true then true else false )
        d506 : ( ( Set -> Set ) ∋ ( ( λ x508 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d506 = ( ( Bool -> Bool ) ∋ ( ( λ x507 -> if d261 then true else x507 ) ) ) $ ( if false then d455 else false )
        d509 : ( ( Set -> Set ) ∋ ( ( λ x510 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d509 = if if false then d153 else d296 then if true then d4 else d11 else if false then d445 else d23
        d511 : if false then if true then Bool else Bool else if false then Bool else Bool
        d511 = if if true then true else false then if true then d401 else d506 else if d343 then false else false
        d512 : ( ( Set -> Set ) ∋ ( ( λ x513 -> if false then x513 else x513 ) ) ) $ ( if false then Bool else Bool )
        d512 = if if true then false else d44 then if true then d486 else d100 else if d437 then d100 else true
        d514 : if true then if true then Bool else Bool else if false then Bool else Bool
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x515 -> if d39 then x515 else d450 ) ) ) $ ( if true then d230 else true )
        d516 : ( ( Set -> Set ) ∋ ( ( λ x517 -> ( ( Set -> Set ) ∋ ( ( λ x518 -> Bool ) ) ) $ ( x517 ) ) ) ) $ ( if true then Bool else Bool )
        d516 = if if d264 then true else true then if d6 then d358 else true else if true then d403 else d144
        d519 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x521 -> Bool ) ) ) $ ( x520 ) ) ) ) $ ( if false then Bool else Bool )
        d519 = if if true then d407 else d176 then if d139 then false else true else if d213 then false else false
        d522 : ( ( Set -> Set ) ∋ ( ( λ x523 -> ( ( Set -> Set ) ∋ ( ( λ x524 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d522 = if if true then false else d278 then if d413 then d348 else false else if d93 then d178 else false
        d525 : ( ( Set -> Set ) ∋ ( ( λ x526 -> ( ( Set -> Set ) ∋ ( ( λ x527 -> x527 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d525 = if if d47 then true else d77 then if d321 then false else d278 else if false then d100 else d23
        d528 : if false then if false then Bool else Bool else if true then Bool else Bool
        d528 = if if true then false else false then if d511 then false else d150 else if d192 then true else true
        d529 : ( ( Set -> Set ) ∋ ( ( λ x530 -> ( ( Set -> Set ) ∋ ( ( λ x531 -> x531 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d529 = if if d100 then false else true then if false then d275 else false else if d6 then false else true
        d532 : ( ( Set -> Set ) ∋ ( ( λ x535 -> ( ( Set -> Set ) ∋ ( ( λ x536 -> x535 ) ) ) $ ( x535 ) ) ) ) $ ( if true then Bool else Bool )
        d532 = ( ( Bool -> Bool ) ∋ ( ( λ x533 -> ( ( Bool -> Bool ) ∋ ( ( λ x534 -> d113 ) ) ) $ ( x533 ) ) ) ) $ ( if true then true else d160 )
        d537 : ( ( Set -> Set ) ∋ ( ( λ x538 -> ( ( Set -> Set ) ∋ ( ( λ x539 -> Bool ) ) ) $ ( x538 ) ) ) ) $ ( if false then Bool else Bool )
        d537 = if if false then true else d153 then if d288 then d78 else d331 else if false then d156 else d179
        d540 : if false then if true then Bool else Bool else if false then Bool else Bool
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x541 -> ( ( Bool -> Bool ) ∋ ( ( λ x542 -> false ) ) ) $ ( x541 ) ) ) ) $ ( if true then false else d147 )
        d543 : if true then if false then Bool else Bool else if true then Bool else Bool
        d543 = if if d325 then d540 else d100 then if false then false else true else if d150 then false else false
        d544 : if false then if false then Bool else Bool else if false then Bool else Bool
        d544 = if if false then d178 else d264 then if d494 then false else d432 else if true then d39 else true
        d545 : if true then if true then Bool else Bool else if false then Bool else Bool
        d545 = if if true then d62 else d96 then if d321 then true else true else if d476 then d494 else d304
        d546 : ( ( Set -> Set ) ∋ ( ( λ x548 -> ( ( Set -> Set ) ∋ ( ( λ x549 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d546 = ( ( Bool -> Bool ) ∋ ( ( λ x547 -> if false then d405 else true ) ) ) $ ( if true then true else d443 )
        d550 : if true then if false then Bool else Bool else if true then Bool else Bool
        d550 = if if true then false else true then if true then false else false else if false then true else d358
        d551 : if false then if false then Bool else Bool else if false then Bool else Bool
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x552 -> if d502 then x552 else true ) ) ) $ ( if d443 then d4 else d418 )
        d553 : ( ( Set -> Set ) ∋ ( ( λ x554 -> ( ( Set -> Set ) ∋ ( ( λ x555 -> x555 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d553 = if if true then false else true then if true then true else true else if d442 then false else false
        d556 : if false then if true then Bool else Bool else if true then Bool else Bool
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x557 -> if d230 then true else d380 ) ) ) $ ( if d23 then d225 else d185 )
        d558 : ( ( Set -> Set ) ∋ ( ( λ x559 -> if false then Bool else x559 ) ) ) $ ( if false then Bool else Bool )
        d558 = if if d178 then d550 else false then if false then true else false else if true then d137 else false
        d560 : ( ( Set -> Set ) ∋ ( ( λ x563 -> if false then x563 else x563 ) ) ) $ ( if true then Bool else Bool )
        d560 = ( ( Bool -> Bool ) ∋ ( ( λ x561 -> ( ( Bool -> Bool ) ∋ ( ( λ x562 -> d213 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d564 : if true then if true then Bool else Bool else if false then Bool else Bool
        d564 = if if d442 then d481 else false then if true then d343 else true else if true then d462 else d132
        d565 : if true then if false then Bool else Bool else if true then Bool else Bool
        d565 = ( ( Bool -> Bool ) ∋ ( ( λ x566 -> ( ( Bool -> Bool ) ∋ ( ( λ x567 -> x566 ) ) ) $ ( d528 ) ) ) ) $ ( if d176 then d450 else true )
        d568 : if true then if false then Bool else Bool else if true then Bool else Bool
        d568 = if if true then d220 else false then if d107 then d307 else true else if d156 then true else false
        d569 : ( ( Set -> Set ) ∋ ( ( λ x570 -> ( ( Set -> Set ) ∋ ( ( λ x571 -> x571 ) ) ) $ ( x570 ) ) ) ) $ ( if false then Bool else Bool )
        d569 = if if false then true else d421 then if true then false else d532 else if d223 then false else false
        d572 : ( ( Set -> Set ) ∋ ( ( λ x573 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d572 = if if d494 then d93 else d250 then if false then d4 else d429 else if d84 then d76 else d225
        d574 : if false then if true then Bool else Bool else if true then Bool else Bool
        d574 = if if false then true else d367 then if true then d65 else d249 else if d1 then d128 else d137
        d575 : ( ( Set -> Set ) ∋ ( ( λ x578 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d575 = ( ( Bool -> Bool ) ∋ ( ( λ x576 -> ( ( Bool -> Bool ) ∋ ( ( λ x577 -> true ) ) ) $ ( d139 ) ) ) ) $ ( if d91 then d532 else false )
        d579 : ( ( Set -> Set ) ∋ ( ( λ x582 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x581 -> d302 ) ) ) $ ( d303 ) ) ) ) $ ( if true then true else false )
        d583 : if true then if false then Bool else Bool else if true then Bool else Bool
        d583 = if if false then false else d4 then if d365 then false else false else if true then false else false
        d584 : if true then if false then Bool else Bool else if true then Bool else Bool
        d584 = if if false then d215 else d450 then if true then d85 else true else if true then d139 else false
        d585 : if true then if false then Bool else Bool else if true then Bool else Bool
        d585 = if if d44 then true else d565 then if false then false else d113 else if false then false else d382
        d586 : if true then if true then Bool else Bool else if true then Bool else Bool
        d586 = ( ( Bool -> Bool ) ∋ ( ( λ x587 -> if d235 then true else x587 ) ) ) $ ( if true then d440 else false )
        d588 : if true then if false then Bool else Bool else if true then Bool else Bool
        d588 = ( ( Bool -> Bool ) ∋ ( ( λ x589 -> if x589 then d414 else x589 ) ) ) $ ( if false then false else true )
        d590 : ( ( Set -> Set ) ∋ ( ( λ x591 -> ( ( Set -> Set ) ∋ ( ( λ x592 -> x592 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d590 = if if true then true else d586 then if d256 then true else true else if d476 then d445 else d73
        d593 : if true then if false then Bool else Bool else if false then Bool else Bool
        d593 = ( ( Bool -> Bool ) ∋ ( ( λ x594 -> ( ( Bool -> Bool ) ∋ ( ( λ x595 -> d478 ) ) ) $ ( x594 ) ) ) ) $ ( if true then true else false )
        d596 : if false then if true then Bool else Bool else if false then Bool else Bool
        d596 = if if true then d413 else d275 then if d381 then false else true else if true then d429 else true
        d597 : ( ( Set -> Set ) ∋ ( ( λ x600 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d597 = ( ( Bool -> Bool ) ∋ ( ( λ x598 -> ( ( Bool -> Bool ) ∋ ( ( λ x599 -> d1 ) ) ) $ ( x598 ) ) ) ) $ ( if true then false else d20 )
        d601 : if false then if true then Bool else Bool else if true then Bool else Bool
        d601 = ( ( Bool -> Bool ) ∋ ( ( λ x602 -> ( ( Bool -> Bool ) ∋ ( ( λ x603 -> x602 ) ) ) $ ( d509 ) ) ) ) $ ( if d355 then true else false )
        d604 : if false then if true then Bool else Bool else if false then Bool else Bool
        d604 = ( ( Bool -> Bool ) ∋ ( ( λ x605 -> if true then d597 else d556 ) ) ) $ ( if false then d490 else false )
        d606 : if false then if false then Bool else Bool else if false then Bool else Bool
        d606 = if if false then d161 else true then if false then true else d551 else if d218 then d139 else false
        d607 : if false then if false then Bool else Bool else if false then Bool else Bool
        d607 = ( ( Bool -> Bool ) ∋ ( ( λ x608 -> if x608 then false else d409 ) ) ) $ ( if false then d443 else false )
        d609 : ( ( Set -> Set ) ∋ ( ( λ x612 -> ( ( Set -> Set ) ∋ ( ( λ x613 -> x612 ) ) ) $ ( x612 ) ) ) ) $ ( if false then Bool else Bool )
        d609 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> ( ( Bool -> Bool ) ∋ ( ( λ x611 -> x611 ) ) ) $ ( d291 ) ) ) ) $ ( if false then d156 else d481 )
        d614 : ( ( Set -> Set ) ∋ ( ( λ x617 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d614 = ( ( Bool -> Bool ) ∋ ( ( λ x615 -> ( ( Bool -> Bool ) ∋ ( ( λ x616 -> false ) ) ) $ ( x615 ) ) ) ) $ ( if d481 then d107 else d302 )
        d618 : if true then if false then Bool else Bool else if false then Bool else Bool
        d618 = if if d40 then d60 else true then if false then d389 else d209 else if d300 then false else false
        d619 : ( ( Set -> Set ) ∋ ( ( λ x621 -> if false then x621 else x621 ) ) ) $ ( if false then Bool else Bool )
        d619 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if false then d261 else false ) ) ) $ ( if d455 then false else d509 )
        d622 : if false then if true then Bool else Bool else if true then Bool else Bool
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x623 -> ( ( Bool -> Bool ) ∋ ( ( λ x624 -> x623 ) ) ) $ ( false ) ) ) ) $ ( if true then d103 else d590 )
        d625 : if true then if true then Bool else Bool else if true then Bool else Bool
        d625 = if if true then true else d76 then if true then d304 else true else if false then true else true
        d626 : ( ( Set -> Set ) ∋ ( ( λ x627 -> ( ( Set -> Set ) ∋ ( ( λ x628 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d626 = if if true then false else false then if d540 then d57 else d11 else if true then false else false
        d629 : ( ( Set -> Set ) ∋ ( ( λ x632 -> ( ( Set -> Set ) ∋ ( ( λ x633 -> Bool ) ) ) $ ( x632 ) ) ) ) $ ( if true then Bool else Bool )
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x631 -> true ) ) ) $ ( x630 ) ) ) ) $ ( if d247 then d203 else d334 )
        d634 : ( ( Set -> Set ) ∋ ( ( λ x635 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d634 = if if false then true else d192 then if d1 then false else false else if false then true else d590
        d636 : if false then if true then Bool else Bool else if true then Bool else Bool
        d636 = ( ( Bool -> Bool ) ∋ ( ( λ x637 -> ( ( Bool -> Bool ) ∋ ( ( λ x638 -> d412 ) ) ) $ ( d78 ) ) ) ) $ ( if false then d540 else d588 )
        d639 : ( ( Set -> Set ) ∋ ( ( λ x640 -> if false then Bool else x640 ) ) ) $ ( if true then Bool else Bool )
        d639 = if if d14 then true else d443 then if true then false else d334 else if d445 then false else false
        d641 : ( ( Set -> Set ) ∋ ( ( λ x642 -> if true then x642 else x642 ) ) ) $ ( if false then Bool else Bool )
        d641 = if if d462 then true else d278 then if d147 then d574 else d204 else if false then d238 else d14
        d643 : if true then if true then Bool else Bool else if false then Bool else Bool
        d643 = if if false then d445 else true then if d414 then true else d113 else if true then false else false
        d644 : if false then if true then Bool else Bool else if false then Bool else Bool
        d644 = if if false then false else true then if d269 then false else d93 else if false then false else d209
        d645 : ( ( Set -> Set ) ∋ ( ( λ x646 -> ( ( Set -> Set ) ∋ ( ( λ x647 -> Bool ) ) ) $ ( x646 ) ) ) ) $ ( if true then Bool else Bool )
        d645 = if if d28 then d314 else d223 then if false then false else d307 else if false then true else false
        d648 : if false then if true then Bool else Bool else if false then Bool else Bool
        d648 = if if false then false else d391 then if true then d537 else d302 else if false then true else d467
        d649 : ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x651 -> x651 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d649 = if if d300 then d565 else false then if true then d62 else d413 else if false then true else d17
        d652 : if false then if false then Bool else Bool else if false then Bool else Bool
        d652 = if if true then false else d223 then if true then false else d445 else if d419 then d614 else d44
        d653 : ( ( Set -> Set ) ∋ ( ( λ x655 -> if false then x655 else x655 ) ) ) $ ( if false then Bool else Bool )
        d653 = ( ( Bool -> Bool ) ∋ ( ( λ x654 -> if x654 then d185 else false ) ) ) $ ( if true then false else true )
        d656 : if true then if true then Bool else Bool else if false then Bool else Bool
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x657 -> ( ( Bool -> Bool ) ∋ ( ( λ x658 -> d178 ) ) ) $ ( d371 ) ) ) ) $ ( if false then true else false )
        d659 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then Bool else x660 ) ) ) $ ( if true then Bool else Bool )
        d659 = if if d160 then d481 else d519 then if true then d223 else d11 else if true then true else d652
        d661 : ( ( Set -> Set ) ∋ ( ( λ x663 -> if true then x663 else Bool ) ) ) $ ( if false then Bool else Bool )
        d661 = ( ( Bool -> Bool ) ∋ ( ( λ x662 -> if d178 then d522 else false ) ) ) $ ( if false then d629 else d132 )
        d664 : ( ( Set -> Set ) ∋ ( ( λ x665 -> if false then x665 else x665 ) ) ) $ ( if false then Bool else Bool )
        d664 = if if true then true else d330 then if true then d251 else d601 else if d365 then true else true
        d666 : ( ( Set -> Set ) ∋ ( ( λ x668 -> if false then x668 else x668 ) ) ) $ ( if true then Bool else Bool )
        d666 = ( ( Bool -> Bool ) ∋ ( ( λ x667 -> if x667 then false else true ) ) ) $ ( if false then d545 else false )
        d669 : if false then if true then Bool else Bool else if false then Bool else Bool
        d669 = if if true then false else d52 then if d28 then false else d173 else if true then d348 else d437
        d670 : if false then if false then Bool else Bool else if false then Bool else Bool
        d670 = if if false then d355 else d168 then if d648 then true else true else if false then d421 else false
        d671 : ( ( Set -> Set ) ∋ ( ( λ x672 -> ( ( Set -> Set ) ∋ ( ( λ x673 -> Bool ) ) ) $ ( x672 ) ) ) ) $ ( if false then Bool else Bool )
        d671 = if if false then true else false then if false then false else false else if d401 then false else d512
        d674 : ( ( Set -> Set ) ∋ ( ( λ x675 -> ( ( Set -> Set ) ∋ ( ( λ x676 -> x676 ) ) ) $ ( x675 ) ) ) ) $ ( if true then Bool else Bool )
        d674 = if if d20 then d421 else true then if false then d528 else d551 else if false then d462 else true
        d677 : if false then if true then Bool else Bool else if false then Bool else Bool
        d677 = ( ( Bool -> Bool ) ∋ ( ( λ x678 -> if d401 then x678 else x678 ) ) ) $ ( if d584 then false else false )
        d679 : if false then if true then Bool else Bool else if true then Bool else Bool
        d679 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> ( ( Bool -> Bool ) ∋ ( ( λ x681 -> d652 ) ) ) $ ( d593 ) ) ) ) $ ( if d352 then true else true )
        d682 : ( ( Set -> Set ) ∋ ( ( λ x685 -> if true then x685 else x685 ) ) ) $ ( if false then Bool else Bool )
        d682 = ( ( Bool -> Bool ) ∋ ( ( λ x683 -> ( ( Bool -> Bool ) ∋ ( ( λ x684 -> d391 ) ) ) $ ( x683 ) ) ) ) $ ( if true then d653 else false )
        d686 : ( ( Set -> Set ) ∋ ( ( λ x689 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> x689 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d686 = ( ( Bool -> Bool ) ∋ ( ( λ x687 -> ( ( Bool -> Bool ) ∋ ( ( λ x688 -> true ) ) ) $ ( d11 ) ) ) ) $ ( if d537 then true else d218 )
        d691 : ( ( Set -> Set ) ∋ ( ( λ x692 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d691 = if if true then d302 else true then if d35 then false else d653 else if false then d11 else d14
        d693 : ( ( Set -> Set ) ∋ ( ( λ x694 -> if true then x694 else x694 ) ) ) $ ( if false then Bool else Bool )
        d693 = if if false then d4 else d44 then if true then d310 else d137 else if d283 then false else d225
        d695 : if true then if false then Bool else Bool else if false then Bool else Bool
        d695 = ( ( Bool -> Bool ) ∋ ( ( λ x696 -> ( ( Bool -> Bool ) ∋ ( ( λ x697 -> d287 ) ) ) $ ( x696 ) ) ) ) $ ( if true then d622 else d188 )
        d698 : ( ( Set -> Set ) ∋ ( ( λ x699 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d698 = if if d414 then false else true then if d256 then true else d401 else if d661 then true else d238
        d701 : ( ( Set -> Set ) ∋ ( ( λ x702 -> ( ( Set -> Set ) ∋ ( ( λ x703 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d701 = if if false then true else false then if false then false else false else if d502 then false else d230
        d704 : ( ( Set -> Set ) ∋ ( ( λ x705 -> ( ( Set -> Set ) ∋ ( ( λ x706 -> x706 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d704 = if if d558 then false else d348 then if true then d96 else d641 else if true then false else d409
        d707 : if true then if false then Bool else Bool else if false then Bool else Bool
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x708 -> ( ( Bool -> Bool ) ∋ ( ( λ x709 -> d529 ) ) ) $ ( x708 ) ) ) ) $ ( if false then false else d401 )
        d710 : if true then if false then Bool else Bool else if true then Bool else Bool
        d710 = if if true then d614 else false then if true then d218 else d213 else if d597 then d218 else true
        d711 : if false then if false then Bool else Bool else if true then Bool else Bool
        d711 = ( ( Bool -> Bool ) ∋ ( ( λ x712 -> if false then false else true ) ) ) $ ( if d437 then false else d458 )
        d713 : if true then if true then Bool else Bool else if false then Bool else Bool
        d713 = if if false then d564 else d641 then if d109 then true else d572 else if true then d275 else d109
        d714 : if true then if false then Bool else Bool else if false then Bool else Bool
        d714 = if if d619 then false else d223 then if d491 then false else d670 else if d173 then d486 else d666
        d715 : ( ( Set -> Set ) ∋ ( ( λ x717 -> ( ( Set -> Set ) ∋ ( ( λ x718 -> x718 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d715 = ( ( Bool -> Bool ) ∋ ( ( λ x716 -> if d88 then true else true ) ) ) $ ( if d132 then d711 else d147 )
        d719 : if true then if false then Bool else Bool else if true then Bool else Bool
        d719 = if if false then false else true then if false then true else true else if false then d625 else d551
        d720 : ( ( Set -> Set ) ∋ ( ( λ x723 -> if true then Bool else x723 ) ) ) $ ( if true then Bool else Bool )
        d720 = ( ( Bool -> Bool ) ∋ ( ( λ x721 -> ( ( Bool -> Bool ) ∋ ( ( λ x722 -> d572 ) ) ) $ ( x721 ) ) ) ) $ ( if true then false else true )
        d724 : ( ( Set -> Set ) ∋ ( ( λ x726 -> if false then Bool else x726 ) ) ) $ ( if true then Bool else Bool )
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x725 -> if x725 then false else d614 ) ) ) $ ( if true then false else d545 )
        d727 : ( ( Set -> Set ) ∋ ( ( λ x728 -> ( ( Set -> Set ) ∋ ( ( λ x729 -> x729 ) ) ) $ ( x728 ) ) ) ) $ ( if false then Bool else Bool )
        d727 = if if false then false else false then if d261 then d235 else true else if d223 then false else true
        d730 : ( ( Set -> Set ) ∋ ( ( λ x732 -> if true then x732 else Bool ) ) ) $ ( if true then Bool else Bool )
        d730 = ( ( Bool -> Bool ) ∋ ( ( λ x731 -> if true then x731 else x731 ) ) ) $ ( if true then d724 else false )
        d733 : if true then if false then Bool else Bool else if false then Bool else Bool
        d733 = ( ( Bool -> Bool ) ∋ ( ( λ x734 -> if d150 then true else x734 ) ) ) $ ( if d512 then d537 else d35 )
        d735 : if false then if true then Bool else Bool else if true then Bool else Bool
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x736 -> if d351 then true else d585 ) ) ) $ ( if false then d160 else true )
        d737 : ( ( Set -> Set ) ∋ ( ( λ x738 -> ( ( Set -> Set ) ∋ ( ( λ x739 -> Bool ) ) ) $ ( x738 ) ) ) ) $ ( if false then Bool else Bool )
        d737 = if if d233 then d128 else d185 then if d203 then false else true else if d543 then false else false
        d740 : ( ( Set -> Set ) ∋ ( ( λ x742 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d740 = ( ( Bool -> Bool ) ∋ ( ( λ x741 -> if x741 then x741 else true ) ) ) $ ( if true then d394 else false )
        d743 : if true then if false then Bool else Bool else if false then Bool else Bool
        d743 = if if d159 then true else d142 then if false then d437 else false else if d381 then d132 else true
        d744 : ( ( Set -> Set ) ∋ ( ( λ x745 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d744 = if if d686 then d614 else true then if false then false else d278 else if d340 then d649 else false
        d746 : ( ( Set -> Set ) ∋ ( ( λ x748 -> ( ( Set -> Set ) ∋ ( ( λ x749 -> Bool ) ) ) $ ( x748 ) ) ) ) $ ( if false then Bool else Bool )
        d746 = ( ( Bool -> Bool ) ∋ ( ( λ x747 -> if d225 then d476 else x747 ) ) ) $ ( if false then true else d494 )
        d750 : if true then if true then Bool else Bool else if false then Bool else Bool
        d750 = if if false then d156 else false then if d715 then d192 else d574 else if true then true else d634
        d751 : if false then if true then Bool else Bool else if false then Bool else Bool
        d751 = ( ( Bool -> Bool ) ∋ ( ( λ x752 -> if x752 then x752 else d698 ) ) ) $ ( if true then false else true )
        d753 : if true then if false then Bool else Bool else if true then Bool else Bool
        d753 = ( ( Bool -> Bool ) ∋ ( ( λ x754 -> ( ( Bool -> Bool ) ∋ ( ( λ x755 -> false ) ) ) $ ( true ) ) ) ) $ ( if d225 then d55 else true )
        d756 : ( ( Set -> Set ) ∋ ( ( λ x758 -> if true then Bool else x758 ) ) ) $ ( if true then Bool else Bool )
        d756 = ( ( Bool -> Bool ) ∋ ( ( λ x757 -> if false then false else x757 ) ) ) $ ( if false then d382 else d656 )
        d759 : ( ( Set -> Set ) ∋ ( ( λ x761 -> if false then Bool else x761 ) ) ) $ ( if false then Bool else Bool )
        d759 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if d666 then d720 else false ) ) ) $ ( if d93 then d540 else false )
        d762 : if false then if true then Bool else Bool else if false then Bool else Bool
        d762 = ( ( Bool -> Bool ) ∋ ( ( λ x763 -> if x763 then true else x763 ) ) ) $ ( if true then d223 else d269 )
        d764 : ( ( Set -> Set ) ∋ ( ( λ x767 -> ( ( Set -> Set ) ∋ ( ( λ x768 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d764 = ( ( Bool -> Bool ) ∋ ( ( λ x765 -> ( ( Bool -> Bool ) ∋ ( ( λ x766 -> x765 ) ) ) $ ( x765 ) ) ) ) $ ( if false then false else d607 )
        d769 : ( ( Set -> Set ) ∋ ( ( λ x772 -> ( ( Set -> Set ) ∋ ( ( λ x773 -> x773 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d769 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( Bool -> Bool ) ∋ ( ( λ x771 -> x771 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d17 )
        d774 : if true then if false then Bool else Bool else if true then Bool else Bool
        d774 = ( ( Bool -> Bool ) ∋ ( ( λ x775 -> ( ( Bool -> Bool ) ∋ ( ( λ x776 -> x776 ) ) ) $ ( d302 ) ) ) ) $ ( if false then d397 else d60 )
        d777 : if true then if true then Bool else Bool else if true then Bool else Bool
        d777 = if if d365 then false else d403 then if d107 then d11 else true else if false then d714 else d606
        d778 : if true then if false then Bool else Bool else if false then Bool else Bool
        d778 = if if d666 then d84 else d671 then if true then true else true else if d249 then d614 else true
        d779 : if true then if false then Bool else Bool else if true then Bool else Bool
        d779 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if x780 then x780 else x780 ) ) ) $ ( if false then false else d764 )
        d781 : if true then if false then Bool else Bool else if false then Bool else Bool
        d781 = if if d682 then d506 else d711 then if d91 then d641 else false else if d743 then true else false
        d782 : if true then if true then Bool else Bool else if false then Bool else Bool
        d782 = ( ( Bool -> Bool ) ∋ ( ( λ x783 -> if d321 then x783 else false ) ) ) $ ( if true then d55 else false )
        d784 : ( ( Set -> Set ) ∋ ( ( λ x785 -> if false then Bool else x785 ) ) ) $ ( if true then Bool else Bool )
        d784 = if if false then d551 else d215 then if d691 then d113 else true else if d164 then d17 else true
        d786 : if true then if false then Bool else Bool else if true then Bool else Bool
        d786 = ( ( Bool -> Bool ) ∋ ( ( λ x787 -> if d537 then true else x787 ) ) ) $ ( if true then false else false )
        d788 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x791 -> Bool ) ) ) $ ( x790 ) ) ) ) $ ( if true then Bool else Bool )
        d788 = ( ( Bool -> Bool ) ∋ ( ( λ x789 -> if x789 then d435 else x789 ) ) ) $ ( if d200 then false else false )
        d792 : if false then if true then Bool else Bool else if false then Bool else Bool
        d792 = if if d371 then false else false then if d634 then d302 else false else if false then d519 else d367
        d793 : if false then if true then Bool else Bool else if false then Bool else Bool
        d793 = if if false then d203 else d782 then if true then d670 else true else if true then false else d278
        d794 : if false then if false then Bool else Bool else if false then Bool else Bool
        d794 = if if d792 then d735 else false then if true then d426 else d17 else if true then true else d278
        d795 : ( ( Set -> Set ) ∋ ( ( λ x798 -> ( ( Set -> Set ) ∋ ( ( λ x799 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d795 = ( ( Bool -> Bool ) ∋ ( ( λ x796 -> ( ( Bool -> Bool ) ∋ ( ( λ x797 -> false ) ) ) $ ( d28 ) ) ) ) $ ( if true then d113 else d173 )
        d800 : if false then if true then Bool else Bool else if false then Bool else Bool
        d800 = ( ( Bool -> Bool ) ∋ ( ( λ x801 -> ( ( Bool -> Bool ) ∋ ( ( λ x802 -> x801 ) ) ) $ ( d583 ) ) ) ) $ ( if false then false else d160 )
        d803 : if false then if true then Bool else Bool else if true then Bool else Bool
        d803 = ( ( Bool -> Bool ) ∋ ( ( λ x804 -> if d546 then d137 else d412 ) ) ) $ ( if d313 then d215 else d113 )
        d805 : ( ( Set -> Set ) ∋ ( ( λ x808 -> ( ( Set -> Set ) ∋ ( ( λ x809 -> x809 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x806 -> ( ( Bool -> Bool ) ∋ ( ( λ x807 -> x806 ) ) ) $ ( d11 ) ) ) ) $ ( if true then d178 else d634 )
        d810 : if true then if false then Bool else Bool else if true then Bool else Bool
        d810 = if if true then false else true then if d490 then d55 else true else if d93 then d751 else true
        d811 : ( ( Set -> Set ) ∋ ( ( λ x813 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d811 = ( ( Bool -> Bool ) ∋ ( ( λ x812 -> if true then true else d310 ) ) ) $ ( if true then true else true )
        d814 : if true then if false then Bool else Bool else if false then Bool else Bool
        d814 = if if d727 then d777 else d159 then if d784 then true else d604 else if false then false else d179
        d815 : ( ( Set -> Set ) ∋ ( ( λ x816 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d815 = if if true then d575 else false then if d440 then true else d502 else if d769 then false else d786
        d817 : ( ( Set -> Set ) ∋ ( ( λ x820 -> if false then x820 else Bool ) ) ) $ ( if true then Bool else Bool )
        d817 = ( ( Bool -> Bool ) ∋ ( ( λ x818 -> ( ( Bool -> Bool ) ∋ ( ( λ x819 -> x818 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d821 : if true then if true then Bool else Bool else if false then Bool else Bool
        d821 = if if true then d358 else d568 then if d1 then false else false else if true then d720 else d201
        d822 : if false then if false then Bool else Bool else if true then Bool else Bool
        d822 = ( ( Bool -> Bool ) ∋ ( ( λ x823 -> if d26 then x823 else x823 ) ) ) $ ( if d150 then d240 else true )
        d824 : if false then if false then Bool else Bool else if true then Bool else Bool
        d824 = ( ( Bool -> Bool ) ∋ ( ( λ x825 -> if x825 then d283 else d805 ) ) ) $ ( if d71 then d11 else true )
        d826 : if true then if true then Bool else Bool else if false then Bool else Bool
        d826 = if if d117 then false else true then if false then d516 else d321 else if d413 then d330 else d509
        d827 : ( ( Set -> Set ) ∋ ( ( λ x828 -> if false then Bool else x828 ) ) ) $ ( if false then Bool else Bool )
        d827 = if if false then true else d428 then if false then d235 else d502 else if false then d314 else false
        d829 : if false then if true then Bool else Bool else if false then Bool else Bool
        d829 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if d428 then d529 else true ) ) ) $ ( if true then d733 else d170 )
        d831 : if true then if false then Bool else Bool else if false then Bool else Bool
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x832 -> if x832 then false else x832 ) ) ) $ ( if true then d619 else d509 )
        d833 : ( ( Set -> Set ) ∋ ( ( λ x834 -> ( ( Set -> Set ) ∋ ( ( λ x835 -> x835 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d833 = if if d153 then d291 else false then if d639 then true else false else if d280 then false else d250
        d836 : if false then if true then Bool else Bool else if true then Bool else Bool
        d836 = ( ( Bool -> Bool ) ∋ ( ( λ x837 -> if true then x837 else false ) ) ) $ ( if d528 then true else d412 )
        d838 : ( ( Set -> Set ) ∋ ( ( λ x839 -> if true then x839 else x839 ) ) ) $ ( if false then Bool else Bool )
        d838 = if if d781 then true else true then if false then true else d674 else if d403 then d777 else false
        d840 : if true then if false then Bool else Bool else if true then Bool else Bool
        d840 = if if d35 then true else false then if true then true else d546 else if d648 then true else d671
        d841 : ( ( Set -> Set ) ∋ ( ( λ x842 -> if true then Bool else x842 ) ) ) $ ( if true then Bool else Bool )
        d841 = if if d575 then true else d486 then if d636 then false else d715 else if d429 then false else d159
        d843 : if false then if false then Bool else Bool else if true then Bool else Bool
        d843 = ( ( Bool -> Bool ) ∋ ( ( λ x844 -> if false then true else x844 ) ) ) $ ( if false then true else d1 )
        d845 : ( ( Set -> Set ) ∋ ( ( λ x846 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d845 = if if true then d824 else true then if d792 then true else true else if true then false else d44
        d847 : ( ( Set -> Set ) ∋ ( ( λ x848 -> if true then x848 else Bool ) ) ) $ ( if true then Bool else Bool )
        d847 = if if true then true else d537 then if true then d198 else d57 else if d443 then d91 else d470
        d849 : if true then if false then Bool else Bool else if true then Bool else Bool
        d849 = if if true then d339 else d636 then if d278 then true else true else if d833 then d619 else false
        d850 : ( ( Set -> Set ) ∋ ( ( λ x852 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d850 = ( ( Bool -> Bool ) ∋ ( ( λ x851 -> if false then d509 else x851 ) ) ) $ ( if false then d168 else d607 )
        d853 : ( ( Set -> Set ) ∋ ( ( λ x854 -> if false then x854 else Bool ) ) ) $ ( if true then Bool else Bool )
        d853 = if if d73 then true else true then if true then false else true else if true then d751 else true
        d855 : if false then if false then Bool else Bool else if true then Bool else Bool
        d855 = if if d440 then d358 else d47 then if false then d428 else false else if false then d192 else false
        d856 : if false then if false then Bool else Bool else if true then Bool else Bool
        d856 = ( ( Bool -> Bool ) ∋ ( ( λ x857 -> if false then x857 else d525 ) ) ) $ ( if d20 then d814 else true )
        d858 : ( ( Set -> Set ) ∋ ( ( λ x859 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d858 = if if d855 then d437 else false then if false then true else true else if true then false else false
        d860 : ( ( Set -> Set ) ∋ ( ( λ x863 -> if true then x863 else x863 ) ) ) $ ( if false then Bool else Bool )
        d860 = ( ( Bool -> Bool ) ∋ ( ( λ x861 -> ( ( Bool -> Bool ) ∋ ( ( λ x862 -> false ) ) ) $ ( d671 ) ) ) ) $ ( if d137 then d82 else false )
        d864 : ( ( Set -> Set ) ∋ ( ( λ x865 -> ( ( Set -> Set ) ∋ ( ( λ x866 -> x866 ) ) ) $ ( x865 ) ) ) ) $ ( if true then Bool else Bool )
        d864 = if if d203 then d838 else d751 then if false then true else true else if d132 then false else d713
        d867 : if false then if false then Bool else Bool else if false then Bool else Bool
        d867 = if if false then false else true then if true then d653 else d782 else if true then d677 else false
        d868 : ( ( Set -> Set ) ∋ ( ( λ x869 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d868 = if if false then d288 else true then if d710 then false else d777 else if false then false else d360
        d871 : if false then if false then Bool else Bool else if true then Bool else Bool
        d871 = ( ( Bool -> Bool ) ∋ ( ( λ x872 -> if false then x872 else x872 ) ) ) $ ( if d606 then d381 else true )
        d873 : ( ( Set -> Set ) ∋ ( ( λ x875 -> if true then x875 else Bool ) ) ) $ ( if false then Bool else Bool )
        d873 = ( ( Bool -> Bool ) ∋ ( ( λ x874 -> if d838 then d128 else x874 ) ) ) $ ( if false then false else true )
        d876 : if true then if true then Bool else Bool else if true then Bool else Bool
        d876 = if if false then d751 else true then if true then true else d674 else if false then d470 else false
        d877 : ( ( Set -> Set ) ∋ ( ( λ x879 -> ( ( Set -> Set ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d877 = ( ( Bool -> Bool ) ∋ ( ( λ x878 -> if d641 then x878 else false ) ) ) $ ( if d251 then false else d440 )
        d881 : if false then if false then Bool else Bool else if false then Bool else Bool
        d881 = ( ( Bool -> Bool ) ∋ ( ( λ x882 -> if true then true else false ) ) ) $ ( if d303 then false else true )
        d883 : if true then if false then Bool else Bool else if false then Bool else Bool
        d883 = if if d206 then d814 else d838 then if true then false else false else if true then d60 else true
        d884 : if true then if false then Bool else Bool else if true then Bool else Bool
        d884 = ( ( Bool -> Bool ) ∋ ( ( λ x885 -> ( ( Bool -> Bool ) ∋ ( ( λ x886 -> d454 ) ) ) $ ( d60 ) ) ) ) $ ( if d120 then true else true )
        d887 : ( ( Set -> Set ) ∋ ( ( λ x888 -> if true then x888 else x888 ) ) ) $ ( if true then Bool else Bool )
        d887 = if if d537 then d401 else true then if false then d435 else d429 else if false then false else true
        d889 : ( ( Set -> Set ) ∋ ( ( λ x891 -> if true then x891 else Bool ) ) ) $ ( if true then Bool else Bool )
        d889 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if false then false else d291 ) ) ) $ ( if d240 then true else d737 )
        d892 : if false then if true then Bool else Bool else if false then Bool else Bool
        d892 = ( ( Bool -> Bool ) ∋ ( ( λ x893 -> ( ( Bool -> Bool ) ∋ ( ( λ x894 -> d845 ) ) ) $ ( d437 ) ) ) ) $ ( if false then d529 else true )
        d895 : if false then if true then Bool else Bool else if true then Bool else Bool
        d895 = ( ( Bool -> Bool ) ∋ ( ( λ x896 -> ( ( Bool -> Bool ) ∋ ( ( λ x897 -> d11 ) ) ) $ ( false ) ) ) ) $ ( if d433 then true else false )
        d898 : if false then if true then Bool else Bool else if true then Bool else Bool
        d898 = ( ( Bool -> Bool ) ∋ ( ( λ x899 -> ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d233 ) ) ) $ ( d532 ) ) ) ) $ ( if d264 then d744 else true )
        d901 : if true then if false then Bool else Bool else if false then Bool else Bool
        d901 = ( ( Bool -> Bool ) ∋ ( ( λ x902 -> ( ( Bool -> Bool ) ∋ ( ( λ x903 -> false ) ) ) $ ( x902 ) ) ) ) $ ( if d339 then false else d14 )
        d904 : ( ( Set -> Set ) ∋ ( ( λ x906 -> if true then x906 else x906 ) ) ) $ ( if false then Bool else Bool )
        d904 = ( ( Bool -> Bool ) ∋ ( ( λ x905 -> if false then false else x905 ) ) ) $ ( if d213 then false else true )
        d907 : if true then if false then Bool else Bool else if false then Bool else Bool
        d907 = if if d622 then true else d414 then if true then d490 else true else if false then d76 else true
        d908 : ( ( Set -> Set ) ∋ ( ( λ x909 -> if false then x909 else Bool ) ) ) $ ( if false then Bool else Bool )
        d908 = if if false then true else d416 then if d596 then false else true else if true then d827 else false
        d910 : if true then if false then Bool else Bool else if true then Bool else Bool
        d910 = if if true then false else d853 then if true then true else d57 else if true then true else true
        d911 : if false then if true then Bool else Bool else if true then Bool else Bool
        d911 = if if false then false else false then if d575 then true else d401 else if d452 then true else d626
        d912 : ( ( Set -> Set ) ∋ ( ( λ x913 -> if false then x913 else Bool ) ) ) $ ( if false then Bool else Bool )
        d912 = if if false then d481 else true then if true then false else false else if true then d256 else d137
        d914 : if false then if false then Bool else Bool else if false then Bool else Bool
        d914 = ( ( Bool -> Bool ) ∋ ( ( λ x915 -> ( ( Bool -> Bool ) ∋ ( ( λ x916 -> false ) ) ) $ ( d701 ) ) ) ) $ ( if d445 then d691 else d170 )
        d917 : ( ( Set -> Set ) ∋ ( ( λ x918 -> ( ( Set -> Set ) ∋ ( ( λ x919 -> x918 ) ) ) $ ( x918 ) ) ) ) $ ( if true then Bool else Bool )
        d917 = if if true then d490 else d490 then if true then false else true else if d609 then true else true
        d920 : ( ( Set -> Set ) ∋ ( ( λ x923 -> ( ( Set -> Set ) ∋ ( ( λ x924 -> x924 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d920 = ( ( Bool -> Bool ) ∋ ( ( λ x921 -> ( ( Bool -> Bool ) ∋ ( ( λ x922 -> d677 ) ) ) $ ( x921 ) ) ) ) $ ( if true then d494 else d288 )
        d925 : ( ( Set -> Set ) ∋ ( ( λ x926 -> if false then x926 else Bool ) ) ) $ ( if true then Bool else Bool )
        d925 = if if d744 then false else true then if false then true else d643 else if d164 then d352 else d525
        d927 : if true then if false then Bool else Bool else if false then Bool else Bool
        d927 = ( ( Bool -> Bool ) ∋ ( ( λ x928 -> ( ( Bool -> Bool ) ∋ ( ( λ x929 -> x928 ) ) ) $ ( d170 ) ) ) ) $ ( if true then d44 else false )
        d930 : if false then if true then Bool else Bool else if true then Bool else Bool
        d930 = if if d784 then d462 else d858 then if d831 then d805 else d178 else if true then false else d583
        d931 : ( ( Set -> Set ) ∋ ( ( λ x932 -> ( ( Set -> Set ) ∋ ( ( λ x933 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d931 = if if true then d833 else d201 then if d391 then true else d777 else if true then true else true
        d934 : ( ( Set -> Set ) ∋ ( ( λ x937 -> ( ( Set -> Set ) ∋ ( ( λ x938 -> x938 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d934 = ( ( Bool -> Bool ) ∋ ( ( λ x935 -> ( ( Bool -> Bool ) ∋ ( ( λ x936 -> d397 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d235 )
        d939 : ( ( Set -> Set ) ∋ ( ( λ x942 -> if false then Bool else x942 ) ) ) $ ( if true then Bool else Bool )
        d939 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> ( ( Bool -> Bool ) ∋ ( ( λ x941 -> x940 ) ) ) $ ( x940 ) ) ) ) $ ( if false then false else d182 )
        d943 : if false then if true then Bool else Bool else if true then Bool else Bool
        d943 = if if true then d568 else true then if false then d441 else true else if true then true else true
        d944 : ( ( Set -> Set ) ∋ ( ( λ x945 -> ( ( Set -> Set ) ∋ ( ( λ x946 -> x945 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d944 = if if true then false else false then if d100 then false else d601 else if true then d860 else false
        d947 : ( ( Set -> Set ) ∋ ( ( λ x948 -> ( ( Set -> Set ) ∋ ( ( λ x949 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d947 = if if d883 then d490 else false then if d853 then d911 else true else if false then d33 else true
        d950 : ( ( Set -> Set ) ∋ ( ( λ x952 -> ( ( Set -> Set ) ∋ ( ( λ x953 -> x952 ) ) ) $ ( x952 ) ) ) ) $ ( if false then Bool else Bool )
        d950 = ( ( Bool -> Bool ) ∋ ( ( λ x951 -> if false then false else x951 ) ) ) $ ( if d200 then true else d452 )
        d954 : ( ( Set -> Set ) ∋ ( ( λ x955 -> ( ( Set -> Set ) ∋ ( ( λ x956 -> x955 ) ) ) $ ( x955 ) ) ) ) $ ( if true then Bool else Bool )
        d954 = if if false then true else true then if true then d397 else d428 else if d269 then d720 else false
        d957 : if false then if true then Bool else Bool else if true then Bool else Bool
        d957 = if if d701 then d351 else true then if d607 then false else d76 else if d693 then d841 else d740
        d958 : ( ( Set -> Set ) ∋ ( ( λ x960 -> ( ( Set -> Set ) ∋ ( ( λ x961 -> x960 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d958 = ( ( Bool -> Bool ) ∋ ( ( λ x959 -> if x959 then x959 else d209 ) ) ) $ ( if d443 then true else false )
        d962 : ( ( Set -> Set ) ∋ ( ( λ x964 -> ( ( Set -> Set ) ∋ ( ( λ x965 -> Bool ) ) ) $ ( x964 ) ) ) ) $ ( if true then Bool else Bool )
        d962 = ( ( Bool -> Bool ) ∋ ( ( λ x963 -> if d912 then d895 else true ) ) ) $ ( if true then d901 else true )
        d966 : if false then if true then Bool else Bool else if false then Bool else Bool
        d966 = if if d931 then d4 else d898 then if true then false else true else if true then false else false
        d967 : ( ( Set -> Set ) ∋ ( ( λ x970 -> if true then x970 else x970 ) ) ) $ ( if false then Bool else Bool )
        d967 = ( ( Bool -> Bool ) ∋ ( ( λ x968 -> ( ( Bool -> Bool ) ∋ ( ( λ x969 -> d103 ) ) ) $ ( x968 ) ) ) ) $ ( if d656 then false else true )
        d971 : if false then if true then Bool else Bool else if false then Bool else Bool
        d971 = if if d711 then true else d856 then if d486 then d543 else d250 else if d583 then d737 else d62
        d972 : ( ( Set -> Set ) ∋ ( ( λ x974 -> ( ( Set -> Set ) ∋ ( ( λ x975 -> Bool ) ) ) $ ( x974 ) ) ) ) $ ( if true then Bool else Bool )
        d972 = ( ( Bool -> Bool ) ∋ ( ( λ x973 -> if x973 then false else x973 ) ) ) $ ( if true then true else d826 )
        d976 : ( ( Set -> Set ) ∋ ( ( λ x977 -> if true then x977 else Bool ) ) ) $ ( if true then Bool else Bool )
        d976 = if if true then false else true then if false then d106 else d313 else if true then d762 else false
        d978 : if true then if false then Bool else Bool else if false then Bool else Bool
        d978 = if if true then d528 else d831 then if false then true else d907 else if d774 then d679 else d967
        d979 : ( ( Set -> Set ) ∋ ( ( λ x980 -> ( ( Set -> Set ) ∋ ( ( λ x981 -> x980 ) ) ) $ ( x980 ) ) ) ) $ ( if true then Bool else Bool )
        d979 = if if false then d91 else d943 then if true then d568 else d840 else if true then d858 else d609
        d982 : if true then if false then Bool else Bool else if false then Bool else Bool
        d982 = if if d769 then true else d35 then if d178 then d720 else d519 else if d405 then true else false
        d983 : if false then if true then Bool else Bool else if true then Bool else Bool
        d983 = ( ( Bool -> Bool ) ∋ ( ( λ x984 -> if x984 then d502 else d497 ) ) ) $ ( if d943 then d474 else false )
        d985 : if true then if false then Bool else Bool else if true then Bool else Bool
        d985 = ( ( Bool -> Bool ) ∋ ( ( λ x986 -> ( ( Bool -> Bool ) ∋ ( ( λ x987 -> d57 ) ) ) $ ( x986 ) ) ) ) $ ( if d583 then false else d550 )
        d988 : ( ( Set -> Set ) ∋ ( ( λ x990 -> ( ( Set -> Set ) ∋ ( ( λ x991 -> Bool ) ) ) $ ( x990 ) ) ) ) $ ( if true then Bool else Bool )
        d988 = ( ( Bool -> Bool ) ∋ ( ( λ x989 -> if d976 then false else x989 ) ) ) $ ( if d821 then false else false )
        d992 : ( ( Set -> Set ) ∋ ( ( λ x995 -> ( ( Set -> Set ) ∋ ( ( λ x996 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d992 = ( ( Bool -> Bool ) ∋ ( ( λ x993 -> ( ( Bool -> Bool ) ∋ ( ( λ x994 -> false ) ) ) $ ( d249 ) ) ) ) $ ( if d750 then d822 else d532 )
        d997 : ( ( Set -> Set ) ∋ ( ( λ x999 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d997 = ( ( Bool -> Bool ) ∋ ( ( λ x998 -> if true then x998 else x998 ) ) ) $ ( if false then d40 else d864 )
        d1001 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1001 = ( ( Bool -> Bool ) ∋ ( ( λ x1002 -> ( ( Bool -> Bool ) ∋ ( ( λ x1003 -> true ) ) ) $ ( x1002 ) ) ) ) $ ( if true then true else true )
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x1007 -> ( ( Set -> Set ) ∋ ( ( λ x1008 -> x1007 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1004 = ( ( Bool -> Bool ) ∋ ( ( λ x1005 -> ( ( Bool -> Bool ) ∋ ( ( λ x1006 -> false ) ) ) $ ( d719 ) ) ) ) $ ( if false then d33 else false )
        d1009 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1009 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if x1010 then x1010 else d967 ) ) ) $ ( if true then d821 else false )
        d1011 : ( ( Set -> Set ) ∋ ( ( λ x1013 -> if true then Bool else x1013 ) ) ) $ ( if true then Bool else Bool )
        d1011 = ( ( Bool -> Bool ) ∋ ( ( λ x1012 -> if x1012 then x1012 else d41 ) ) ) $ ( if true then d629 else true )
        d1014 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1014 = ( ( Bool -> Bool ) ∋ ( ( λ x1015 -> ( ( Bool -> Bool ) ∋ ( ( λ x1016 -> x1015 ) ) ) $ ( x1015 ) ) ) ) $ ( if d972 then d677 else true )
        d1017 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1017 = if if d73 then false else false then if false then false else false else if false then d343 else d4
        d1018 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1021 -> x1021 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x1019 -> if x1019 then true else false ) ) ) $ ( if d788 then d385 else d464 )
        d1022 : ( ( Set -> Set ) ∋ ( ( λ x1023 -> ( ( Set -> Set ) ∋ ( ( λ x1024 -> Bool ) ) ) $ ( x1023 ) ) ) ) $ ( if true then Bool else Bool )
        d1022 = if if d4 then true else d514 then if true then d1009 else d288 else if d664 then d418 else true
        d1025 : ( ( Set -> Set ) ∋ ( ( λ x1026 -> ( ( Set -> Set ) ∋ ( ( λ x1027 -> x1026 ) ) ) $ ( x1026 ) ) ) ) $ ( if false then Bool else Bool )
        d1025 = if if true then false else d579 then if false then d6 else d537 else if d831 then d126 else d877
        d1028 : ( ( Set -> Set ) ∋ ( ( λ x1029 -> if true then Bool else x1029 ) ) ) $ ( if false then Bool else Bool )
        d1028 = if if false then true else d194 then if d626 then d1 else d954 else if d464 then d428 else true
        d1030 : ( ( Set -> Set ) ∋ ( ( λ x1032 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> if x1031 then x1031 else d382 ) ) ) $ ( if false then true else true )
        d1033 : ( ( Set -> Set ) ∋ ( ( λ x1034 -> if false then x1034 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1033 = if if true then d319 else d270 then if true then true else true else if true then true else true
        d1035 : ( ( Set -> Set ) ∋ ( ( λ x1036 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1035 = if if false then d609 else d215 then if true then true else d551 else if true then false else true
        d1037 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1037 = if if false then d629 else true then if d88 then d84 else true else if d811 then true else d586
        d1038 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1038 = ( ( Bool -> Bool ) ∋ ( ( λ x1039 -> if x1039 then x1039 else d590 ) ) ) $ ( if d352 then d132 else false )
        d1040 : ( ( Set -> Set ) ∋ ( ( λ x1042 -> ( ( Set -> Set ) ∋ ( ( λ x1043 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1040 = ( ( Bool -> Bool ) ∋ ( ( λ x1041 -> if x1041 then d164 else true ) ) ) $ ( if d497 then true else d300 )
        d1044 : ( ( Set -> Set ) ∋ ( ( λ x1045 -> ( ( Set -> Set ) ∋ ( ( λ x1046 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1044 = if if d120 then false else true then if d607 then d230 else false else if true then d201 else true
        d1047 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1047 = if if d491 then d724 else false then if d391 then true else true else if d569 then d746 else d137
        d1048 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1048 = if if true then d204 else d575 then if true then d609 else true else if true then d426 else d247
        d1049 : ( ( Set -> Set ) ∋ ( ( λ x1051 -> ( ( Set -> Set ) ∋ ( ( λ x1052 -> x1052 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1049 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if true then d132 else false ) ) ) $ ( if d656 then d280 else true )
        d1053 : ( ( Set -> Set ) ∋ ( ( λ x1054 -> if true then x1054 else x1054 ) ) ) $ ( if false then Bool else Bool )
        d1053 = if if false then d494 else true then if d247 then d550 else false else if d416 then d339 else true
        d1055 : ( ( Set -> Set ) ∋ ( ( λ x1058 -> ( ( Set -> Set ) ∋ ( ( λ x1059 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1055 = ( ( Bool -> Bool ) ∋ ( ( λ x1056 -> ( ( Bool -> Bool ) ∋ ( ( λ x1057 -> false ) ) ) $ ( d622 ) ) ) ) $ ( if false then true else true )
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x1061 -> if false then x1061 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1060 = if if true then false else d679 then if false then false else false else if d782 then d546 else false
        d1062 : ( ( Set -> Set ) ∋ ( ( λ x1063 -> if false then Bool else x1063 ) ) ) $ ( if false then Bool else Bool )
        d1062 = if if true then true else false then if false then true else d644 else if d803 then false else d544
        d1064 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1064 = if if d876 then d876 else d871 then if true then true else d944 else if false then d288 else d320
        d1065 : ( ( Set -> Set ) ∋ ( ( λ x1066 -> ( ( Set -> Set ) ∋ ( ( λ x1067 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1065 = if if false then false else false then if false then false else d77 else if true then true else d810
        d1068 : ( ( Set -> Set ) ∋ ( ( λ x1069 -> if true then x1069 else x1069 ) ) ) $ ( if false then Bool else Bool )
        d1068 = if if d204 then false else d223 then if d546 then d546 else true else if false then true else d182
        d1070 : ( ( Set -> Set ) ∋ ( ( λ x1073 -> ( ( Set -> Set ) ∋ ( ( λ x1074 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1070 = ( ( Bool -> Bool ) ∋ ( ( λ x1071 -> ( ( Bool -> Bool ) ∋ ( ( λ x1072 -> d455 ) ) ) $ ( true ) ) ) ) $ ( if d512 then false else d838 )
        d1075 : ( ( Set -> Set ) ∋ ( ( λ x1076 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1075 = if if d653 then d927 else d810 then if d14 then true else d669 else if d911 then false else true
        d1077 : ( ( Set -> Set ) ∋ ( ( λ x1080 -> ( ( Set -> Set ) ∋ ( ( λ x1081 -> Bool ) ) ) $ ( x1080 ) ) ) ) $ ( if true then Bool else Bool )
        d1077 = ( ( Bool -> Bool ) ∋ ( ( λ x1078 -> ( ( Bool -> Bool ) ∋ ( ( λ x1079 -> x1078 ) ) ) $ ( true ) ) ) ) $ ( if d537 then d833 else true )
        d1082 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1082 = if if false then d440 else true then if d391 then false else false else if d744 then d985 else true
        d1083 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1083 = if if true then d695 else true then if d464 then true else d540 else if true then false else d238
        d1084 : ( ( Set -> Set ) ∋ ( ( λ x1087 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1084 = ( ( Bool -> Bool ) ∋ ( ( λ x1085 -> ( ( Bool -> Bool ) ∋ ( ( λ x1086 -> x1086 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d109 )
        d1088 : ( ( Set -> Set ) ∋ ( ( λ x1091 -> ( ( Set -> Set ) ∋ ( ( λ x1092 -> Bool ) ) ) $ ( x1091 ) ) ) ) $ ( if false then Bool else Bool )
        d1088 = ( ( Bool -> Bool ) ∋ ( ( λ x1089 -> ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> false ) ) ) $ ( true ) ) ) ) $ ( if d715 then true else d170 )
        d1093 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1093 = if if d295 then d1014 else d269 then if d426 then false else d864 else if false then true else d512
        d1094 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1094 = ( ( Bool -> Bool ) ∋ ( ( λ x1095 -> if true then d77 else false ) ) ) $ ( if true then d452 else d740 )
        d1096 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1096 = if if true then d126 else d779 then if d543 then d877 else false else if d545 then d17 else d233
        d1097 : ( ( Set -> Set ) ∋ ( ( λ x1098 -> ( ( Set -> Set ) ∋ ( ( λ x1099 -> Bool ) ) ) $ ( x1098 ) ) ) ) $ ( if true then Bool else Bool )
        d1097 = if if true then d645 else d579 then if d156 then true else false else if d529 then true else d76
        d1100 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1100 = if if true then d774 else d391 then if true then false else false else if true then d1040 else true
        d1101 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1101 = ( ( Bool -> Bool ) ∋ ( ( λ x1102 -> ( ( Bool -> Bool ) ∋ ( ( λ x1103 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d1104 : ( ( Set -> Set ) ∋ ( ( λ x1107 -> ( ( Set -> Set ) ∋ ( ( λ x1108 -> Bool ) ) ) $ ( x1107 ) ) ) ) $ ( if true then Bool else Bool )
        d1104 = ( ( Bool -> Bool ) ∋ ( ( λ x1105 -> ( ( Bool -> Bool ) ∋ ( ( λ x1106 -> false ) ) ) $ ( x1105 ) ) ) ) $ ( if d458 then d1037 else d831 )
        d1109 : ( ( Set -> Set ) ∋ ( ( λ x1112 -> if false then x1112 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1109 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> ( ( Bool -> Bool ) ∋ ( ( λ x1111 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else d850 )
        d1113 : ( ( Set -> Set ) ∋ ( ( λ x1116 -> ( ( Set -> Set ) ∋ ( ( λ x1117 -> x1117 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1113 = ( ( Bool -> Bool ) ∋ ( ( λ x1114 -> ( ( Bool -> Bool ) ∋ ( ( λ x1115 -> x1114 ) ) ) $ ( d930 ) ) ) ) $ ( if false then true else d947 )
        d1118 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1118 = if if false then d474 else d853 then if d344 then d836 else d192 else if d841 then d249 else d618
        d1119 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1119 = if if true then d232 else d1064 then if d88 then d11 else d381 else if false then d546 else d884
        d1120 : ( ( Set -> Set ) ∋ ( ( λ x1121 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1120 = if if d1094 then d674 else d85 then if d288 then true else d394 else if false then true else d235