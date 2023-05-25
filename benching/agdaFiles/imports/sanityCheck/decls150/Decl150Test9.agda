module Decl150Test9  where
    import Decl150Base9
    open import Decl150Base9 using (Bool; true; false; ⊤; tt) public
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
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if x2 then Decl150Base9.M.d312 else false ) ) ) $ ( if false then Decl150Base9.M.d177 else Decl150Base9.M.d326 )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> d1 ) ) ) $ ( x5 ) ) ) ) $ ( if d1 then false else Decl150Base9.M.d135 )
        d9 : if true then if true then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then false else d1 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x14 ) ) ) $ ( x13 ) ) ) ) $ ( if false then Bool else Bool )
        d12 = if if d4 then Decl150Base9.M.d293 else Decl150Base9.M.d338 then if Decl150Base9.M.d60 then d1 else d1 else if false then d4 else d9
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d15 = if if Decl150Base9.M.d38 then Decl150Base9.M.d192 else Decl150Base9.M.d98 then if true then d9 else false else if true then Decl150Base9.M.d227 else false
        d18 : if true then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if Decl150Base9.M.d324 then true else true ) ) ) $ ( if Decl150Base9.M.d65 then d12 else Decl150Base9.M.d86 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then Bool else x21 ) ) ) $ ( if false then Bool else Bool )
        d20 = if if Decl150Base9.M.d290 then d15 else d9 then if d9 then Decl150Base9.M.d144 else false else if Decl150Base9.M.d297 then d12 else Decl150Base9.M.d180
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> x24 ) ) ) $ ( x23 ) ) ) ) $ ( if true then Bool else Bool )
        d22 = if if true then Decl150Base9.M.d159 else d4 then if Decl150Base9.M.d324 then Decl150Base9.M.d310 else d12 else if false then Decl150Base9.M.d52 else d20
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> x27 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d25 = if if false then Decl150Base9.M.d164 else Decl150Base9.M.d250 then if false then true else false else if Decl150Base9.M.d227 then Decl150Base9.M.d70 else d22
        d28 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> Decl150Base9.M.d210 ) ) ) $ ( Decl150Base9.M.d216 ) ) ) ) $ ( if Decl150Base9.M.d92 then true else Decl150Base9.M.d170 )
        d32 : if false then if false then Bool else Bool else if true then Bool else Bool
        d32 = if if Decl150Base9.M.d332 then d15 else Decl150Base9.M.d229 then if Decl150Base9.M.d324 then Decl150Base9.M.d120 else Decl150Base9.M.d5 else if Decl150Base9.M.d104 then Decl150Base9.M.d257 else false
        d33 : if true then if true then Bool else Bool else if false then Bool else Bool
        d33 = if if d32 then Decl150Base9.M.d61 else Decl150Base9.M.d53 then if false then Decl150Base9.M.d95 else d15 else if false then true else true
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x37 ) ) ) $ ( x37 ) ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> Decl150Base9.M.d74 ) ) ) $ ( d28 ) ) ) ) $ ( if d22 then d15 else Decl150Base9.M.d95 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x43 ) ) ) $ ( x42 ) ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> d28 ) ) ) $ ( Decl150Base9.M.d192 ) ) ) ) $ ( if false then Decl150Base9.M.d114 else d18 )
        d44 : if false then if false then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> Decl150Base9.M.d53 ) ) ) $ ( x45 ) ) ) ) $ ( if Decl150Base9.M.d210 then Decl150Base9.M.d74 else Decl150Base9.M.d168 )
        d47 : if false then if false then Bool else Bool else if true then Bool else Bool
        d47 = if if Decl150Base9.M.d275 then Decl150Base9.M.d129 else Decl150Base9.M.d108 then if Decl150Base9.M.d187 then false else Decl150Base9.M.d3 else if d32 then true else Decl150Base9.M.d56
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then x49 else x49 ) ) ) $ ( if true then Bool else Bool )
        d48 = if if true then false else Decl150Base9.M.d117 then if false then Decl150Base9.M.d125 else Decl150Base9.M.d133 else if Decl150Base9.M.d274 then Decl150Base9.M.d172 else d47
        d50 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if true then x52 else Bool ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if false then true else Decl150Base9.M.d289 ) ) ) $ ( if d28 then false else d47 )
        d53 : if true then if false then Bool else Bool else if true then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> false ) ) ) $ ( Decl150Base9.M.d180 ) ) ) ) $ ( if Decl150Base9.M.d243 then Decl150Base9.M.d314 else false )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if false then x57 else x57 ) ) ) $ ( if false then Bool else Bool )
        d56 = if if Decl150Base9.M.d70 then d18 else Decl150Base9.M.d61 then if Decl150Base9.M.d290 then Decl150Base9.M.d192 else false else if d33 then Decl150Base9.M.d56 else d53
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = if if false then d1 else d4 then if false then Decl150Base9.M.d187 else false else if Decl150Base9.M.d123 then false else false
        d61 : if false then if true then Bool else Bool else if false then Bool else Bool
        d61 = if if true then Decl150Base9.M.d350 else Decl150Base9.M.d161 then if true then Decl150Base9.M.d292 else Decl150Base9.M.d216 else if d32 then d39 else Decl150Base9.M.d319
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if false then x64 else x64 ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if true then false else d53 ) ) ) $ ( if Decl150Base9.M.d342 then d25 else d33 )
        d65 : if true then if true then Bool else Bool else if false then Bool else Bool
        d65 = if if true then d28 else d28 then if Decl150Base9.M.d211 then d4 else Decl150Base9.M.d246 else if Decl150Base9.M.d91 then Decl150Base9.M.d278 else true
        d66 : if false then if true then Bool else Bool else if true then Bool else Bool
        d66 = if if Decl150Base9.M.d161 then Decl150Base9.M.d260 else Decl150Base9.M.d12 then if Decl150Base9.M.d114 then Decl150Base9.M.d86 else true else if d65 then Decl150Base9.M.d199 else d32
        d67 : if false then if false then Bool else Bool else if false then Bool else Bool
        d67 = if if Decl150Base9.M.d83 then Decl150Base9.M.d281 else d18 then if Decl150Base9.M.d192 then Decl150Base9.M.d95 else Decl150Base9.M.d92 else if Decl150Base9.M.d135 then true else Decl150Base9.M.d92
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if false then true else Decl150Base9.M.d91 ) ) ) $ ( if d58 then true else Decl150Base9.M.d193 )
        d70 : if false then if true then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> d28 ) ) ) $ ( Decl150Base9.M.d55 ) ) ) ) $ ( if Decl150Base9.M.d52 then d20 else Decl150Base9.M.d297 )
        d73 : if false then if false then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> Decl150Base9.M.d162 ) ) ) $ ( Decl150Base9.M.d115 ) ) ) ) $ ( if true then d15 else Decl150Base9.M.d220 )
        d76 : if false then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if false then Decl150Base9.M.d52 else false then if d61 then Decl150Base9.M.d231 else Decl150Base9.M.d310 else if Decl150Base9.M.d38 then Decl150Base9.M.d17 else d44
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if true then x78 else Bool ) ) ) $ ( if false then Bool else Bool )
        d77 = if if false then Decl150Base9.M.d10 else d53 then if d65 then false else Decl150Base9.M.d227 else if Decl150Base9.M.d263 then Decl150Base9.M.d5 else d68
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x83 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> Decl150Base9.M.d326 ) ) ) $ ( true ) ) ) ) $ ( if true then d1 else Decl150Base9.M.d308 )
        d84 : if true then if true then Bool else Bool else if false then Bool else Bool
        d84 = if if true then d22 else d65 then if Decl150Base9.M.d324 then true else Decl150Base9.M.d254 else if true then true else Decl150Base9.M.d336
        d85 : if true then if true then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> Decl150Base9.M.d220 ) ) ) $ ( d4 ) ) ) ) $ ( if Decl150Base9.M.d177 then d73 else true )
        d88 : if true then if true then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if false then true else d22 ) ) ) $ ( if Decl150Base9.M.d192 then d12 else Decl150Base9.M.d321 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else x92 ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if Decl150Base9.M.d52 then true else x91 ) ) ) $ ( if Decl150Base9.M.d293 then Decl150Base9.M.d260 else Decl150Base9.M.d202 )
        d93 : if true then if true then Bool else Bool else if true then Bool else Bool
        d93 = if if Decl150Base9.M.d257 then Decl150Base9.M.d263 else d85 then if Decl150Base9.M.d83 then true else false else if d62 then false else Decl150Base9.M.d175
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if true then x96 else Bool ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if x95 then Decl150Base9.M.d38 else d93 ) ) ) $ ( if Decl150Base9.M.d188 then Decl150Base9.M.d133 else d47 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( x98 ) ) ) ) $ ( if false then Bool else Bool )
        d97 = if if d12 then d12 else Decl150Base9.M.d236 then if true then true else true else if d88 then Decl150Base9.M.d321 else d20
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> Bool ) ) ) $ ( x101 ) ) ) ) $ ( if false then Bool else Bool )
        d100 = if if d28 then Decl150Base9.M.d123 else false then if Decl150Base9.M.d5 then Decl150Base9.M.d149 else Decl150Base9.M.d246 else if false then d34 else Decl150Base9.M.d154
        d103 : if true then if true then Bool else Bool else if false then Bool else Bool
        d103 = if if d94 then Decl150Base9.M.d1 else Decl150Base9.M.d211 then if d9 then Decl150Base9.M.d326 else Decl150Base9.M.d79 else if Decl150Base9.M.d17 then Decl150Base9.M.d85 else true
        d104 : if true then if true then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> Decl150Base9.M.d188 ) ) ) $ ( Decl150Base9.M.d38 ) ) ) ) $ ( if Decl150Base9.M.d334 then Decl150Base9.M.d67 else Decl150Base9.M.d329 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if true then x108 else Bool ) ) ) $ ( if false then Bool else Bool )
        d107 = if if d77 then d20 else d61 then if Decl150Base9.M.d188 then Decl150Base9.M.d175 else true else if true then Decl150Base9.M.d224 else true
        d109 : if false then if true then Bool else Bool else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d107 then Decl150Base9.M.d111 else d22 ) ) ) $ ( if Decl150Base9.M.d173 then d94 else d39 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x113 ) ) ) $ ( x112 ) ) ) ) $ ( if false then Bool else Bool )
        d111 = if if true then Decl150Base9.M.d96 else true then if Decl150Base9.M.d324 then Decl150Base9.M.d329 else d104 else if Decl150Base9.M.d152 then true else Decl150Base9.M.d74
        d114 : if false then if true then Bool else Bool else if true then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if Decl150Base9.M.d151 then Decl150Base9.M.d236 else x115 ) ) ) $ ( if d79 then d56 else Decl150Base9.M.d70 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then x119 else x119 ) ) ) $ ( if false then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> d79 ) ) ) $ ( Decl150Base9.M.d152 ) ) ) ) $ ( if Decl150Base9.M.d292 then Decl150Base9.M.d138 else Decl150Base9.M.d49 )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d120 = if if false then d68 else true then if Decl150Base9.M.d314 then true else Decl150Base9.M.d239 else if Decl150Base9.M.d220 then Decl150Base9.M.d177 else Decl150Base9.M.d84
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x125 ) ) ) $ ( x124 ) ) ) ) $ ( if true then Bool else Bool )
        d123 = if if Decl150Base9.M.d342 then true else Decl150Base9.M.d8 then if Decl150Base9.M.d159 then false else d1 else if Decl150Base9.M.d299 then Decl150Base9.M.d106 else d70
        d126 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if true then Bool else x129 ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> Decl150Base9.M.d227 ) ) ) $ ( d25 ) ) ) ) $ ( if Decl150Base9.M.d195 then false else Decl150Base9.M.d234 )