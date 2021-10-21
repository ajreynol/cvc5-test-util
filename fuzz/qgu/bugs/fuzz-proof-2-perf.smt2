(declare-fun x () String)
(declare-fun y () String)
(assert (let ((_let_1 (re.++ re.allchar  re.allchar ))) (and (str.in_re (str.++ y y) (re.++ (re.* _let_1) re.allchar )) (str.in_re y (re.++ (re.union _let_1 re.allchar ) (re.* re.allchar ))) (str.in_re y (re.++ re.allchar  (str.to_re (str.++ "B" "A")))))))
(check-sat)
