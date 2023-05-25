module Decl150Test12  where
    import Decl150Base12
    open import Decl150Base12 using (Bool; true; false; ⊤; tt) public
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
        d1 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1 = if if Decl150Base12.M.d12 then Decl150Base12.M.d137 else true then if Decl150Base12.M.d29 then Decl150Base12.M.d32 else Decl150Base12.M.d193 else if Decl150Base12.M.d200 then Decl150Base12.M.d130 else true
        d2 : if true then if false then Bool else Bool else if false then Bool else Bool
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> ( ( Bool -> Bool ) ∋ ( ( λ x4 -> x4 ) ) ) $ ( Decl150Base12.M.d8 ) ) ) ) $ ( if false then Decl150Base12.M.d283 else Decl150Base12.M.d98 )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d5 = if if d2 then d2 else d2 then if Decl150Base12.M.d242 then Decl150Base12.M.d62 else Decl150Base12.M.d261 else if Decl150Base12.M.d94 then Decl150Base12.M.d149 else true
        d7 : if false then if false then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if d2 then Decl150Base12.M.d73 else Decl150Base12.M.d44 ) ) ) $ ( if true then d2 else Decl150Base12.M.d207 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then x10 else x10 ) ) ) $ ( if true then Bool else Bool )
        d9 = if if Decl150Base12.M.d256 then Decl150Base12.M.d331 else Decl150Base12.M.d178 then if d5 then Decl150Base12.M.d73 else Decl150Base12.M.d50 else if d5 then Decl150Base12.M.d59 else Decl150Base12.M.d26
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then x12 else Bool ) ) ) $ ( if true then Bool else Bool )
        d11 = if if d1 then Decl150Base12.M.d121 else d5 then if Decl150Base12.M.d351 then true else Decl150Base12.M.d57 else if false then Decl150Base12.M.d365 else Decl150Base12.M.d68
        d13 : if true then if false then Bool else Bool else if false then Bool else Bool
        d13 = if if Decl150Base12.M.d167 then Decl150Base12.M.d62 else Decl150Base12.M.d167 then if d9 then Decl150Base12.M.d251 else Decl150Base12.M.d274 else if d7 then false else false
        d14 : if false then if false then Bool else Bool else if false then Bool else Bool
        d14 = if if d9 then Decl150Base12.M.d319 else d7 then if Decl150Base12.M.d198 then d7 else Decl150Base12.M.d349 else if d7 then d5 else Decl150Base12.M.d32
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d15 = if if Decl150Base12.M.d59 then Decl150Base12.M.d65 else Decl150Base12.M.d132 then if Decl150Base12.M.d94 then Decl150Base12.M.d269 else Decl150Base12.M.d368 else if Decl150Base12.M.d272 then Decl150Base12.M.d32 else Decl150Base12.M.d196
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if d5 then true else Decl150Base12.M.d251 ) ) ) $ ( if true then true else true )
        d21 : if false then if false then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> true ) ) ) $ ( x22 ) ) ) ) $ ( if Decl150Base12.M.d228 then Decl150Base12.M.d166 else d1 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else x25 ) ) ) $ ( if true then Bool else Bool )
        d24 = if if d14 then Decl150Base12.M.d166 else d2 then if d5 then d15 else Decl150Base12.M.d220 else if Decl150Base12.M.d16 then d21 else false
        d26 : if false then if true then Bool else Bool else if true then Bool else Bool
        d26 = if if Decl150Base12.M.d26 then Decl150Base12.M.d65 else true then if Decl150Base12.M.d95 then Decl150Base12.M.d365 else d2 else if false then true else true
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then x30 else x30 ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> Decl150Base12.M.d359 ) ) ) $ ( false ) ) ) ) $ ( if d26 then Decl150Base12.M.d41 else false )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if true then Decl150Base12.M.d35 else d9 ) ) ) $ ( if d18 then Decl150Base12.M.d167 else Decl150Base12.M.d58 )
        d35 : if true then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if false then Decl150Base12.M.d218 else false ) ) ) $ ( if false then true else Decl150Base12.M.d193 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then x39 else x39 ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if x38 then Decl150Base12.M.d78 else Decl150Base12.M.d291 ) ) ) $ ( if d31 then false else d13 )
        d40 : if true then if true then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> x42 ) ) ) $ ( x41 ) ) ) ) $ ( if Decl150Base12.M.d204 then Decl150Base12.M.d297 else d37 )
        d43 : if true then if true then Bool else Bool else if false then Bool else Bool
        d43 = if if Decl150Base12.M.d218 then Decl150Base12.M.d362 else d13 then if Decl150Base12.M.d41 then d1 else false else if Decl150Base12.M.d226 then Decl150Base12.M.d188 else Decl150Base12.M.d256
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> Decl150Base12.M.d130 ) ) ) $ ( x45 ) ) ) ) $ ( if true then d40 else Decl150Base12.M.d2 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then Bool else x49 ) ) ) $ ( if false then Bool else Bool )
        d48 = if if Decl150Base12.M.d12 then d2 else d40 then if false then Decl150Base12.M.d18 else Decl150Base12.M.d90 else if Decl150Base12.M.d1 then d27 else true
        d50 : if false then if false then Bool else Bool else if true then Bool else Bool
        d50 = if if d9 then false else false then if Decl150Base12.M.d297 then Decl150Base12.M.d349 else false else if Decl150Base12.M.d32 then Decl150Base12.M.d246 else Decl150Base12.M.d261
        d51 : if false then if true then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if Decl150Base12.M.d365 then true else false ) ) ) $ ( if true then Decl150Base12.M.d315 else Decl150Base12.M.d172 )
        d53 : if true then if false then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> Decl150Base12.M.d298 ) ) ) $ ( false ) ) ) ) $ ( if true then Decl150Base12.M.d186 else Decl150Base12.M.d42 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d56 = if if true then d1 else Decl150Base12.M.d315 then if d44 then d2 else Decl150Base12.M.d163 else if Decl150Base12.M.d345 then Decl150Base12.M.d172 else Decl150Base12.M.d265
        d58 : if true then if false then Bool else Bool else if true then Bool else Bool
        d58 = if if Decl150Base12.M.d362 then Decl150Base12.M.d55 else Decl150Base12.M.d211 then if true then Decl150Base12.M.d167 else true else if Decl150Base12.M.d181 then Decl150Base12.M.d211 else Decl150Base12.M.d124
        d59 : if false then if true then Bool else Bool else if false then Bool else Bool
        d59 = if if d2 then Decl150Base12.M.d196 else d31 then if Decl150Base12.M.d341 then true else Decl150Base12.M.d116 else if Decl150Base12.M.d163 then Decl150Base12.M.d196 else true
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if false then x61 else x61 ) ) ) $ ( if false then Bool else Bool )
        d60 = if if Decl150Base12.M.d109 then Decl150Base12.M.d78 else Decl150Base12.M.d117 then if false then Decl150Base12.M.d108 else true else if true then false else Decl150Base12.M.d126
        d62 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if true then Bool else x65 ) ) ) $ ( if true then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> Decl150Base12.M.d234 ) ) ) $ ( true ) ) ) ) $ ( if true then true else Decl150Base12.M.d345 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> Bool ) ) ) $ ( x68 ) ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if true then x67 else Decl150Base12.M.d35 ) ) ) $ ( if false then Decl150Base12.M.d296 else d9 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if true then x72 else Bool ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if d24 then d44 else d60 ) ) ) $ ( if d59 then Decl150Base12.M.d10 else d9 )
        d73 : if false then if true then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> d9 ) ) ) $ ( Decl150Base12.M.d353 ) ) ) ) $ ( if true then false else Decl150Base12.M.d116 )
        d76 : if false then if true then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> Decl150Base12.M.d299 ) ) ) $ ( Decl150Base12.M.d48 ) ) ) ) $ ( if Decl150Base12.M.d130 then true else Decl150Base12.M.d97 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d79 = if if Decl150Base12.M.d10 then Decl150Base12.M.d317 else Decl150Base12.M.d304 then if Decl150Base12.M.d293 then Decl150Base12.M.d331 else Decl150Base12.M.d349 else if true then Decl150Base12.M.d234 else Decl150Base12.M.d80
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if false then x83 else x83 ) ) ) $ ( if false then Bool else Bool )
        d82 = if if Decl150Base12.M.d269 then d76 else Decl150Base12.M.d218 then if Decl150Base12.M.d224 then Decl150Base12.M.d218 else Decl150Base12.M.d364 else if true then Decl150Base12.M.d6 else Decl150Base12.M.d266
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if d56 then x85 else d5 ) ) ) $ ( if Decl150Base12.M.d32 then Decl150Base12.M.d298 else true )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if Decl150Base12.M.d149 then d2 else x89 ) ) ) $ ( if true then true else true )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then x94 else Bool ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> Decl150Base12.M.d297 ) ) ) $ ( Decl150Base12.M.d58 ) ) ) ) $ ( if Decl150Base12.M.d146 then Decl150Base12.M.d44 else d14 )
        d95 : if true then if false then Bool else Bool else if true then Bool else Bool
        d95 = if if Decl150Base12.M.d109 then Decl150Base12.M.d166 else Decl150Base12.M.d224 then if Decl150Base12.M.d154 then true else Decl150Base12.M.d253 else if d40 then Decl150Base12.M.d41 else Decl150Base12.M.d266
        d96 : if true then if false then Bool else Bool else if true then Bool else Bool
        d96 = if if Decl150Base12.M.d208 then false else Decl150Base12.M.d65 then if d53 then false else Decl150Base12.M.d266 else if true then d82 else d82
        d97 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> d1 ) ) ) $ ( false ) ) ) ) $ ( if Decl150Base12.M.d326 then Decl150Base12.M.d220 else Decl150Base12.M.d82 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if true then x104 else x104 ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> x103 ) ) ) $ ( x102 ) ) ) ) $ ( if false then true else d11 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then Bool else x106 ) ) ) $ ( if false then Bool else Bool )
        d105 = if if true then Decl150Base12.M.d55 else d35 then if Decl150Base12.M.d1 then false else d91 else if Decl150Base12.M.d121 then Decl150Base12.M.d253 else d70
        d107 : if false then if false then Bool else Bool else if true then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> d9 ) ) ) $ ( x108 ) ) ) ) $ ( if true then d1 else false )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if false then Bool else x111 ) ) ) $ ( if false then Bool else Bool )
        d110 = if if Decl150Base12.M.d341 then Decl150Base12.M.d285 else Decl150Base12.M.d285 then if Decl150Base12.M.d262 then Decl150Base12.M.d57 else Decl150Base12.M.d98 else if d62 then true else Decl150Base12.M.d269
        d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> Bool ) ) ) $ ( x113 ) ) ) ) $ ( if false then Bool else Bool )
        d112 = if if true then Decl150Base12.M.d105 else Decl150Base12.M.d218 then if true then Decl150Base12.M.d231 else false else if Decl150Base12.M.d290 then d1 else Decl150Base12.M.d90
        d115 : if true then if true then Bool else Bool else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> Decl150Base12.M.d238 ) ) ) $ ( Decl150Base12.M.d10 ) ) ) ) $ ( if false then d24 else Decl150Base12.M.d163 )
        d118 : if true then if false then Bool else Bool else if false then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if true then false else x119 ) ) ) $ ( if Decl150Base12.M.d229 then d37 else Decl150Base12.M.d273 )
        d120 : if false then if true then Bool else Bool else if false then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if x121 then d115 else x121 ) ) ) $ ( if d21 then d115 else false )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> Bool ) ) ) $ ( x123 ) ) ) ) $ ( if true then Bool else Bool )
        d122 = if if Decl150Base12.M.d305 then Decl150Base12.M.d304 else d62 then if d24 then true else Decl150Base12.M.d65 else if true then true else true