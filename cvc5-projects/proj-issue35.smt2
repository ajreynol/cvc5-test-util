(set-option :strings-exp true)
(set-option :produce-unsat-cores true)
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1 String) (t2 String))
  (! (=> (= (str.++ t1 t2) t) (= (= t1 s) false))
  :pattern ((str.++ t1 t2))
  ))
  :named a1))
(assert (! 
 (not (= (str.prefixof s t) false)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)
