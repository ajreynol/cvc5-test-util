(set-logic QF_ALIA)
(set-option :cbqi true)
(set-option :repeat-simp true)
(declare-fun i3 () Int)
(check-sat)
(assert (= (div i3 158) 51))
(push 1)
(assert false)
(check-sat)
(pop 1)
(check-sat)
(assert (= (div i3 158) 51))
(push 1)
