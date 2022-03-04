(declare-fun a () Real)
(assert (forall ((b Real)) (exists ((c Real)) (or (= (/ c 0) (* a b)) (= a 0)))))
(check-sat)
