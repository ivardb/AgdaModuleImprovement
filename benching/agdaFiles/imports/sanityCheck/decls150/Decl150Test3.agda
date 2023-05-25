module Decl150Test3  where
    import Decl150Base3
    open import Decl150Base3 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then x3 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if x2 then true else Decl150Base3.M.d12 ) ) ) $ ( if Decl150Base3.M.d138 then Decl150Base3.M.d34 else false )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then x7 else x7 ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> d1 ) ) ) $ ( x5 ) ) ) ) $ ( if Decl150Base3.M.d20 then Decl150Base3.M.d378 else Decl150Base3.M.d365 )
        d8 : if false then if false then Bool else Bool else if true then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> Decl150Base3.M.d1 ) ) ) $ ( d1 ) ) ) ) $ ( if d1 then false else Decl150Base3.M.d355 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then Bool else x12 ) ) ) $ ( if true then Bool else Bool )
        d11 = if if d1 then Decl150Base3.M.d378 else Decl150Base3.M.d166 then if Decl150Base3.M.d5 then Decl150Base3.M.d50 else Decl150Base3.M.d215 else if false then false else d1
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if true then x16 else x16 ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> d11 ) ) ) $ ( true ) ) ) ) $ ( if true then d1 else Decl150Base3.M.d43 )
        d17 : if false then if true then Bool else Bool else if true then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if Decl150Base3.M.d32 then Decl150Base3.M.d264 else d4 ) ) ) $ ( if true then true else Decl150Base3.M.d251 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( x20 ) ) ) ) $ ( if false then Bool else Bool )
        d19 = if if false then Decl150Base3.M.d328 else false then if d11 then d17 else d1 else if Decl150Base3.M.d34 then true else d11
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x25 ) ) ) $ ( x25 ) ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> Decl150Base3.M.d323 ) ) ) $ ( true ) ) ) ) $ ( if false then Decl150Base3.M.d306 else Decl150Base3.M.d117 )
        d27 : if false then if true then Bool else Bool else if false then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if Decl150Base3.M.d116 then d1 else x28 ) ) ) $ ( if Decl150Base3.M.d334 then d4 else d11 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if false then false else Decl150Base3.M.d187 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x35 ) ) ) $ ( x35 ) ) ) ) $ ( if false then Bool else Bool )
        d34 = if if Decl150Base3.M.d204 then true else Decl150Base3.M.d340 then if Decl150Base3.M.d271 then Decl150Base3.M.d195 else false else if d13 then d4 else d29
        d37 : if false then if true then Bool else Bool else if true then Bool else Bool
        d37 = if if d27 then Decl150Base3.M.d346 else true then if Decl150Base3.M.d251 then Decl150Base3.M.d276 else Decl150Base3.M.d169 else if true then d13 else false
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d38 = if if true then Decl150Base3.M.d44 else Decl150Base3.M.d105 then if d22 then Decl150Base3.M.d378 else d8 else if false then true else true
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then Bool else x41 ) ) ) $ ( if false then Bool else Bool )
        d40 = if if true then Decl150Base3.M.d96 else d19 then if true then Decl150Base3.M.d316 else Decl150Base3.M.d326 else if Decl150Base3.M.d211 then Decl150Base3.M.d109 else Decl150Base3.M.d70
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> x46 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> Decl150Base3.M.d73 ) ) ) $ ( true ) ) ) ) $ ( if Decl150Base3.M.d119 then Decl150Base3.M.d313 else Decl150Base3.M.d207 )
        d47 : if true then if false then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> x49 ) ) ) $ ( x48 ) ) ) ) $ ( if Decl150Base3.M.d282 then false else d8 )
        d50 : if false then if false then Bool else Bool else if true then Bool else Bool
        d50 = if if Decl150Base3.M.d5 then Decl150Base3.M.d323 else true then if Decl150Base3.M.d328 then Decl150Base3.M.d13 else false else if d47 then d34 else true
        d51 : if true then if true then Bool else Bool else if true then Bool else Bool
        d51 = if if false then false else false then if Decl150Base3.M.d207 then Decl150Base3.M.d358 else true else if d42 then Decl150Base3.M.d331 else Decl150Base3.M.d87
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( x53 ) ) ) ) $ ( if false then Bool else Bool )
        d52 = if if true then Decl150Base3.M.d73 else d47 then if true then d42 else Decl150Base3.M.d246 else if true then Decl150Base3.M.d195 else Decl150Base3.M.d234
        d55 : if true then if false then Bool else Bool else if false then Bool else Bool
        d55 = if if d51 then Decl150Base3.M.d115 else d4 then if Decl150Base3.M.d347 then d11 else d47 else if d29 then d34 else Decl150Base3.M.d172
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> x58 ) ) ) $ ( x57 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if false then false else Decl150Base3.M.d267 then if false then d42 else d40 else if true then Decl150Base3.M.d256 else false
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> Decl150Base3.M.d277 ) ) ) $ ( Decl150Base3.M.d161 ) ) ) ) $ ( if d34 then Decl150Base3.M.d20 else Decl150Base3.M.d204 )
        d64 : if false then if true then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> Decl150Base3.M.d184 ) ) ) $ ( d29 ) ) ) ) $ ( if Decl150Base3.M.d32 then d55 else d17 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then x70 else Bool ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> d34 ) ) ) $ ( Decl150Base3.M.d109 ) ) ) ) $ ( if d19 then Decl150Base3.M.d53 else true )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> x74 ) ) ) $ ( x74 ) ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> Decl150Base3.M.d251 ) ) ) $ ( d59 ) ) ) ) $ ( if d51 then false else d34 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d76 = if if d19 then true else false then if d64 then false else false else if Decl150Base3.M.d46 then d42 else Decl150Base3.M.d261
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( x79 ) ) ) ) $ ( if true then Bool else Bool )
        d78 = if if Decl150Base3.M.d279 then Decl150Base3.M.d66 else false then if d67 then d42 else Decl150Base3.M.d82 else if Decl150Base3.M.d273 then Decl150Base3.M.d221 else d40
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then Bool else x82 ) ) ) $ ( if false then Bool else Bool )
        d81 = if if Decl150Base3.M.d176 then false else false then if Decl150Base3.M.d242 then Decl150Base3.M.d238 else true else if Decl150Base3.M.d370 then true else false
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if false then d78 else Decl150Base3.M.d286 ) ) ) $ ( if Decl150Base3.M.d117 then Decl150Base3.M.d189 else false )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then x87 else Bool ) ) ) $ ( if true then Bool else Bool )
        d86 = if if true then Decl150Base3.M.d364 else false then if d37 then d40 else Decl150Base3.M.d261 else if Decl150Base3.M.d155 then Decl150Base3.M.d166 else d4
        d88 : if true then if true then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> true ) ) ) $ ( d71 ) ) ) ) $ ( if false then d8 else true )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then x93 else Bool ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if d64 then d34 else true ) ) ) $ ( if true then Decl150Base3.M.d276 else Decl150Base3.M.d303 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> x96 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = if if true then true else true then if Decl150Base3.M.d119 then d4 else Decl150Base3.M.d68 else if Decl150Base3.M.d143 then Decl150Base3.M.d32 else Decl150Base3.M.d117
        d97 : if true then if true then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> x98 ) ) ) $ ( true ) ) ) ) $ ( if Decl150Base3.M.d189 then Decl150Base3.M.d116 else d81 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> x102 ) ) ) $ ( Decl150Base3.M.d243 ) ) ) ) $ ( if true then Decl150Base3.M.d155 else Decl150Base3.M.d111 )
        d104 : if false then if true then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if d29 then Decl150Base3.M.d102 else Decl150Base3.M.d21 ) ) ) $ ( if Decl150Base3.M.d155 then Decl150Base3.M.d204 else d47 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x107 ) ) ) $ ( x107 ) ) ) ) $ ( if false then Bool else Bool )
        d106 = if if d59 then true else d56 then if Decl150Base3.M.d7 then Decl150Base3.M.d276 else Decl150Base3.M.d25 else if Decl150Base3.M.d351 then Decl150Base3.M.d286 else d64
        d109 : if true then if false then Bool else Bool else if false then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> false ) ) ) $ ( Decl150Base3.M.d111 ) ) ) ) $ ( if false then Decl150Base3.M.d58 else Decl150Base3.M.d340 )
        d112 : if false then if false then Bool else Bool else if true then Bool else Bool
        d112 = if if Decl150Base3.M.d276 then true else false then if Decl150Base3.M.d261 then d40 else d56 else if Decl150Base3.M.d331 then true else d81
        d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then Bool else x116 ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> d11 ) ) ) $ ( d67 ) ) ) ) $ ( if true then d50 else Decl150Base3.M.d161 )
        d117 : if false then if true then Bool else Bool else if false then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if Decl150Base3.M.d126 then Decl150Base3.M.d340 else false ) ) ) $ ( if Decl150Base3.M.d7 then Decl150Base3.M.d133 else d97 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then x120 else Bool ) ) ) $ ( if true then Bool else Bool )
        d119 = if if Decl150Base3.M.d163 then d55 else Decl150Base3.M.d217 then if Decl150Base3.M.d371 then Decl150Base3.M.d376 else false else if Decl150Base3.M.d46 then Decl150Base3.M.d335 else true
        d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x124 ) ) ) $ ( x124 ) ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> Decl150Base3.M.d161 ) ) ) $ ( d51 ) ) ) ) $ ( if Decl150Base3.M.d273 then Decl150Base3.M.d156 else Decl150Base3.M.d282 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> x129 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> d88 ) ) ) $ ( true ) ) ) ) $ ( if Decl150Base3.M.d202 then d4 else d83 )
        d131 : if true then if false then Bool else Bool else if true then Bool else Bool
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( Bool -> Bool ) ∋ ( ( λ x133 -> d37 ) ) ) $ ( d78 ) ) ) ) $ ( if false then Decl150Base3.M.d331 else Decl150Base3.M.d113 )
        d134 : if true then if true then Bool else Bool else if true then Bool else Bool
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> ( ( Bool -> Bool ) ∋ ( ( λ x136 -> Decl150Base3.M.d371 ) ) ) $ ( d51 ) ) ) ) $ ( if d126 then Decl150Base3.M.d115 else true )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then x140 else Bool ) ) ) $ ( if false then Bool else Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( Bool -> Bool ) ∋ ( ( λ x139 -> x138 ) ) ) $ ( d17 ) ) ) ) $ ( if d109 then false else true )
        d141 : if false then if true then Bool else Bool else if false then Bool else Bool
        d141 = if if true then Decl150Base3.M.d172 else Decl150Base3.M.d237 then if true then Decl150Base3.M.d132 else Decl150Base3.M.d211 else if true then Decl150Base3.M.d380 else true
        d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> ( ( Set -> Set ) ∋ ( ( λ x144 -> Bool ) ) ) $ ( x143 ) ) ) ) $ ( if false then Bool else Bool )
        d142 = if if Decl150Base3.M.d85 then true else Decl150Base3.M.d282 then if true then true else Decl150Base3.M.d155 else if true then true else Decl150Base3.M.d268
        d145 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if false then x147 else Bool ) ) ) $ ( if false then Bool else Bool )
        d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> if Decl150Base3.M.d221 then Decl150Base3.M.d286 else Decl150Base3.M.d85 ) ) ) $ ( if d40 then Decl150Base3.M.d192 else Decl150Base3.M.d166 )