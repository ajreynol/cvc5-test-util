(declare-const y (_ BitVec 1))
(declare-const a (Array (_ BitVec 8) (_ BitVec 8)))
(assert (and (= a (store a (_ bv0 8) ((_ zero_extend 7) y))) (= (store a (_ bv1 8) (_ bv0 8)) (store a (_ bv0 8) (bvadd ((_ zero_extend 7) y) (select a (_ bv0 8)))))))
(check-sat)
