module Decl150Test6  where
    import Decl150Base6
    open import Decl150Base6 using (Bool; true; false; ⊤; tt) public
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
        d1 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1 = if if false then Decl150Base6.M.d33 else Decl150Base6.M.d1 then if Decl150Base6.M.d236 then Decl150Base6.M.d146 else Decl150Base6.M.d67 else if Decl150Base6.M.d153 then Decl150Base6.M.d271 else true
        d2 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x5 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> if x3 then d1 else d1 ) ) ) $ ( if true then false else Decl150Base6.M.d99 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d6 = if if Decl150Base6.M.d265 then false else Decl150Base6.M.d194 then if Decl150Base6.M.d158 then d2 else true else if false then Decl150Base6.M.d84 else Decl150Base6.M.d276
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if false then x10 else Bool ) ) ) $ ( if true then Bool else Bool )
        d9 = if if Decl150Base6.M.d307 then false else Decl150Base6.M.d340 then if true then false else Decl150Base6.M.d332 else if d1 then Decl150Base6.M.d146 else true
        d11 : if false then if true then Bool else Bool else if false then Bool else Bool
        d11 = if if Decl150Base6.M.d174 then Decl150Base6.M.d336 else Decl150Base6.M.d16 then if Decl150Base6.M.d168 then d2 else d9 else if d2 then d2 else Decl150Base6.M.d237
        d12 : if false then if false then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if Decl150Base6.M.d350 then true else Decl150Base6.M.d61 ) ) ) $ ( if false then d2 else false )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x15 ) ) ) $ ( x15 ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if if Decl150Base6.M.d130 then Decl150Base6.M.d72 else d1 then if d11 then d9 else false else if Decl150Base6.M.d33 then Decl150Base6.M.d90 else false
        d17 : if true then if true then Bool else Bool else if false then Bool else Bool
        d17 = if if true then Decl150Base6.M.d287 else Decl150Base6.M.d242 then if d12 then Decl150Base6.M.d38 else false else if false then d2 else Decl150Base6.M.d354
        d18 : if true then if true then Bool else Bool else if false then Bool else Bool
        d18 = if if d9 then d12 else d9 then if d12 then false else d2 else if d17 then Decl150Base6.M.d62 else d1
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if true then Decl150Base6.M.d61 else false ) ) ) $ ( if Decl150Base6.M.d229 then Decl150Base6.M.d128 else d9 )
        d21 : if true then if false then Bool else Bool else if true then Bool else Bool
        d21 = if if d2 then Decl150Base6.M.d187 else false then if d2 then Decl150Base6.M.d336 else Decl150Base6.M.d33 else if d14 then Decl150Base6.M.d27 else Decl150Base6.M.d256
        d22 : if false then if false then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if x23 then Decl150Base6.M.d237 else d14 ) ) ) $ ( if false then d1 else Decl150Base6.M.d17 )
        d24 : if true then if false then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> Decl150Base6.M.d302 ) ) ) $ ( x25 ) ) ) ) $ ( if d21 then Decl150Base6.M.d149 else Decl150Base6.M.d191 )
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if Decl150Base6.M.d334 then true else x28 ) ) ) $ ( if true then Decl150Base6.M.d8 else Decl150Base6.M.d79 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then Decl150Base6.M.d2 else Decl150Base6.M.d191 ) ) ) $ ( if true then d9 else d17 )
        d33 : if false then if true then Bool else Bool else if true then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> d22 ) ) ) $ ( Decl150Base6.M.d143 ) ) ) ) $ ( if Decl150Base6.M.d93 then Decl150Base6.M.d131 else true )
        d36 : if false then if false then Bool else Bool else if false then Bool else Bool
        d36 = if if Decl150Base6.M.d94 then Decl150Base6.M.d290 else true then if d19 then d27 else Decl150Base6.M.d35 else if true then Decl150Base6.M.d2 else d11
        d37 : if false then if true then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> Decl150Base6.M.d146 ) ) ) $ ( d17 ) ) ) ) $ ( if d17 then Decl150Base6.M.d251 else Decl150Base6.M.d125 )
        d40 : if true then if false then Bool else Bool else if false then Bool else Bool
        d40 = if if Decl150Base6.M.d185 then Decl150Base6.M.d266 else Decl150Base6.M.d232 then if Decl150Base6.M.d218 then d11 else d37 else if d29 then Decl150Base6.M.d256 else d2
        d41 : if true then if true then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if d29 then x42 else x42 ) ) ) $ ( if false then Decl150Base6.M.d371 else d33 )
        d43 : if true then if false then Bool else Bool else if false then Bool else Bool
        d43 = if if true then d1 else Decl150Base6.M.d202 then if Decl150Base6.M.d50 then true else Decl150Base6.M.d248 else if false then Decl150Base6.M.d248 else d11
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = if if Decl150Base6.M.d115 then Decl150Base6.M.d68 else Decl150Base6.M.d213 then if Decl150Base6.M.d119 then true else Decl150Base6.M.d138 else if d43 then Decl150Base6.M.d35 else d21
        d46 : if true then if true then Bool else Bool else if true then Bool else Bool
        d46 = if if d9 then Decl150Base6.M.d123 else Decl150Base6.M.d124 then if d43 then Decl150Base6.M.d313 else Decl150Base6.M.d332 else if true then false else d27
        d47 : if false then if false then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if Decl150Base6.M.d1 then d40 else Decl150Base6.M.d74 ) ) ) $ ( if d44 then Decl150Base6.M.d6 else Decl150Base6.M.d165 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> Bool ) ) ) $ ( x50 ) ) ) ) $ ( if true then Bool else Bool )
        d49 = if if d9 then d47 else Decl150Base6.M.d62 then if true then Decl150Base6.M.d94 else d24 else if d14 then Decl150Base6.M.d197 else Decl150Base6.M.d271
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then Bool else x53 ) ) ) $ ( if false then Bool else Bool )
        d52 = if if true then true else d46 then if false then Decl150Base6.M.d125 else false else if d9 then true else Decl150Base6.M.d260
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if false then x55 else Bool ) ) ) $ ( if false then Bool else Bool )
        d54 = if if Decl150Base6.M.d90 then Decl150Base6.M.d71 else Decl150Base6.M.d90 then if Decl150Base6.M.d191 then false else Decl150Base6.M.d299 else if true then false else Decl150Base6.M.d363
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if Decl150Base6.M.d291 then d52 else Decl150Base6.M.d354 ) ) ) $ ( if Decl150Base6.M.d289 then true else Decl150Base6.M.d199 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then Bool else x62 ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if Decl150Base6.M.d228 then Decl150Base6.M.d151 else d12 ) ) ) $ ( if Decl150Base6.M.d17 then Decl150Base6.M.d162 else Decl150Base6.M.d244 )
        d63 : if false then if true then Bool else Bool else if false then Bool else Bool
        d63 = if if Decl150Base6.M.d356 then d24 else Decl150Base6.M.d151 then if Decl150Base6.M.d267 then false else Decl150Base6.M.d313 else if d6 then Decl150Base6.M.d291 else true
        d64 : if false then if true then Bool else Bool else if false then Bool else Bool
        d64 = if if true then Decl150Base6.M.d84 else Decl150Base6.M.d238 then if true then Decl150Base6.M.d180 else d17 else if true then Decl150Base6.M.d53 else Decl150Base6.M.d115
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if false then x68 else x68 ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d24 ) ) ) $ ( d43 ) ) ) ) $ ( if Decl150Base6.M.d228 then Decl150Base6.M.d16 else d11 )
        d69 : if false then if true then Bool else Bool else if true then Bool else Bool
        d69 = if if Decl150Base6.M.d223 then false else false then if true then d33 else d19 else if false then true else Decl150Base6.M.d289
        d70 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if true then Bool else x72 ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if Decl150Base6.M.d138 then d63 else true ) ) ) $ ( if true then Decl150Base6.M.d322 else Decl150Base6.M.d199 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then x74 else x74 ) ) ) $ ( if true then Bool else Bool )
        d73 = if if Decl150Base6.M.d265 then false else Decl150Base6.M.d94 then if Decl150Base6.M.d267 then Decl150Base6.M.d292 else Decl150Base6.M.d289 else if false then d52 else true
        d75 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if false then x78 else x78 ) ) ) $ ( if false then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> Decl150Base6.M.d313 ) ) ) $ ( Decl150Base6.M.d68 ) ) ) ) $ ( if true then d73 else d40 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then x80 else Bool ) ) ) $ ( if false then Bool else Bool )
        d79 = if if Decl150Base6.M.d170 then Decl150Base6.M.d11 else d40 then if Decl150Base6.M.d16 then true else Decl150Base6.M.d197 else if Decl150Base6.M.d30 then Decl150Base6.M.d302 else d37
        d81 : if false then if true then Bool else Bool else if true then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> x83 ) ) ) $ ( x82 ) ) ) ) $ ( if Decl150Base6.M.d281 then Decl150Base6.M.d238 else Decl150Base6.M.d94 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x88 ) ) ) $ ( x87 ) ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> Decl150Base6.M.d260 ) ) ) $ ( Decl150Base6.M.d16 ) ) ) ) $ ( if false then Decl150Base6.M.d218 else d40 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if false then x91 else Bool ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if Decl150Base6.M.d194 then Decl150Base6.M.d336 else d27 ) ) ) $ ( if false then true else d49 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d92 = if if d41 then d21 else Decl150Base6.M.d138 then if Decl150Base6.M.d242 then Decl150Base6.M.d217 else Decl150Base6.M.d343 else if Decl150Base6.M.d315 then Decl150Base6.M.d287 else false
        d94 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> x98 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> false ) ) ) $ ( x95 ) ) ) ) $ ( if Decl150Base6.M.d305 then Decl150Base6.M.d218 else Decl150Base6.M.d24 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> x102 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> Decl150Base6.M.d79 ) ) ) $ ( x100 ) ) ) ) $ ( if Decl150Base6.M.d180 then Decl150Base6.M.d33 else Decl150Base6.M.d370 )
        d104 : if true then if false then Bool else Bool else if false then Bool else Bool
        d104 = if if Decl150Base6.M.d45 then d73 else d36 then if d36 then d1 else false else if Decl150Base6.M.d11 then true else Decl150Base6.M.d191
        d105 : if false then if false then Bool else Bool else if true then Bool else Bool
        d105 = if if Decl150Base6.M.d251 then d24 else Decl150Base6.M.d53 then if d70 then Decl150Base6.M.d106 else false else if d81 then Decl150Base6.M.d217 else true
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x107 ) ) ) $ ( x107 ) ) ) ) $ ( if false then Bool else Bool )
        d106 = if if Decl150Base6.M.d199 then d9 else Decl150Base6.M.d281 then if false then Decl150Base6.M.d180 else Decl150Base6.M.d370 else if d94 then Decl150Base6.M.d50 else Decl150Base6.M.d84
        d109 : if false then if true then Bool else Bool else if false then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if Decl150Base6.M.d316 then d2 else x110 ) ) ) $ ( if d21 then false else Decl150Base6.M.d234 )
        d111 : if false then if false then Bool else Bool else if false then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> Decl150Base6.M.d116 ) ) ) $ ( d89 ) ) ) ) $ ( if true then true else true )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> Decl150Base6.M.d213 ) ) ) $ ( Decl150Base6.M.d76 ) ) ) ) $ ( if Decl150Base6.M.d102 then false else false )
        d118 : if true then if false then Bool else Bool else if false then Bool else Bool
        d118 = if if false then Decl150Base6.M.d356 else true then if Decl150Base6.M.d79 then Decl150Base6.M.d336 else true else if true then false else Decl150Base6.M.d130