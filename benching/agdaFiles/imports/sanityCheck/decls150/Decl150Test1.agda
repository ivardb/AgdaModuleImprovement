module Decl150Test1  where
    import Decl150Base1
    open import Decl150Base1 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then Bool else x3 ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if Decl150Base1.M.d303 then false else x2 ) ) ) $ ( if Decl150Base1.M.d206 then Decl150Base1.M.d226 else Decl150Base1.M.d225 )
        d4 : if false then if false then Bool else Bool else if true then Bool else Bool
        d4 = if if false then d1 else true then if Decl150Base1.M.d147 then Decl150Base1.M.d43 else Decl150Base1.M.d20 else if Decl150Base1.M.d175 then Decl150Base1.M.d354 else Decl150Base1.M.d66
        d5 : if true then if true then Bool else Bool else if false then Bool else Bool
        d5 = if if Decl150Base1.M.d323 then d1 else d1 then if Decl150Base1.M.d252 then Decl150Base1.M.d1 else Decl150Base1.M.d78 else if Decl150Base1.M.d85 then Decl150Base1.M.d141 else d4
        d6 : if false then if false then Bool else Bool else if false then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> Decl150Base1.M.d133 ) ) ) $ ( d4 ) ) ) ) $ ( if Decl150Base1.M.d115 then Decl150Base1.M.d272 else Decl150Base1.M.d238 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then Decl150Base1.M.d227 else Decl150Base1.M.d317 )
        d13 : if true then if true then Bool else Bool else if true then Bool else Bool
        d13 = if if d9 then d1 else Decl150Base1.M.d259 then if Decl150Base1.M.d241 then Decl150Base1.M.d115 else false else if Decl150Base1.M.d225 then Decl150Base1.M.d78 else Decl150Base1.M.d193
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d14 = if if Decl150Base1.M.d292 then d13 else Decl150Base1.M.d303 then if Decl150Base1.M.d65 then d6 else Decl150Base1.M.d361 else if true then Decl150Base1.M.d366 else Decl150Base1.M.d162
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else x20 ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> Decl150Base1.M.d110 ) ) ) $ ( false ) ) ) ) $ ( if Decl150Base1.M.d99 then d14 else Decl150Base1.M.d158 )
        d21 : if false then if false then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if x22 then Decl150Base1.M.d308 else x22 ) ) ) $ ( if Decl150Base1.M.d165 then d6 else true )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if Decl150Base1.M.d308 then Decl150Base1.M.d337 else true ) ) ) $ ( if true then Decl150Base1.M.d238 else false )
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> Decl150Base1.M.d184 ) ) ) $ ( true ) ) ) ) $ ( if Decl150Base1.M.d320 then Decl150Base1.M.d92 else Decl150Base1.M.d70 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then x31 else Bool ) ) ) $ ( if false then Bool else Bool )
        d30 = if if Decl150Base1.M.d54 then Decl150Base1.M.d223 else d5 then if Decl150Base1.M.d129 then true else Decl150Base1.M.d349 else if d13 then Decl150Base1.M.d199 else d6
        d32 : if true then if true then Bool else Bool else if true then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if Decl150Base1.M.d103 then Decl150Base1.M.d92 else x33 ) ) ) $ ( if Decl150Base1.M.d275 then d4 else d5 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if false then Bool else x37 ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> true ) ) ) $ ( Decl150Base1.M.d110 ) ) ) ) $ ( if d30 then d6 else false )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then x39 else Bool ) ) ) $ ( if false then Bool else Bool )
        d38 = if if true then Decl150Base1.M.d133 else d27 then if d4 then false else true else if d30 then Decl150Base1.M.d241 else d4
        d40 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x43 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if x41 then Decl150Base1.M.d226 else true ) ) ) $ ( if true then Decl150Base1.M.d193 else d38 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if true then x45 else x45 ) ) ) $ ( if true then Bool else Bool )
        d44 = if if Decl150Base1.M.d24 then false else d1 then if d27 then true else d23 else if Decl150Base1.M.d272 then Decl150Base1.M.d1 else Decl150Base1.M.d185
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if false then x49 else x49 ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d32 ) ) ) $ ( x47 ) ) ) ) $ ( if Decl150Base1.M.d119 then d17 else Decl150Base1.M.d284 )
        d50 : if false then if true then Bool else Bool else if false then Bool else Bool
        d50 = if if Decl150Base1.M.d301 then true else Decl150Base1.M.d62 then if Decl150Base1.M.d78 then Decl150Base1.M.d254 else false else if Decl150Base1.M.d254 then false else false
        d51 : if true then if false then Bool else Bool else if true then Bool else Bool
        d51 = if if Decl150Base1.M.d43 then Decl150Base1.M.d323 else d6 then if true then Decl150Base1.M.d143 else true else if Decl150Base1.M.d19 then d5 else d23
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d52 = if if Decl150Base1.M.d340 then Decl150Base1.M.d82 else true then if false then Decl150Base1.M.d217 else d40 else if true then true else Decl150Base1.M.d173
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d55 = if if Decl150Base1.M.d233 then Decl150Base1.M.d139 else Decl150Base1.M.d78 then if false then d1 else Decl150Base1.M.d55 else if d21 then Decl150Base1.M.d259 else d1
        d57 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then x60 else Bool ) ) ) $ ( if true then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> d50 ) ) ) $ ( x58 ) ) ) ) $ ( if true then d51 else false )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> Bool ) ) ) $ ( x64 ) ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> Decl150Base1.M.d242 ) ) ) $ ( Decl150Base1.M.d97 ) ) ) ) $ ( if Decl150Base1.M.d33 then Decl150Base1.M.d107 else d50 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d66 = if if false then Decl150Base1.M.d139 else true then if false then Decl150Base1.M.d141 else Decl150Base1.M.d110 else if true then d44 else true
        d69 : if true then if true then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> Decl150Base1.M.d11 ) ) ) $ ( Decl150Base1.M.d3 ) ) ) ) $ ( if d51 then d38 else d50 )
        d72 : if true then if false then Bool else Bool else if false then Bool else Bool
        d72 = if if true then false else d61 then if d6 then Decl150Base1.M.d329 else d4 else if Decl150Base1.M.d51 then false else Decl150Base1.M.d292
        d73 : if false then if true then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if true then x74 else x74 ) ) ) $ ( if d32 then Decl150Base1.M.d335 else d14 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then x76 else Bool ) ) ) $ ( if false then Bool else Bool )
        d75 = if if d72 then true else true then if d40 then true else d72 else if Decl150Base1.M.d140 then Decl150Base1.M.d369 else Decl150Base1.M.d126
        d77 : if true then if true then Bool else Bool else if true then Bool else Bool
        d77 = if if false then true else d6 then if Decl150Base1.M.d126 then Decl150Base1.M.d5 else Decl150Base1.M.d58 else if false then d46 else Decl150Base1.M.d150
        d78 : if true then if true then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if false then false else false ) ) ) $ ( if d40 then Decl150Base1.M.d34 else d4 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if Decl150Base1.M.d162 then d46 else Decl150Base1.M.d241 ) ) ) $ ( if d4 then Decl150Base1.M.d353 else d51 )
        d83 : if true then if false then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if d72 then x84 else true ) ) ) $ ( if Decl150Base1.M.d78 then true else Decl150Base1.M.d355 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d85 = if if Decl150Base1.M.d238 then Decl150Base1.M.d282 else Decl150Base1.M.d214 then if Decl150Base1.M.d320 then true else Decl150Base1.M.d65 else if Decl150Base1.M.d327 then Decl150Base1.M.d16 else d14
        d88 : if true then if false then Bool else Bool else if true then Bool else Bool
        d88 = if if Decl150Base1.M.d220 then Decl150Base1.M.d206 else Decl150Base1.M.d289 then if d14 then true else d72 else if Decl150Base1.M.d160 then d14 else Decl150Base1.M.d317
        d89 : if true then if false then Bool else Bool else if false then Bool else Bool
        d89 = if if Decl150Base1.M.d168 then Decl150Base1.M.d162 else false then if true then Decl150Base1.M.d279 else d27 else if d51 then Decl150Base1.M.d152 else d50
        d90 : if false then if true then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if Decl150Base1.M.d370 then false else Decl150Base1.M.d317 ) ) ) $ ( if d38 then d55 else Decl150Base1.M.d122 )
        d92 : if false then if true then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if false then d78 else Decl150Base1.M.d47 ) ) ) $ ( if false then d69 else true )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then x97 else Bool ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> Decl150Base1.M.d97 ) ) ) $ ( d5 ) ) ) ) $ ( if d78 then Decl150Base1.M.d16 else d27 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> d30 ) ) ) $ ( d38 ) ) ) ) $ ( if true then Decl150Base1.M.d174 else d94 )
        d102 : if true then if false then Bool else Bool else if true then Bool else Bool
        d102 = if if d32 then true else true then if Decl150Base1.M.d353 then d80 else Decl150Base1.M.d249 else if d75 then Decl150Base1.M.d107 else Decl150Base1.M.d236
        d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> Bool ) ) ) $ ( x105 ) ) ) ) $ ( if true then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if x104 then Decl150Base1.M.d178 else Decl150Base1.M.d152 ) ) ) $ ( if Decl150Base1.M.d135 then true else Decl150Base1.M.d140 )
        d107 : if false then if true then Bool else Bool else if false then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> Decl150Base1.M.d329 ) ) ) $ ( Decl150Base1.M.d214 ) ) ) ) $ ( if Decl150Base1.M.d139 then d75 else Decl150Base1.M.d158 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then x113 else x113 ) ) ) $ ( if false then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> Decl150Base1.M.d366 ) ) ) $ ( d57 ) ) ) ) $ ( if Decl150Base1.M.d103 then Decl150Base1.M.d47 else Decl150Base1.M.d34 )
        d114 : if false then if true then Bool else Bool else if false then Bool else Bool
        d114 = if if Decl150Base1.M.d54 then d83 else Decl150Base1.M.d329 then if Decl150Base1.M.d82 then d77 else Decl150Base1.M.d75 else if d57 then d69 else Decl150Base1.M.d357
        d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( x118 ) ) ) ) $ ( if false then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> x116 ) ) ) $ ( Decl150Base1.M.d273 ) ) ) ) $ ( if true then Decl150Base1.M.d178 else Decl150Base1.M.d75 )
        d120 : if true then if true then Bool else Bool else if false then Bool else Bool
        d120 = if if true then d107 else false then if true then true else Decl150Base1.M.d226 else if false then d61 else false
        d121 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> x123 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if Decl150Base1.M.d206 then false else Decl150Base1.M.d236 ) ) ) $ ( if d17 then Decl150Base1.M.d227 else Decl150Base1.M.d249 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> Bool ) ) ) $ ( x128 ) ) ) ) $ ( if false then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> x126 ) ) ) $ ( Decl150Base1.M.d327 ) ) ) ) $ ( if false then Decl150Base1.M.d19 else d102 )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if Decl150Base1.M.d213 then x131 else d51 ) ) ) $ ( if Decl150Base1.M.d43 then Decl150Base1.M.d7 else Decl150Base1.M.d246 )