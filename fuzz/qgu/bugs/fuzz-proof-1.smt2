(declare-fun x () String)
(assert (let ((_let_1 (str.to_re "B"))) (and (str.in_re x (re.++ re.allchar  (str.to_re (str.++ "B" "A")))) (str.in_re x (re.* (re.union re.allchar  (str.to_re "A")))) (str.in_re x (re.* (re.union re.allchar  _let_1))) (str.in_re x (re.* (re.++ re.allchar  _let_1))))))
(check-sat)
