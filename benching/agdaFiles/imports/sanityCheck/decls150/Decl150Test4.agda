module Decl150Test4  where
    import Decl150Base4
    open import Decl150Base4 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x4 ) ) ) $ ( x4 ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x3 ) ) ) $ ( x2 ) ) ) ) $ ( if Decl150Base4.M.d84 then Decl150Base4.M.d89 else false )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d6 = if if false then d1 else Decl150Base4.M.d139 then if false then Decl150Base4.M.d254 else d1 else if d1 then Decl150Base4.M.d356 else true
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then Bool else x10 ) ) ) $ ( if true then Bool else Bool )
        d9 = if if Decl150Base4.M.d314 then d1 else true then if Decl150Base4.M.d323 then Decl150Base4.M.d398 else Decl150Base4.M.d173 else if false then Decl150Base4.M.d323 else true
        d11 : if false then if false then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> true ) ) ) $ ( Decl150Base4.M.d246 ) ) ) ) $ ( if d6 then d9 else Decl150Base4.M.d336 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then Bool else x15 ) ) ) $ ( if true then Bool else Bool )
        d14 = if if d11 then false else Decl150Base4.M.d221 then if true then Decl150Base4.M.d75 else false else if Decl150Base4.M.d54 then d11 else d11
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if true then Bool else x18 ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if x17 then d6 else true ) ) ) $ ( if Decl150Base4.M.d17 then d6 else true )
        d19 : if false then if true then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> d9 ) ) ) $ ( d6 ) ) ) ) $ ( if d1 then d9 else Decl150Base4.M.d94 )
        d22 : if true then if false then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if x23 then Decl150Base4.M.d341 else Decl150Base4.M.d186 ) ) ) $ ( if Decl150Base4.M.d161 then d6 else d16 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if true then x27 else x27 ) ) ) $ ( if true then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> d11 ) ) ) $ ( true ) ) ) ) $ ( if false then Decl150Base4.M.d232 else Decl150Base4.M.d8 )
        d28 : if false then if false then Bool else Bool else if true then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> d16 ) ) ) $ ( x29 ) ) ) ) $ ( if Decl150Base4.M.d64 then false else false )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> true ) ) ) $ ( d9 ) ) ) ) $ ( if d1 then d16 else false )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d14 ) ) ) $ ( Decl150Base4.M.d155 ) ) ) ) $ ( if d14 then true else true )
        d41 : if false then if false then Bool else Bool else if true then Bool else Bool
        d41 = if if true then true else false then if Decl150Base4.M.d73 then false else Decl150Base4.M.d243 else if Decl150Base4.M.d75 then Decl150Base4.M.d1 else Decl150Base4.M.d326
        d42 : if true then if true then Bool else Bool else if true then Bool else Bool
        d42 = if if Decl150Base4.M.d221 then Decl150Base4.M.d186 else Decl150Base4.M.d274 then if d22 then true else false else if false then Decl150Base4.M.d98 else d1
        d43 : if false then if true then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if x44 then d11 else true ) ) ) $ ( if Decl150Base4.M.d299 then d31 else Decl150Base4.M.d107 )
        d45 : if false then if false then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if d42 then d19 else Decl150Base4.M.d64 ) ) ) $ ( if Decl150Base4.M.d26 then false else false )
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if Decl150Base4.M.d119 then x48 else Decl150Base4.M.d199 ) ) ) $ ( if false then d28 else false )
        d49 : if true then if false then Bool else Bool else if false then Bool else Bool
        d49 = if if false then Decl150Base4.M.d98 else d36 then if false then Decl150Base4.M.d8 else d9 else if Decl150Base4.M.d234 then Decl150Base4.M.d293 else d41
        d50 : if true then if false then Bool else Bool else if false then Bool else Bool
        d50 = if if Decl150Base4.M.d109 then d43 else false then if false then d1 else true else if false then Decl150Base4.M.d274 else true
        d51 : if true then if true then Bool else Bool else if false then Bool else Bool
        d51 = if if d24 then Decl150Base4.M.d243 else false then if Decl150Base4.M.d395 then d11 else true else if false then false else true
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then x53 else Bool ) ) ) $ ( if true then Bool else Bool )
        d52 = if if Decl150Base4.M.d155 then d51 else Decl150Base4.M.d56 then if d49 then false else Decl150Base4.M.d32 else if Decl150Base4.M.d343 then Decl150Base4.M.d150 else d28
        d54 : if true then if false then Bool else Bool else if true then Bool else Bool
        d54 = if if Decl150Base4.M.d228 then false else false then if d11 then false else Decl150Base4.M.d225 else if true then d41 else Decl150Base4.M.d395
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if false then x56 else x56 ) ) ) $ ( if true then Bool else Bool )
        d55 = if if Decl150Base4.M.d221 then true else d16 then if Decl150Base4.M.d279 then true else Decl150Base4.M.d259 else if Decl150Base4.M.d172 then true else false
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then x58 else x58 ) ) ) $ ( if false then Bool else Bool )
        d57 = if if false then false else false then if d36 then Decl150Base4.M.d388 else d24 else if d55 then true else d43
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> x60 ) ) ) $ ( Decl150Base4.M.d199 ) ) ) ) $ ( if d42 then Decl150Base4.M.d115 else d47 )
        d64 : if false then if true then Bool else Bool else if false then Bool else Bool
        d64 = if if Decl150Base4.M.d132 then Decl150Base4.M.d305 else Decl150Base4.M.d372 then if Decl150Base4.M.d71 then false else d49 else if false then Decl150Base4.M.d290 else d47
        d65 : if true then if false then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if d54 then true else x66 ) ) ) $ ( if Decl150Base4.M.d119 then d24 else d36 )
        d67 : if true then if false then Bool else Bool else if true then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if d24 then Decl150Base4.M.d211 else Decl150Base4.M.d283 ) ) ) $ ( if Decl150Base4.M.d126 then Decl150Base4.M.d32 else Decl150Base4.M.d8 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then x72 else x72 ) ) ) $ ( if true then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> d59 ) ) ) $ ( Decl150Base4.M.d54 ) ) ) ) $ ( if Decl150Base4.M.d323 then Decl150Base4.M.d386 else false )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then x74 else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = if if Decl150Base4.M.d270 then Decl150Base4.M.d355 else Decl150Base4.M.d376 then if true then Decl150Base4.M.d246 else Decl150Base4.M.d336 else if Decl150Base4.M.d349 then true else d55
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then x76 else Bool ) ) ) $ ( if true then Bool else Bool )
        d75 = if if Decl150Base4.M.d17 then d54 else true then if true then d45 else d65 else if false then Decl150Base4.M.d164 else false
        d77 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then x79 else Bool ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if Decl150Base4.M.d287 then x78 else Decl150Base4.M.d98 ) ) ) $ ( if Decl150Base4.M.d99 then Decl150Base4.M.d29 else d73 )
        d80 : if true then if true then Bool else Bool else if false then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if d6 then d52 else Decl150Base4.M.d54 ) ) ) $ ( if d45 then Decl150Base4.M.d346 else Decl150Base4.M.d26 )
        d82 : if false then if false then Bool else Bool else if true then Bool else Bool
        d82 = if if Decl150Base4.M.d33 then Decl150Base4.M.d221 else true then if Decl150Base4.M.d53 then Decl150Base4.M.d232 else Decl150Base4.M.d343 else if d77 then d54 else d67
        d83 : if false then if true then Bool else Bool else if true then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if Decl150Base4.M.d199 then x84 else x84 ) ) ) $ ( if d43 then Decl150Base4.M.d67 else Decl150Base4.M.d217 )
        d85 : if true then if true then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> d67 ) ) ) $ ( x86 ) ) ) ) $ ( if Decl150Base4.M.d73 then Decl150Base4.M.d22 else false )
        d88 : if false then if true then Bool else Bool else if true then Bool else Bool
        d88 = if if d14 then d85 else Decl150Base4.M.d314 then if Decl150Base4.M.d351 then Decl150Base4.M.d73 else true else if Decl150Base4.M.d266 then Decl150Base4.M.d233 else d11
        d89 : if true then if false then Bool else Bool else if false then Bool else Bool
        d89 = if if Decl150Base4.M.d363 then Decl150Base4.M.d15 else Decl150Base4.M.d15 then if d59 then false else true else if d55 then Decl150Base4.M.d395 else Decl150Base4.M.d388
        d90 : if true then if true then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if false then true else Decl150Base4.M.d8 ) ) ) $ ( if true then Decl150Base4.M.d336 else Decl150Base4.M.d290 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if x93 then true else Decl150Base4.M.d386 ) ) ) $ ( if false then d67 else true )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> x98 ) ) ) $ ( x97 ) ) ) ) $ ( if true then Bool else Bool )
        d96 = if if Decl150Base4.M.d204 then d22 else Decl150Base4.M.d177 then if false then Decl150Base4.M.d311 else Decl150Base4.M.d148 else if Decl150Base4.M.d103 then true else false
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d99 = if if false then true else Decl150Base4.M.d188 then if Decl150Base4.M.d126 then Decl150Base4.M.d354 else true else if Decl150Base4.M.d53 then d28 else Decl150Base4.M.d173
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x104 ) ) ) $ ( x103 ) ) ) ) $ ( if true then Bool else Bool )
        d102 = if if d49 then Decl150Base4.M.d181 else false then if d90 then Decl150Base4.M.d115 else true else if Decl150Base4.M.d228 then false else Decl150Base4.M.d372
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then Bool else x106 ) ) ) $ ( if false then Bool else Bool )
        d105 = if if Decl150Base4.M.d351 then Decl150Base4.M.d304 else d47 then if d73 then false else Decl150Base4.M.d205 else if true then Decl150Base4.M.d305 else true
        d107 : if true then if false then Bool else Bool else if true then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if d59 then Decl150Base4.M.d17 else false ) ) ) $ ( if Decl150Base4.M.d252 then d75 else Decl150Base4.M.d71 )
        d109 : if false then if false then Bool else Bool else if false then Bool else Bool
        d109 = if if d16 then Decl150Base4.M.d157 else d55 then if Decl150Base4.M.d43 then false else Decl150Base4.M.d264 else if false then d51 else true
        d110 : if true then if false then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if Decl150Base4.M.d215 then Decl150Base4.M.d343 else Decl150Base4.M.d391 ) ) ) $ ( if Decl150Base4.M.d209 then false else Decl150Base4.M.d314 )
        d112 : if false then if true then Bool else Bool else if true then Bool else Bool
        d112 = if if Decl150Base4.M.d391 then Decl150Base4.M.d217 else false then if Decl150Base4.M.d279 then Decl150Base4.M.d398 else d59 else if false then d59 else Decl150Base4.M.d50
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d113 = if if d89 then true else Decl150Base4.M.d76 then if Decl150Base4.M.d249 then Decl150Base4.M.d89 else Decl150Base4.M.d339 else if d6 then false else Decl150Base4.M.d355
        d115 : if true then if true then Bool else Bool else if true then Bool else Bool
        d115 = if if Decl150Base4.M.d126 then d59 else true then if Decl150Base4.M.d353 then d75 else d24 else if true then Decl150Base4.M.d161 else Decl150Base4.M.d398