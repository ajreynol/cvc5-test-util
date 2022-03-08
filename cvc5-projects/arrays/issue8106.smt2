; --check-models --check-unsat-cores
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
(declare-const a (Array (_ BitVec 64) (_ BitVec 64))) 
(declare-const b (_ BitVec 64)) 
(assert (= (store a (select a b) (select a b)) 
        (store (store a b b) (bvmul #x1111111111111111 b) (bvneg b)))) 
(check-sat)
