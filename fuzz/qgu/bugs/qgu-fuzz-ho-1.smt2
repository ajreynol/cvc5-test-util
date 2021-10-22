(set-logic HO_ALL)
(declare-const a (-> Int Int Int)) 
(declare-const b (-> Int Int Int)) 
(declare-const c (-> Int Int)) 
(declare-const d (-> Int Int)) 
(declare-const x (-> (-> Int Int) Int))
(assert (let ((_let_1 (* (- 1) 1))) (let ((_let_2 (a 1 0))) (let ((_let_3 (b 0))) (and (= c (b 1)) (>= (+ _let_2 _let_1) 0) (= d _let_3) (>= (+ (b 0 1) _let_1) 0) (= d (a 0)) (= c _let_3) (= c (a 1)) (>= (+ 0 (* (- 1) (c (b 0 0)))) 0) (>= (+ _let_2 (* (- 1) 0)) 0) (>= (+ (a 0 1) _let_1) 0))))))
(check-sat)

; fails with `--check-models`
