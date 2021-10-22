(declare-fun a () Bool)
(declare-fun b () Bool)
(declare-fun c () Bool)
(declare-fun d () Bool)

(assert (and d (not b) (or b (ite c b d)) (= a c) (= a b) (or a c)))

(check-sat)
