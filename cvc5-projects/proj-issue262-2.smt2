(set-logic ALL)
(set-info :status sat)
(declare-fun a () Real)
(declare-fun c () Real)
(declare-fun b () Real)
(declare-fun d () Real)
(declare-fun e () Real)
(assert
 (forall ((f Real))
 (and (or (xor (or (or (>= (- (* 4 (- (/ b (+ d d))))) e) (< f d)) (>= d 6))
      (< (* (- 20 a) (* c c)) (- (* 28 b))))
    (< a 2))
  (>= (* d a) c))))
(check-sat)
