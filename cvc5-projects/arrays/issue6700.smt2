; -i --check-models
; vs.
; -i
(set-logic QF_ALIA)
(declare-fun v4 () Bool)
(declare-fun v6 () Bool)
(declare-fun v9 () Bool)
(declare-fun i () Int)
(declare-fun a () (Array Int Bool))
(declare-fun v () Bool)
(declare-fun v2 () Bool)
(assert (xor v9 v9 v6 v2 v4 v (select (store a i false) 1) (select a 1)))
(push)
(assert (= i 0))
(check-sat)
(assert (not (xor v6 v2 v4 v (select a 1) (select a 1))))
(check-sat)