; --sygus-inference
(declare-fun a () (Array Int (Array Int Int)))
(declare-fun b () (Array Int (Array Int Int)))
(assert (distinct b (store a 0 (store (select a 0) 0 0))))
(check-sat)
