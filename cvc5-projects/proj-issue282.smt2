(declare-const x1 Int)
(declare-const x2 Int)
(declare-fun x3 () Int)
(declare-fun x4 () Int)
(assert (and (< 1 x4) (= 6 (* x2 x1)) (<= 1 (* x3 x4))))
(check-sat)