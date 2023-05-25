module Param4Test6  where
    data Bool : Set where
       true false : Bool
    {-# BUILTIN BOOL  Bool  #-}
    {-# BUILTIN FALSE false #-}
    {-# BUILTIN TRUE  true  #-}
    
    record ⊤ : Set where
       instance constructor tt
    {-# BUILTIN UNIT ⊤ #-}
    
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if false then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if x6 then false else true ) ) ) $ ( if false then p4 else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( x9 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = if if false then p3 else false then if d5 then d5 else p4 else if p4 then false else p2
        d11 : if false then if true then Bool else Bool else if true then Bool else Bool
        d11 = if if false then p2 else d5 then if d5 then p1 else p1 else if true then false else false
        d12 : if false then if false then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> d8 ) ) ) $ ( d5 ) ) ) ) $ ( if p4 then true else d5 )
        d15 : if true then if true then Bool else Bool else if false then Bool else Bool
        d15 = if if p2 then true else d8 then if p2 then p4 else p4 else if p4 then false else true
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( x18 ) ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if p4 then d8 else x17 ) ) ) $ ( if true then true else p4 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then x23 else Bool ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> d12 ) ) ) $ ( true ) ) ) ) $ ( if d11 then d15 else d5 )
        d24 : if false then if false then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> p3 ) ) ) $ ( d15 ) ) ) ) $ ( if d5 then d12 else true )
        d27 : if true then if true then Bool else Bool else if true then Bool else Bool
        d27 = if if p1 then true else true then if p2 then true else d11 else if p1 then p3 else true
        d28 : if false then if false then Bool else Bool else if true then Bool else Bool
        d28 = if if d11 then p3 else d16 then if p2 then d5 else p1 else if true then d8 else d15
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if false then x31 else x31 ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then x30 else p4 ) ) ) $ ( if p4 then p2 else p1 )
        d32 : if false then if true then Bool else Bool else if true then Bool else Bool
        d32 = if if p4 then false else d15 then if p4 then d8 else d12 else if p4 then false else d12
        d33 : if true then if false then Bool else Bool else if false then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if false then p4 else p4 ) ) ) $ ( if true then false else p3 )
        d35 : if true then if true then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if p1 then p3 else p3 ) ) ) $ ( if p1 then p3 else p3 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else x40 ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> d35 ) ) ) $ ( d24 ) ) ) ) $ ( if d32 then d24 else p4 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x43 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d41 = if if d32 then d8 else p4 then if true then true else p4 else if d5 then true else false
        d44 : if false then if true then Bool else Bool else if true then Bool else Bool
        d44 = if if p4 then p2 else true then if false then true else true else if d35 then d24 else d12
        d45 : if true then if false then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if true then true else d8 ) ) ) $ ( if true then p4 else p3 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x48 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if p3 then d28 else d16 then if p1 then p2 else p4 else if false then d20 else false
        d50 : if false then if true then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> x51 ) ) ) $ ( true ) ) ) ) $ ( if p2 then false else true )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( x55 ) ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if p4 then false else x54 ) ) ) $ ( if d11 then p1 else d28 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then x59 else Bool ) ) ) $ ( if true then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if p1 then false else false ) ) ) $ ( if p2 then false else p4 )
        d60 : if false then if false then Bool else Bool else if false then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> p4 ) ) ) $ ( d27 ) ) ) ) $ ( if d50 then p2 else p1 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if true then Bool else x65 ) ) ) $ ( if true then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if true then true else true ) ) ) $ ( if true then p2 else p1 )
        d66 : if true then if true then Bool else Bool else if true then Bool else Bool
        d66 = if if true then false else true then if false then p1 else p1 else if p1 then d28 else false
        d67 : if false then if true then Bool else Bool else if true then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> false ) ) ) $ ( true ) ) ) ) $ ( if d37 then false else p2 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> Bool ) ) ) $ ( x72 ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if d8 then true else d45 ) ) ) $ ( if d66 then p4 else d28 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if false then x76 else Bool ) ) ) $ ( if true then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if p1 then false else p4 ) ) ) $ ( if true then false else d37 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d77 = if if p3 then false else true then if false then p3 else p4 else if false then p1 else false
        d79 : if false then if false then Bool else Bool else if false then Bool else Bool
        d79 = if if d8 then d47 else false then if false then p2 else p3 else if d60 then p1 else d28
        d80 : if true then if false then Bool else Bool else if false then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> d29 ) ) ) $ ( d16 ) ) ) ) $ ( if d11 then false else p2 )
        d83 : if false then if false then Bool else Bool else if true then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if d28 then false else d20 ) ) ) $ ( if false then false else p1 )
        d85 : if false then if true then Bool else Bool else if false then Bool else Bool
        d85 = if if p2 then false else d50 then if p3 then d67 else p1 else if d66 then true else p2
        d86 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> x89 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if false then p4 else p3 ) ) ) $ ( if p4 then false else true )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( x91 ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if true then p4 else d77 then if false then false else d74 else if true then true else d63
        d93 : if false then if false then Bool else Bool else if true then Bool else Bool
        d93 = if if d60 then p2 else true then if false then false else false else if d35 then d77 else d35
        d94 : if false then if true then Bool else Bool else if true then Bool else Bool
        d94 = if if p3 then false else true then if p3 then false else p3 else if p2 then d63 else false
        d95 : if true then if true then Bool else Bool else if false then Bool else Bool
        d95 = if if true then p1 else p3 then if d50 then true else false else if true then p1 else d67
        d96 : if true then if false then Bool else Bool else if false then Bool else Bool
        d96 = if if false then p2 else true then if p2 then d29 else d15 else if p1 then d24 else p4
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x99 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if false then false else d5 ) ) ) $ ( if true then p3 else d32 )
    d101 : if true then if true then Bool else Bool else if false then Bool else Bool
    d101 = if if true then false else true then if false then true else true else if true then true else true
    d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x103 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d102 = ( ( ( ( M.d93 ) $ ( false ) ) $ ( d101 ) ) $ ( d101 ) ) $ ( true )
    d105 : if true then if false then Bool else Bool else if false then Bool else Bool
    d105 = ( ( ( ( M.d41 ) $ ( false ) ) $ ( d102 ) ) $ ( true ) ) $ ( false )
    d106 : if false then if true then Bool else Bool else if false then Bool else Bool
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if true then x107 else true ) ) ) $ ( if d102 then d102 else d101 )
    d108 : if true then if false then Bool else Bool else if false then Bool else Bool
    d108 = ( ( ( ( M.d27 ) $ ( d102 ) ) $ ( d101 ) ) $ ( d102 ) ) $ ( d105 )
    d109 : if false then if false then Bool else Bool else if true then Bool else Bool
    d109 = ( ( ( ( M.d12 ) $ ( d102 ) ) $ ( false ) ) $ ( d102 ) ) $ ( false )
    d110 : if true then if true then Bool else Bool else if true then Bool else Bool
    d110 = ( ( ( ( M.d53 ) $ ( d101 ) ) $ ( false ) ) $ ( true ) ) $ ( false )
    d111 : if true then if true then Bool else Bool else if false then Bool else Bool
    d111 = ( ( ( ( M.d94 ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( d101 )
    d112 : if false then if true then Bool else Bool else if false then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( ( ( M.d27 ) $ ( true ) ) $ ( x113 ) ) $ ( x113 ) ) $ ( d108 ) ) ) ) $ ( if d106 then true else d109 )
    d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then Bool else x116 ) ) ) $ ( if true then Bool else Bool )
    d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( ( ( M.d37 ) $ ( x115 ) ) $ ( x115 ) ) $ ( true ) ) $ ( x115 ) ) ) ) $ ( if d110 then d101 else false )
    d117 : if false then if false then Bool else Bool else if true then Bool else Bool
    d117 = if if false then false else d114 then if false then false else true else if d108 then d106 else d105
    d118 : if true then if false then Bool else Bool else if true then Bool else Bool
    d118 = ( ( ( ( M.d29 ) $ ( d102 ) ) $ ( true ) ) $ ( d110 ) ) $ ( false )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x120 ) ) ) $ ( x120 ) ) ) ) $ ( if true then Bool else Bool )
    d119 = if if d111 then d109 else d117 then if d105 then d106 else d111 else if d110 then true else true
    d122 : if true then if false then Bool else Bool else if true then Bool else Bool
    d122 = if if false then true else false then if d105 then false else false else if false then d110 else false
    d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d123 = ( ( ( ( M.d41 ) $ ( false ) ) $ ( d111 ) ) $ ( true ) ) $ ( d109 )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( ( ( M.d93 ) $ ( true ) ) $ ( d102 ) ) $ ( x127 ) ) $ ( x127 ) ) ) ) $ ( if d101 then true else false )
    d130 : if true then if true then Bool else Bool else if false then Bool else Bool
    d130 = ( ( ( ( M.d57 ) $ ( false ) ) $ ( d109 ) ) $ ( true ) ) $ ( true )
    d131 : if false then if true then Bool else Bool else if false then Bool else Bool
    d131 = ( ( ( ( M.d16 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( d102 )
    d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if false then x133 else Bool ) ) ) $ ( if false then Bool else Bool )
    d132 = if if false then false else false then if false then d106 else d130 else if true then d102 else d130
    d134 : if true then if true then Bool else Bool else if true then Bool else Bool
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> if x135 then true else true ) ) ) $ ( if d112 then false else d114 )
    d136 : ( ( Set -> Set ) ∋ ( ( λ x138 -> if false then x138 else x138 ) ) ) $ ( if false then Bool else Bool )
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> if false then d108 else true ) ) ) $ ( if true then d101 else d132 )
    d139 : if false then if true then Bool else Bool else if false then Bool else Bool
    d139 = ( ( ( ( M.d70 ) $ ( d111 ) ) $ ( d106 ) ) $ ( d122 ) ) $ ( d109 )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> x143 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> if x141 then d139 else true ) ) ) $ ( if true then false else true )
    d144 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d144 = if if true then d105 else true then if d110 then false else true else if d119 then true else d123
    d146 : if false then if true then Bool else Bool else if false then Bool else Bool
    d146 = if if d105 then true else d105 then if true then false else d131 else if false then true else false
    d147 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if false then x148 else Bool ) ) ) $ ( if false then Bool else Bool )
    d147 = if if false then d136 else false then if d102 then d102 else false else if false then d109 else false
    d149 : if true then if true then Bool else Bool else if false then Bool else Bool
    d149 = ( ( ( ( M.d12 ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( d110 )
    d150 : if false then if true then Bool else Bool else if false then Bool else Bool
    d150 = ( ( ( ( M.d67 ) $ ( d136 ) ) $ ( d136 ) ) $ ( d140 ) ) $ ( false )
    d151 : if true then if false then Bool else Bool else if false then Bool else Bool
    d151 = ( ( ( ( M.d63 ) $ ( false ) ) $ ( false ) ) $ ( d117 ) ) $ ( true )
    d152 : if false then if false then Bool else Bool else if false then Bool else Bool
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x153 -> if false then x153 else x153 ) ) ) $ ( if false then false else d134 )
    d154 : if false then if true then Bool else Bool else if false then Bool else Bool
    d154 = if if true then false else d149 then if d131 then true else d139 else if false then true else d151
    d155 : ( ( Set -> Set ) ∋ ( ( λ x156 -> if true then x156 else Bool ) ) ) $ ( if false then Bool else Bool )
    d155 = ( ( ( ( M.d95 ) $ ( true ) ) $ ( false ) ) $ ( d140 ) ) $ ( d149 )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x159 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> x159 ) ) ) $ ( x159 ) ) ) ) $ ( if true then Bool else Bool )
    d157 = ( ( Bool -> Bool ) ∋ ( ( λ x158 -> if true then false else x158 ) ) ) $ ( if true then d122 else true )
    d161 : if true then if false then Bool else Bool else if true then Bool else Bool
    d161 = ( ( ( ( M.d80 ) $ ( false ) ) $ ( d117 ) ) $ ( d146 ) ) $ ( d117 )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> Bool ) ) ) $ ( x164 ) ) ) ) $ ( if true then Bool else Bool )
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> ( ( ( ( M.d85 ) $ ( x163 ) ) $ ( false ) ) $ ( x163 ) ) $ ( x163 ) ) ) ) $ ( if d109 then d147 else d144 )
    d166 : if true then if true then Bool else Bool else if true then Bool else Bool
    d166 = if if d150 then d130 else true then if d150 then false else false else if false then d157 else true
    d167 : if true then if true then Bool else Bool else if false then Bool else Bool
    d167 = ( ( ( ( M.d20 ) $ ( false ) ) $ ( false ) ) $ ( d134 ) ) $ ( false )
    d168 : if false then if false then Bool else Bool else if false then Bool else Bool
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> d101 ) ) ) $ ( x169 ) ) ) ) $ ( if true then false else d136 )
    d171 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> x175 ) ) ) $ ( x174 ) ) ) ) $ ( if true then Bool else Bool )
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> x172 ) ) ) $ ( x172 ) ) ) ) $ ( if d150 then false else d154 )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> x178 ) ) ) $ ( x178 ) ) ) ) $ ( if true then Bool else Bool )
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( ( ( M.d47 ) $ ( true ) ) $ ( x177 ) ) $ ( d106 ) ) $ ( x177 ) ) ) ) $ ( if d106 then true else d144 )