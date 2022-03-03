(set-logic LRA)
(set-option :ext-rewrite-quant true)
(declare-const v1 Bool)
(get-qe (forall ((q0 Bool) (q1 Real) (q2 Real)) (=> (= 0.6 q1 q1) (and v1 q0))))
