(set-option :strings-exp true)
(declare-fun s () Real)
(declare-fun k () Real)
(assert (or (> (* s s) (str.to_int "3")) (= 0.0 k)))
(check-sat)
