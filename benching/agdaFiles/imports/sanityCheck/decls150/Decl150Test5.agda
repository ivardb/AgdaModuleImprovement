module Decl150Test5  where
    import Decl150Base5
    open import Decl150Base5 using (Bool; true; false; ⊤; tt) public
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
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if Decl150Base5.M.d73 then x2 else x2 ) ) ) $ ( if Decl150Base5.M.d152 then true else Decl150Base5.M.d318 )
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x4 ) ) ) $ ( x4 ) ) ) ) $ ( if true then Bool else Bool )
        d3 = if if true then d1 else Decl150Base5.M.d83 then if Decl150Base5.M.d256 then false else false else if false then d1 else Decl150Base5.M.d131
        d6 : if true then if false then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> d3 ) ) ) $ ( d1 ) ) ) ) $ ( if Decl150Base5.M.d106 then Decl150Base5.M.d244 else Decl150Base5.M.d131 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if Decl150Base5.M.d249 then true else x10 ) ) ) $ ( if d1 then Decl150Base5.M.d110 else true )
        d13 : if true then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> true ) ) ) $ ( false ) ) ) ) $ ( if d6 then Decl150Base5.M.d213 else Decl150Base5.M.d24 )
        d16 : if true then if false then Bool else Bool else if false then Bool else Bool
        d16 = if if d3 then d13 else Decl150Base5.M.d242 then if Decl150Base5.M.d332 then Decl150Base5.M.d185 else Decl150Base5.M.d90 else if Decl150Base5.M.d43 then d6 else true
        d17 : if false then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> d13 ) ) ) $ ( x18 ) ) ) ) $ ( if true then Decl150Base5.M.d341 else d6 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if Decl150Base5.M.d19 then d16 else x21 ) ) ) $ ( if Decl150Base5.M.d343 then Decl150Base5.M.d143 else true )
        d23 : if true then if true then Bool else Bool else if false then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if d20 then Decl150Base5.M.d60 else x24 ) ) ) $ ( if Decl150Base5.M.d140 then Decl150Base5.M.d332 else true )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( x26 ) ) ) ) $ ( if true then Bool else Bool )
        d25 = if if Decl150Base5.M.d318 then d23 else d17 then if d6 then Decl150Base5.M.d228 else Decl150Base5.M.d143 else if Decl150Base5.M.d193 then Decl150Base5.M.d25 else true
        d28 : if false then if true then Bool else Bool else if false then Bool else Bool
        d28 = if if false then true else d13 then if Decl150Base5.M.d21 then d23 else true else if true then true else d6
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if false then Bool else x31 ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if x30 then Decl150Base5.M.d325 else d23 ) ) ) $ ( if Decl150Base5.M.d187 then Decl150Base5.M.d54 else d3 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if true then Bool else Bool )
        d32 = if if Decl150Base5.M.d21 then Decl150Base5.M.d282 else true then if true then Decl150Base5.M.d379 else false else if Decl150Base5.M.d291 then Decl150Base5.M.d181 else Decl150Base5.M.d21
        d35 : if true then if false then Bool else Bool else if false then Bool else Bool
        d35 = if if Decl150Base5.M.d236 then true else Decl150Base5.M.d251 then if Decl150Base5.M.d377 then Decl150Base5.M.d181 else true else if true then Decl150Base5.M.d373 else Decl150Base5.M.d213
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d36 = if if false then d32 else true then if Decl150Base5.M.d142 then Decl150Base5.M.d363 else d3 else if Decl150Base5.M.d68 then Decl150Base5.M.d140 else d1
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d38 = if if Decl150Base5.M.d297 then d32 else Decl150Base5.M.d159 then if Decl150Base5.M.d162 then Decl150Base5.M.d104 else true else if d3 then d3 else Decl150Base5.M.d337
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d41 = if if Decl150Base5.M.d151 then d1 else d3 then if Decl150Base5.M.d24 then Decl150Base5.M.d207 else Decl150Base5.M.d332 else if true then Decl150Base5.M.d185 else false
        d43 : if true then if false then Bool else Bool else if false then Bool else Bool
        d43 = if if Decl150Base5.M.d15 then Decl150Base5.M.d336 else Decl150Base5.M.d373 then if Decl150Base5.M.d283 then Decl150Base5.M.d38 else false else if true then Decl150Base5.M.d86 else Decl150Base5.M.d289
        d44 : if true then if true then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if x45 then Decl150Base5.M.d370 else d13 ) ) ) $ ( if d6 then d20 else true )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( x49 ) ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d3 ) ) ) $ ( x47 ) ) ) ) $ ( if true then Decl150Base5.M.d273 else d9 )
        d51 : if false then if true then Bool else Bool else if false then Bool else Bool
        d51 = if if d16 then false else Decl150Base5.M.d94 then if Decl150Base5.M.d167 then Decl150Base5.M.d336 else Decl150Base5.M.d326 else if Decl150Base5.M.d126 then Decl150Base5.M.d24 else Decl150Base5.M.d30
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = if if d36 then d46 else Decl150Base5.M.d97 then if Decl150Base5.M.d242 then false else true else if Decl150Base5.M.d68 then d13 else false
        d53 : if false then if false then Bool else Bool else if true then Bool else Bool
        d53 = if if true then d13 else Decl150Base5.M.d208 then if Decl150Base5.M.d338 then Decl150Base5.M.d171 else false else if Decl150Base5.M.d31 then Decl150Base5.M.d207 else false
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x55 ) ) ) $ ( x55 ) ) ) ) $ ( if true then Bool else Bool )
        d54 = if if Decl150Base5.M.d97 then Decl150Base5.M.d242 else Decl150Base5.M.d370 then if d35 then true else Decl150Base5.M.d289 else if Decl150Base5.M.d59 then d20 else Decl150Base5.M.d360
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( x59 ) ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if true then Decl150Base5.M.d43 else d32 ) ) ) $ ( if Decl150Base5.M.d63 then Decl150Base5.M.d308 else d36 )
        d61 : if true then if true then Bool else Bool else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> Decl150Base5.M.d337 ) ) ) $ ( Decl150Base5.M.d235 ) ) ) ) $ ( if Decl150Base5.M.d369 then d35 else Decl150Base5.M.d110 )
        d64 : if false then if false then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> d53 ) ) ) $ ( d17 ) ) ) ) $ ( if true then Decl150Base5.M.d373 else Decl150Base5.M.d244 )
        d67 : if false then if true then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if x68 then d9 else Decl150Base5.M.d320 ) ) ) $ ( if Decl150Base5.M.d379 then Decl150Base5.M.d41 else d17 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x70 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d69 = if if Decl150Base5.M.d208 then Decl150Base5.M.d143 else d32 then if d64 then Decl150Base5.M.d246 else Decl150Base5.M.d185 else if d17 then Decl150Base5.M.d101 else Decl150Base5.M.d80
        d72 : if true then if false then Bool else Bool else if false then Bool else Bool
        d72 = if if false then false else Decl150Base5.M.d127 then if Decl150Base5.M.d318 then d16 else Decl150Base5.M.d236 else if Decl150Base5.M.d355 then Decl150Base5.M.d30 else Decl150Base5.M.d8
        d73 : if false then if false then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if Decl150Base5.M.d56 then d54 else Decl150Base5.M.d123 ) ) ) $ ( if d54 then true else Decl150Base5.M.d297 )
        d75 : if false then if false then Bool else Bool else if false then Bool else Bool
        d75 = if if false then Decl150Base5.M.d78 else false then if Decl150Base5.M.d291 then false else false else if Decl150Base5.M.d276 then false else false
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> x78 ) ) ) $ ( true ) ) ) ) $ ( if Decl150Base5.M.d348 then d20 else Decl150Base5.M.d341 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if true then x81 else x81 ) ) ) $ ( if false then Bool else Bool )
        d80 = if if Decl150Base5.M.d66 then true else Decl150Base5.M.d244 then if Decl150Base5.M.d102 then false else Decl150Base5.M.d94 else if Decl150Base5.M.d1 then Decl150Base5.M.d194 else true
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if d57 then true else Decl150Base5.M.d282 then if true then Decl150Base5.M.d7 else Decl150Base5.M.d64 else if false then true else Decl150Base5.M.d7
        d85 : if true then if false then Bool else Bool else if true then Bool else Bool
        d85 = if if Decl150Base5.M.d127 then d57 else Decl150Base5.M.d266 then if Decl150Base5.M.d347 then true else d51 else if Decl150Base5.M.d64 then Decl150Base5.M.d370 else Decl150Base5.M.d199
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( x87 ) ) ) ) $ ( if true then Bool else Bool )
        d86 = if if true then true else true then if Decl150Base5.M.d235 then d53 else true else if false then Decl150Base5.M.d52 else d28
        d89 : if true then if true then Bool else Bool else if true then Bool else Bool
        d89 = if if Decl150Base5.M.d52 then Decl150Base5.M.d41 else false then if d69 then Decl150Base5.M.d318 else Decl150Base5.M.d363 else if false then false else Decl150Base5.M.d142
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if false then x91 else Bool ) ) ) $ ( if false then Bool else Bool )
        d90 = if if Decl150Base5.M.d374 then Decl150Base5.M.d328 else d16 then if Decl150Base5.M.d256 then d53 else Decl150Base5.M.d337 else if false then Decl150Base5.M.d19 else true
        d92 : if true then if false then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> x94 ) ) ) $ ( false ) ) ) ) $ ( if Decl150Base5.M.d80 then d35 else Decl150Base5.M.d343 )
        d95 : if true then if false then Bool else Bool else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> x96 ) ) ) $ ( Decl150Base5.M.d282 ) ) ) ) $ ( if Decl150Base5.M.d363 then Decl150Base5.M.d323 else d57 )
        d98 : if false then if false then Bool else Bool else if false then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if d51 then false else x99 ) ) ) $ ( if d54 then Decl150Base5.M.d318 else true )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> Decl150Base5.M.d35 ) ) ) $ ( false ) ) ) ) $ ( if d89 then Decl150Base5.M.d299 else Decl150Base5.M.d336 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d105 = if if Decl150Base5.M.d328 then true else Decl150Base5.M.d294 then if Decl150Base5.M.d202 then Decl150Base5.M.d142 else d16 else if Decl150Base5.M.d60 then Decl150Base5.M.d374 else Decl150Base5.M.d303
        d108 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> Decl150Base5.M.d126 ) ) ) $ ( d16 ) ) ) ) $ ( if Decl150Base5.M.d279 then d17 else Decl150Base5.M.d188 )
        d112 : if false then if false then Bool else Bool else if true then Bool else Bool
        d112 = if if false then true else d67 then if false then true else d36 else if true then Decl150Base5.M.d103 else Decl150Base5.M.d94
        d113 : if true then if true then Bool else Bool else if true then Bool else Bool
        d113 = if if Decl150Base5.M.d92 then d61 else false then if Decl150Base5.M.d43 then d90 else Decl150Base5.M.d297 else if Decl150Base5.M.d115 then d95 else true
        d114 : if true then if false then Bool else Bool else if false then Bool else Bool
        d114 = if if true then Decl150Base5.M.d347 else d98 then if Decl150Base5.M.d276 then true else Decl150Base5.M.d246 else if Decl150Base5.M.d369 then true else d100
        d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then Bool else x118 ) ) ) $ ( if true then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> Decl150Base5.M.d152 ) ) ) $ ( d13 ) ) ) ) $ ( if false then true else d105 )
        d119 : if true then if true then Bool else Bool else if false then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> d92 ) ) ) $ ( d114 ) ) ) ) $ ( if Decl150Base5.M.d343 then Decl150Base5.M.d21 else d1 )