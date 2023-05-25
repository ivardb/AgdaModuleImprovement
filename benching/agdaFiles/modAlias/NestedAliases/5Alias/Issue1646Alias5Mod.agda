module Issue1646Alias5Mod  where
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

    f : Bool -> Bool
    f = ( λ x -> true )
    g : Bool -> Bool
    g = ( λ x -> false )
    module M0 ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else x2 ) ) ) $ ( Bool ) )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then x6 else x6 ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> ( ( Bool -> Bool ) ∋ ( ( λ x5 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then p1 else true )
        d7 : if false then if false then Bool else Bool else if true then Bool else Bool
        d7 = if if d3 then false else false then if d3 then p1 else d3 else if p1 then p1 else d3
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if false then d7 else d3 ) ) ) $ ( if true then p1 else p1 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> Bool ) ) ) $ ( x14 ) ) ) ) $ ( if false then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if true then x13 else p1 ) ) ) $ ( if true then false else p1 )
        d16 : if true then if true then Bool else Bool else if false then Bool else Bool
        d16 = if if false then p1 else p1 then if d3 then d8 else false else if p1 then d8 else p1
    module M1 ( x : Bool )  where
        module M  = M0 
        module N  = M ( ( f ) $ ( x ) ) 
        module O  = M ( ( g ) $ ( x ) ) 
    module M2 ( x : Bool )  where
        module M  = M1 
        module N  = M ( ( f ) $ ( x ) ) 
        module O  = M ( ( g ) $ ( x ) ) 
    module M3 ( x : Bool )  where
        module M  = M2 
        module N  = M ( ( f ) $ ( x ) ) 
        module O  = M ( ( g ) $ ( x ) ) 
    module M4 ( x : Bool )  where
        module M  = M3 
        module N  = M ( ( f ) $ ( x ) ) 
        module O  = M ( ( g ) $ ( x ) ) 
    module M5 ( x : Bool )  where
        module M  = M4 
        module N  = M ( ( f ) $ ( x ) ) 
        module O  = M ( ( g ) $ ( x ) ) 