module Param4Test4  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if true then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : if true then if false then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if false then p1 else true ) ) ) $ ( if p4 then true else false )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then x8 else x8 ) ) ) $ ( if false then Bool else Bool )
        d7 = if if true then false else false then if d5 then false else true else if false then d5 else d5
        d9 : if false then if false then Bool else Bool else if true then Bool else Bool
        d9 = if if p4 then false else d7 then if p3 then true else p1 else if d5 then p4 else false
        d10 : if false then if false then Bool else Bool else if false then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> p4 ) ) ) $ ( false ) ) ) ) $ ( if d7 then d7 else p4 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if false then p4 else d5 ) ) ) $ ( if false then true else p4 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d17 = if if true then d5 else d10 then if d5 then p2 else p1 else if false then p2 else d9
        d19 : if true then if false then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if d5 then true else d13 ) ) ) $ ( if p1 then true else d9 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then x23 else x23 ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if p3 then d5 else false ) ) ) $ ( if true then p2 else true )
        d24 : if true then if false then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( p2 ) ) ) ) $ ( if d9 then d7 else p1 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if true then x28 else Bool ) ) ) $ ( if false then Bool else Bool )
        d27 = if if true then false else false then if true then false else p2 else if true then p4 else p1
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d29 = if if d21 then p3 else d21 then if p1 then d10 else d27 else if p1 then p4 else p1
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if false then Bool else Bool )
        d32 = if if false then true else d29 then if false then d9 else d27 else if p1 then d27 else true
        d35 : if false then if false then Bool else Bool else if false then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d9 then p1 else d24 )
        d38 : if false then if true then Bool else Bool else if true then Bool else Bool
        d38 = if if p4 then p4 else d27 then if d5 then p2 else false else if true then d24 else false
        d39 : if false then if true then Bool else Bool else if false then Bool else Bool
        d39 = if if d38 then p2 else d5 then if false then p2 else p2 else if d38 then false else p4
        d40 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> Bool ) ) ) $ ( x42 ) ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if true then d32 else d27 ) ) ) $ ( if false then d21 else d13 )
        d44 : if true then if true then Bool else Bool else if false then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then d17 else true )
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = if if d29 then false else false then if p4 then d19 else p1 else if p2 then d35 else d40
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d48 = if if false then p2 else d24 then if false then p4 else false else if d5 then d44 else p4
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( x53 ) ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if d44 then d19 else p3 ) ) ) $ ( if d32 then d17 else p2 )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then x58 else Bool ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if p2 then d9 else d10 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> true ) ) ) $ ( d47 ) ) ) ) $ ( if true then d32 else p1 )
        d63 : if true then if true then Bool else Bool else if false then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if true then true else p4 ) ) ) $ ( if d44 then true else d24 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x69 ) ) ) $ ( x68 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d48 ) ) ) $ ( d13 ) ) ) ) $ ( if false then false else p1 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> x72 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if true then p2 else d9 ) ) ) $ ( if p4 then p1 else false )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if d63 then p3 else true ) ) ) $ ( if false then d51 else d5 )
        d77 : if true then if true then Bool else Bool else if false then Bool else Bool
        d77 = if if p2 then p3 else false then if true then false else p2 else if p3 then d55 else true
        d78 : if false then if false then Bool else Bool else if false then Bool else Bool
        d78 = if if true then d51 else p3 then if d51 then d63 else true else if d40 then false else true
        d79 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if true then d10 else true ) ) ) $ ( if d10 then false else p1 )
        d83 : if true then if true then Bool else Bool else if true then Bool else Bool
        d83 = if if true then false else d19 then if d40 then p4 else p4 else if false then d44 else p2
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d84 = if if d70 then d48 else true then if d65 then true else true else if true then p3 else false
        d87 : if true then if false then Bool else Bool else if false then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> p2 ) ) ) $ ( d39 ) ) ) ) $ ( if d13 then false else p2 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> x91 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if p2 then true else p3 then if true then p3 else true else if d5 then false else d70
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d93 = if if true then d55 else p3 then if p3 then d5 else d7 else if p3 then d44 else p3
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then x97 else Bool ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d51 then true else p2 ) ) ) $ ( if p4 then false else d38 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( x99 ) ) ) ) $ ( if true then Bool else Bool )
        d98 = if if p1 then p4 else d24 then if p3 then true else false else if true then p1 else false
        d101 : if true then if true then Bool else Bool else if true then Bool else Bool
        d101 = if if p1 then d87 else true then if false then d74 else p3 else if d7 then p1 else p3
        d102 : if false then if false then Bool else Bool else if true then Bool else Bool
        d102 = if if false then true else p3 then if false then true else p3 else if d35 then true else d40
        d103 : if true then if true then Bool else Bool else if true then Bool else Bool
        d103 = if if false then false else false then if p3 then p2 else p3 else if d95 then false else d24
        d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> Bool ) ) ) $ ( x106 ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if p2 then d55 else d90 ) ) ) $ ( if true then p4 else true )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d108 = if if true then true else false then if false then false else false else if true then false else false
    d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x113 ) ) ) $ ( x112 ) ) ) ) $ ( if true then Bool else Bool )
    d111 = if if false then d108 else d108 then if false then false else true else if false then d108 else d108
    d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( x115 ) ) ) ) $ ( if false then Bool else Bool )
    d114 = ( ( ( ( M.d101 ) $ ( true ) ) $ ( d111 ) ) $ ( d108 ) ) $ ( d111 )
    d117 : if false then if false then Bool else Bool else if true then Bool else Bool
    d117 = ( ( ( ( M.d35 ) $ ( true ) ) $ ( true ) ) $ ( false ) ) $ ( d108 )
    d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then x119 else x119 ) ) ) $ ( if true then Bool else Bool )
    d118 = if if d108 then d117 else true then if true then true else d114 else if false then d117 else d111
    d120 : if true then if false then Bool else Bool else if false then Bool else Bool
    d120 = ( ( ( ( M.d32 ) $ ( d118 ) ) $ ( false ) ) $ ( d114 ) ) $ ( false )
    d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then Bool else x122 ) ) ) $ ( if false then Bool else Bool )
    d121 = if if d114 then d117 else true then if d117 then false else d120 else if d118 then true else true
    d123 : if false then if true then Bool else Bool else if true then Bool else Bool
    d123 = ( ( ( ( M.d48 ) $ ( true ) ) $ ( d120 ) ) $ ( d111 ) ) $ ( false )
    d124 : if true then if true then Bool else Bool else if false then Bool else Bool
    d124 = if if false then d114 else d120 then if true then d121 else d114 else if d123 then true else d114
    d125 : if true then if false then Bool else Bool else if false then Bool else Bool
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( ( ( M.d9 ) $ ( false ) ) $ ( false ) ) $ ( true ) ) $ ( d114 ) ) ) ) $ ( if false then true else false )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if true then x128 else x128 ) ) ) $ ( if false then Bool else Bool )
    d127 = if if true then d125 else d120 then if d111 then true else d117 else if true then d108 else d117
    d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then Bool else x130 ) ) ) $ ( if true then Bool else Bool )
    d129 = if if true then false else false then if d121 then d127 else d118 else if d120 then d118 else true
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if true then x132 else x132 ) ) ) $ ( if true then Bool else Bool )
    d131 = if if d123 then true else false then if d111 then true else d114 else if true then d123 else true
    d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d133 = if if d118 then true else d125 then if false then false else d114 else if false then d125 else d117
    d135 : if true then if false then Bool else Bool else if false then Bool else Bool
    d135 = ( ( ( ( M.d59 ) $ ( true ) ) $ ( true ) ) $ ( true ) ) $ ( d117 )
    d136 : if false then if false then Bool else Bool else if false then Bool else Bool
    d136 = if if true then d124 else d118 then if true then true else true else if true then d125 else false
    d137 : if true then if true then Bool else Bool else if false then Bool else Bool
    d137 = if if true then d117 else true then if d111 then d125 else d124 else if false then d131 else d133
    d138 : if true then if false then Bool else Bool else if true then Bool else Bool
    d138 = if if d131 then d121 else d133 then if true then true else false else if d135 then d117 else d118
    d139 : if true then if true then Bool else Bool else if false then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( ( ( M.d38 ) $ ( x140 ) ) $ ( x140 ) ) $ ( d120 ) ) $ ( x140 ) ) ) ) $ ( if false then d120 else true )
    d141 : if false then if false then Bool else Bool else if true then Bool else Bool
    d141 = if if false then d124 else d121 then if d114 then d137 else d136 else if true then d121 else true
    d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if false then x143 else Bool ) ) ) $ ( if true then Bool else Bool )
    d142 = ( ( ( ( M.d87 ) $ ( d136 ) ) $ ( d123 ) ) $ ( true ) ) $ ( true )
    d144 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if true then x147 else Bool ) ) ) $ ( if false then Bool else Bool )
    d144 = ( ( Bool -> Bool ) ∋ ( ( λ x145 -> ( ( Bool -> Bool ) ∋ ( ( λ x146 -> d142 ) ) ) $ ( d123 ) ) ) ) $ ( if d111 then true else true )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> if true then Bool else x149 ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( ( ( M.d19 ) $ ( d131 ) ) $ ( false ) ) $ ( false ) ) $ ( true )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x151 -> ( ( Set -> Set ) ∋ ( ( λ x152 -> Bool ) ) ) $ ( x151 ) ) ) ) $ ( if false then Bool else Bool )
    d150 = ( ( ( ( M.d9 ) $ ( false ) ) $ ( d123 ) ) $ ( d141 ) ) $ ( false )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> x155 ) ) ) $ ( x154 ) ) ) ) $ ( if true then Bool else Bool )
    d153 = ( ( ( ( M.d59 ) $ ( false ) ) $ ( true ) ) $ ( false ) ) $ ( false )
    d156 : if true then if false then Bool else Bool else if true then Bool else Bool
    d156 = ( ( ( ( M.d74 ) $ ( true ) ) $ ( false ) ) $ ( d117 ) ) $ ( d111 )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> if true then x158 else x158 ) ) ) $ ( if false then Bool else Bool )
    d157 = if if d123 then d124 else d124 then if true then false else true else if d108 then d139 else false
    d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if true then x160 else Bool ) ) ) $ ( if true then Bool else Bool )
    d159 = ( ( ( ( M.d21 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( d133 )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if false then x163 else x163 ) ) ) $ ( if true then Bool else Bool )
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( ( ( M.d77 ) $ ( d137 ) ) $ ( d142 ) ) $ ( d114 ) ) $ ( false ) ) ) ) $ ( if false then true else d142 )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d164 = if if true then d148 else true then if true then d137 else false else if d117 then d131 else false
    d167 : if true then if true then Bool else Bool else if false then Bool else Bool
    d167 = if if false then d135 else false then if d127 then d131 else d148 else if false then d111 else d118
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> x169 ) ) ) $ ( x169 ) ) ) ) $ ( if true then Bool else Bool )
    d168 = if if d125 then true else false then if false then false else d131 else if d117 then d136 else false
    d171 : if false then if false then Bool else Bool else if false then Bool else Bool
    d171 = if if false then false else false then if false then d111 else false else if d108 then true else true
    d172 : if true then if true then Bool else Bool else if true then Bool else Bool
    d172 = if if false then d156 else d129 then if d171 then d123 else d135 else if d127 then d120 else d144
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> Bool ) ) ) $ ( x174 ) ) ) ) $ ( if false then Bool else Bool )
    d173 = if if false then d133 else true then if d148 then false else false else if d137 then d121 else true
    d176 : if false then if false then Bool else Bool else if false then Bool else Bool
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> if true then x177 else x177 ) ) ) $ ( if d131 then true else true )
    d178 : if false then if true then Bool else Bool else if false then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> if false then false else x179 ) ) ) $ ( if false then d117 else true )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if true then x181 else x181 ) ) ) $ ( if false then Bool else Bool )
    d180 = if if false then d136 else false then if false then d164 else true else if true then d124 else d142
    d182 : if false then if false then Bool else Bool else if true then Bool else Bool
    d182 = ( ( ( ( M.d84 ) $ ( d167 ) ) $ ( d137 ) ) $ ( d121 ) ) $ ( d127 )
    d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if false then Bool else x184 ) ) ) $ ( if false then Bool else Bool )
    d183 = if if d108 then false else false then if false then d117 else d125 else if true then d131 else true