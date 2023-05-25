module Decl150Test7  where
    import Decl150Base7
    open import Decl150Base7 using (Bool; true; false; ⊤; tt) public
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
        d1 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> Decl150Base7.M.d302 ) ) ) $ ( x2 ) ) ) ) $ ( if false then Decl150Base7.M.d176 else Decl150Base7.M.d177 )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d4 = if if false then Decl150Base7.M.d297 else d1 then if Decl150Base7.M.d340 then false else false else if Decl150Base7.M.d30 then Decl150Base7.M.d79 else d1
        d7 : if true then if true then Bool else Bool else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> true ) ) ) $ ( d1 ) ) ) ) $ ( if Decl150Base7.M.d116 then Decl150Base7.M.d239 else Decl150Base7.M.d362 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if Decl150Base7.M.d205 then x11 else Decl150Base7.M.d156 ) ) ) $ ( if Decl150Base7.M.d325 then false else true )
        d14 : if false then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if Decl150Base7.M.d234 then d4 else d7 then if Decl150Base7.M.d237 then Decl150Base7.M.d342 else Decl150Base7.M.d207 else if Decl150Base7.M.d287 then d4 else Decl150Base7.M.d258
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d15 = if if Decl150Base7.M.d239 then d10 else d1 then if false then Decl150Base7.M.d75 else Decl150Base7.M.d187 else if Decl150Base7.M.d170 then Decl150Base7.M.d145 else false
        d18 : if false then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( Decl150Base7.M.d56 ) ) ) ) $ ( if d4 then Decl150Base7.M.d95 else Decl150Base7.M.d277 )
        d21 : if false then if false then Bool else Bool else if false then Bool else Bool
        d21 = if if d14 then true else true then if true then Decl150Base7.M.d172 else d18 else if Decl150Base7.M.d76 then Decl150Base7.M.d95 else Decl150Base7.M.d59
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> x24 ) ) ) $ ( x24 ) ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if x23 then Decl150Base7.M.d86 else d21 ) ) ) $ ( if true then true else Decl150Base7.M.d181 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> x27 ) ) ) $ ( x27 ) ) ) ) $ ( if false then Bool else Bool )
        d26 = if if d21 then d4 else d21 then if Decl150Base7.M.d6 then true else false else if Decl150Base7.M.d209 then true else Decl150Base7.M.d157
        d29 : if true then if false then Bool else Bool else if true then Bool else Bool
        d29 = if if Decl150Base7.M.d85 then Decl150Base7.M.d267 else Decl150Base7.M.d245 then if d18 then Decl150Base7.M.d337 else false else if d18 then d4 else true
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> Decl150Base7.M.d93 ) ) ) $ ( true ) ) ) ) $ ( if d4 then d15 else false )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> Bool ) ) ) $ ( x38 ) ) ) ) $ ( if false then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> Decl150Base7.M.d36 ) ) ) $ ( true ) ) ) ) $ ( if d4 then Decl150Base7.M.d314 else Decl150Base7.M.d221 )
        d40 : if false then if false then Bool else Bool else if true then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if d15 then Decl150Base7.M.d114 else Decl150Base7.M.d96 ) ) ) $ ( if Decl150Base7.M.d213 then d7 else Decl150Base7.M.d109 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x43 ) ) ) $ ( x43 ) ) ) ) $ ( if false then Bool else Bool )
        d42 = if if Decl150Base7.M.d136 then Decl150Base7.M.d196 else true then if Decl150Base7.M.d110 then d7 else d21 else if d35 then false else Decl150Base7.M.d254
        d45 : if true then if true then Bool else Bool else if false then Bool else Bool
        d45 = if if Decl150Base7.M.d187 then d42 else false then if Decl150Base7.M.d221 then Decl150Base7.M.d267 else Decl150Base7.M.d68 else if Decl150Base7.M.d237 then Decl150Base7.M.d315 else d1
        d46 : if true then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if Decl150Base7.M.d358 then Decl150Base7.M.d114 else true ) ) ) $ ( if false then Decl150Base7.M.d172 else d22 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x50 else x50 ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if false then Decl150Base7.M.d154 else Decl150Base7.M.d349 ) ) ) $ ( if d1 then false else Decl150Base7.M.d114 )
        d51 : if false then if true then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if Decl150Base7.M.d357 then x52 else Decl150Base7.M.d233 ) ) ) $ ( if d45 then Decl150Base7.M.d150 else Decl150Base7.M.d45 )
        d53 : if true then if false then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if x54 then Decl150Base7.M.d263 else d15 ) ) ) $ ( if Decl150Base7.M.d357 then true else true )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d55 = if if Decl150Base7.M.d262 then d15 else Decl150Base7.M.d307 then if true then Decl150Base7.M.d318 else false else if d35 then Decl150Base7.M.d219 else Decl150Base7.M.d233
        d57 : if false then if true then Bool else Bool else if true then Bool else Bool
        d57 = if if d51 then d15 else Decl150Base7.M.d314 then if Decl150Base7.M.d203 then d14 else Decl150Base7.M.d6 else if true then Decl150Base7.M.d79 else Decl150Base7.M.d358
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> Decl150Base7.M.d8 ) ) ) $ ( Decl150Base7.M.d298 ) ) ) ) $ ( if d7 then d4 else Decl150Base7.M.d19 )
        d63 : if true then if false then Bool else Bool else if true then Bool else Bool
        d63 = if if Decl150Base7.M.d230 then Decl150Base7.M.d342 else d30 then if d26 then false else Decl150Base7.M.d93 else if true then Decl150Base7.M.d90 else Decl150Base7.M.d322
        d64 : if true then if false then Bool else Bool else if false then Bool else Bool
        d64 = if if Decl150Base7.M.d237 then Decl150Base7.M.d187 else d7 then if Decl150Base7.M.d179 then d42 else Decl150Base7.M.d16 else if Decl150Base7.M.d327 then true else Decl150Base7.M.d293
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if x66 then Decl150Base7.M.d101 else x66 ) ) ) $ ( if d63 then Decl150Base7.M.d233 else true )
        d68 : if false then if true then Bool else Bool else if false then Bool else Bool
        d68 = if if Decl150Base7.M.d63 then d64 else Decl150Base7.M.d101 then if d63 then Decl150Base7.M.d6 else Decl150Base7.M.d281 else if false then d18 else Decl150Base7.M.d233
        d69 : if true then if false then Bool else Bool else if true then Bool else Bool
        d69 = if if d40 then d68 else d29 then if true then false else Decl150Base7.M.d339 else if true then Decl150Base7.M.d63 else Decl150Base7.M.d337
        d70 : if true then if false then Bool else Bool else if true then Bool else Bool
        d70 = if if false then d30 else Decl150Base7.M.d315 then if false then Decl150Base7.M.d245 else false else if d64 then d64 else Decl150Base7.M.d252
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if true then x74 else Bool ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> x72 ) ) ) $ ( d29 ) ) ) ) $ ( if Decl150Base7.M.d57 then Decl150Base7.M.d12 else d46 )
        d75 : if true then if false then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> d58 ) ) ) $ ( d30 ) ) ) ) $ ( if Decl150Base7.M.d184 then Decl150Base7.M.d150 else d22 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> false ) ) ) $ ( false ) ) ) ) $ ( if d10 then Decl150Base7.M.d33 else Decl150Base7.M.d340 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if true then Bool else x85 ) ) ) $ ( if true then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if Decl150Base7.M.d245 then d26 else Decl150Base7.M.d258 ) ) ) $ ( if true then d45 else d40 )
        d86 : if true then if false then Bool else Bool else if true then Bool else Bool
        d86 = if if d4 then Decl150Base7.M.d181 else Decl150Base7.M.d219 then if Decl150Base7.M.d354 then Decl150Base7.M.d23 else Decl150Base7.M.d131 else if true then Decl150Base7.M.d128 else Decl150Base7.M.d271
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( x90 ) ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> Decl150Base7.M.d170 ) ) ) $ ( Decl150Base7.M.d142 ) ) ) ) $ ( if false then d46 else false )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if d21 then x93 else x93 ) ) ) $ ( if Decl150Base7.M.d325 then d55 else Decl150Base7.M.d38 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> x98 ) ) ) $ ( x98 ) ) ) ) $ ( if false then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if true then d69 else Decl150Base7.M.d221 ) ) ) $ ( if Decl150Base7.M.d266 then d53 else false )
        d100 : if false then if false then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if Decl150Base7.M.d16 then d71 else Decl150Base7.M.d297 ) ) ) $ ( if Decl150Base7.M.d333 then d42 else d1 )
        d102 : if true then if false then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> true ) ) ) $ ( x103 ) ) ) ) $ ( if true then Decl150Base7.M.d23 else Decl150Base7.M.d266 )
        d105 : if false then if false then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> true ) ) ) $ ( d22 ) ) ) ) $ ( if true then d70 else Decl150Base7.M.d365 )
        d108 : if true then if true then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( x109 ) ) ) ) $ ( if Decl150Base7.M.d281 then Decl150Base7.M.d56 else Decl150Base7.M.d172 )
        d111 : if false then if false then Bool else Bool else if false then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> x113 ) ) ) $ ( Decl150Base7.M.d139 ) ) ) ) $ ( if Decl150Base7.M.d217 then Decl150Base7.M.d63 else Decl150Base7.M.d278 )
        d114 : if true then if false then Bool else Bool else if false then Bool else Bool
        d114 = if if false then Decl150Base7.M.d228 else d30 then if Decl150Base7.M.d57 then Decl150Base7.M.d281 else true else if Decl150Base7.M.d172 then d83 else true
        d115 : if true then if true then Bool else Bool else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if Decl150Base7.M.d297 then Decl150Base7.M.d214 else d87 ) ) ) $ ( if true then Decl150Base7.M.d213 else Decl150Base7.M.d281 )
        d117 : if true then if false then Bool else Bool else if false then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if Decl150Base7.M.d51 then Decl150Base7.M.d179 else Decl150Base7.M.d86 ) ) ) $ ( if Decl150Base7.M.d137 then Decl150Base7.M.d228 else Decl150Base7.M.d318 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then x120 else x120 ) ) ) $ ( if false then Bool else Bool )
        d119 = if if d102 then Decl150Base7.M.d54 else d65 then if Decl150Base7.M.d189 then Decl150Base7.M.d325 else false else if d48 then Decl150Base7.M.d185 else false
        d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( x124 ) ) ) ) $ ( if true then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> d65 ) ) ) $ ( d63 ) ) ) ) $ ( if true then Decl150Base7.M.d357 else Decl150Base7.M.d76 )
        d126 : if false then if true then Bool else Bool else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if true then x127 else x127 ) ) ) $ ( if Decl150Base7.M.d97 then true else Decl150Base7.M.d281 )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if false then x129 else x129 ) ) ) $ ( if false then Bool else Bool )
        d128 = if if Decl150Base7.M.d271 then Decl150Base7.M.d358 else true then if true then false else Decl150Base7.M.d242 else if true then Decl150Base7.M.d30 else d108
        d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if true then x131 else Bool ) ) ) $ ( if true then Bool else Bool )
        d130 = if if Decl150Base7.M.d123 then true else Decl150Base7.M.d346 then if Decl150Base7.M.d297 then d100 else d26 else if Decl150Base7.M.d284 then Decl150Base7.M.d226 else true