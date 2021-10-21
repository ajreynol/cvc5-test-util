(declare-fun x () String)
(declare-fun y () String)
(assert (let ((_let_1 (str.to_re "A"))) (let ((_let_2 (str.to_re "B"))) (and (str.in_re (str.++ x x) (re.++ (re.* (re.++ _let_2 re.allchar )) re.allchar )) (str.in_re y (re.++ _let_1 (re.inter (re.union re.allchar  (re.++ re.allchar  re.allchar )) re.allchar ))) (str.in_re x (re.++ (re.union re.allchar  _let_2) (re.* _let_1)))))))
(check-sat)
