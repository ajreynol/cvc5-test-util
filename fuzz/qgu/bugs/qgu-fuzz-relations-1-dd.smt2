(declare-fun d () (Tuple Int Int))
(assert (= (as emptyset (Set (Tuple Int Int))) (join (singleton (tuple 1 0)) (singleton d))))
(check-sat)
