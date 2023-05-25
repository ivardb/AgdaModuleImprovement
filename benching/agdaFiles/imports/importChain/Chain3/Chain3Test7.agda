module Chain3Test7  where
    import Chain3Step27
    open import Chain3Step27 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if true then Bool else Bool ) ( p2 : if false then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d3 = if if false then true else p2 then if false then p2 else false else if true then Chain3Step27.M'.d110 else false
        d6 : if false then if true then Bool else Bool else if true then Bool else Bool
        d6 = if if d3 then Chain3Step27.M'.d60 else false then if d3 then Chain3Step27.M'.d28 else Chain3Step27.M'.d23 else if Chain3Step27.M'.d108 then Chain3Step27.M'.d69 else Chain3Step27.M'.d36
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then x8 else Bool ) ) ) $ ( if false then Bool else Bool )
        d7 = if if Chain3Step27.M'.d110 then d3 else Chain3Step27.M'.d84 then if Chain3Step27.M'.d30 then Chain3Step27.M'.d64 else d3 else if false then p2 else true
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> d7 ) ) ) $ ( Chain3Step27.M'.d69 ) ) ) ) $ ( if d6 then true else d7 )
        d13 : if true then if true then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if Chain3Step27.M'.d26 then false else x14 ) ) ) $ ( if p1 then Chain3Step27.M'.d114 else false )
        d15 : if true then if true then Bool else Bool else if true then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if Chain3Step27.M'.d6 then Chain3Step27.M'.d20 else p1 ) ) ) $ ( if false then false else Chain3Step27.M'.d120 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> x18 ) ) ) $ ( x18 ) ) ) ) $ ( if false then Bool else Bool )
        d17 = if if d3 then p1 else Chain3Step27.M'.d26 then if p1 then Chain3Step27.M'.d64 else p1 else if Chain3Step27.M'.d23 then Chain3Step27.M'.d74 else Chain3Step27.M'.d123
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then Bool else x22 ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if d6 then p2 else Chain3Step27.M'.d47 ) ) ) $ ( if Chain3Step27.M'.d123 then p2 else Chain3Step27.M'.d67 )
        d23 : if true then if false then Bool else Bool else if true then Bool else Bool
        d23 = if if Chain3Step27.M'.d64 then p1 else d15 then if d7 then p1 else false else if Chain3Step27.M'.d84 then true else false
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x25 ) ) ) $ ( x25 ) ) ) ) $ ( if false then Bool else Bool )
        d24 = if if true then p2 else Chain3Step27.M'.d17 then if p1 then Chain3Step27.M'.d80 else p2 else if Chain3Step27.M'.d92 then d23 else d15
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = if if Chain3Step27.M'.d117 then Chain3Step27.M'.d100 else Chain3Step27.M'.d14 then if false then p1 else d9 else if Chain3Step27.M'.d64 then d3 else d23
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then x29 else Bool ) ) ) $ ( if false then Bool else Bool )
        d28 = if if Chain3Step27.M'.d52 then d13 else d6 then if d7 then d27 else p2 else if Chain3Step27.M'.d84 then d6 else true
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if false then x31 else Bool ) ) ) $ ( if false then Bool else Bool )
        d30 = if if Chain3Step27.M'.d76 then false else Chain3Step27.M'.d117 then if d13 then p2 else p1 else if Chain3Step27.M'.d74 then Chain3Step27.M'.d100 else false
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then x34 else Bool ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if true then false else p2 ) ) ) $ ( if d23 then p1 else Chain3Step27.M'.d28 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> Bool ) ) ) $ ( x38 ) ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> Chain3Step27.M'.d23 ) ) ) $ ( true ) ) ) ) $ ( if Chain3Step27.M'.d32 then Chain3Step27.M'.d67 else false )
        d40 : if false then if false then Bool else Bool else if true then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if d28 then false else p2 ) ) ) $ ( if Chain3Step27.M'.d100 then Chain3Step27.M'.d100 else Chain3Step27.M'.d94 )
        d42 : if true then if true then Bool else Bool else if true then Bool else Bool
        d42 = if if Chain3Step27.M'.d48 then Chain3Step27.M'.d53 else Chain3Step27.M'.d6 then if true then Chain3Step27.M'.d48 else p1 else if d30 then p2 else Chain3Step27.M'.d97
        d43 : if false then if false then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> false ) ) ) $ ( true ) ) ) ) $ ( if Chain3Step27.M'.d6 then false else Chain3Step27.M'.d60 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( x47 ) ) ) ) $ ( if true then Bool else Bool )
        d46 = if if Chain3Step27.M'.d28 then Chain3Step27.M'.d103 else Chain3Step27.M'.d64 then if Chain3Step27.M'.d81 then Chain3Step27.M'.d52 else d35 else if d42 then Chain3Step27.M'.d73 else true
        d49 : if false then if false then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> Chain3Step27.M'.d69 ) ) ) $ ( Chain3Step27.M'.d9 ) ) ) ) $ ( if d23 then Chain3Step27.M'.d17 else Chain3Step27.M'.d20 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> Chain3Step27.M'.d72 ) ) ) $ ( false ) ) ) ) $ ( if d30 then Chain3Step27.M'.d81 else d32 )
        d57 : if true then if true then Bool else Bool else if true then Bool else Bool
        d57 = if if false then p2 else false then if false then Chain3Step27.M'.d94 else true else if Chain3Step27.M'.d123 then d3 else Chain3Step27.M'.d12
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x59 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = if if Chain3Step27.M'.d20 then Chain3Step27.M'.d92 else p2 then if Chain3Step27.M'.d103 then true else Chain3Step27.M'.d96 else if d17 then false else Chain3Step27.M'.d23
        d61 : if false then if true then Bool else Bool else if false then Bool else Bool
        d61 = if if Chain3Step27.M'.d84 then Chain3Step27.M'.d55 else Chain3Step27.M'.d72 then if p2 then false else d46 else if p2 then Chain3Step27.M'.d123 else d57
        d62 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> x66 ) ) ) $ ( x65 ) ) ) ) $ ( if true then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> d61 ) ) ) $ ( Chain3Step27.M'.d23 ) ) ) ) $ ( if d43 then p1 else d58 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then x70 else x70 ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> Chain3Step27.M'.d96 ) ) ) $ ( Chain3Step27.M'.d14 ) ) ) ) $ ( if p2 then d3 else false )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then x73 else x73 ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if true then d28 else d9 ) ) ) $ ( if p2 then Chain3Step27.M'.d114 else p1 )
        d74 : if false then if true then Bool else Bool else if false then Bool else Bool
        d74 = if if false then p2 else true then if p2 then Chain3Step27.M'.d114 else Chain3Step27.M'.d114 else if true then false else p1
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if false then x76 else Bool ) ) ) $ ( if false then Bool else Bool )
        d75 = if if Chain3Step27.M'.d78 then Chain3Step27.M'.d81 else false then if Chain3Step27.M'.d28 then d15 else Chain3Step27.M'.d60 else if false then true else d24
        d77 : if true then if true then Bool else Bool else if false then Bool else Bool
        d77 = if if false then Chain3Step27.M'.d26 else d3 then if Chain3Step27.M'.d81 then p2 else d17 else if d24 then true else false
        d78 : if false then if false then Bool else Bool else if true then Bool else Bool
        d78 = if if Chain3Step27.M'.d36 then false else p1 then if Chain3Step27.M'.d56 then p2 else Chain3Step27.M'.d110 else if p1 then p2 else d35
        d79 : if true then if false then Bool else Bool else if false then Bool else Bool
        d79 = if if false then Chain3Step27.M'.d60 else p1 then if d77 then p1 else true else if Chain3Step27.M'.d81 then d52 else d24
        d80 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> d67 ) ) ) $ ( Chain3Step27.M'.d64 ) ) ) ) $ ( if p2 then Chain3Step27.M'.d30 else d43 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x87 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if Chain3Step27.M'.d32 then Chain3Step27.M'.d96 else Chain3Step27.M'.d76 ) ) ) $ ( if true then true else Chain3Step27.M'.d14 )
        d89 : if false then if true then Bool else Bool else if false then Bool else Bool
        d89 = if if Chain3Step27.M'.d32 then Chain3Step27.M'.d94 else true then if Chain3Step27.M'.d96 then p2 else true else if Chain3Step27.M'.d123 then d78 else p1
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( x91 ) ) ) ) $ ( if false then Bool else Bool )
        d90 = if if p1 then Chain3Step27.M'.d53 else true then if d62 then p2 else Chain3Step27.M'.d14 else if Chain3Step27.M'.d32 then Chain3Step27.M'.d87 else p2
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = if if d27 then p2 else p1 then if p2 then Chain3Step27.M'.d6 else Chain3Step27.M'.d52 else if false then Chain3Step27.M'.d74 else Chain3Step27.M'.d26
        d94 : if false then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if Chain3Step27.M'.d14 then d77 else d28 then if Chain3Step27.M'.d39 then Chain3Step27.M'.d114 else d24 else if d46 then false else Chain3Step27.M'.d80
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if true then true else Chain3Step27.M'.d102 ) ) ) $ ( if Chain3Step27.M'.d78 then p1 else Chain3Step27.M'.d23 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d98 = if if Chain3Step27.M'.d103 then d77 else d15 then if d3 then p2 else Chain3Step27.M'.d84 else if true then d7 else Chain3Step27.M'.d97
        d100 : if true then if true then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> Chain3Step27.M'.d9 ) ) ) $ ( d77 ) ) ) ) $ ( if Chain3Step27.M'.d96 then Chain3Step27.M'.d114 else p1 )
        d103 : if false then if false then Bool else Bool else if false then Bool else Bool
        d103 = if if true then Chain3Step27.M'.d96 else Chain3Step27.M'.d96 then if Chain3Step27.M'.d44 then Chain3Step27.M'.d114 else d7 else if true then true else Chain3Step27.M'.d74
        d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then x106 else x106 ) ) ) $ ( if false then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if p2 then p1 else x105 ) ) ) $ ( if Chain3Step27.M'.d32 then false else d85 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if true then x108 else Bool ) ) ) $ ( if false then Bool else Bool )
        d107 = if if Chain3Step27.M'.d48 then d40 else Chain3Step27.M'.d32 then if p2 then p1 else false else if true then Chain3Step27.M'.d120 else Chain3Step27.M'.d20
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else x110 ) ) ) $ ( if true then Bool else Bool )
        d109 = if if d49 then false else Chain3Step27.M'.d30 then if p2 then Chain3Step27.M'.d117 else p2 else if Chain3Step27.M'.d50 then Chain3Step27.M'.d56 else p2
        d111 : if false then if true then Bool else Bool else if true then Bool else Bool
        d111 = if if Chain3Step27.M'.d55 then p1 else p2 then if d71 then Chain3Step27.M'.d81 else d109 else if d85 then p1 else true
        d112 : if false then if false then Bool else Bool else if false then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if x113 then Chain3Step27.M'.d110 else d52 ) ) ) $ ( if p2 then Chain3Step27.M'.d84 else p2 )
        d114 : if true then if true then Bool else Bool else if true then Bool else Bool
        d114 = if if d58 then Chain3Step27.M'.d108 else false then if p2 then Chain3Step27.M'.d114 else Chain3Step27.M'.d100 else if d15 then true else true
        d115 : if false then if false then Bool else Bool else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if Chain3Step27.M'.d92 then x116 else false ) ) ) $ ( if true then true else d52 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if true then Bool else x118 ) ) ) $ ( if false then Bool else Bool )
        d117 = if if Chain3Step27.M'.d117 then p1 else d13 then if p2 then false else Chain3Step27.M'.d39 else if d89 then Chain3Step27.M'.d84 else true