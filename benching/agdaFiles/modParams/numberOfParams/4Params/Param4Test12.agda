module Param4Test12  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : if true then if false then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then x11 else x11 ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> d5 ) ) ) $ ( true ) ) ) ) $ ( if p1 then false else p4 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x13 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d12 = if if true then true else p1 then if p1 then d5 else d5 else if true then p2 else true
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if true then x16 else Bool ) ) ) $ ( if true then Bool else Bool )
        d15 = if if p3 then d5 else false then if p2 then false else p3 else if d12 then false else d5
        d17 : if true then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> p2 ) ) ) $ ( d15 ) ) ) ) $ ( if d12 then d15 else false )
        d20 : if true then if true then Bool else Bool else if false then Bool else Bool
        d20 = if if d17 then p1 else p4 then if d5 then d17 else d5 else if p4 then false else p3
        d21 : if true then if false then Bool else Bool else if false then Bool else Bool
        d21 = if if d17 then false else p1 then if false then p1 else p3 else if d15 then p3 else false
        d22 : if true then if false then Bool else Bool else if true then Bool else Bool
        d22 = if if true then d17 else d21 then if true then true else p4 else if p3 then false else false
        d23 : if false then if true then Bool else Bool else if true then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if false then p1 else false ) ) ) $ ( if d12 then true else p4 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d25 = if if true then p3 else p1 then if false then p3 else true else if d21 then false else d5
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x28 ) ) ) $ ( x28 ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if if false then true else p3 then if false then p2 else false else if d8 then true else d21
        d30 : if true then if true then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if d12 then d5 else d21 ) ) ) $ ( if p2 then false else d25 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> x35 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if p1 then true else d15 ) ) ) $ ( if p1 then d17 else true )
        d36 : if false then if true then Bool else Bool else if false then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if false then x37 else true ) ) ) $ ( if d32 then p1 else d25 )
        d38 : if false then if false then Bool else Bool else if false then Bool else Bool
        d38 = if if d20 then p2 else false then if d25 then false else p2 else if true then d21 else d8
        d39 : if false then if true then Bool else Bool else if false then Bool else Bool
        d39 = if if false then true else false then if d36 then p4 else true else if d25 then d21 else d15
        d40 : if true then if false then Bool else Bool else if true then Bool else Bool
        d40 = if if p3 then d27 else d30 then if true then true else d27 else if p2 then d12 else true
        d41 : if false then if false then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if d21 then d8 else d8 ) ) ) $ ( if p4 then d27 else p1 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if false then x44 else Bool ) ) ) $ ( if true then Bool else Bool )
        d43 = if if d22 then p3 else false then if d15 then true else d23 else if p4 then p4 else d36
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if true then Bool else x46 ) ) ) $ ( if true then Bool else Bool )
        d45 = if if false then d41 else p4 then if d38 then d12 else false else if p4 then true else true
        d47 : if false then if true then Bool else Bool else if true then Bool else Bool
        d47 = if if false then false else p1 then if d43 then d43 else false else if p4 then p1 else d17
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> x50 ) ) ) $ ( x50 ) ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if true then d25 else p2 ) ) ) $ ( if d47 then p3 else true )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if false then Bool else x55 ) ) ) $ ( if false then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> p1 ) ) ) $ ( x53 ) ) ) ) $ ( if true then false else p2 )
        d56 : if false then if false then Bool else Bool else if true then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if d17 then false else d25 ) ) ) $ ( if d45 then p3 else d38 )
        d58 : if false then if false then Bool else Bool else if false then Bool else Bool
        d58 = if if false then d8 else true then if false then true else d38 else if d22 then p2 else false
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then Bool else x60 ) ) ) $ ( if true then Bool else Bool )
        d59 = if if d38 then d8 else p3 then if p2 then false else p1 else if true then p3 else p1
        d61 : if true then if false then Bool else Bool else if false then Bool else Bool
        d61 = if if false then p1 else p3 then if true then false else d21 else if p1 then d25 else false
        d62 : if true then if false then Bool else Bool else if true then Bool else Bool
        d62 = if if d27 then false else p2 then if p3 then true else false else if p4 then p1 else true
        d63 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if false then true else true ) ) ) $ ( if false then d20 else p1 )
        d67 : if false then if false then Bool else Bool else if true then Bool else Bool
        d67 = if if d38 then true else true then if p2 then d48 else true else if p1 then d47 else p4
        d68 : if false then if true then Bool else Bool else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if d58 then true else true ) ) ) $ ( if d63 then p3 else true )
        d70 : if true then if false then Bool else Bool else if false then Bool else Bool
        d70 = if if p1 then true else true then if d25 then p2 else false else if true then false else d17
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d71 = if if true then false else d22 then if p4 then p1 else d48 else if d32 then false else true
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d73 = if if d67 then false else p2 then if p4 then p4 else true else if d40 then d59 else d15
        d76 : if true then if true then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p4 then d17 else p3 )
        d79 : if false then if true then Bool else Bool else if true then Bool else Bool
        d79 = if if d47 then p1 else true then if false then d61 else false else if d70 then p1 else true
        d80 : if false then if false then Bool else Bool else if false then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if d12 then true else true ) ) ) $ ( if true then d40 else d79 )
        d82 : if false then if true then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> d52 ) ) ) $ ( d43 ) ) ) ) $ ( if d39 then p4 else p3 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x87 ) ) ) $ ( x87 ) ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if d52 then false else false ) ) ) $ ( if false then d52 else d73 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> x90 ) ) ) $ ( x90 ) ) ) ) $ ( if false then Bool else Bool )
        d89 = if if p3 then p1 else p4 then if p4 then p2 else true else if false then d8 else d67
    d92 : if false then if false then Bool else Bool else if false then Bool else Bool
    d92 = if if true then false else true then if false then false else false else if false then false else false
    d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then x94 else Bool ) ) ) $ ( if true then Bool else Bool )
    d93 = if if d92 then d92 else d92 then if d92 then false else true else if d92 then d92 else true
    d95 : if true then if false then Bool else Bool else if true then Bool else Bool
    d95 = ( ( ( ( M.d20 ) $ ( true ) ) $ ( d92 ) ) $ ( false ) ) $ ( d93 )
    d96 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> x98 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if d93 then d92 else d95 ) ) ) $ ( if d92 then true else d95 )
    d100 : if true then if false then Bool else Bool else if true then Bool else Bool
    d100 = ( ( ( ( M.d82 ) $ ( true ) ) $ ( d96 ) ) $ ( d95 ) ) $ ( d92 )
    d101 : if false then if true then Bool else Bool else if true then Bool else Bool
    d101 = ( ( ( ( M.d67 ) $ ( d93 ) ) $ ( false ) ) $ ( true ) ) $ ( d93 )
    d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x103 ) ) ) $ ( x103 ) ) ) ) $ ( if false then Bool else Bool )
    d102 = if if d92 then false else d101 then if true then false else d100 else if true then d101 else true
    d105 : if true then if true then Bool else Bool else if false then Bool else Bool
    d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if x106 then false else d101 ) ) ) $ ( if false then d102 else d96 )
    d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> x109 ) ) ) $ ( x108 ) ) ) ) $ ( if false then Bool else Bool )
    d107 = ( ( ( ( M.d79 ) $ ( d102 ) ) $ ( d101 ) ) $ ( d105 ) ) $ ( d102 )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x111 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d110 = ( ( ( ( M.d20 ) $ ( d96 ) ) $ ( d105 ) ) $ ( d107 ) ) $ ( d96 )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then x114 else x114 ) ) ) $ ( if false then Bool else Bool )
    d113 = if if d96 then d95 else true then if d93 then false else d95 else if d101 then false else true
    d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> x117 ) ) ) $ ( x116 ) ) ) ) $ ( if false then Bool else Bool )
    d115 = ( ( ( ( M.d40 ) $ ( d110 ) ) $ ( d113 ) ) $ ( d93 ) ) $ ( false )
    d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d118 = if if true then d115 else true then if false then true else true else if d105 then d100 else d102
    d121 : if false then if true then Bool else Bool else if false then Bool else Bool
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if x122 then d100 else x122 ) ) ) $ ( if d102 then d92 else true )
    d123 : if false then if true then Bool else Bool else if false then Bool else Bool
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( ( ( M.d80 ) $ ( d118 ) ) $ ( x124 ) ) $ ( d107 ) ) $ ( x124 ) ) ) ) $ ( if d93 then d107 else false )
    d125 : if false then if false then Bool else Bool else if false then Bool else Bool
    d125 = ( ( ( ( M.d76 ) $ ( false ) ) $ ( d96 ) ) $ ( true ) ) $ ( d105 )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if true then x127 else Bool ) ) ) $ ( if true then Bool else Bool )
    d126 = ( ( ( ( M.d15 ) $ ( d125 ) ) $ ( true ) ) $ ( d96 ) ) $ ( false )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x131 -> ( ( Set -> Set ) ∋ ( ( λ x132 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> false ) ) ) $ ( x129 ) ) ) ) $ ( if false then false else d125 )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( ( ( M.d76 ) $ ( false ) ) $ ( d95 ) ) $ ( x134 ) ) $ ( true ) ) ) ) $ ( if true then d101 else d95 )
    d137 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> x139 ) ) ) $ ( x138 ) ) ) ) $ ( if true then Bool else Bool )
    d137 = if if d95 then true else false then if false then d93 else d128 else if d96 then d121 else d101
    d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> if true then x141 else Bool ) ) ) $ ( if false then Bool else Bool )
    d140 = ( ( ( ( M.d67 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( true )
    d142 : if true then if true then Bool else Bool else if true then Bool else Bool
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> ( ( Bool -> Bool ) ∋ ( ( λ x144 -> d126 ) ) ) $ ( true ) ) ) ) $ ( if false then d110 else d95 )
    d145 : if true then if false then Bool else Bool else if false then Bool else Bool
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> ( ( Bool -> Bool ) ∋ ( ( λ x147 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d118 )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( ( ( M.d32 ) $ ( true ) ) $ ( d96 ) ) $ ( d128 ) ) $ ( d93 )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if true then x152 else Bool ) ) ) $ ( if false then Bool else Bool )
    d151 = ( ( ( ( M.d8 ) $ ( d95 ) ) $ ( d107 ) ) $ ( d148 ) ) $ ( false )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> Bool ) ) ) $ ( x154 ) ) ) ) $ ( if false then Bool else Bool )
    d153 = if if d142 then false else false then if d110 then true else d140 else if d137 then false else false
    d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> Bool ) ) ) $ ( x157 ) ) ) ) $ ( if true then Bool else Bool )
    d156 = ( ( ( ( M.d76 ) $ ( d128 ) ) $ ( d113 ) ) $ ( false ) ) $ ( true )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x162 -> if true then Bool else x162 ) ) ) $ ( if false then Bool else Bool )
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x161 -> true ) ) ) $ ( x160 ) ) ) ) $ ( if d110 then d133 else d151 )
    d163 : if false then if false then Bool else Bool else if true then Bool else Bool
    d163 = ( ( ( ( M.d48 ) $ ( d101 ) ) $ ( d128 ) ) $ ( d110 ) ) $ ( false )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x165 -> if false then Bool else x165 ) ) ) $ ( if false then Bool else Bool )
    d164 = if if d156 then d102 else d123 then if d133 then false else d133 else if d156 then d101 else d159
    d166 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> x168 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> ( ( ( ( M.d71 ) $ ( true ) ) $ ( true ) ) $ ( d115 ) ) $ ( x167 ) ) ) ) $ ( if d118 then d105 else d115 )
    d170 : if true then if true then Bool else Bool else if false then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> x171 ) ) ) $ ( x171 ) ) ) ) $ ( if d125 then false else true )
    d173 : if true then if true then Bool else Bool else if false then Bool else Bool
    d173 = if if d170 then false else true then if false then false else d166 else if false then true else false
    d174 : ( ( Set -> Set ) ∋ ( ( λ x177 -> ( ( Set -> Set ) ∋ ( ( λ x178 -> x178 ) ) ) $ ( x177 ) ) ) ) $ ( if false then Bool else Bool )
    d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> ( ( Bool -> Bool ) ∋ ( ( λ x176 -> d128 ) ) ) $ ( x175 ) ) ) ) $ ( if true then true else true )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if true then x181 else Bool ) ) ) $ ( if false then Bool else Bool )
    d179 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( ( ( M.d22 ) $ ( x180 ) ) $ ( x180 ) ) $ ( d115 ) ) $ ( false ) ) ) ) $ ( if true then d164 else true )
    d182 : if false then if false then Bool else Bool else if true then Bool else Bool
    d182 = ( ( ( ( M.d82 ) $ ( false ) ) $ ( d113 ) ) $ ( true ) ) $ ( d153 )
    d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> ( ( Set -> Set ) ∋ ( ( λ x185 -> x184 ) ) ) $ ( x184 ) ) ) ) $ ( if false then Bool else Bool )
    d183 = ( ( ( ( M.d25 ) $ ( true ) ) $ ( d182 ) ) $ ( d173 ) ) $ ( d123 )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x187 -> ( ( Set -> Set ) ∋ ( ( λ x188 -> Bool ) ) ) $ ( x187 ) ) ) ) $ ( if true then Bool else Bool )
    d186 = ( ( ( ( M.d61 ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( d164 )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x191 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d189 = ( ( ( ( M.d80 ) $ ( true ) ) $ ( false ) ) $ ( d151 ) ) $ ( true )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x193 -> ( ( Set -> Set ) ∋ ( ( λ x194 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d192 = if if false then d110 else false then if d163 then false else true else if d156 then d137 else true