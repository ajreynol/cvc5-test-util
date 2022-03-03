(assert (forall ((x Int)) (not (= (str.++ "V" "s") (str.++ "V" (str.substr (str.substr "VZ" 0 x) 0 1))))))
(check-sat)
