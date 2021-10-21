(declare-fun a () Bool)
(declare-fun b () Bool)
(declare-fun c () Bool)
(declare-fun d () Bool)

(assert (let ((_let_1 (or b d))) (and (= a _let_1) (= a (= b d)) (not (ite d c b)) (or a _let_1) (or a (ite b a c)) (= a (= c d)))))

(check-sat)
