(set-logic ALL)
(declare-fun a () (Bag (Tuple Int Int)))
(declare-fun b () (Bag (Tuple Int Int)))
(declare-fun c () Int)
(assert (and (= b (difference_subtract b a)) (= a (bag (tuple c 0) 1))))
(check-sat)
