(set-logic QF_NIRA)
(declare-fun c () Real)
(declare-fun a () Real)
(declare-fun b () Real)
(assert (<= 4 c))
(assert
 (or (<= (- a) (div (to_int c) (to_int a)))
 (<=
  (div (to_int b)
  (mod 4
   (to_int (/ a (* c (div (- 3) (to_int (* c c))))))))
  0)))
(assert (> a b))
(assert (> a c))
(check-sat)
