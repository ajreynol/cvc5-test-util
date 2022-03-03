(declare-const x1 Real)
(declare-fun s () Real)
(assert (and (> (* x1 s x1) 1) (exists ((x Bool)) (ite true (= x1 1) false))))
(check-sat)
