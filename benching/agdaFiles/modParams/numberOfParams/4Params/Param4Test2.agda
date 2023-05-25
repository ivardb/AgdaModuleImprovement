module Param4Test2  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if true then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d5 = if if p2 then true else p4 then if p2 then false else p3 else if false then p4 else true
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if true then x8 else Bool ) ) ) $ ( if false then Bool else Bool )
        d7 = if if p2 then d5 else false then if true then p1 else true else if false then p1 else d5
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d9 = if if d5 then p2 else false then if d5 then d5 else false else if d5 then d5 else d5
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x14 ) ) ) $ ( x13 ) ) ) ) $ ( if true then Bool else Bool )
        d12 = if if d9 then d7 else d9 then if p2 then p2 else p1 else if d9 then d9 else d9
        d15 : if false then if true then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> p3 ) ) ) $ ( d5 ) ) ) ) $ ( if true then d5 else d5 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if true then d7 else true ) ) ) $ ( if d5 then p4 else false )
        d22 : if true then if false then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d9 ) ) ) $ ( true ) ) ) ) $ ( if p2 then true else p1 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else x28 ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> d22 ) ) ) $ ( d9 ) ) ) ) $ ( if d15 then d15 else d15 )
        d29 : if true then if true then Bool else Bool else if true then Bool else Bool
        d29 = if if d12 then p3 else d22 then if d12 then p3 else true else if p1 then true else p4
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( x32 ) ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if d7 then false else false ) ) ) $ ( if false then true else true )
        d34 : if false then if true then Bool else Bool else if false then Bool else Bool
        d34 = if if d15 then false else d25 then if p4 then p1 else d30 else if p1 then true else true
        d35 : if true then if true then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if false then p3 else true ) ) ) $ ( if d29 then p4 else p4 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( x38 ) ) ) ) $ ( if true then Bool else Bool )
        d37 = if if d9 then d5 else d29 then if d9 then p1 else false else if true then p2 else true
        d40 : if true then if true then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> true ) ) ) $ ( p4 ) ) ) ) $ ( if p1 then p4 else p3 )
        d43 : if false then if true then Bool else Bool else if false then Bool else Bool
        d43 = if if p1 then false else d25 then if p4 then false else d30 else if p4 then d18 else p3
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if p4 then d40 else true ) ) ) $ ( if d7 then p1 else d7 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x49 ) ) ) $ ( x48 ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if p2 then d34 else false then if true then false else true else if true then false else false
        d50 : if false then if true then Bool else Bool else if true then Bool else Bool
        d50 = if if d7 then p2 else false then if d30 then p3 else d25 else if p3 then p1 else p3
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x53 ) ) ) $ ( x52 ) ) ) ) $ ( if false then Bool else Bool )
        d51 = if if false then d43 else p1 then if true then d15 else true else if d34 then false else d40
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( x55 ) ) ) ) $ ( if true then Bool else Bool )
        d54 = if if d9 then p4 else p2 then if p3 then false else p3 else if true then false else d35
        d57 : if true then if false then Bool else Bool else if false then Bool else Bool
        d57 = if if true then d25 else false then if d9 then d51 else d40 else if d54 then d15 else d15
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if false then x61 else x61 ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> p2 ) ) ) $ ( d9 ) ) ) ) $ ( if d15 then true else p3 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then Bool else x63 ) ) ) $ ( if true then Bool else Bool )
        d62 = if if true then p2 else false then if true then true else p2 else if d9 then true else p2
        d64 : if false then if true then Bool else Bool else if true then Bool else Bool
        d64 = if if d34 then p2 else true then if true then p3 else false else if false then d58 else p2
        d65 : if false then if true then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> true ) ) ) $ ( x66 ) ) ) ) $ ( if false then true else true )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( x69 ) ) ) ) $ ( if false then Bool else Bool )
        d68 = if if p1 then d29 else d34 then if d9 then d34 else true else if p2 then false else d18
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> x72 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d71 = if if true then true else true then if true then d64 else p2 else if d15 then p1 else d30
        d74 : if true then if false then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> x75 ) ) ) $ ( d57 ) ) ) ) $ ( if true then false else d68 )
        d77 : if true then if false then Bool else Bool else if false then Bool else Bool
        d77 = if if false then p4 else d7 then if false then p4 else d25 else if d29 then true else false
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then x79 else Bool ) ) ) $ ( if false then Bool else Bool )
        d78 = if if d74 then d44 else false then if d25 then false else d58 else if false then d25 else d30
        d80 : if true then if true then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if false then d29 else p1 ) ) ) $ ( if p3 then p3 else false )
        d82 : if true then if false then Bool else Bool else if true then Bool else Bool
        d82 = if if false then true else true then if true then p4 else true else if p2 then d74 else p1
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d83 = if if false then true else true then if false then d51 else p4 else if d7 then false else false
        d85 : if false then if true then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if false then p3 else x86 ) ) ) $ ( if p4 then false else p3 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> x91 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> d22 ) ) ) $ ( d64 ) ) ) ) $ ( if p4 then d15 else p2 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then x93 else Bool ) ) ) $ ( if false then Bool else Bool )
        d92 = if if d25 then d37 else true then if p1 then true else p4 else if p3 then d29 else d50
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if false then Bool else x95 ) ) ) $ ( if false then Bool else Bool )
        d94 = if if p1 then true else p1 then if d82 then true else d87 else if d40 then true else true
        d96 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then x98 else x98 ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if d22 then d85 else true ) ) ) $ ( if p3 then p3 else p4 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else x100 ) ) ) $ ( if true then Bool else Bool )
        d99 = if if true then d68 else d71 then if p3 then false else p3 else if p4 then true else p3
        d101 : if false then if false then Bool else Bool else if true then Bool else Bool
        d101 = if if p3 then d29 else d51 then if d54 then p3 else p3 else if p2 then true else p1
    d102 : if true then if true then Bool else Bool else if true then Bool else Bool
    d102 = ( ( ( ( M.d12 ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( true )
    d103 : if true then if true then Bool else Bool else if false then Bool else Bool
    d103 = if if d102 then false else d102 then if true then d102 else d102 else if d102 then d102 else d102
    d104 : if true then if true then Bool else Bool else if true then Bool else Bool
    d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if d102 then false else false ) ) ) $ ( if false then d102 else false )
    d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d106 = ( ( ( ( M.d65 ) $ ( true ) ) $ ( d102 ) ) $ ( d103 ) ) $ ( false )
    d109 : if false then if true then Bool else Bool else if true then Bool else Bool
    d109 = ( ( ( ( M.d43 ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( true )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( ( ( M.d22 ) $ ( true ) ) $ ( d103 ) ) $ ( x111 ) ) $ ( false ) ) ) ) $ ( if d109 then true else true )
    d113 : if false then if true then Bool else Bool else if false then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then true else d106 )
    d116 : if false then if false then Bool else Bool else if true then Bool else Bool
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if d113 then x117 else d102 ) ) ) $ ( if d103 then false else false )
    d118 : if true then if true then Bool else Bool else if false then Bool else Bool
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d110 ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
    d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then x122 else Bool ) ) ) $ ( if true then Bool else Bool )
    d121 = if if d103 then true else d109 then if true then d118 else d103 else if d104 then d104 else false
    d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( x124 ) ) ) ) $ ( if true then Bool else Bool )
    d123 = if if false then d116 else d104 then if d116 then false else d110 else if true then d113 else true
    d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d126 = ( ( ( ( M.d34 ) $ ( d116 ) ) $ ( true ) ) $ ( d110 ) ) $ ( d104 )
    d129 : if true then if true then Bool else Bool else if true then Bool else Bool
    d129 = ( ( ( ( M.d43 ) $ ( true ) ) $ ( true ) ) $ ( d102 ) ) $ ( true )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if false then x133 else Bool ) ) ) $ ( if true then Bool else Bool )
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> ( ( Bool -> Bool ) ∋ ( ( λ x132 -> x131 ) ) ) $ ( x131 ) ) ) ) $ ( if false then true else d104 )
    d134 : if true then if false then Bool else Bool else if false then Bool else Bool
    d134 = if if true then d104 else d110 then if false then true else true else if d121 then d129 else false
    d135 : ( ( Set -> Set ) ∋ ( ( λ x137 -> ( ( Set -> Set ) ∋ ( ( λ x138 -> Bool ) ) ) $ ( x137 ) ) ) ) $ ( if true then Bool else Bool )
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> if x136 then x136 else d126 ) ) ) $ ( if d123 then d113 else false )
    d139 : if true then if true then Bool else Bool else if true then Bool else Bool
    d139 = if if d135 then true else true then if true then d129 else d126 else if false then true else true
    d140 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> if true then x141 else d130 ) ) ) $ ( if d126 then d129 else d139 )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> if x144 then false else d103 ) ) ) $ ( if false then false else true )
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> ( ( Set -> Set ) ∋ ( ( λ x148 -> Bool ) ) ) $ ( x147 ) ) ) ) $ ( if false then Bool else Bool )
    d146 = ( ( ( ( M.d71 ) $ ( true ) ) $ ( d130 ) ) $ ( d123 ) ) $ ( d102 )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then x150 else Bool ) ) ) $ ( if true then Bool else Bool )
    d149 = if if true then true else d118 then if d130 then true else d102 else if d116 then d118 else false
    d151 : if false then if false then Bool else Bool else if false then Bool else Bool
    d151 = ( ( ( ( M.d51 ) $ ( false ) ) $ ( false ) ) $ ( d149 ) ) $ ( d110 )
    d152 : if true then if false then Bool else Bool else if true then Bool else Bool
    d152 = ( ( ( ( M.d62 ) $ ( d102 ) ) $ ( true ) ) $ ( d113 ) ) $ ( false )
    d153 : if true then if true then Bool else Bool else if false then Bool else Bool
    d153 = if if true then d140 else d134 then if true then d123 else d143 else if d121 then d103 else true
    d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> ( ( Set -> Set ) ∋ ( ( λ x156 -> x155 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d154 = ( ( ( ( M.d65 ) $ ( d123 ) ) $ ( d121 ) ) $ ( true ) ) $ ( true )
    d157 : if false then if false then Bool else Bool else if false then Bool else Bool
    d157 = ( ( Bool -> Bool ) ∋ ( ( λ x158 -> if d106 then x158 else x158 ) ) ) $ ( if true then false else false )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if true then Bool else x160 ) ) ) $ ( if false then Bool else Bool )
    d159 = ( ( ( ( M.d54 ) $ ( d130 ) ) $ ( d118 ) ) $ ( true ) ) $ ( false )
    d161 : if true then if false then Bool else Bool else if false then Bool else Bool
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( Bool -> Bool ) ∋ ( ( λ x163 -> x163 ) ) ) $ ( d103 ) ) ) ) $ ( if d123 then d135 else d153 )
    d164 : if true then if true then Bool else Bool else if true then Bool else Bool
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x165 -> if x165 then false else true ) ) ) $ ( if true then d110 else d149 )
    d166 : if false then if true then Bool else Bool else if true then Bool else Bool
    d166 = ( ( ( ( M.d99 ) $ ( d130 ) ) $ ( true ) ) $ ( false ) ) $ ( d118 )
    d167 : if true then if true then Bool else Bool else if false then Bool else Bool
    d167 = ( ( ( ( M.d87 ) $ ( d149 ) ) $ ( true ) ) $ ( d121 ) ) $ ( false )
    d168 : if true then if true then Bool else Bool else if true then Bool else Bool
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> ( ( ( ( M.d54 ) $ ( d159 ) ) $ ( false ) ) $ ( d135 ) ) $ ( x169 ) ) ) ) $ ( if false then d106 else d121 )
    d170 : if false then if false then Bool else Bool else if true then Bool else Bool
    d170 = if if d166 then d146 else d106 then if false then true else d102 else if false then false else d168
    d171 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> Bool ) ) ) $ ( x174 ) ) ) ) $ ( if true then Bool else Bool )
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> d166 ) ) ) $ ( x172 ) ) ) ) $ ( if false then d143 else d153 )
    d176 : if true then if true then Bool else Bool else if true then Bool else Bool
    d176 = ( ( ( ( M.d25 ) $ ( true ) ) $ ( d154 ) ) $ ( d161 ) ) $ ( true )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x179 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( x179 ) ) ) ) $ ( if true then Bool else Bool )
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> ( ( ( ( M.d25 ) $ ( d157 ) ) $ ( false ) ) $ ( x178 ) ) $ ( x178 ) ) ) ) $ ( if true then true else d167 )
    d181 : if false then if true then Bool else Bool else if true then Bool else Bool
    d181 = if if true then false else d116 then if true then d177 else d102 else if d102 then d129 else false
    d182 : if true then if false then Bool else Bool else if false then Bool else Bool
    d182 = if if false then false else false then if false then d166 else d106 else if d161 then false else d140
    d183 : if false then if true then Bool else Bool else if true then Bool else Bool
    d183 = ( ( ( ( M.d58 ) $ ( d109 ) ) $ ( d118 ) ) $ ( d157 ) ) $ ( d146 )
    d184 : ( ( Set -> Set ) ∋ ( ( λ x185 -> ( ( Set -> Set ) ∋ ( ( λ x186 -> x186 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d184 = ( ( ( ( M.d22 ) $ ( d176 ) ) $ ( d161 ) ) $ ( true ) ) $ ( d121 )