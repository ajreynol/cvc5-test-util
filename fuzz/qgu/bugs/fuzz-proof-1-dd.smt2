(declare-fun x () String)
(assert (and (str.in_re x (re.* (re.union re.allchar (str.to_re "A")))) (str.in_re x (re.* (re.union re.allchar (str.to_re "B")))) (str.in_re x (re.* (re.++ re.allchar (str.to_re "B")))) (str.in_re x (re.++ re.allchar (str.to_re (str.++ "B" "A"))))))
(check-sat)
