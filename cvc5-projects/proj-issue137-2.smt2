(set-option :conjecture-filter-model false)
(set-option :sygus-inference true)
(set-option :conjecture-gen true)
(set-option :qcf-tconstraint true)
(set-option :quant-ind true)
(declare-fun a () Real)
(declare-fun b () Real)
(assert (and (= a (- b)) (> a 0) (= (/ a a) a)))
(check-sat)
