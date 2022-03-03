(set-option :fmf-bound true)
(declare-fun a () Int)
(declare-fun b () (Array Int Int))
(declare-fun c () Int)
(declare-fun d () Int)
(assert (> (select b 0) (select b 1)))
(assert (forall ((e Int)) (=> (<= 0 e (- a d)) (forall ((f Int)) (=> (<= (+ d 1) f) (<= (select b e) (select b f)))))))
(assert (exists ((h Int)) (and (<= 0 h c) (exists ((i Int)) (let ((g (store (store b 0 (select b 1)) 1 (select b 0)))) (and (<= (+ d 1) i) (> (select g h) (select g i))))))))
(assert (= a (+ d c)))
(check-sat)
