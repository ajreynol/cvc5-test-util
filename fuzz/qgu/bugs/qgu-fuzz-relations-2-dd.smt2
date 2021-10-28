(declare-fun c () Int)
(assert (= (as emptyset (Set (Tuple Int Int))) (join (singleton (tuple 1 (+ c 1))) (singleton (tuple 1 0)))))
(check-sat)
