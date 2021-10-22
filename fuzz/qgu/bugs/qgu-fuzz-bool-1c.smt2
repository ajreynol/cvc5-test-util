(declare-fun a () Bool)
(declare-fun b () Bool)
(declare-fun c () Bool)
(declare-fun d () Bool)

(assert (and (= b (ite d c a)) (or b c) (not (or a b)) (= c d)))

(check-sat)
