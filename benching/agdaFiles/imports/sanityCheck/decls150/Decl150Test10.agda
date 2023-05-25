module Decl150Test10  where
    import Decl150Base10
    open import Decl150Base10 using (Bool; true; false; ⊤; tt) public
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
        d1 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1 = if if Decl150Base10.M.d37 then Decl150Base10.M.d204 else Decl150Base10.M.d96 then if true then false else Decl150Base10.M.d113 else if false then Decl150Base10.M.d81 else false
        d2 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( x4 ) ) ) ) $ ( if true then Bool else Bool )
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> if true then x3 else d1 ) ) ) $ ( if d1 then Decl150Base10.M.d18 else Decl150Base10.M.d335 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then x7 else Bool ) ) ) $ ( if true then Bool else Bool )
        d6 = if if d2 then true else d1 then if false then d1 else Decl150Base10.M.d125 else if d1 then true else Decl150Base10.M.d317
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then x9 else Bool ) ) ) $ ( if false then Bool else Bool )
        d8 = if if true then d2 else false then if true then true else d1 else if Decl150Base10.M.d145 then Decl150Base10.M.d203 else Decl150Base10.M.d275
        d10 : if false then if false then Bool else Bool else if false then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if x11 then Decl150Base10.M.d171 else Decl150Base10.M.d256 ) ) ) $ ( if Decl150Base10.M.d132 then Decl150Base10.M.d51 else false )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if true then x13 else x13 ) ) ) $ ( if true then Bool else Bool )
        d12 = if if Decl150Base10.M.d338 then Decl150Base10.M.d1 else d6 then if false then Decl150Base10.M.d211 else Decl150Base10.M.d84 else if Decl150Base10.M.d292 then true else Decl150Base10.M.d338
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x15 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d14 = if if false then true else Decl150Base10.M.d327 then if Decl150Base10.M.d77 then Decl150Base10.M.d152 else d2 else if d2 then Decl150Base10.M.d289 else true
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then x18 else x18 ) ) ) $ ( if false then Bool else Bool )
        d17 = if if Decl150Base10.M.d267 then d6 else d12 then if true then Decl150Base10.M.d117 else Decl150Base10.M.d236 else if Decl150Base10.M.d95 then Decl150Base10.M.d350 else Decl150Base10.M.d132
        d19 : if true then if true then Bool else Bool else if true then Bool else Bool
        d19 = if if false then Decl150Base10.M.d357 else Decl150Base10.M.d309 then if d12 then Decl150Base10.M.d241 else false else if Decl150Base10.M.d235 then d8 else Decl150Base10.M.d161
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x23 ) ) ) $ ( x22 ) ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if Decl150Base10.M.d247 then x21 else d12 ) ) ) $ ( if true then Decl150Base10.M.d1 else d6 )
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if false then false else false ) ) ) $ ( if Decl150Base10.M.d18 then Decl150Base10.M.d308 else false )
        d26 : if false then if false then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> Decl150Base10.M.d117 ) ) ) $ ( false ) ) ) ) $ ( if Decl150Base10.M.d25 then d24 else Decl150Base10.M.d1 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> Bool ) ) ) $ ( x30 ) ) ) ) $ ( if false then Bool else Bool )
        d29 = if if d14 then d6 else false then if Decl150Base10.M.d79 then Decl150Base10.M.d351 else false else if Decl150Base10.M.d161 then d12 else d12
        d32 : if false then if true then Bool else Bool else if true then Bool else Bool
        d32 = if if Decl150Base10.M.d25 then Decl150Base10.M.d130 else false then if d26 then false else Decl150Base10.M.d196 else if false then Decl150Base10.M.d25 else d14
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then x34 else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = if if Decl150Base10.M.d292 then Decl150Base10.M.d43 else Decl150Base10.M.d234 then if d14 then false else true else if Decl150Base10.M.d331 then Decl150Base10.M.d337 else true
        d35 : if false then if true then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if x36 then d33 else d29 ) ) ) $ ( if Decl150Base10.M.d10 then d8 else Decl150Base10.M.d155 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then x39 else x39 ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if Decl150Base10.M.d127 then x38 else d12 ) ) ) $ ( if true then d17 else false )
        d40 : if true then if true then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if true then true else Decl150Base10.M.d93 ) ) ) $ ( if false then true else true )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if false then x44 else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if Decl150Base10.M.d225 then x43 else d40 ) ) ) $ ( if Decl150Base10.M.d79 then true else Decl150Base10.M.d103 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then Bool else x47 ) ) ) $ ( if false then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if Decl150Base10.M.d25 then x46 else Decl150Base10.M.d330 ) ) ) $ ( if Decl150Base10.M.d180 then true else Decl150Base10.M.d263 )
        d48 : if true then if false then Bool else Bool else if true then Bool else Bool
        d48 = if if Decl150Base10.M.d171 then false else d45 then if Decl150Base10.M.d292 then Decl150Base10.M.d290 else d32 else if Decl150Base10.M.d106 then Decl150Base10.M.d148 else Decl150Base10.M.d347
        d49 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> Decl150Base10.M.d108 ) ) ) $ ( Decl150Base10.M.d317 ) ) ) ) $ ( if Decl150Base10.M.d145 then Decl150Base10.M.d237 else d37 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> Decl150Base10.M.d80 ) ) ) $ ( Decl150Base10.M.d98 ) ) ) ) $ ( if d26 then Decl150Base10.M.d150 else d35 )
        d59 : if true then if true then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if x60 then d42 else d32 ) ) ) $ ( if d2 then Decl150Base10.M.d25 else d2 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> x63 ) ) ) $ ( x62 ) ) ) ) $ ( if false then Bool else Bool )
        d61 = if if Decl150Base10.M.d179 then true else Decl150Base10.M.d70 then if true then Decl150Base10.M.d327 else false else if d35 then true else false
        d64 : if false then if false then Bool else Bool else if false then Bool else Bool
        d64 = if if Decl150Base10.M.d10 then Decl150Base10.M.d185 else Decl150Base10.M.d313 then if Decl150Base10.M.d320 then true else true else if Decl150Base10.M.d289 then false else false
        d65 : if true then if true then Bool else Bool else if false then Bool else Bool
        d65 = if if d20 then true else d54 then if Decl150Base10.M.d127 then d37 else Decl150Base10.M.d10 else if Decl150Base10.M.d74 then Decl150Base10.M.d135 else Decl150Base10.M.d29
        d66 : if false then if true then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> false ) ) ) $ ( Decl150Base10.M.d317 ) ) ) ) $ ( if false then Decl150Base10.M.d313 else d32 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d69 = if if Decl150Base10.M.d348 then false else Decl150Base10.M.d10 then if d29 then Decl150Base10.M.d35 else d37 else if Decl150Base10.M.d44 then true else Decl150Base10.M.d1
        d72 : if false then if false then Bool else Bool else if false then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> d54 ) ) ) $ ( d49 ) ) ) ) $ ( if Decl150Base10.M.d252 then Decl150Base10.M.d259 else Decl150Base10.M.d135 )
        d75 : if false then if true then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> false ) ) ) $ ( x76 ) ) ) ) $ ( if Decl150Base10.M.d347 then Decl150Base10.M.d125 else d2 )
        d78 : if true then if true then Bool else Bool else if true then Bool else Bool
        d78 = if if Decl150Base10.M.d102 then Decl150Base10.M.d129 else Decl150Base10.M.d10 then if Decl150Base10.M.d352 then d64 else true else if d59 then d37 else Decl150Base10.M.d172
        d79 : if false then if false then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> Decl150Base10.M.d309 ) ) ) $ ( Decl150Base10.M.d171 ) ) ) ) $ ( if Decl150Base10.M.d61 then true else false )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d82 = if if Decl150Base10.M.d256 then Decl150Base10.M.d308 else Decl150Base10.M.d152 then if d24 then Decl150Base10.M.d244 else Decl150Base10.M.d123 else if Decl150Base10.M.d237 then Decl150Base10.M.d172 else true
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( x85 ) ) ) ) $ ( if true then Bool else Bool )
        d84 = if if Decl150Base10.M.d102 then Decl150Base10.M.d80 else Decl150Base10.M.d225 then if Decl150Base10.M.d179 then d61 else Decl150Base10.M.d309 else if Decl150Base10.M.d347 then Decl150Base10.M.d218 else d19
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> x89 ) ) ) $ ( x88 ) ) ) ) $ ( if true then Bool else Bool )
        d87 = if if Decl150Base10.M.d297 then d33 else Decl150Base10.M.d320 then if Decl150Base10.M.d339 then Decl150Base10.M.d155 else d40 else if true then false else Decl150Base10.M.d236
        d90 : if true then if true then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if Decl150Base10.M.d320 then d61 else true ) ) ) $ ( if d17 then Decl150Base10.M.d7 else d75 )
        d92 : if true then if false then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if x93 then false else d78 ) ) ) $ ( if d12 then Decl150Base10.M.d290 else Decl150Base10.M.d48 )
        d94 : if true then if true then Bool else Bool else if true then Bool else Bool
        d94 = if if d72 then Decl150Base10.M.d185 else d65 then if d84 then true else d65 else if Decl150Base10.M.d246 then false else false
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then Bool else x98 ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> Decl150Base10.M.d106 ) ) ) $ ( d29 ) ) ) ) $ ( if Decl150Base10.M.d157 then Decl150Base10.M.d327 else Decl150Base10.M.d86 )
        d99 : if true then if false then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> Decl150Base10.M.d79 ) ) ) $ ( d33 ) ) ) ) $ ( if d69 then d14 else Decl150Base10.M.d81 )
        d102 : if false then if false then Bool else Bool else if true then Bool else Bool
        d102 = if if Decl150Base10.M.d44 then d17 else Decl150Base10.M.d152 then if true then d24 else Decl150Base10.M.d234 else if true then Decl150Base10.M.d115 else false
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d103 = if if false then d75 else Decl150Base10.M.d236 then if Decl150Base10.M.d284 then Decl150Base10.M.d331 else Decl150Base10.M.d241 else if Decl150Base10.M.d338 then true else false
        d106 : if false then if true then Bool else Bool else if true then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> Decl150Base10.M.d279 ) ) ) $ ( x107 ) ) ) ) $ ( if d24 then false else d37 )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> Bool ) ) ) $ ( x111 ) ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if false then x110 else true ) ) ) $ ( if true then Decl150Base10.M.d102 else Decl150Base10.M.d267 )
        d113 : if true then if false then Bool else Bool else if false then Bool else Bool
        d113 = if if d92 then false else false then if d32 then Decl150Base10.M.d185 else Decl150Base10.M.d263 else if d45 then true else d82
        d114 : if true then if false then Bool else Bool else if false then Bool else Bool
        d114 = if if Decl150Base10.M.d135 then true else d90 then if true then Decl150Base10.M.d125 else d8 else if false then Decl150Base10.M.d179 else Decl150Base10.M.d279
        d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> Bool ) ) ) $ ( x116 ) ) ) ) $ ( if true then Bool else Bool )
        d115 = if if Decl150Base10.M.d252 then Decl150Base10.M.d310 else false then if Decl150Base10.M.d145 then false else d65 else if true then d10 else Decl150Base10.M.d245
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then x119 else Bool ) ) ) $ ( if true then Bool else Bool )
        d118 = if if d78 then true else d69 then if false then false else Decl150Base10.M.d51 else if Decl150Base10.M.d48 then Decl150Base10.M.d299 else Decl150Base10.M.d245
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d120 = if if Decl150Base10.M.d179 then Decl150Base10.M.d256 else d59 then if d35 then d59 else Decl150Base10.M.d176 else if d75 then Decl150Base10.M.d234 else true