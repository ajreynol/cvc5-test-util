(set-logic QF_SLIA)
(set-option :strings-exp true)
(set-option :strings-fmf true)
(declare-const a String)
(assert (= (str.from_int (str.to_code a)) a))
(assert (>= (str.len a) 1))
(check-sat)