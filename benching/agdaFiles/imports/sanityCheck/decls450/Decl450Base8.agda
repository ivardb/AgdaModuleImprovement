module Decl450Base8  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else x2 ) ) ) $ ( if false then Bool else Bool )
        d1 = if if false then true else false then if true then true else false else if false then false else true
        d3 : if true then if false then Bool else Bool else if true then Bool else Bool
        d3 = if if d1 then true else true then if d1 then d1 else d1 else if d1 then false else d1
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d4 = if if false then d1 else d1 then if true then true else false else if false then d1 else d1
        d6 : if false then if false then Bool else Bool else if false then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d4 then d1 else x7 ) ) ) $ ( if d4 then d3 else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d12 : if true then if false then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if d3 then false else x13 ) ) ) $ ( if d4 then true else d3 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x15 ) ) ) $ ( x15 ) ) ) ) $ ( if true then Bool else Bool )
        d14 = if if false then d12 else false then if d6 then false else d1 else if d8 then false else false
        d17 : if false then if true then Bool else Bool else if true then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> d4 ) ) ) $ ( d4 ) ) ) ) $ ( if true then d6 else true )
        d20 : if true then if false then Bool else Bool else if true then Bool else Bool
        d20 = if if true then false else d1 then if true then d6 else d17 else if d8 then d1 else d1
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d21 = if if true then false else d14 then if true then d6 else true else if false then d14 else true
        d23 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> true ) ) ) $ ( x24 ) ) ) ) $ ( if false then false else d14 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then x29 else x29 ) ) ) $ ( if false then Bool else Bool )
        d28 = if if true then d17 else d3 then if d1 then false else d12 else if d3 then d3 else true
        d30 : if false then if false then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if true then x31 else d28 ) ) ) $ ( if false then true else d6 )
        d32 : if true then if true then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if x33 then false else true ) ) ) $ ( if false then d1 else d6 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = if if d8 then d4 else d30 then if d23 then false else d17 else if d23 then true else d30
        d37 : if false then if true then Bool else Bool else if true then Bool else Bool
        d37 = if if true then false else false then if d32 then false else true else if d1 then d21 else false
        d38 : if false then if false then Bool else Bool else if true then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if true then x42 else Bool ) ) ) $ ( if true then Bool else Bool )
        d41 = if if d23 then true else false then if d32 then false else d8 else if d30 then false else false
        d43 : if true then if true then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if d37 then x44 else x44 ) ) ) $ ( if false then d41 else false )
        d45 : if false then if true then Bool else Bool else if false then Bool else Bool
        d45 = if if true then true else true then if d38 then true else true else if false then d30 else d34
        d46 : if true then if true then Bool else Bool else if false then Bool else Bool
        d46 = if if true then d45 else d43 then if true then false else false else if d23 then true else false
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( x48 ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if false then d23 else d43 then if d28 then false else d45 else if false then true else d38
        d50 : if false then if true then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if true then d12 else false ) ) ) $ ( if false then true else true )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d52 = if if d6 then d1 else d17 then if false then false else d34 else if true then true else true
        d54 : if true then if true then Bool else Bool else if false then Bool else Bool
        d54 = if if true then d12 else d38 then if d3 then false else d6 else if true then true else true
        d55 : if false then if true then Bool else Bool else if true then Bool else Bool
        d55 = if if false then d3 else d14 then if d21 then false else true else if d43 then d28 else d52
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if x57 then d1 else true ) ) ) $ ( if d52 then d46 else d3 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d14 then d1 else true ) ) ) $ ( if false then d6 else true )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then x63 else x63 ) ) ) $ ( if false then Bool else Bool )
        d62 = if if d4 then d12 else false then if d54 then true else d38 else if d52 then true else d4
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = if if false then d56 else d52 then if d12 then d47 else d34 else if d32 then false else false
        d66 : if true then if true then Bool else Bool else if false then Bool else Bool
        d66 = if if false then d28 else d6 then if false then true else d62 else if true then true else d45
        d67 : if false then if true then Bool else Bool else if true then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if d6 then true else false ) ) ) $ ( if false then d66 else true )
        d69 : if true then if false then Bool else Bool else if false then Bool else Bool
        d69 = if if d56 then true else d17 then if d43 then d67 else true else if d46 then d21 else d12
        d70 : if true then if false then Bool else Bool else if true then Bool else Bool
        d70 = if if false then d59 else d23 then if true then d34 else d17 else if d34 then d37 else false
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then Bool else x73 ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if d21 then x72 else false ) ) ) $ ( if d6 then d4 else d62 )
        d74 : if true then if false then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> x76 ) ) ) $ ( true ) ) ) ) $ ( if true then d21 else false )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> d69 ) ) ) $ ( x78 ) ) ) ) $ ( if false then true else d45 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( x83 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if d59 then true else false then if d14 then true else true else if d28 then true else d69
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d85 = if if d32 then false else d30 then if false then d69 else d56 else if false then true else true
        d88 : if false then if true then Bool else Bool else if false then Bool else Bool
        d88 = if if d12 then false else true then if d20 then false else d59 else if false then d41 else false
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> x91 ) ) ) $ ( x90 ) ) ) ) $ ( if false then Bool else Bool )
        d89 = if if d67 then d6 else true then if true then true else d50 else if false then false else d74
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x94 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d92 = if if d23 then false else d32 then if true then d56 else true else if false then true else true
        d95 : if true then if false then Bool else Bool else if false then Bool else Bool
        d95 = if if false then true else d82 then if d56 then true else d4 else if d23 then d71 else false
        d96 : if true then if false then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if false then false else d89 ) ) ) $ ( if true then d46 else false )
        d98 : if true then if false then Bool else Bool else if true then Bool else Bool
        d98 = if if true then false else d1 then if d3 then false else false else if false then false else false
        d99 : if false then if false then Bool else Bool else if false then Bool else Bool
        d99 = if if true then false else d82 then if false then d37 else true else if d20 then true else d3
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d100 = if if false then d99 else d62 then if d71 then d17 else d52 else if d1 then false else d82
        d102 : if true then if false then Bool else Bool else if true then Bool else Bool
        d102 = if if false then d34 else d56 then if true then false else false else if d55 then d45 else false
        d103 : if false then if false then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> d47 ) ) ) $ ( x104 ) ) ) ) $ ( if d99 then d95 else d85 )
        d106 : if false then if false then Bool else Bool else if false then Bool else Bool
        d106 = if if false then false else false then if d77 then false else d55 else if true then false else d103
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> x109 ) ) ) $ ( x108 ) ) ) ) $ ( if true then Bool else Bool )
        d107 = if if d8 then d3 else true then if false then true else true else if true then d23 else d52
        d110 : if true then if false then Bool else Bool else if false then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d88 ) ) ) $ ( d28 ) ) ) ) $ ( if false then d56 else true )
        d113 : if true then if true then Bool else Bool else if false then Bool else Bool
        d113 = if if d77 then false else true then if d98 then d88 else d8 else if true then false else true
        d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if false then false else d45 ) ) ) $ ( if d28 then d38 else false )
        d118 : if false then if false then Bool else Bool else if true then Bool else Bool
        d118 = if if false then d92 else true then if false then d21 else d50 else if true then false else d114
        d119 : if true then if false then Bool else Bool else if false then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> x120 ) ) ) $ ( x120 ) ) ) ) $ ( if true then d114 else false )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> x125 ) ) ) $ ( x125 ) ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> d66 ) ) ) $ ( x123 ) ) ) ) $ ( if true then d113 else true )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> x128 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d127 = if if d110 then d64 else d3 then if d66 then d70 else true else if false then d1 else d106
        d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if false then x132 else Bool ) ) ) $ ( if false then Bool else Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if x131 then x131 else x131 ) ) ) $ ( if false then false else d62 )
        d133 : if false then if true then Bool else Bool else if true then Bool else Bool
        d133 = if if d12 then false else true then if false then d74 else d92 else if false then false else d6
        d134 : if false then if true then Bool else Bool else if true then Bool else Bool
        d134 = if if false then true else d30 then if false then d56 else d59 else if d54 then true else d69
        d135 : if false then if false then Bool else Bool else if false then Bool else Bool
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> if true then false else d67 ) ) ) $ ( if false then true else false )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if false then Bool else x139 ) ) ) $ ( if true then Bool else Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> if d66 then d98 else d45 ) ) ) $ ( if false then true else true )
        d140 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> x142 ) ) ) $ ( x142 ) ) ) ) $ ( if false then Bool else Bool )
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> if d21 then true else x141 ) ) ) $ ( if d34 then d47 else d89 )
        d144 : if true then if true then Bool else Bool else if true then Bool else Bool
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x145 -> ( ( Bool -> Bool ) ∋ ( ( λ x146 -> x146 ) ) ) $ ( x145 ) ) ) ) $ ( if false then false else false )
        d147 : if true then if true then Bool else Bool else if true then Bool else Bool
        d147 = if if d89 then false else false then if false then d3 else true else if d56 then true else false
        d148 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then x150 else x150 ) ) ) $ ( if true then Bool else Bool )
        d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> if x149 then x149 else false ) ) ) $ ( if d144 then d119 else d14 )
        d151 : if true then if true then Bool else Bool else if false then Bool else Bool
        d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( Bool -> Bool ) ∋ ( ( λ x153 -> x152 ) ) ) $ ( d32 ) ) ) ) $ ( if d85 then d30 else true )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> ( ( Set -> Set ) ∋ ( ( λ x156 -> x156 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d154 = if if true then true else d70 then if d28 then true else true else if d28 then true else true
        d157 : if true then if true then Bool else Bool else if false then Bool else Bool
        d157 = if if d6 then true else d107 then if d144 then d96 else d127 else if false then d134 else d100
        d158 : ( ( Set -> Set ) ∋ ( ( λ x161 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> ( ( Bool -> Bool ) ∋ ( ( λ x160 -> d74 ) ) ) $ ( x159 ) ) ) ) $ ( if true then true else d82 )
        d162 : if true then if false then Bool else Bool else if false then Bool else Bool
        d162 = if if d4 then d110 else d1 then if d20 then false else d67 else if d92 then false else true
        d163 : if true then if false then Bool else Bool else if false then Bool else Bool
        d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> if d77 then x164 else d23 ) ) ) $ ( if false then false else d147 )
        d165 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> ( ( Bool -> Bool ) ∋ ( ( λ x167 -> true ) ) ) $ ( d130 ) ) ) ) $ ( if d102 then false else d20 )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x172 -> if false then Bool else x172 ) ) ) $ ( if false then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> if d69 then x171 else d96 ) ) ) $ ( if true then false else d82 )
        d173 : if true then if true then Bool else Bool else if true then Bool else Bool
        d173 = ( ( Bool -> Bool ) ∋ ( ( λ x174 -> if true then d98 else true ) ) ) $ ( if d55 then true else true )
        d175 : if true then if false then Bool else Bool else if false then Bool else Bool
        d175 = ( ( Bool -> Bool ) ∋ ( ( λ x176 -> if true then true else x176 ) ) ) $ ( if d28 then false else false )
        d177 : ( ( Set -> Set ) ∋ ( ( λ x179 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( x179 ) ) ) ) $ ( if true then Bool else Bool )
        d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> if true then x178 else false ) ) ) $ ( if d140 then false else false )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x182 -> if true then x182 else Bool ) ) ) $ ( if true then Bool else Bool )
        d181 = if if true then true else d95 then if d21 then false else true else if false then d77 else false
        d183 : if true then if false then Bool else Bool else if true then Bool else Bool
        d183 = if if false then false else false then if true then false else d133 else if d137 then d162 else d6
        d184 : if false then if false then Bool else Bool else if false then Bool else Bool
        d184 = if if true then false else d66 then if d103 then d6 else d103 else if d118 then true else true
        d185 : ( ( Set -> Set ) ∋ ( ( λ x187 -> ( ( Set -> Set ) ∋ ( ( λ x188 -> x188 ) ) ) $ ( x187 ) ) ) ) $ ( if true then Bool else Bool )
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> if true then false else x186 ) ) ) $ ( if false then d8 else d147 )
        d189 : if false then if false then Bool else Bool else if true then Bool else Bool
        d189 = if if d114 then true else false then if true then true else false else if true then true else false
        d190 : ( ( Set -> Set ) ∋ ( ( λ x192 -> ( ( Set -> Set ) ∋ ( ( λ x193 -> x193 ) ) ) $ ( x192 ) ) ) ) $ ( if false then Bool else Bool )
        d190 = ( ( Bool -> Bool ) ∋ ( ( λ x191 -> if false then x191 else d102 ) ) ) $ ( if true then d175 else true )
        d194 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> if true then d41 else x195 ) ) ) $ ( if true then false else false )
        d198 : ( ( Set -> Set ) ∋ ( ( λ x199 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d198 = if if true then false else d14 then if true then d95 else d181 else if true then d56 else d28
        d201 : ( ( Set -> Set ) ∋ ( ( λ x202 -> ( ( Set -> Set ) ∋ ( ( λ x203 -> x202 ) ) ) $ ( x202 ) ) ) ) $ ( if false then Bool else Bool )
        d201 = if if d82 then d113 else d100 then if false then false else d23 else if true then false else d77
        d204 : if true then if false then Bool else Bool else if false then Bool else Bool
        d204 = ( ( Bool -> Bool ) ∋ ( ( λ x205 -> if true then true else d66 ) ) ) $ ( if true then d127 else d55 )
        d206 : ( ( Set -> Set ) ∋ ( ( λ x209 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> x209 ) ) ) $ ( x209 ) ) ) ) $ ( if false then Bool else Bool )
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> ( ( Bool -> Bool ) ∋ ( ( λ x208 -> d154 ) ) ) $ ( d17 ) ) ) ) $ ( if d183 then d99 else false )
        d211 : ( ( Set -> Set ) ∋ ( ( λ x213 -> if false then Bool else x213 ) ) ) $ ( if false then Bool else Bool )
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x212 -> if x212 then d4 else d106 ) ) ) $ ( if true then true else d59 )
        d214 : if true then if true then Bool else Bool else if true then Bool else Bool
        d214 = ( ( Bool -> Bool ) ∋ ( ( λ x215 -> ( ( Bool -> Bool ) ∋ ( ( λ x216 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then true else d8 )
        d217 : if false then if false then Bool else Bool else if false then Bool else Bool
        d217 = if if false then d148 else d118 then if d102 then true else false else if d95 then true else d59
        d218 : ( ( Set -> Set ) ∋ ( ( λ x221 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d218 = ( ( Bool -> Bool ) ∋ ( ( λ x219 -> ( ( Bool -> Bool ) ∋ ( ( λ x220 -> d82 ) ) ) $ ( x219 ) ) ) ) $ ( if d110 then d32 else d217 )
        d222 : if true then if true then Bool else Bool else if false then Bool else Bool
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x223 -> ( ( Bool -> Bool ) ∋ ( ( λ x224 -> x224 ) ) ) $ ( d34 ) ) ) ) $ ( if true then false else false )
        d225 : if false then if false then Bool else Bool else if true then Bool else Bool
        d225 = if if d165 then false else false then if d162 then d110 else d71 else if d45 then d4 else d107
        d226 : if true then if false then Bool else Bool else if false then Bool else Bool
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x227 -> ( ( Bool -> Bool ) ∋ ( ( λ x228 -> true ) ) ) $ ( d127 ) ) ) ) $ ( if false then false else d137 )
        d229 : ( ( Set -> Set ) ∋ ( ( λ x232 -> ( ( Set -> Set ) ∋ ( ( λ x233 -> x232 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x231 -> x231 ) ) ) $ ( x230 ) ) ) ) $ ( if d137 then d23 else false )
        d234 : ( ( Set -> Set ) ∋ ( ( λ x236 -> ( ( Set -> Set ) ∋ ( ( λ x237 -> x237 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d234 = ( ( Bool -> Bool ) ∋ ( ( λ x235 -> if d204 then true else false ) ) ) $ ( if d38 then d32 else true )
        d238 : if true then if false then Bool else Bool else if false then Bool else Bool
        d238 = if if true then true else d140 then if d177 then false else d218 else if d214 then true else false
        d239 : if true then if true then Bool else Bool else if false then Bool else Bool
        d239 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if false then d28 else d217 ) ) ) $ ( if d157 then d118 else true )
        d241 : if true then if true then Bool else Bool else if false then Bool else Bool
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x242 -> if x242 then x242 else d89 ) ) ) $ ( if true then false else true )
        d243 : if true then if false then Bool else Bool else if false then Bool else Bool
        d243 = if if true then false else d147 then if false then true else true else if false then false else false
        d244 : ( ( Set -> Set ) ∋ ( ( λ x245 -> ( ( Set -> Set ) ∋ ( ( λ x246 -> x245 ) ) ) $ ( x245 ) ) ) ) $ ( if true then Bool else Bool )
        d244 = if if true then d135 else true then if d137 then false else d175 else if false then d6 else false
        d247 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x251 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x248 -> ( ( Bool -> Bool ) ∋ ( ( λ x249 -> x249 ) ) ) $ ( false ) ) ) ) $ ( if d154 then d30 else true )
        d252 : ( ( Set -> Set ) ∋ ( ( λ x255 -> ( ( Set -> Set ) ∋ ( ( λ x256 -> Bool ) ) ) $ ( x255 ) ) ) ) $ ( if false then Bool else Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x253 -> ( ( Bool -> Bool ) ∋ ( ( λ x254 -> x253 ) ) ) $ ( x253 ) ) ) ) $ ( if true then d163 else d185 )
        d257 : ( ( Set -> Set ) ∋ ( ( λ x259 -> if false then Bool else x259 ) ) ) $ ( if true then Bool else Bool )
        d257 = ( ( Bool -> Bool ) ∋ ( ( λ x258 -> if x258 then false else true ) ) ) $ ( if true then d177 else false )
        d260 : ( ( Set -> Set ) ∋ ( ( λ x261 -> ( ( Set -> Set ) ∋ ( ( λ x262 -> x261 ) ) ) $ ( x261 ) ) ) ) $ ( if true then Bool else Bool )
        d260 = if if d119 then d100 else d82 then if d17 then d238 else d238 else if d20 then false else true
        d263 : ( ( Set -> Set ) ∋ ( ( λ x265 -> if true then Bool else x265 ) ) ) $ ( if false then Bool else Bool )
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x264 -> if false then d106 else x264 ) ) ) $ ( if true then d66 else false )
        d266 : if true then if true then Bool else Bool else if true then Bool else Bool
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x267 -> ( ( Bool -> Bool ) ∋ ( ( λ x268 -> d241 ) ) ) $ ( false ) ) ) ) $ ( if false then d30 else false )
        d269 : ( ( Set -> Set ) ∋ ( ( λ x272 -> ( ( Set -> Set ) ∋ ( ( λ x273 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d269 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> ( ( Bool -> Bool ) ∋ ( ( λ x271 -> false ) ) ) $ ( d30 ) ) ) ) $ ( if d56 then false else d163 )
        d274 : ( ( Set -> Set ) ∋ ( ( λ x275 -> ( ( Set -> Set ) ∋ ( ( λ x276 -> x275 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d274 = if if true then d43 else d173 then if true then false else true else if true then true else d175
        d277 : ( ( Set -> Set ) ∋ ( ( λ x278 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d277 = if if d103 then false else d6 then if d243 then false else true else if true then false else d21
        d279 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x281 -> x280 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d279 = if if d211 then true else d122 then if d17 then d238 else true else if true then true else false
        d282 : if false then if true then Bool else Bool else if true then Bool else Bool
        d282 = ( ( Bool -> Bool ) ∋ ( ( λ x283 -> ( ( Bool -> Bool ) ∋ ( ( λ x284 -> d4 ) ) ) $ ( d184 ) ) ) ) $ ( if false then false else true )
        d285 : ( ( Set -> Set ) ∋ ( ( λ x288 -> ( ( Set -> Set ) ∋ ( ( λ x289 -> x288 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x286 -> ( ( Bool -> Bool ) ∋ ( ( λ x287 -> x287 ) ) ) $ ( d32 ) ) ) ) $ ( if false then true else true )
        d290 : ( ( Set -> Set ) ∋ ( ( λ x291 -> if true then x291 else x291 ) ) ) $ ( if true then Bool else Bool )
        d290 = if if d46 then true else d77 then if d163 then d201 else true else if true then d185 else true
        d292 : if true then if true then Bool else Bool else if false then Bool else Bool
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x293 -> if true then d135 else x293 ) ) ) $ ( if d92 then false else d82 )
        d294 : ( ( Set -> Set ) ∋ ( ( λ x296 -> if true then Bool else x296 ) ) ) $ ( if true then Bool else Bool )
        d294 = ( ( Bool -> Bool ) ∋ ( ( λ x295 -> if d6 then d28 else d206 ) ) ) $ ( if false then true else true )
        d297 : if false then if false then Bool else Bool else if false then Bool else Bool
        d297 = ( ( Bool -> Bool ) ∋ ( ( λ x298 -> if x298 then x298 else true ) ) ) $ ( if d28 then d88 else d41 )
        d299 : ( ( Set -> Set ) ∋ ( ( λ x302 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x301 -> d217 ) ) ) $ ( false ) ) ) ) $ ( if false then d69 else true )
        d303 : if true then if true then Bool else Bool else if false then Bool else Bool
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x304 -> ( ( Bool -> Bool ) ∋ ( ( λ x305 -> x304 ) ) ) $ ( true ) ) ) ) $ ( if d277 then d247 else false )
        d306 : ( ( Set -> Set ) ∋ ( ( λ x307 -> ( ( Set -> Set ) ∋ ( ( λ x308 -> x308 ) ) ) $ ( x307 ) ) ) ) $ ( if true then Bool else Bool )
        d306 = if if true then d285 else false then if true then d28 else false else if d106 then false else true
        d309 : if false then if true then Bool else Bool else if true then Bool else Bool
        d309 = if if d56 then d292 else d37 then if false then false else d102 else if d157 then d234 else true
        d310 : ( ( Set -> Set ) ∋ ( ( λ x311 -> ( ( Set -> Set ) ∋ ( ( λ x312 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d310 = if if false then d198 else d226 then if true then d127 else false else if d217 then d1 else d154
        d313 : ( ( Set -> Set ) ∋ ( ( λ x314 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d313 = if if d263 then d177 else false then if false then false else d183 else if true then true else d211
        d315 : if false then if true then Bool else Bool else if false then Bool else Bool
        d315 = if if d98 then d69 else false then if d263 then false else true else if d257 then false else false
        d316 : if false then if false then Bool else Bool else if false then Bool else Bool
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x317 -> ( ( Bool -> Bool ) ∋ ( ( λ x318 -> d158 ) ) ) $ ( x317 ) ) ) ) $ ( if true then d59 else true )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then x320 else x320 ) ) ) $ ( if false then Bool else Bool )
        d319 = if if false then true else true then if true then d269 else false else if false then true else d130
        d321 : if true then if false then Bool else Bool else if true then Bool else Bool
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x322 -> ( ( Bool -> Bool ) ∋ ( ( λ x323 -> d211 ) ) ) $ ( d241 ) ) ) ) $ ( if false then d12 else d77 )
        d324 : if false then if true then Bool else Bool else if false then Bool else Bool
        d324 = ( ( Bool -> Bool ) ∋ ( ( λ x325 -> ( ( Bool -> Bool ) ∋ ( ( λ x326 -> false ) ) ) $ ( d306 ) ) ) ) $ ( if d183 then d3 else false )
        d327 : ( ( Set -> Set ) ∋ ( ( λ x330 -> ( ( Set -> Set ) ∋ ( ( λ x331 -> x330 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x328 -> ( ( Bool -> Bool ) ∋ ( ( λ x329 -> x328 ) ) ) $ ( d309 ) ) ) ) $ ( if false then d127 else d244 )
        d332 : ( ( Set -> Set ) ∋ ( ( λ x333 -> ( ( Set -> Set ) ∋ ( ( λ x334 -> x333 ) ) ) $ ( x333 ) ) ) ) $ ( if false then Bool else Bool )
        d332 = if if d327 then d71 else d306 then if d229 then false else d243 else if false then true else d34
        d335 : if true then if true then Bool else Bool else if true then Bool else Bool
        d335 = if if d41 then true else d1 then if false then true else true else if true then true else true
        d336 : if true then if false then Bool else Bool else if false then Bool else Bool
        d336 = ( ( Bool -> Bool ) ∋ ( ( λ x337 -> ( ( Bool -> Bool ) ∋ ( ( λ x338 -> true ) ) ) $ ( d46 ) ) ) ) $ ( if true then true else false )
        d339 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if false then x340 else x340 ) ) ) $ ( if true then Bool else Bool )
        d339 = if if d56 then false else d135 then if d321 then true else true else if true then d144 else true
        d341 : if false then if true then Bool else Bool else if false then Bool else Bool
        d341 = if if d88 then false else false then if d118 then d269 else false else if d181 then true else true
        d342 : if false then if false then Bool else Bool else if true then Bool else Bool
        d342 = if if false then d238 else true then if false then false else false else if false then false else d225
        d343 : if false then if false then Bool else Bool else if false then Bool else Bool
        d343 = if if false then true else d34 then if d12 then d28 else true else if d3 then true else false
        d344 : ( ( Set -> Set ) ∋ ( ( λ x345 -> if true then Bool else x345 ) ) ) $ ( if true then Bool else Bool )
        d344 = if if false then false else false then if true then true else d279 else if false then false else d50
        d346 : ( ( Set -> Set ) ∋ ( ( λ x349 -> if false then x349 else x349 ) ) ) $ ( if false then Bool else Bool )
        d346 = ( ( Bool -> Bool ) ∋ ( ( λ x347 -> ( ( Bool -> Bool ) ∋ ( ( λ x348 -> true ) ) ) $ ( false ) ) ) ) $ ( if d239 then d140 else true )
        d350 : ( ( Set -> Set ) ∋ ( ( λ x353 -> ( ( Set -> Set ) ∋ ( ( λ x354 -> x353 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d350 = ( ( Bool -> Bool ) ∋ ( ( λ x351 -> ( ( Bool -> Bool ) ∋ ( ( λ x352 -> d100 ) ) ) $ ( false ) ) ) ) $ ( if false then d343 else d8 )
        d355 : if false then if true then Bool else Bool else if true then Bool else Bool
        d355 = if if false then d341 else d66 then if d56 then false else false else if true then d343 else true
        d356 : ( ( Set -> Set ) ∋ ( ( λ x359 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x357 -> ( ( Bool -> Bool ) ∋ ( ( λ x358 -> true ) ) ) $ ( d252 ) ) ) ) $ ( if true then false else d244 )
        d361 : ( ( Set -> Set ) ∋ ( ( λ x362 -> if true then Bool else x362 ) ) ) $ ( if true then Bool else Bool )
        d361 = if if d343 then d148 else false then if d122 then d32 else d98 else if d148 then d56 else true
        d363 : ( ( Set -> Set ) ∋ ( ( λ x364 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d363 = if if true then false else d316 then if true then true else d282 else if true then true else false
        d365 : ( ( Set -> Set ) ∋ ( ( λ x366 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d365 = if if true then d32 else false then if d102 then true else d222 else if d62 then d226 else false
        d367 : ( ( Set -> Set ) ∋ ( ( λ x370 -> if false then x370 else x370 ) ) ) $ ( if false then Bool else Bool )
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x368 -> ( ( Bool -> Bool ) ∋ ( ( λ x369 -> x369 ) ) ) $ ( x368 ) ) ) ) $ ( if true then true else true )
        d371 : ( ( Set -> Set ) ∋ ( ( λ x372 -> ( ( Set -> Set ) ∋ ( ( λ x373 -> x373 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d371 = if if d107 then true else d350 then if true then d50 else true else if false then d37 else d21
        d374 : ( ( Set -> Set ) ∋ ( ( λ x375 -> ( ( Set -> Set ) ∋ ( ( λ x376 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d374 = if if d8 then d54 else d332 then if false then false else d218 else if d343 then d4 else false
        d377 : if false then if false then Bool else Bool else if true then Bool else Bool
        d377 = if if false then d239 else false then if true then false else true else if false then d339 else d335
        d378 : if true then if false then Bool else Bool else if true then Bool else Bool
        d378 = if if false then false else d71 then if d184 then d201 else d135 else if true then false else d140
        d379 : ( ( Set -> Set ) ∋ ( ( λ x380 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d379 = if if d133 then d41 else true then if d183 then false else d133 else if d175 then true else true
        d381 : if false then if false then Bool else Bool else if false then Bool else Bool
        d381 = ( ( Bool -> Bool ) ∋ ( ( λ x382 -> if false then d50 else true ) ) ) $ ( if d133 then d218 else d85 )
        d383 : ( ( Set -> Set ) ∋ ( ( λ x384 -> if false then x384 else Bool ) ) ) $ ( if false then Bool else Bool )
        d383 = if if d297 then true else d62 then if d229 then true else d381 else if false then false else true
        d385 : if false then if false then Bool else Bool else if true then Bool else Bool
        d385 = ( ( Bool -> Bool ) ∋ ( ( λ x386 -> ( ( Bool -> Bool ) ∋ ( ( λ x387 -> x386 ) ) ) $ ( false ) ) ) ) $ ( if false then d55 else d309 )
        d388 : if true then if false then Bool else Bool else if false then Bool else Bool
        d388 = ( ( Bool -> Bool ) ∋ ( ( λ x389 -> if d266 then true else d157 ) ) ) $ ( if false then d257 else d285 )
        d390 : ( ( Set -> Set ) ∋ ( ( λ x392 -> if false then x392 else x392 ) ) ) $ ( if true then Bool else Bool )
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x391 -> if x391 then x391 else x391 ) ) ) $ ( if true then false else d269 )
        d393 : ( ( Set -> Set ) ∋ ( ( λ x395 -> ( ( Set -> Set ) ∋ ( ( λ x396 -> Bool ) ) ) $ ( x395 ) ) ) ) $ ( if false then Bool else Bool )
        d393 = ( ( Bool -> Bool ) ∋ ( ( λ x394 -> if d356 then x394 else x394 ) ) ) $ ( if d45 then d89 else d77 )
        d397 : ( ( Set -> Set ) ∋ ( ( λ x399 -> if true then x399 else Bool ) ) ) $ ( if true then Bool else Bool )
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x398 -> if false then false else d54 ) ) ) $ ( if true then d135 else true )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x402 -> ( ( Set -> Set ) ∋ ( ( λ x403 -> x403 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x401 -> if true then d225 else false ) ) ) $ ( if d46 then false else d217 )
        d404 : if true then if true then Bool else Bool else if true then Bool else Bool
        d404 = if if false then d292 else d277 then if false then d225 else d263 else if false then d346 else true
        d405 : ( ( Set -> Set ) ∋ ( ( λ x406 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d405 = if if true then false else false then if false then false else true else if d346 then d8 else false
        d407 : if false then if false then Bool else Bool else if false then Bool else Bool
        d407 = if if d335 then true else false then if false then d306 else true else if false then true else false
        d408 : ( ( Set -> Set ) ∋ ( ( λ x409 -> ( ( Set -> Set ) ∋ ( ( λ x410 -> x409 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d408 = if if d158 then true else d371 then if d374 then d313 else d400 else if d234 then d211 else false
        d411 : if true then if true then Bool else Bool else if false then Bool else Bool
        d411 = if if d324 then d89 else true then if d147 then true else true else if d214 then true else true
        d412 : if false then if true then Bool else Bool else if false then Bool else Bool
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x413 -> if x413 then false else d274 ) ) ) $ ( if false then true else d3 )
        d414 : if false then if true then Bool else Bool else if false then Bool else Bool
        d414 = ( ( Bool -> Bool ) ∋ ( ( λ x415 -> ( ( Bool -> Bool ) ∋ ( ( λ x416 -> d28 ) ) ) $ ( true ) ) ) ) $ ( if d204 then d367 else d339 )
        d417 : ( ( Set -> Set ) ∋ ( ( λ x418 -> if true then Bool else x418 ) ) ) $ ( if false then Bool else Bool )
        d417 = if if true then true else false then if d12 then true else true else if d211 then d299 else d319
        d419 : ( ( Set -> Set ) ∋ ( ( λ x420 -> ( ( Set -> Set ) ∋ ( ( λ x421 -> x420 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d419 = if if false then d381 else false then if d309 then d71 else d165 else if true then d393 else false
        d422 : if true then if false then Bool else Bool else if false then Bool else Bool
        d422 = if if d365 then d378 else true then if d130 then d148 else false else if true then d66 else d20
        d423 : ( ( Set -> Set ) ∋ ( ( λ x424 -> if false then x424 else Bool ) ) ) $ ( if true then Bool else Bool )
        d423 = if if d243 then d95 else false then if true then true else false else if true then true else d102
        d425 : if false then if true then Bool else Bool else if false then Bool else Bool
        d425 = ( ( Bool -> Bool ) ∋ ( ( λ x426 -> if x426 then true else d185 ) ) ) $ ( if d175 then true else d335 )
        d427 : if true then if true then Bool else Bool else if false then Bool else Bool
        d427 = if if true then false else true then if true then d189 else d274 else if d299 then false else d292
        d428 : ( ( Set -> Set ) ∋ ( ( λ x429 -> ( ( Set -> Set ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d428 = if if d383 then d113 else false then if true then false else true else if d47 then false else true
        d431 : ( ( Set -> Set ) ∋ ( ( λ x432 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d431 = if if d134 then false else false then if d113 then true else true else if false then d43 else d239
        d433 : ( ( Set -> Set ) ∋ ( ( λ x434 -> ( ( Set -> Set ) ∋ ( ( λ x435 -> Bool ) ) ) $ ( x434 ) ) ) ) $ ( if false then Bool else Bool )
        d433 = if if d303 then d422 else false then if d327 then true else d422 else if d335 then d144 else true
        d436 : ( ( Set -> Set ) ∋ ( ( λ x438 -> if false then x438 else Bool ) ) ) $ ( if false then Bool else Bool )
        d436 = ( ( Bool -> Bool ) ∋ ( ( λ x437 -> if d269 then x437 else x437 ) ) ) $ ( if d52 then true else true )
        d439 : if false then if false then Bool else Bool else if false then Bool else Bool
        d439 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x441 -> x440 ) ) ) $ ( false ) ) ) ) $ ( if d343 then d241 else d17 )
        d442 : if true then if true then Bool else Bool else if true then Bool else Bool
        d442 = if if false then d37 else d54 then if true then false else true else if d135 then d70 else true
        d443 : if false then if true then Bool else Bool else if false then Bool else Bool
        d443 = if if false then d41 else false then if false then d367 else false else if d71 then false else d92
        d444 : if true then if false then Bool else Bool else if false then Bool else Bool
        d444 = if if true then d313 else true then if true then d390 else d346 else if d194 then d238 else d266
        d445 : if true then if true then Bool else Bool else if true then Bool else Bool
        d445 = if if d30 then true else false then if false then true else d341 else if d306 then d173 else d1
        d446 : if false then if false then Bool else Bool else if true then Bool else Bool
        d446 = if if d217 then d23 else false then if false then true else true else if true then d198 else d309
        d447 : if false then if true then Bool else Bool else if true then Bool else Bool
        d447 = if if true then d110 else false then if d404 then d294 else false else if false then true else true
        d448 : ( ( Set -> Set ) ∋ ( ( λ x451 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x449 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( d319 ) ) ) ) $ ( if true then d303 else d378 )
        d452 : ( ( Set -> Set ) ∋ ( ( λ x454 -> if true then x454 else Bool ) ) ) $ ( if true then Bool else Bool )
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x453 -> if false then true else d390 ) ) ) $ ( if d428 then false else false )
        d455 : if false then if true then Bool else Bool else if false then Bool else Bool
        d455 = ( ( Bool -> Bool ) ∋ ( ( λ x456 -> ( ( Bool -> Bool ) ∋ ( ( λ x457 -> x457 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d260 )
        d458 : if true then if false then Bool else Bool else if true then Bool else Bool
        d458 = if if false then d43 else false then if false then true else false else if false then d297 else d206
        d459 : if true then if false then Bool else Bool else if true then Bool else Bool
        d459 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x461 -> true ) ) ) $ ( x460 ) ) ) ) $ ( if true then d183 else false )
        d462 : ( ( Set -> Set ) ∋ ( ( λ x465 -> if false then Bool else x465 ) ) ) $ ( if false then Bool else Bool )
        d462 = ( ( Bool -> Bool ) ∋ ( ( λ x463 -> ( ( Bool -> Bool ) ∋ ( ( λ x464 -> false ) ) ) $ ( x463 ) ) ) ) $ ( if true then false else true )
        d466 : if false then if true then Bool else Bool else if false then Bool else Bool
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x467 -> if x467 then x467 else x467 ) ) ) $ ( if true then false else false )
        d468 : if true then if true then Bool else Bool else if true then Bool else Bool
        d468 = ( ( Bool -> Bool ) ∋ ( ( λ x469 -> if x469 then false else x469 ) ) ) $ ( if d106 then d385 else false )
        d470 : ( ( Set -> Set ) ∋ ( ( λ x472 -> if true then x472 else x472 ) ) ) $ ( if false then Bool else Bool )
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x471 -> if false then x471 else d452 ) ) ) $ ( if d442 then false else true )
        d473 : ( ( Set -> Set ) ∋ ( ( λ x475 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d473 = ( ( Bool -> Bool ) ∋ ( ( λ x474 -> if x474 then x474 else x474 ) ) ) $ ( if true then false else true )
        d476 : ( ( Set -> Set ) ∋ ( ( λ x478 -> ( ( Set -> Set ) ∋ ( ( λ x479 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x477 -> if d103 then d344 else d77 ) ) ) $ ( if d162 then true else d34 )
        d480 : if false then if true then Bool else Bool else if true then Bool else Bool
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x481 -> if d385 then false else x481 ) ) ) $ ( if true then true else false )
        d482 : ( ( Set -> Set ) ∋ ( ( λ x485 -> ( ( Set -> Set ) ∋ ( ( λ x486 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d482 = ( ( Bool -> Bool ) ∋ ( ( λ x483 -> ( ( Bool -> Bool ) ∋ ( ( λ x484 -> d194 ) ) ) $ ( x483 ) ) ) ) $ ( if d46 then true else d319 )
        d487 : if true then if true then Bool else Bool else if false then Bool else Bool
        d487 = ( ( Bool -> Bool ) ∋ ( ( λ x488 -> ( ( Bool -> Bool ) ∋ ( ( λ x489 -> d147 ) ) ) $ ( d122 ) ) ) ) $ ( if d292 then true else d343 )
        d490 : if true then if false then Bool else Bool else if false then Bool else Bool
        d490 = ( ( Bool -> Bool ) ∋ ( ( λ x491 -> ( ( Bool -> Bool ) ∋ ( ( λ x492 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then true else d119 )
        d493 : ( ( Set -> Set ) ∋ ( ( λ x495 -> ( ( Set -> Set ) ∋ ( ( λ x496 -> Bool ) ) ) $ ( x495 ) ) ) ) $ ( if false then Bool else Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x494 -> if false then x494 else true ) ) ) $ ( if d130 then true else d54 )
        d497 : ( ( Set -> Set ) ∋ ( ( λ x499 -> if false then x499 else x499 ) ) ) $ ( if false then Bool else Bool )
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x498 -> if true then d113 else x498 ) ) ) $ ( if false then d38 else true )
        d500 : if false then if false then Bool else Bool else if true then Bool else Bool
        d500 = ( ( Bool -> Bool ) ∋ ( ( λ x501 -> ( ( Bool -> Bool ) ∋ ( ( λ x502 -> true ) ) ) $ ( true ) ) ) ) $ ( if d64 then false else d482 )
        d503 : if false then if false then Bool else Bool else if true then Bool else Bool
        d503 = ( ( Bool -> Bool ) ∋ ( ( λ x504 -> if false then d106 else d319 ) ) ) $ ( if true then d28 else true )
        d505 : if true then if false then Bool else Bool else if true then Bool else Bool
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x506 -> ( ( Bool -> Bool ) ∋ ( ( λ x507 -> x506 ) ) ) $ ( false ) ) ) ) $ ( if d55 then d425 else d277 )
        d508 : ( ( Set -> Set ) ∋ ( ( λ x510 -> ( ( Set -> Set ) ∋ ( ( λ x511 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x509 -> if false then false else d377 ) ) ) $ ( if d356 then true else false )
        d512 : ( ( Set -> Set ) ∋ ( ( λ x513 -> if false then Bool else x513 ) ) ) $ ( if true then Bool else Bool )
        d512 = if if d21 then true else true then if true then d445 else d480 else if true then d407 else true
        d514 : if false then if true then Bool else Bool else if false then Bool else Bool
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x515 -> ( ( Bool -> Bool ) ∋ ( ( λ x516 -> true ) ) ) $ ( d493 ) ) ) ) $ ( if d508 then false else d43 )
        d517 : ( ( Set -> Set ) ∋ ( ( λ x518 -> if false then Bool else x518 ) ) ) $ ( if false then Bool else Bool )
        d517 = if if d74 then d500 else d459 then if false then false else false else if d113 then d67 else false
        d519 : if true then if true then Bool else Bool else if false then Bool else Bool
        d519 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if x520 then true else false ) ) ) $ ( if false then true else d59 )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x524 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x522 -> ( ( Bool -> Bool ) ∋ ( ( λ x523 -> x523 ) ) ) $ ( true ) ) ) ) $ ( if false then d157 else d55 )
        d525 : if false then if false then Bool else Bool else if true then Bool else Bool
        d525 = ( ( Bool -> Bool ) ∋ ( ( λ x526 -> if true then d238 else x526 ) ) ) $ ( if false then d70 else d41 )
        d527 : if true then if true then Bool else Bool else if true then Bool else Bool
        d527 = if if false then false else true then if true then d50 else true else if true then d122 else true
        d528 : ( ( Set -> Set ) ∋ ( ( λ x531 -> ( ( Set -> Set ) ∋ ( ( λ x532 -> x532 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d528 = ( ( Bool -> Bool ) ∋ ( ( λ x529 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> d385 ) ) ) $ ( true ) ) ) ) $ ( if d154 then true else d335 )
        d533 : ( ( Set -> Set ) ∋ ( ( λ x535 -> if false then x535 else Bool ) ) ) $ ( if false then Bool else Bool )
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x534 -> if false then false else true ) ) ) $ ( if false then d82 else false )
        d536 : ( ( Set -> Set ) ∋ ( ( λ x537 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d536 = if if false then d56 else true then if d527 then d282 else false else if true then d163 else d266
        d538 : ( ( Set -> Set ) ∋ ( ( λ x539 -> if true then x539 else Bool ) ) ) $ ( if true then Bool else Bool )
        d538 = if if d183 then d211 else d247 then if d468 then false else d106 else if false then false else false
        d540 : ( ( Set -> Set ) ∋ ( ( λ x541 -> ( ( Set -> Set ) ∋ ( ( λ x542 -> x541 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d540 = if if false then d462 else true then if false then d92 else false else if false then d393 else false
        d543 : if true then if false then Bool else Bool else if true then Bool else Bool
        d543 = if if false then false else false then if true then d32 else d378 else if d198 then true else false
        d544 : if false then if false then Bool else Bool else if false then Bool else Bool
        d544 = if if d130 then true else false then if false then false else true else if d77 then d85 else true
        d545 : ( ( Set -> Set ) ∋ ( ( λ x546 -> if true then Bool else x546 ) ) ) $ ( if true then Bool else Bool )
        d545 = if if d500 then true else d30 then if true then d315 else d239 else if d365 then d133 else d332
        d547 : ( ( Set -> Set ) ∋ ( ( λ x548 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d547 = if if false then d222 else d3 then if true then true else d448 else if false then d445 else d127
        d549 : ( ( Set -> Set ) ∋ ( ( λ x550 -> if true then Bool else x550 ) ) ) $ ( if true then Bool else Bool )
        d549 = if if d175 then false else true then if d339 then false else true else if true then d459 else false
        d551 : if false then if false then Bool else Bool else if true then Bool else Bool
        d551 = if if d468 then d319 else d106 then if d355 then true else d114 else if d158 then true else d342
        d552 : if true then if true then Bool else Bool else if true then Bool else Bool
        d552 = ( ( Bool -> Bool ) ∋ ( ( λ x553 -> if false then x553 else true ) ) ) $ ( if true then d181 else d549 )
        d554 : if false then if false then Bool else Bool else if true then Bool else Bool
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x555 -> ( ( Bool -> Bool ) ∋ ( ( λ x556 -> d476 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d557 : if true then if false then Bool else Bool else if false then Bool else Bool
        d557 = ( ( Bool -> Bool ) ∋ ( ( λ x558 -> if x558 then x558 else x558 ) ) ) $ ( if true then true else true )
        d559 : if true then if true then Bool else Bool else if true then Bool else Bool
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if false then d45 else d92 ) ) ) $ ( if true then false else d315 )
        d561 : ( ( Set -> Set ) ∋ ( ( λ x564 -> if true then Bool else x564 ) ) ) $ ( if false then Bool else Bool )
        d561 = ( ( Bool -> Bool ) ∋ ( ( λ x562 -> ( ( Bool -> Bool ) ∋ ( ( λ x563 -> x563 ) ) ) $ ( d85 ) ) ) ) $ ( if d98 then d21 else d54 )
        d565 : if false then if false then Bool else Bool else if false then Bool else Bool
        d565 = ( ( Bool -> Bool ) ∋ ( ( λ x566 -> ( ( Bool -> Bool ) ∋ ( ( λ x567 -> d135 ) ) ) $ ( d480 ) ) ) ) $ ( if true then d28 else d378 )
        d568 : if true then if false then Bool else Bool else if true then Bool else Bool
        d568 = if if true then false else d327 then if d446 then true else true else if true then false else false
        d569 : if false then if false then Bool else Bool else if true then Bool else Bool
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> ( ( Bool -> Bool ) ∋ ( ( λ x571 -> x571 ) ) ) $ ( d514 ) ) ) ) $ ( if d470 then true else true )
        d572 : if true then if true then Bool else Bool else if true then Bool else Bool
        d572 = ( ( Bool -> Bool ) ∋ ( ( λ x573 -> if d412 then d551 else true ) ) ) $ ( if d547 then true else d540 )
        d574 : if true then if true then Bool else Bool else if true then Bool else Bool
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x575 -> if true then x575 else d14 ) ) ) $ ( if d404 then d554 else d336 )
        d576 : if false then if true then Bool else Bool else if false then Bool else Bool
        d576 = ( ( Bool -> Bool ) ∋ ( ( λ x577 -> ( ( Bool -> Bool ) ∋ ( ( λ x578 -> d28 ) ) ) $ ( d43 ) ) ) ) $ ( if d274 then false else false )
        d579 : ( ( Set -> Set ) ∋ ( ( λ x582 -> ( ( Set -> Set ) ∋ ( ( λ x583 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x581 -> d480 ) ) ) $ ( x580 ) ) ) ) $ ( if true then true else false )
        d584 : if false then if false then Bool else Bool else if true then Bool else Bool
        d584 = ( ( Bool -> Bool ) ∋ ( ( λ x585 -> ( ( Bool -> Bool ) ∋ ( ( λ x586 -> true ) ) ) $ ( false ) ) ) ) $ ( if d226 then true else d327 )
        d587 : if true then if false then Bool else Bool else if true then Bool else Bool
        d587 = if if d521 then d100 else false then if false then true else false else if false then d252 else d23
        d588 : if true then if false then Bool else Bool else if true then Bool else Bool
        d588 = ( ( Bool -> Bool ) ∋ ( ( λ x589 -> if false then false else true ) ) ) $ ( if d574 then d400 else d181 )
        d590 : ( ( Set -> Set ) ∋ ( ( λ x591 -> if true then x591 else x591 ) ) ) $ ( if false then Bool else Bool )
        d590 = if if d34 then d533 else d545 then if d381 then true else false else if d134 then true else false
        d592 : ( ( Set -> Set ) ∋ ( ( λ x595 -> ( ( Set -> Set ) ∋ ( ( λ x596 -> Bool ) ) ) $ ( x595 ) ) ) ) $ ( if true then Bool else Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x593 -> ( ( Bool -> Bool ) ∋ ( ( λ x594 -> d252 ) ) ) $ ( x593 ) ) ) ) $ ( if d584 then d538 else true )
        d597 : ( ( Set -> Set ) ∋ ( ( λ x598 -> ( ( Set -> Set ) ∋ ( ( λ x599 -> Bool ) ) ) $ ( x598 ) ) ) ) $ ( if false then Bool else Bool )
        d597 = if if d239 then false else d206 then if false then d525 else true else if d292 then false else d163
        d600 : ( ( Set -> Set ) ∋ ( ( λ x601 -> if false then Bool else x601 ) ) ) $ ( if false then Bool else Bool )
        d600 = if if d428 then d163 else d528 then if false then true else d234 else if true then d163 else d448
        d602 : if false then if false then Bool else Bool else if true then Bool else Bool
        d602 = if if false then false else true then if d388 then d374 else d66 else if false then false else true
        d603 : ( ( Set -> Set ) ∋ ( ( λ x604 -> if false then x604 else x604 ) ) ) $ ( if false then Bool else Bool )
        d603 = if if true then d470 else true then if d552 then d444 else d277 else if d554 then true else d290
        d605 : if true then if false then Bool else Bool else if false then Bool else Bool
        d605 = if if true then true else false then if true then true else true else if d339 then d71 else d43
        d606 : if false then if false then Bool else Bool else if false then Bool else Bool
        d606 = ( ( Bool -> Bool ) ∋ ( ( λ x607 -> if d201 then true else d371 ) ) ) $ ( if d89 then d158 else false )
        d608 : ( ( Set -> Set ) ∋ ( ( λ x610 -> if false then Bool else x610 ) ) ) $ ( if true then Bool else Bool )
        d608 = ( ( Bool -> Bool ) ∋ ( ( λ x609 -> if d455 then d32 else d339 ) ) ) $ ( if d38 then true else true )
        d611 : if false then if true then Bool else Bool else if true then Bool else Bool
        d611 = if if true then d500 else true then if d447 then false else true else if false then true else false
        d612 : if true then if true then Bool else Bool else if false then Bool else Bool
        d612 = if if d114 then false else false then if true then true else false else if false then d497 else true
        d613 : ( ( Set -> Set ) ∋ ( ( λ x614 -> ( ( Set -> Set ) ∋ ( ( λ x615 -> Bool ) ) ) $ ( x614 ) ) ) ) $ ( if false then Bool else Bool )
        d613 = if if true then d452 else d528 then if false then true else true else if d554 then d47 else false
        d616 : ( ( Set -> Set ) ∋ ( ( λ x618 -> if true then Bool else x618 ) ) ) $ ( if false then Bool else Bool )
        d616 = ( ( Bool -> Bool ) ∋ ( ( λ x617 -> if x617 then x617 else x617 ) ) ) $ ( if false then true else d20 )
        d619 : ( ( Set -> Set ) ∋ ( ( λ x621 -> ( ( Set -> Set ) ∋ ( ( λ x622 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d619 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if d88 then d512 else false ) ) ) $ ( if d185 then false else true )
        d623 : ( ( Set -> Set ) ∋ ( ( λ x625 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d623 = ( ( Bool -> Bool ) ∋ ( ( λ x624 -> if true then x624 else false ) ) ) $ ( if d597 then false else true )
        d626 : if true then if true then Bool else Bool else if false then Bool else Bool
        d626 = if if true then true else d157 then if d552 then d183 else true else if d549 then d346 else d252
        d627 : if true then if true then Bool else Bool else if true then Bool else Bool
        d627 = if if true then d294 else d71 then if d98 then d533 else d612 else if d229 then true else false
        d628 : if true then if true then Bool else Bool else if false then Bool else Bool
        d628 = ( ( Bool -> Bool ) ∋ ( ( λ x629 -> if false then d355 else d6 ) ) ) $ ( if d543 then true else d69 )
        d630 : if true then if true then Bool else Bool else if true then Bool else Bool
        d630 = if if true then d587 else false then if false then d355 else false else if false then d113 else d194
        d631 : if true then if false then Bool else Bool else if true then Bool else Bool
        d631 = if if d497 then d568 else d377 then if false then true else d181 else if false then d623 else false
        d632 : ( ( Set -> Set ) ∋ ( ( λ x634 -> ( ( Set -> Set ) ∋ ( ( λ x635 -> Bool ) ) ) $ ( x634 ) ) ) ) $ ( if false then Bool else Bool )
        d632 = ( ( Bool -> Bool ) ∋ ( ( λ x633 -> if d21 then d201 else true ) ) ) $ ( if true then false else false )
        d636 : if true then if true then Bool else Bool else if false then Bool else Bool
        d636 = if if d12 then d603 else d335 then if d565 then d414 else false else if true then true else false
        d637 : ( ( Set -> Set ) ∋ ( ( λ x638 -> if true then Bool else x638 ) ) ) $ ( if false then Bool else Bool )
        d637 = if if true then false else false then if true then d561 else d344 else if d388 then false else true
        d639 : ( ( Set -> Set ) ∋ ( ( λ x641 -> ( ( Set -> Set ) ∋ ( ( λ x642 -> x642 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d639 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if true then false else false ) ) ) $ ( if d38 then true else false )
        d643 : if false then if false then Bool else Bool else if false then Bool else Bool
        d643 = ( ( Bool -> Bool ) ∋ ( ( λ x644 -> ( ( Bool -> Bool ) ∋ ( ( λ x645 -> d71 ) ) ) $ ( d419 ) ) ) ) $ ( if d445 then d538 else d412 )
        d646 : ( ( Set -> Set ) ∋ ( ( λ x647 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d646 = if if false then true else true then if true then d319 else d545 else if d363 then false else false
        d648 : if false then if true then Bool else Bool else if false then Bool else Bool
        d648 = if if d247 then false else false then if false then false else false else if d385 then d527 else false
        d649 : ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x651 -> x651 ) ) ) $ ( x650 ) ) ) ) $ ( if false then Bool else Bool )
        d649 = if if true then d627 else false then if false then true else d135 else if true then d64 else true
        d652 : if true then if true then Bool else Bool else if false then Bool else Bool
        d652 = ( ( Bool -> Bool ) ∋ ( ( λ x653 -> if x653 then false else d243 ) ) ) $ ( if false then d363 else d423 )
        d654 : ( ( Set -> Set ) ∋ ( ( λ x657 -> if true then x657 else Bool ) ) ) $ ( if true then Bool else Bool )
        d654 = ( ( Bool -> Bool ) ∋ ( ( λ x655 -> ( ( Bool -> Bool ) ∋ ( ( λ x656 -> false ) ) ) $ ( true ) ) ) ) $ ( if d118 then d490 else true )
        d658 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if false then Bool else x660 ) ) ) $ ( if true then Bool else Bool )
        d658 = ( ( Bool -> Bool ) ∋ ( ( λ x659 -> if d69 then false else x659 ) ) ) $ ( if d260 then d41 else true )
        d661 : ( ( Set -> Set ) ∋ ( ( λ x663 -> ( ( Set -> Set ) ∋ ( ( λ x664 -> x663 ) ) ) $ ( x663 ) ) ) ) $ ( if false then Bool else Bool )
        d661 = ( ( Bool -> Bool ) ∋ ( ( λ x662 -> if x662 then false else x662 ) ) ) $ ( if d247 then d64 else d378 )
        d665 : ( ( Set -> Set ) ∋ ( ( λ x666 -> if true then x666 else x666 ) ) ) $ ( if true then Bool else Bool )
        d665 = if if d282 then d385 else d377 then if false then d503 else false else if false then d282 else false
        d667 : ( ( Set -> Set ) ∋ ( ( λ x669 -> ( ( Set -> Set ) ∋ ( ( λ x670 -> x670 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d667 = ( ( Bool -> Bool ) ∋ ( ( λ x668 -> if false then d290 else x668 ) ) ) $ ( if d559 then false else d274 )
        d671 : ( ( Set -> Set ) ∋ ( ( λ x672 -> ( ( Set -> Set ) ∋ ( ( λ x673 -> x673 ) ) ) $ ( x672 ) ) ) ) $ ( if false then Bool else Bool )
        d671 = if if false then false else true then if false then false else d37 else if true then d632 else d557
        d674 : if false then if true then Bool else Bool else if true then Bool else Bool
        d674 = ( ( Bool -> Bool ) ∋ ( ( λ x675 -> if x675 then true else x675 ) ) ) $ ( if true then true else d324 )
        d676 : ( ( Set -> Set ) ∋ ( ( λ x677 -> ( ( Set -> Set ) ∋ ( ( λ x678 -> x677 ) ) ) $ ( x677 ) ) ) ) $ ( if false then Bool else Bool )
        d676 = if if d632 then true else true then if false then d365 else false else if d106 then d52 else d339
        d679 : if false then if false then Bool else Bool else if true then Bool else Bool
        d679 = if if true then d543 else d21 then if d630 then true else false else if false then d425 else d377
        d680 : ( ( Set -> Set ) ∋ ( ( λ x683 -> ( ( Set -> Set ) ∋ ( ( λ x684 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d680 = ( ( Bool -> Bool ) ∋ ( ( λ x681 -> ( ( Bool -> Bool ) ∋ ( ( λ x682 -> d8 ) ) ) $ ( d4 ) ) ) ) $ ( if false then d576 else d584 )
        d685 : if true then if false then Bool else Bool else if false then Bool else Bool
        d685 = if if d206 then d218 else d144 then if d549 then false else false else if true then d327 else false
        d686 : ( ( Set -> Set ) ∋ ( ( λ x689 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( x689 ) ) ) ) $ ( if true then Bool else Bool )
        d686 = ( ( Bool -> Bool ) ∋ ( ( λ x687 -> ( ( Bool -> Bool ) ∋ ( ( λ x688 -> d627 ) ) ) $ ( true ) ) ) ) $ ( if true then d252 else false )
        d691 : if false then if true then Bool else Bool else if true then Bool else Bool
        d691 = if if d503 then d446 else d422 then if false then true else d181 else if d628 then false else false
        d692 : ( ( Set -> Set ) ∋ ( ( λ x693 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d692 = if if d408 then true else d37 then if d627 then d290 else d290 else if d679 then true else true
        d694 : ( ( Set -> Set ) ∋ ( ( λ x695 -> if true then x695 else Bool ) ) ) $ ( if false then Bool else Bool )
        d694 = if if d324 then false else d557 then if d206 then true else false else if d503 then false else d162
        d696 : if false then if false then Bool else Bool else if true then Bool else Bool
        d696 = ( ( Bool -> Bool ) ∋ ( ( λ x697 -> ( ( Bool -> Bool ) ∋ ( ( λ x698 -> x698 ) ) ) $ ( d428 ) ) ) ) $ ( if false then d55 else d613 )
        d699 : ( ( Set -> Set ) ∋ ( ( λ x702 -> ( ( Set -> Set ) ∋ ( ( λ x703 -> Bool ) ) ) $ ( x702 ) ) ) ) $ ( if false then Bool else Bool )
        d699 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> ( ( Bool -> Bool ) ∋ ( ( λ x701 -> d397 ) ) ) $ ( d252 ) ) ) ) $ ( if d158 then true else d69 )
        d704 : ( ( Set -> Set ) ∋ ( ( λ x705 -> if true then x705 else x705 ) ) ) $ ( if true then Bool else Bool )
        d704 = if if true then false else d411 then if false then d285 else false else if d137 then false else true
        d706 : if true then if false then Bool else Bool else if false then Bool else Bool
        d706 = if if true then false else true then if false then false else d423 else if true then d487 else d95
        d707 : if false then if true then Bool else Bool else if true then Bool else Bool
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x708 -> if x708 then x708 else x708 ) ) ) $ ( if d133 then false else d71 )
        d709 : ( ( Set -> Set ) ∋ ( ( λ x711 -> if false then x711 else x711 ) ) ) $ ( if false then Bool else Bool )
        d709 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if x710 then true else d603 ) ) ) $ ( if false then true else true )
        d712 : ( ( Set -> Set ) ∋ ( ( λ x713 -> ( ( Set -> Set ) ∋ ( ( λ x714 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d712 = if if d45 then false else d559 then if true then d543 else d411 else if d536 then d14 else d70
        d715 : ( ( Set -> Set ) ∋ ( ( λ x716 -> ( ( Set -> Set ) ∋ ( ( λ x717 -> x717 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d715 = if if false then false else false then if true then true else d605 else if d707 then false else d67
        d718 : if true then if false then Bool else Bool else if true then Bool else Bool
        d718 = if if d17 then false else d527 then if d381 then d45 else true else if false then d661 else d184
        d719 : if false then if false then Bool else Bool else if false then Bool else Bool
        d719 = if if d74 then d74 else d630 then if true then d243 else false else if d544 then true else false
        d720 : if false then if false then Bool else Bool else if true then Bool else Bool
        d720 = if if true then d442 else false then if d133 then d277 else false else if true then false else true
        d721 : if true then if true then Bool else Bool else if true then Bool else Bool
        d721 = if if false then d603 else d158 then if d170 then true else d252 else if true then d528 else d66
        d722 : ( ( Set -> Set ) ∋ ( ( λ x724 -> ( ( Set -> Set ) ∋ ( ( λ x725 -> x725 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d722 = ( ( Bool -> Bool ) ∋ ( ( λ x723 -> if d381 then d527 else x723 ) ) ) $ ( if d692 then true else d608 )
        d726 : ( ( Set -> Set ) ∋ ( ( λ x728 -> if false then x728 else x728 ) ) ) $ ( if false then Bool else Bool )
        d726 = ( ( Bool -> Bool ) ∋ ( ( λ x727 -> if d680 then x727 else true ) ) ) $ ( if false then false else d277 )
        d729 : if true then if true then Bool else Bool else if true then Bool else Bool
        d729 = if if d592 then true else d243 then if false then d303 else d102 else if d32 then false else false
        d730 : ( ( Set -> Set ) ∋ ( ( λ x732 -> ( ( Set -> Set ) ∋ ( ( λ x733 -> x732 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d730 = ( ( Bool -> Bool ) ∋ ( ( λ x731 -> if false then d263 else x731 ) ) ) $ ( if d55 then false else false )
        d734 : ( ( Set -> Set ) ∋ ( ( λ x737 -> ( ( Set -> Set ) ∋ ( ( λ x738 -> x737 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d734 = ( ( Bool -> Bool ) ∋ ( ( λ x735 -> ( ( Bool -> Bool ) ∋ ( ( λ x736 -> x736 ) ) ) $ ( x735 ) ) ) ) $ ( if false then d497 else d584 )
        d739 : if true then if false then Bool else Bool else if false then Bool else Bool
        d739 = if if false then d579 else true then if false then true else false else if false then true else true
        d740 : ( ( Set -> Set ) ∋ ( ( λ x741 -> if false then x741 else Bool ) ) ) $ ( if true then Bool else Bool )
        d740 = if if true then d592 else false then if d350 then d52 else d106 else if false then d346 else false
        d742 : ( ( Set -> Set ) ∋ ( ( λ x743 -> if true then x743 else x743 ) ) ) $ ( if true then Bool else Bool )
        d742 = if if true then false else false then if d503 then d269 else false else if true then d719 else d568
        d744 : ( ( Set -> Set ) ∋ ( ( λ x745 -> ( ( Set -> Set ) ∋ ( ( λ x746 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d744 = if if true then d665 else d147 then if false then d341 else true else if d96 then true else false
        d747 : ( ( Set -> Set ) ∋ ( ( λ x750 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d747 = ( ( Bool -> Bool ) ∋ ( ( λ x748 -> ( ( Bool -> Bool ) ∋ ( ( λ x749 -> d1 ) ) ) $ ( d726 ) ) ) ) $ ( if true then false else d247 )
        d751 : if true then if true then Bool else Bool else if false then Bool else Bool
        d751 = ( ( Bool -> Bool ) ∋ ( ( λ x752 -> if x752 then true else x752 ) ) ) $ ( if false then d730 else true )
        d753 : ( ( Set -> Set ) ∋ ( ( λ x756 -> if false then x756 else Bool ) ) ) $ ( if true then Bool else Bool )
        d753 = ( ( Bool -> Bool ) ∋ ( ( λ x754 -> ( ( Bool -> Bool ) ∋ ( ( λ x755 -> true ) ) ) $ ( true ) ) ) ) $ ( if d98 then true else d177 )
        d757 : if true then if false then Bool else Bool else if true then Bool else Bool
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x758 -> if x758 then false else x758 ) ) ) $ ( if d175 then true else false )
        d759 : if false then if true then Bool else Bool else if false then Bool else Bool
        d759 = if if true then false else d343 then if d346 then true else d584 else if d643 then false else d356
        d760 : ( ( Set -> Set ) ∋ ( ( λ x761 -> if false then x761 else x761 ) ) ) $ ( if true then Bool else Bool )
        d760 = if if d658 then d628 else d742 then if d527 then false else false else if d439 then false else true
        d762 : if true then if false then Bool else Bool else if true then Bool else Bool
        d762 = ( ( Bool -> Bool ) ∋ ( ( λ x763 -> if x763 then false else d588 ) ) ) $ ( if true then true else false )
        d764 : if false then if false then Bool else Bool else if true then Bool else Bool
        d764 = if if true then true else true then if d54 then d238 else d726 else if d446 then d597 else d631
        d765 : if true then if true then Bool else Bool else if false then Bool else Bool
        d765 = if if d37 then d667 else d118 then if false then d390 else true else if d157 then true else false
        d766 : ( ( Set -> Set ) ∋ ( ( λ x769 -> if true then x769 else Bool ) ) ) $ ( if false then Bool else Bool )
        d766 = ( ( Bool -> Bool ) ∋ ( ( λ x767 -> ( ( Bool -> Bool ) ∋ ( ( λ x768 -> d397 ) ) ) $ ( x767 ) ) ) ) $ ( if true then d751 else d487 )
        d770 : if false then if false then Bool else Bool else if true then Bool else Bool
        d770 = ( ( Bool -> Bool ) ∋ ( ( λ x771 -> ( ( Bool -> Bool ) ∋ ( ( λ x772 -> d649 ) ) ) $ ( true ) ) ) ) $ ( if true then d602 else d665 )
        d773 : if false then if true then Bool else Bool else if true then Bool else Bool
        d773 = ( ( Bool -> Bool ) ∋ ( ( λ x774 -> if false then d592 else x774 ) ) ) $ ( if d162 then d324 else d766 )
        d775 : if true then if true then Bool else Bool else if false then Bool else Bool
        d775 = if if false then d597 else true then if d547 then true else false else if d367 then d356 else d762
        d776 : if false then if true then Bool else Bool else if false then Bool else Bool
        d776 = ( ( Bool -> Bool ) ∋ ( ( λ x777 -> ( ( Bool -> Bool ) ∋ ( ( λ x778 -> false ) ) ) $ ( d194 ) ) ) ) $ ( if true then false else true )
        d779 : ( ( Set -> Set ) ∋ ( ( λ x781 -> if true then x781 else x781 ) ) ) $ ( if true then Bool else Bool )
        d779 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if x780 then false else true ) ) ) $ ( if true then d69 else true )
        d782 : ( ( Set -> Set ) ∋ ( ( λ x783 -> ( ( Set -> Set ) ∋ ( ( λ x784 -> x783 ) ) ) $ ( x783 ) ) ) ) $ ( if false then Bool else Bool )
        d782 = if if d445 then true else false then if true then d70 else d74 else if true then d445 else d540
        d785 : if false then if false then Bool else Bool else if false then Bool else Bool
        d785 = if if true then d407 else d157 then if false then d290 else true else if false then d175 else false
        d786 : if false then if false then Bool else Bool else if true then Bool else Bool
        d786 = if if false then d605 else d533 then if false then d517 else d1 else if d554 then true else false
        d787 : ( ( Set -> Set ) ∋ ( ( λ x788 -> if true then x788 else Bool ) ) ) $ ( if true then Bool else Bool )
        d787 = if if d381 then true else d356 then if true then true else false else if d114 then true else d310
        d789 : if true then if true then Bool else Bool else if false then Bool else Bool
        d789 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if false then x790 else d277 ) ) ) $ ( if d243 then true else true )
        d791 : if true then if true then Bool else Bool else if false then Bool else Bool
        d791 = if if true then false else d218 then if false then d482 else false else if false then d341 else d722
        d792 : ( ( Set -> Set ) ∋ ( ( λ x793 -> ( ( Set -> Set ) ∋ ( ( λ x794 -> x794 ) ) ) $ ( x793 ) ) ) ) $ ( if false then Bool else Bool )
        d792 = if if d367 then d316 else false then if d17 then true else false else if d3 then d459 else false
        d795 : ( ( Set -> Set ) ∋ ( ( λ x798 -> if false then Bool else x798 ) ) ) $ ( if true then Bool else Bool )
        d795 = ( ( Bool -> Bool ) ∋ ( ( λ x796 -> ( ( Bool -> Bool ) ∋ ( ( λ x797 -> x796 ) ) ) $ ( d739 ) ) ) ) $ ( if false then d260 else d773 )
        d799 : ( ( Set -> Set ) ∋ ( ( λ x800 -> if false then x800 else x800 ) ) ) $ ( if false then Bool else Bool )
        d799 = if if d561 then true else d32 then if false then true else true else if false then false else true
        d801 : if false then if false then Bool else Bool else if false then Bool else Bool
        d801 = if if false then d170 else d346 then if false then d158 else false else if d346 then d791 else d170
        d802 : if true then if true then Bool else Bool else if true then Bool else Bool
        d802 = if if true then false else true then if true then false else true else if d696 then false else d184
        d803 : if false then if true then Bool else Bool else if true then Bool else Bool
        d803 = ( ( Bool -> Bool ) ∋ ( ( λ x804 -> if true then false else false ) ) ) $ ( if d632 then true else true )
        d805 : if true then if true then Bool else Bool else if true then Bool else Bool
        d805 = if if false then true else true then if true then d552 else true else if false then true else d692
        d806 : if false then if true then Bool else Bool else if false then Bool else Bool
        d806 = if if true then true else true then if d423 then d572 else false else if true then false else false
        d807 : if false then if false then Bool else Bool else if false then Bool else Bool
        d807 = if if false then d385 else false then if false then true else true else if true then d706 else d605
        d808 : ( ( Set -> Set ) ∋ ( ( λ x811 -> ( ( Set -> Set ) ∋ ( ( λ x812 -> x812 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d808 = ( ( Bool -> Bool ) ∋ ( ( λ x809 -> ( ( Bool -> Bool ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( d512 ) ) ) ) $ ( if d285 then d297 else d773 )
        d813 : if true then if false then Bool else Bool else if false then Bool else Bool
        d813 = if if true then true else d170 then if false then d552 else d805 else if true then d226 else d576
        d814 : ( ( Set -> Set ) ∋ ( ( λ x817 -> if true then x817 else Bool ) ) ) $ ( if false then Bool else Bool )
        d814 = ( ( Bool -> Bool ) ∋ ( ( λ x815 -> ( ( Bool -> Bool ) ∋ ( ( λ x816 -> true ) ) ) $ ( d417 ) ) ) ) $ ( if true then d238 else false )
        d818 : if false then if true then Bool else Bool else if false then Bool else Bool
        d818 = if if true then d257 else d390 then if false then d468 else true else if d266 then d397 else true
        d819 : ( ( Set -> Set ) ∋ ( ( λ x822 -> ( ( Set -> Set ) ∋ ( ( λ x823 -> x822 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d819 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x821 -> true ) ) ) $ ( x820 ) ) ) ) $ ( if d470 then d226 else d551 )
        d824 : ( ( Set -> Set ) ∋ ( ( λ x825 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d824 = if if true then true else d543 then if false then d766 else d720 else if d446 then d282 else true
        d826 : if false then if false then Bool else Bool else if false then Bool else Bool
        d826 = if if false then d592 else true then if d631 then d30 else d274 else if d122 then true else d102
        d827 : ( ( Set -> Set ) ∋ ( ( λ x828 -> ( ( Set -> Set ) ∋ ( ( λ x829 -> x828 ) ) ) $ ( x828 ) ) ) ) $ ( if false then Bool else Bool )
        d827 = if if false then d706 else true then if d704 then d218 else false else if false then d88 else d572
        d830 : ( ( Set -> Set ) ∋ ( ( λ x833 -> if true then x833 else Bool ) ) ) $ ( if true then Bool else Bool )
        d830 = ( ( Bool -> Bool ) ∋ ( ( λ x831 -> ( ( Bool -> Bool ) ∋ ( ( λ x832 -> x831 ) ) ) $ ( false ) ) ) ) $ ( if d803 then d476 else true )
        d834 : if false then if true then Bool else Bool else if false then Bool else Bool
        d834 = ( ( Bool -> Bool ) ∋ ( ( λ x835 -> ( ( Bool -> Bool ) ∋ ( ( λ x836 -> d332 ) ) ) $ ( x835 ) ) ) ) $ ( if true then true else false )
        d837 : if true then if false then Bool else Bool else if true then Bool else Bool
        d837 = ( ( Bool -> Bool ) ∋ ( ( λ x838 -> ( ( Bool -> Bool ) ∋ ( ( λ x839 -> true ) ) ) $ ( x838 ) ) ) ) $ ( if false then false else d813 )
        d840 : if false then if false then Bool else Bool else if true then Bool else Bool
        d840 = if if false then d355 else d497 then if false then true else false else if false then true else d720
        d841 : if true then if true then Bool else Bool else if false then Bool else Bool
        d841 = if if d646 then d497 else false then if true then true else true else if true then d706 else d332
        d842 : if true then if false then Bool else Bool else if true then Bool else Bool
        d842 = if if true then d814 else d654 then if d549 then false else d691 else if true then true else false
        d843 : ( ( Set -> Set ) ∋ ( ( λ x845 -> ( ( Set -> Set ) ∋ ( ( λ x846 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d843 = ( ( Bool -> Bool ) ∋ ( ( λ x844 -> if x844 then d130 else x844 ) ) ) $ ( if false then d417 else false )
        d847 : if true then if false then Bool else Bool else if false then Bool else Bool
        d847 = if if d789 then false else true then if d606 then false else d82 else if d643 then false else d69
        d848 : if true then if false then Bool else Bool else if false then Bool else Bool
        d848 = ( ( Bool -> Bool ) ∋ ( ( λ x849 -> if false then d527 else x849 ) ) ) $ ( if false then false else true )
        d850 : if false then if false then Bool else Bool else if true then Bool else Bool
        d850 = ( ( Bool -> Bool ) ∋ ( ( λ x851 -> if true then d587 else x851 ) ) ) $ ( if false then d760 else d390 )
        d852 : if true then if false then Bool else Bool else if true then Bool else Bool
        d852 = if if true then d686 else false then if true then false else d279 else if d536 then d612 else true
        d853 : ( ( Set -> Set ) ∋ ( ( λ x855 -> ( ( Set -> Set ) ∋ ( ( λ x856 -> Bool ) ) ) $ ( x855 ) ) ) ) $ ( if false then Bool else Bool )
        d853 = ( ( Bool -> Bool ) ∋ ( ( λ x854 -> if d637 then x854 else x854 ) ) ) $ ( if d458 then d458 else d43 )
        d857 : ( ( Set -> Set ) ∋ ( ( λ x859 -> ( ( Set -> Set ) ∋ ( ( λ x860 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d857 = ( ( Bool -> Bool ) ∋ ( ( λ x858 -> if true then true else x858 ) ) ) $ ( if d795 then false else d189 )
        d861 : ( ( Set -> Set ) ∋ ( ( λ x864 -> ( ( Set -> Set ) ∋ ( ( λ x865 -> x864 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d861 = ( ( Bool -> Bool ) ∋ ( ( λ x862 -> ( ( Bool -> Bool ) ∋ ( ( λ x863 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then false else d680 )
        d866 : ( ( Set -> Set ) ∋ ( ( λ x869 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d866 = ( ( Bool -> Bool ) ∋ ( ( λ x867 -> ( ( Bool -> Bool ) ∋ ( ( λ x868 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d870 : ( ( Set -> Set ) ∋ ( ( λ x871 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d870 = if if d505 then true else d691 then if true then d744 else d263 else if false then d536 else true
        d872 : ( ( Set -> Set ) ∋ ( ( λ x873 -> if false then x873 else Bool ) ) ) $ ( if true then Bool else Bool )
        d872 = if if true then d316 else false then if d734 then d85 else true else if d211 then d204 else d444
        d874 : if false then if true then Bool else Bool else if false then Bool else Bool
        d874 = if if d425 then true else d290 then if true then d462 else true else if true then d356 else false
        d875 : if false then if true then Bool else Bool else if false then Bool else Bool
        d875 = ( ( Bool -> Bool ) ∋ ( ( λ x876 -> ( ( Bool -> Bool ) ∋ ( ( λ x877 -> true ) ) ) $ ( d480 ) ) ) ) $ ( if d1 then true else d565 )
        d878 : ( ( Set -> Set ) ∋ ( ( λ x880 -> if false then Bool else x880 ) ) ) $ ( if true then Bool else Bool )
        d878 = ( ( Bool -> Bool ) ∋ ( ( λ x879 -> if false then true else d603 ) ) ) $ ( if d367 then d23 else true )
        d881 : ( ( Set -> Set ) ∋ ( ( λ x882 -> ( ( Set -> Set ) ∋ ( ( λ x883 -> x883 ) ) ) $ ( x882 ) ) ) ) $ ( if false then Bool else Bool )
        d881 = if if true then false else d184 then if true then true else true else if false then false else false
        d884 : ( ( Set -> Set ) ∋ ( ( λ x887 -> if true then x887 else Bool ) ) ) $ ( if false then Bool else Bool )
        d884 = ( ( Bool -> Bool ) ∋ ( ( λ x885 -> ( ( Bool -> Bool ) ∋ ( ( λ x886 -> x886 ) ) ) $ ( false ) ) ) ) $ ( if d32 then true else d319 )
        d888 : ( ( Set -> Set ) ∋ ( ( λ x889 -> ( ( Set -> Set ) ∋ ( ( λ x890 -> Bool ) ) ) $ ( x889 ) ) ) ) $ ( if false then Bool else Bool )
        d888 = if if d363 then false else false then if d661 then false else d414 else if d173 then true else false
        d891 : ( ( Set -> Set ) ∋ ( ( λ x894 -> if false then x894 else x894 ) ) ) $ ( if false then Bool else Bool )
        d891 = ( ( Bool -> Bool ) ∋ ( ( λ x892 -> ( ( Bool -> Bool ) ∋ ( ( λ x893 -> true ) ) ) $ ( x892 ) ) ) ) $ ( if d729 then d177 else false )
        d895 : ( ( Set -> Set ) ∋ ( ( λ x897 -> ( ( Set -> Set ) ∋ ( ( λ x898 -> x897 ) ) ) $ ( x897 ) ) ) ) $ ( if true then Bool else Bool )
        d895 = ( ( Bool -> Bool ) ∋ ( ( λ x896 -> if x896 then true else false ) ) ) $ ( if true then d89 else d837 )
        d899 : ( ( Set -> Set ) ∋ ( ( λ x902 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d899 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( Bool -> Bool ) ∋ ( ( λ x901 -> x901 ) ) ) $ ( x900 ) ) ) ) $ ( if false then d623 else d107 )
        d903 : if false then if false then Bool else Bool else if true then Bool else Bool
        d903 = ( ( Bool -> Bool ) ∋ ( ( λ x904 -> ( ( Bool -> Bool ) ∋ ( ( λ x905 -> d448 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d906 : ( ( Set -> Set ) ∋ ( ( λ x909 -> if false then x909 else Bool ) ) ) $ ( if false then Bool else Bool )
        d906 = ( ( Bool -> Bool ) ∋ ( ( λ x907 -> ( ( Bool -> Bool ) ∋ ( ( λ x908 -> x907 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d910 : ( ( Set -> Set ) ∋ ( ( λ x913 -> if true then x913 else Bool ) ) ) $ ( if true then Bool else Bool )
        d910 = ( ( Bool -> Bool ) ∋ ( ( λ x911 -> ( ( Bool -> Bool ) ∋ ( ( λ x912 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d699 else false )
        d914 : ( ( Set -> Set ) ∋ ( ( λ x916 -> if true then x916 else Bool ) ) ) $ ( if false then Bool else Bool )
        d914 = ( ( Bool -> Bool ) ∋ ( ( λ x915 -> if d639 then x915 else x915 ) ) ) $ ( if d107 then false else d336 )
        d917 : ( ( Set -> Set ) ∋ ( ( λ x918 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d917 = if if d332 then true else d313 then if d630 then d56 else d303 else if d775 then d181 else d69
        d919 : if false then if false then Bool else Bool else if false then Bool else Bool
        d919 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> ( ( Bool -> Bool ) ∋ ( ( λ x921 -> d857 ) ) ) $ ( d824 ) ) ) ) $ ( if false then true else d602 )
        d922 : ( ( Set -> Set ) ∋ ( ( λ x924 -> if true then Bool else x924 ) ) ) $ ( if true then Bool else Bool )
        d922 = ( ( Bool -> Bool ) ∋ ( ( λ x923 -> if x923 then false else d652 ) ) ) $ ( if d243 then false else d113 )
        d925 : if true then if true then Bool else Bool else if true then Bool else Bool
        d925 = if if d343 then d127 else d158 then if true then d497 else false else if d744 then false else false
        d926 : if false then if true then Bool else Bool else if true then Bool else Bool
        d926 = ( ( Bool -> Bool ) ∋ ( ( λ x927 -> if false then x927 else false ) ) ) $ ( if true then d637 else true )
        d928 : if false then if false then Bool else Bool else if false then Bool else Bool
        d928 = ( ( Bool -> Bool ) ∋ ( ( λ x929 -> ( ( Bool -> Bool ) ∋ ( ( λ x930 -> d106 ) ) ) $ ( d412 ) ) ) ) $ ( if d917 then true else d110 )
        d931 : if true then if true then Bool else Bool else if true then Bool else Bool
        d931 = ( ( Bool -> Bool ) ∋ ( ( λ x932 -> ( ( Bool -> Bool ) ∋ ( ( λ x933 -> true ) ) ) $ ( x932 ) ) ) ) $ ( if true then false else true )
        d934 : ( ( Set -> Set ) ∋ ( ( λ x935 -> ( ( Set -> Set ) ∋ ( ( λ x936 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d934 = if if d327 then d4 else false then if d848 then false else d806 else if d519 then false else d712
        d937 : ( ( Set -> Set ) ∋ ( ( λ x939 -> ( ( Set -> Set ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d937 = ( ( Bool -> Bool ) ∋ ( ( λ x938 -> if d332 then true else x938 ) ) ) $ ( if d343 then false else false )
        d941 : ( ( Set -> Set ) ∋ ( ( λ x942 -> if false then x942 else x942 ) ) ) $ ( if false then Bool else Bool )
        d941 = if if d500 then false else true then if false then true else true else if d50 then true else d390
        d943 : if false then if false then Bool else Bool else if true then Bool else Bool
        d943 = if if d878 then d759 else false then if true then true else true else if d592 then d162 else true
        d944 : ( ( Set -> Set ) ∋ ( ( λ x946 -> ( ( Set -> Set ) ∋ ( ( λ x947 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d944 = ( ( Bool -> Bool ) ∋ ( ( λ x945 -> if x945 then d443 else d878 ) ) ) $ ( if true then false else true )
        d948 : ( ( Set -> Set ) ∋ ( ( λ x950 -> if true then x950 else Bool ) ) ) $ ( if true then Bool else Bool )
        d948 = ( ( Bool -> Bool ) ∋ ( ( λ x949 -> if d448 then true else x949 ) ) ) $ ( if d569 then d431 else d170 )
        d951 : if true then if false then Bool else Bool else if false then Bool else Bool
        d951 = ( ( Bool -> Bool ) ∋ ( ( λ x952 -> ( ( Bool -> Bool ) ∋ ( ( λ x953 -> true ) ) ) $ ( x952 ) ) ) ) $ ( if d110 then true else true )
        d954 : ( ( Set -> Set ) ∋ ( ( λ x955 -> ( ( Set -> Set ) ∋ ( ( λ x956 -> x956 ) ) ) $ ( x955 ) ) ) ) $ ( if true then Bool else Bool )
        d954 = if if d551 then false else false then if d114 then d144 else d313 else if d782 then d476 else true
        d957 : if true then if false then Bool else Bool else if true then Bool else Bool
        d957 = if if false then true else true then if d144 then true else d452 else if false then d937 else d436
        d958 : ( ( Set -> Set ) ∋ ( ( λ x961 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d958 = ( ( Bool -> Bool ) ∋ ( ( λ x959 -> ( ( Bool -> Bool ) ∋ ( ( λ x960 -> false ) ) ) $ ( x959 ) ) ) ) $ ( if d404 then false else false )
        d962 : ( ( Set -> Set ) ∋ ( ( λ x963 -> if true then Bool else x963 ) ) ) $ ( if true then Bool else Bool )
        d962 = if if d611 then false else d857 then if d667 then true else d405 else if true then false else true
        d964 : if true then if true then Bool else Bool else if false then Bool else Bool
        d964 = if if d412 then d4 else true then if false then d198 else d722 else if true then d866 else true
        d965 : ( ( Set -> Set ) ∋ ( ( λ x966 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d965 = if if true then false else d842 then if d82 then false else d579 else if d521 then d706 else d721
        d967 : if true then if false then Bool else Bool else if true then Bool else Bool
        d967 = if if true then false else d751 then if d100 then d779 else d229 else if false then true else d623
        d968 : if true then if false then Bool else Bool else if false then Bool else Bool
        d968 = if if true then d163 else d37 then if true then d443 else false else if d671 then d773 else false
        d969 : ( ( Set -> Set ) ∋ ( ( λ x970 -> if true then Bool else x970 ) ) ) $ ( if false then Bool else Bool )
        d969 = if if d775 then d759 else true then if true then false else false else if true then d721 else d14
        d971 : ( ( Set -> Set ) ∋ ( ( λ x972 -> ( ( Set -> Set ) ∋ ( ( λ x973 -> x973 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d971 = if if true then d113 else false then if true then d130 else d954 else if false then true else d786
        d974 : if false then if false then Bool else Bool else if false then Bool else Bool
        d974 = ( ( Bool -> Bool ) ∋ ( ( λ x975 -> if x975 then false else x975 ) ) ) $ ( if d572 then d47 else d493 )
        d976 : ( ( Set -> Set ) ∋ ( ( λ x978 -> if false then x978 else x978 ) ) ) $ ( if true then Bool else Bool )
        d976 = ( ( Bool -> Bool ) ∋ ( ( λ x977 -> if x977 then d861 else true ) ) ) $ ( if true then false else d597 )
        d979 : if true then if true then Bool else Bool else if true then Bool else Bool
        d979 = if if false then false else true then if true then false else false else if true then true else false
        d980 : if true then if true then Bool else Bool else if true then Bool else Bool
        d980 = if if false then d843 else false then if d165 then d137 else true else if false then d292 else false
        d981 : if true then if true then Bool else Bool else if false then Bool else Bool
        d981 = ( ( Bool -> Bool ) ∋ ( ( λ x982 -> if d587 then true else x982 ) ) ) $ ( if d379 then d490 else d183 )
        d983 : ( ( Set -> Set ) ∋ ( ( λ x986 -> ( ( Set -> Set ) ∋ ( ( λ x987 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d983 = ( ( Bool -> Bool ) ∋ ( ( λ x984 -> ( ( Bool -> Bool ) ∋ ( ( λ x985 -> false ) ) ) $ ( x984 ) ) ) ) $ ( if false then true else d306 )
        d988 : ( ( Set -> Set ) ∋ ( ( λ x989 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d988 = if if true then d135 else true then if d127 then d356 else d606 else if d648 then d378 else false
        d990 : ( ( Set -> Set ) ∋ ( ( λ x991 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d990 = if if d611 then d505 else d222 then if false then true else false else if false then d95 else true
        d992 : ( ( Set -> Set ) ∋ ( ( λ x993 -> ( ( Set -> Set ) ∋ ( ( λ x994 -> x993 ) ) ) $ ( x993 ) ) ) ) $ ( if false then Bool else Bool )
        d992 = if if d113 then d888 else true then if d568 then false else true else if false then d543 else false
        d995 : ( ( Set -> Set ) ∋ ( ( λ x998 -> ( ( Set -> Set ) ∋ ( ( λ x999 -> x998 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d995 = ( ( Bool -> Bool ) ∋ ( ( λ x996 -> ( ( Bool -> Bool ) ∋ ( ( λ x997 -> d356 ) ) ) $ ( d623 ) ) ) ) $ ( if d652 then d517 else d274 )
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x1001 -> if false then Bool else x1001 ) ) ) $ ( if true then Bool else Bool )
        d1000 = if if d427 then false else d899 then if d691 then d173 else d6 else if d30 then d148 else d806
        d1002 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1002 = ( ( Bool -> Bool ) ∋ ( ( λ x1003 -> if true then true else x1003 ) ) ) $ ( if d350 then false else d632 )
        d1004 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1004 = if if true then true else d799 then if d983 then false else false else if true then d980 else d324
        d1005 : ( ( Set -> Set ) ∋ ( ( λ x1008 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1005 = ( ( Bool -> Bool ) ∋ ( ( λ x1006 -> ( ( Bool -> Bool ) ∋ ( ( λ x1007 -> d674 ) ) ) $ ( x1006 ) ) ) ) $ ( if true then d343 else d914 )
        d1009 : ( ( Set -> Set ) ∋ ( ( λ x1011 -> ( ( Set -> Set ) ∋ ( ( λ x1012 -> x1011 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1009 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if false then d759 else false ) ) ) $ ( if d217 then false else false )
        d1013 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1013 = if if false then d177 else true then if true then d704 else true else if d6 then true else false
        d1014 : ( ( Set -> Set ) ∋ ( ( λ x1016 -> if true then x1016 else x1016 ) ) ) $ ( if false then Bool else Bool )
        d1014 = ( ( Bool -> Bool ) ∋ ( ( λ x1015 -> if true then false else x1015 ) ) ) $ ( if true then true else true )
        d1017 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1017 = if if d263 then d827 else true then if d493 then d74 else true else if true then false else false
        d1018 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x1019 -> if true then d313 else d1002 ) ) ) $ ( if false then true else false )
        d1021 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1021 = if if true then d247 else d344 then if d786 then d922 else true else if d446 then d482 else true
        d1022 : ( ( Set -> Set ) ∋ ( ( λ x1024 -> ( ( Set -> Set ) ∋ ( ( λ x1025 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1022 = ( ( Bool -> Bool ) ∋ ( ( λ x1023 -> if d872 then false else d801 ) ) ) $ ( if d377 then false else d183 )
        d1026 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1026 = if if d802 then d824 else true then if false then false else false else if d974 then d974 else d23
        d1027 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1027 = if if false then d654 else d957 then if false then d77 else d770 else if false then d760 else false
        d1028 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1028 = ( ( Bool -> Bool ) ∋ ( ( λ x1029 -> if x1029 then d3 else true ) ) ) $ ( if false then d316 else d428 )
        d1030 : ( ( Set -> Set ) ∋ ( ( λ x1032 -> ( ( Set -> Set ) ∋ ( ( λ x1033 -> x1032 ) ) ) $ ( x1032 ) ) ) ) $ ( if true then Bool else Bool )
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> if x1031 then d404 else d712 ) ) ) $ ( if d466 then d408 else true )
        d1034 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1034 = ( ( Bool -> Bool ) ∋ ( ( λ x1035 -> if d425 then false else x1035 ) ) ) $ ( if d490 then false else true )
        d1036 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1036 = if if d229 then d597 else false then if false then true else true else if true then true else d740
        d1037 : ( ( Set -> Set ) ∋ ( ( λ x1038 -> ( ( Set -> Set ) ∋ ( ( λ x1039 -> x1038 ) ) ) $ ( x1038 ) ) ) ) $ ( if false then Bool else Bool )
        d1037 = if if d163 then d378 else true then if d807 then true else true else if d344 then false else d50
        d1040 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1040 = if if true then d181 else true then if d190 then d412 else d269 else if d137 then d680 else d332
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x1042 -> ( ( Set -> Set ) ∋ ( ( λ x1043 -> Bool ) ) ) $ ( x1042 ) ) ) ) $ ( if false then Bool else Bool )
        d1041 = if if d425 then true else d151 then if true then true else false else if d654 then d62 else true
        d1044 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1044 = if if false then false else false then if d967 then true else d729 else if false then d303 else false
        d1045 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1045 = if if true then true else false then if false then d279 else true else if false then false else d361
        d1046 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1046 = if if true then d247 else d721 then if d41 then false else true else if false then true else d260
        d1047 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1047 = if if d241 then false else true then if false then false else d964 else if d636 then d990 else d393
        d1048 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1048 = if if d848 then d365 else d367 then if true then true else true else if d937 then false else d995
        d1049 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1049 = if if false then d623 else false then if d279 then true else d639 else if d757 then d1040 else false
        d1050 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1050 = if if d686 then d742 else d853 then if true then d204 else false else if d436 then false else true
        d1051 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1051 = ( ( Bool -> Bool ) ∋ ( ( λ x1052 -> ( ( Bool -> Bool ) ∋ ( ( λ x1053 -> true ) ) ) $ ( false ) ) ) ) $ ( if d34 then true else false )
        d1054 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1054 = if if true then false else true then if d565 then true else true else if true then d937 else d1046
        d1055 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1055 = ( ( Bool -> Bool ) ∋ ( ( λ x1056 -> if x1056 then d243 else false ) ) ) $ ( if d1005 then true else d433 )
        d1057 : ( ( Set -> Set ) ∋ ( ( λ x1058 -> ( ( Set -> Set ) ∋ ( ( λ x1059 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1057 = if if d408 then false else d1013 then if true then true else true else if true then false else d765
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x1062 -> ( ( Set -> Set ) ∋ ( ( λ x1063 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1060 = ( ( Bool -> Bool ) ∋ ( ( λ x1061 -> if d878 then true else true ) ) ) $ ( if d444 then false else d1048 )
        d1064 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1064 = ( ( Bool -> Bool ) ∋ ( ( λ x1065 -> ( ( Bool -> Bool ) ∋ ( ( λ x1066 -> d299 ) ) ) $ ( x1065 ) ) ) ) $ ( if d590 then d554 else d407 )
        d1067 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1067 = ( ( Bool -> Bool ) ∋ ( ( λ x1068 -> ( ( Bool -> Bool ) ∋ ( ( λ x1069 -> d762 ) ) ) $ ( true ) ) ) ) $ ( if d274 then true else false )
        d1070 : ( ( Set -> Set ) ∋ ( ( λ x1073 -> ( ( Set -> Set ) ∋ ( ( λ x1074 -> x1074 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1070 = ( ( Bool -> Bool ) ∋ ( ( λ x1071 -> ( ( Bool -> Bool ) ∋ ( ( λ x1072 -> d363 ) ) ) $ ( d919 ) ) ) ) $ ( if d85 then d189 else false )
        d1075 : ( ( Set -> Set ) ∋ ( ( λ x1077 -> if false then Bool else x1077 ) ) ) $ ( if true then Bool else Bool )
        d1075 = ( ( Bool -> Bool ) ∋ ( ( λ x1076 -> if false then d1026 else x1076 ) ) ) $ ( if false then d74 else false )
        d1078 : ( ( Set -> Set ) ∋ ( ( λ x1079 -> if false then x1079 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1078 = if if d148 then d95 else false then if d852 then false else true else if d786 then true else false
        d1080 : ( ( Set -> Set ) ∋ ( ( λ x1081 -> ( ( Set -> Set ) ∋ ( ( λ x1082 -> x1082 ) ) ) $ ( x1081 ) ) ) ) $ ( if true then Bool else Bool )
        d1080 = if if d680 then d388 else d1047 then if false then d239 else true else if d446 then true else d241
        d1083 : ( ( Set -> Set ) ∋ ( ( λ x1084 -> ( ( Set -> Set ) ∋ ( ( λ x1085 -> Bool ) ) ) $ ( x1084 ) ) ) ) $ ( if true then Bool else Bool )
        d1083 = if if d1060 then d944 else d870 then if false then true else true else if true then d696 else true
        d1086 : ( ( Set -> Set ) ∋ ( ( λ x1088 -> ( ( Set -> Set ) ∋ ( ( λ x1089 -> x1088 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1086 = ( ( Bool -> Bool ) ∋ ( ( λ x1087 -> if x1087 then d899 else x1087 ) ) ) $ ( if d147 then false else true )
        d1090 : ( ( Set -> Set ) ∋ ( ( λ x1091 -> if false then Bool else x1091 ) ) ) $ ( if false then Bool else Bool )
        d1090 = if if d843 then d866 else d1041 then if false then d133 else true else if false then d361 else true
        d1092 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1092 = if if d891 then d127 else d47 then if d476 then false else true else if false then false else d974
        d1093 : ( ( Set -> Set ) ∋ ( ( λ x1095 -> ( ( Set -> Set ) ∋ ( ( λ x1096 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1093 = ( ( Bool -> Bool ) ∋ ( ( λ x1094 -> if false then x1094 else true ) ) ) $ ( if d948 then d602 else true )
        d1097 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> if false then Bool else x1100 ) ) ) $ ( if true then Bool else Bool )
        d1097 = ( ( Bool -> Bool ) ∋ ( ( λ x1098 -> ( ( Bool -> Bool ) ∋ ( ( λ x1099 -> d744 ) ) ) $ ( x1098 ) ) ) ) $ ( if d361 then false else d841 )
        d1101 : ( ( Set -> Set ) ∋ ( ( λ x1103 -> ( ( Set -> Set ) ∋ ( ( λ x1104 -> Bool ) ) ) $ ( x1103 ) ) ) ) $ ( if false then Bool else Bool )
        d1101 = ( ( Bool -> Bool ) ∋ ( ( λ x1102 -> if true then x1102 else d99 ) ) ) $ ( if d899 then d41 else false )