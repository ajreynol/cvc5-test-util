(declare-const a (Array (_ BitVec 8) (_ BitVec 8))) 
(declare-const b (Array (_ BitVec 8) (_ BitVec 8))) 
(declare-const x (_ BitVec 8)) 
(declare-const y (_ BitVec 8)) 
(declare-const z (_ BitVec 4))
(assert (and (= b (store a #b00000000 x)) (= b (store a y #b00000001)) (= b (store a #b00000000 y)) (= (bvadd y (select a #b00000000)) x)))
(check-sat)
