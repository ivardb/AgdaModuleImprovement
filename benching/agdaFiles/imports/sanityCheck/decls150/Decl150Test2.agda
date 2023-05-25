module Decl150Test2  where
    import Decl150Base2
    open import Decl150Base2 using (Bool; true; false; ⊤; tt) public
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
        d1 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1 = if if false then Decl150Base2.M.d183 else Decl150Base2.M.d293 then if Decl150Base2.M.d76 then Decl150Base2.M.d162 else Decl150Base2.M.d161 else if false then true else false
        d2 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> x6 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> ( ( Bool -> Bool ) ∋ ( ( λ x4 -> d1 ) ) ) $ ( d1 ) ) ) ) $ ( if false then Decl150Base2.M.d124 else Decl150Base2.M.d74 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x11 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> d2 ) ) ) $ ( d2 ) ) ) ) $ ( if false then d2 else Decl150Base2.M.d119 )
        d12 : if false then if false then Bool else Bool else if true then Bool else Bool
        d12 = if if Decl150Base2.M.d90 then true else Decl150Base2.M.d112 then if d7 then false else d1 else if Decl150Base2.M.d162 then d1 else Decl150Base2.M.d343
        d13 : if false then if false then Bool else Bool else if false then Bool else Bool
        d13 = if if Decl150Base2.M.d10 then Decl150Base2.M.d276 else Decl150Base2.M.d100 then if Decl150Base2.M.d226 then Decl150Base2.M.d166 else true else if Decl150Base2.M.d79 then Decl150Base2.M.d279 else true
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if true then Decl150Base2.M.d226 else false ) ) ) $ ( if true then Decl150Base2.M.d288 else true )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then x20 else x20 ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if Decl150Base2.M.d132 then d12 else Decl150Base2.M.d115 ) ) ) $ ( if Decl150Base2.M.d180 then true else Decl150Base2.M.d79 )
        d21 : if false then if false then Bool else Bool else if true then Bool else Bool
        d21 = if if false then Decl150Base2.M.d327 else true then if Decl150Base2.M.d327 then Decl150Base2.M.d184 else Decl150Base2.M.d183 else if Decl150Base2.M.d141 then d18 else d18
        d22 : if true then if true then Bool else Bool else if false then Bool else Bool
        d22 = if if true then Decl150Base2.M.d292 else Decl150Base2.M.d57 then if true then Decl150Base2.M.d141 else d2 else if Decl150Base2.M.d106 then d7 else d13
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d23 = if if true then Decl150Base2.M.d233 else false then if Decl150Base2.M.d73 then d2 else Decl150Base2.M.d209 else if false then true else d22
        d26 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if true then d1 else d14 ) ) ) $ ( if d21 then true else true )
        d30 : if false then if false then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> x31 ) ) ) $ ( Decl150Base2.M.d57 ) ) ) ) $ ( if Decl150Base2.M.d76 then true else d2 )
        d33 : if false then if true then Bool else Bool else if true then Bool else Bool
        d33 = if if d13 then d2 else true then if true then false else false else if true then Decl150Base2.M.d276 else Decl150Base2.M.d279
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> true ) ) ) $ ( false ) ) ) ) $ ( if Decl150Base2.M.d178 then Decl150Base2.M.d217 else false )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if true then x42 else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> false ) ) ) $ ( Decl150Base2.M.d201 ) ) ) ) $ ( if Decl150Base2.M.d265 then Decl150Base2.M.d44 else d30 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> Bool ) ) ) $ ( x44 ) ) ) ) $ ( if true then Bool else Bool )
        d43 = if if Decl150Base2.M.d315 then Decl150Base2.M.d224 else Decl150Base2.M.d288 then if Decl150Base2.M.d261 then Decl150Base2.M.d119 else Decl150Base2.M.d319 else if false then Decl150Base2.M.d317 else Decl150Base2.M.d10
        d46 : if false then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> Decl150Base2.M.d100 ) ) ) $ ( d12 ) ) ) ) $ ( if d30 then Decl150Base2.M.d177 else true )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then x50 else Bool ) ) ) $ ( if false then Bool else Bool )
        d49 = if if Decl150Base2.M.d60 then Decl150Base2.M.d85 else d34 then if d23 then Decl150Base2.M.d17 else Decl150Base2.M.d276 else if d1 then Decl150Base2.M.d161 else d1
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( x52 ) ) ) ) $ ( if true then Bool else Bool )
        d51 = if if false then Decl150Base2.M.d74 else d7 then if Decl150Base2.M.d349 then true else Decl150Base2.M.d41 else if false then true else d39
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then Bool else x55 ) ) ) $ ( if true then Bool else Bool )
        d54 = if if Decl150Base2.M.d218 then Decl150Base2.M.d52 else Decl150Base2.M.d95 then if Decl150Base2.M.d74 then Decl150Base2.M.d11 else Decl150Base2.M.d144 else if false then d51 else true
        d56 : if true then if false then Bool else Bool else if true then Bool else Bool
        d56 = if if Decl150Base2.M.d188 then Decl150Base2.M.d79 else d1 then if Decl150Base2.M.d252 then Decl150Base2.M.d141 else Decl150Base2.M.d183 else if Decl150Base2.M.d150 then Decl150Base2.M.d52 else d39
        d57 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( x60 ) ) ) ) $ ( if true then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> Decl150Base2.M.d200 ) ) ) $ ( true ) ) ) ) $ ( if true then false else Decl150Base2.M.d85 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> x64 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d62 = if if d12 then true else Decl150Base2.M.d41 then if d12 then Decl150Base2.M.d204 else Decl150Base2.M.d27 else if Decl150Base2.M.d191 then Decl150Base2.M.d183 else true
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> x67 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = if if Decl150Base2.M.d90 then Decl150Base2.M.d293 else Decl150Base2.M.d10 then if Decl150Base2.M.d89 then Decl150Base2.M.d327 else false else if d46 then Decl150Base2.M.d180 else Decl150Base2.M.d76
        d68 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> Bool ) ) ) $ ( x71 ) ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d62 ) ) ) $ ( Decl150Base2.M.d223 ) ) ) ) $ ( if d65 then Decl150Base2.M.d126 else true )
        d73 : if true then if false then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> d46 ) ) ) $ ( d49 ) ) ) ) $ ( if Decl150Base2.M.d282 then false else d12 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( x79 ) ) ) ) $ ( if false then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> Decl150Base2.M.d172 ) ) ) $ ( true ) ) ) ) $ ( if Decl150Base2.M.d261 then Decl150Base2.M.d139 else Decl150Base2.M.d147 )
        d81 : if false then if true then Bool else Bool else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if x82 then x82 else Decl150Base2.M.d27 ) ) ) $ ( if Decl150Base2.M.d196 then Decl150Base2.M.d96 else Decl150Base2.M.d337 )
        d83 : if true then if false then Bool else Bool else if false then Bool else Bool
        d83 = if if false then Decl150Base2.M.d258 else Decl150Base2.M.d58 then if d30 then Decl150Base2.M.d137 else d14 else if Decl150Base2.M.d313 then Decl150Base2.M.d13 else Decl150Base2.M.d16
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d84 = if if false then d73 else Decl150Base2.M.d284 then if Decl150Base2.M.d27 then Decl150Base2.M.d137 else d65 else if Decl150Base2.M.d93 then true else false
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d87 = if if d18 then true else Decl150Base2.M.d126 then if Decl150Base2.M.d284 then true else d7 else if Decl150Base2.M.d191 then Decl150Base2.M.d215 else Decl150Base2.M.d172
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if true then x91 else Bool ) ) ) $ ( if true then Bool else Bool )
        d90 = if if d33 then true else Decl150Base2.M.d39 then if Decl150Base2.M.d133 then Decl150Base2.M.d53 else false else if Decl150Base2.M.d228 then Decl150Base2.M.d7 else d62
        d92 : if false then if true then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if false then false else Decl150Base2.M.d240 ) ) ) $ ( if d18 then false else d84 )
        d94 : if true then if true then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> Decl150Base2.M.d52 ) ) ) $ ( Decl150Base2.M.d12 ) ) ) ) $ ( if Decl150Base2.M.d302 then false else Decl150Base2.M.d147 )
        d97 : if true then if false then Bool else Bool else if false then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if Decl150Base2.M.d188 then Decl150Base2.M.d119 else true ) ) ) $ ( if Decl150Base2.M.d123 then true else Decl150Base2.M.d252 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then Bool else x102 ) ) ) $ ( if false then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> Decl150Base2.M.d16 ) ) ) $ ( d33 ) ) ) ) $ ( if d33 then Decl150Base2.M.d243 else Decl150Base2.M.d336 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if true then Bool else x105 ) ) ) $ ( if true then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if false then x104 else Decl150Base2.M.d26 ) ) ) $ ( if d1 then true else true )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then x107 else x107 ) ) ) $ ( if false then Bool else Bool )
        d106 = if if Decl150Base2.M.d157 then true else Decl150Base2.M.d297 then if Decl150Base2.M.d96 then d43 else true else if Decl150Base2.M.d184 then d7 else Decl150Base2.M.d74
        d108 : if true then if true then Bool else Bool else if true then Bool else Bool
        d108 = if if d46 then d33 else d51 then if true then d68 else Decl150Base2.M.d133 else if d30 then d65 else Decl150Base2.M.d196
        d109 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x111 ) ) ) $ ( x111 ) ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d26 then d103 else false ) ) ) $ ( if Decl150Base2.M.d183 then Decl150Base2.M.d317 else Decl150Base2.M.d66 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> Bool ) ) ) $ ( x116 ) ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> Decl150Base2.M.d126 ) ) ) $ ( Decl150Base2.M.d115 ) ) ) ) $ ( if d87 then true else Decl150Base2.M.d215 )
        d118 : if true then if false then Bool else Bool else if false then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if Decl150Base2.M.d147 then Decl150Base2.M.d336 else Decl150Base2.M.d327 ) ) ) $ ( if d39 then false else false )
        d120 : if true then if false then Bool else Bool else if true then Bool else Bool
        d120 = if if Decl150Base2.M.d35 then Decl150Base2.M.d224 else Decl150Base2.M.d292 then if true then false else d46 else if false then Decl150Base2.M.d101 else Decl150Base2.M.d226
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d121 = if if Decl150Base2.M.d297 then Decl150Base2.M.d145 else Decl150Base2.M.d329 then if Decl150Base2.M.d108 then Decl150Base2.M.d126 else Decl150Base2.M.d293 else if Decl150Base2.M.d66 then d109 else Decl150Base2.M.d100
        d123 : if false then if true then Bool else Bool else if false then Bool else Bool
        d123 = if if Decl150Base2.M.d271 then d13 else Decl150Base2.M.d346 then if false then d43 else d97 else if d94 then Decl150Base2.M.d345 else d118
        d124 : if false then if false then Bool else Bool else if true then Bool else Bool
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> ( ( Bool -> Bool ) ∋ ( ( λ x126 -> Decl150Base2.M.d336 ) ) ) $ ( Decl150Base2.M.d219 ) ) ) ) $ ( if d97 then Decl150Base2.M.d343 else Decl150Base2.M.d58 )
        d127 : if false then if false then Bool else Bool else if false then Bool else Bool
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if x128 then x128 else x128 ) ) ) $ ( if d73 then Decl150Base2.M.d293 else Decl150Base2.M.d184 )
        d129 : if false then if false then Bool else Bool else if false then Bool else Bool
        d129 = if if false then Decl150Base2.M.d201 else d73 then if d51 then Decl150Base2.M.d319 else d103 else if Decl150Base2.M.d295 then Decl150Base2.M.d336 else Decl150Base2.M.d85
        d130 : if false then if true then Bool else Bool else if false then Bool else Bool
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if false then x131 else false ) ) ) $ ( if d103 then false else Decl150Base2.M.d53 )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> x134 ) ) ) $ ( x133 ) ) ) ) $ ( if true then Bool else Bool )
        d132 = if if Decl150Base2.M.d145 then d18 else Decl150Base2.M.d322 then if Decl150Base2.M.d57 then Decl150Base2.M.d112 else Decl150Base2.M.d326 else if Decl150Base2.M.d144 then d68 else Decl150Base2.M.d66