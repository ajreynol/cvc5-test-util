(set-logic HO_ALL)
(set-option :fmf-bound true)       
(set-option :enum-inst-interleave true) 
(set-option :full-saturate-quant true)            
(set-option :inst-when-tc-first false)
(declare-sort b 0) 
(declare-fun c (Int b) b)   
(declare-fun d (Int b) b)  
(assert (forall (( ?e Int ) ( ?f b )) (or  (= (d ?e ?f) (d 0 (c 1 ?f ))))))   
(check-sat)