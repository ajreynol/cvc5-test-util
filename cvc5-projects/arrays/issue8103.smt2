; --arrays-weak-equiv --check-models
(declare-const  a (Array (_ BitVec 64) (_ BitVec 64))) 
(declare-const  b (_ BitVec 64)) 
(assert (= (store a #x1111111111111111 b) 
        (store a b #x1111111111111111))) 
(check-sat)
