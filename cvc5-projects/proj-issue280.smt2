(declare-fun v () Real)
(declare-fun b () Real)
(assert (and (> b 0.0) (< 0.0 (/ (* v v) (* 2.0 b)))))
(check-sat)
