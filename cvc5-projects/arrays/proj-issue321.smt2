; --check-proofs
(declare-const z (_ BitVec 1))
(declare-const y (_ BitVec 1))
(declare-const a (Array (_ BitVec 8) (_ BitVec 8)))
(assert (= (store a ((_ zero_extend 7) y) ((_ zero_extend 7) y)) (store a ((_ zero_extend 7) y) (bvadd ((_ zero_extend 7) y) (concat (_ bv1 4) ((_ zero_extend 3) z))))))
(check-sat)
