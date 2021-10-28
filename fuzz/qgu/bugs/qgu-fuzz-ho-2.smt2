(set-logic HO_ALL)
(declare-const a (-> Int Int Int)) 
(declare-const b (-> Int Int Int)) 
(declare-const c (-> Int Int)) 
(declare-const d (-> Int Int)) 
(declare-const x (-> (-> Int Int) Int))
(assert (and (= (a 1 1) (b 1 (b 0 0))) (= c (ite (= a b) (a 1) d)) (= 0 (c (a 1 (+ 1 (* (- 1) (c 1)))))) (= d (b (+ 1 (* (- 1) (a 1 0))))) (= (a 0 1) (b 1 (c 0))) (>= (+ (b 1 0) (* (- 1) 1)) 0)))
(check-sat)

; fails with `--check-models`
