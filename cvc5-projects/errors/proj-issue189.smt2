(set-option :conjecture-gen true)  
(declare-sort b$ 0) 
(declare-sort c$ 0)    
(declare-sort j$ 0) 
(declare-fun d$ () j$)  
(declare-fun k$ (j$) j$) 
(declare-fun d$a () b$) 
(declare-fun e$ (b$) c$) 
(declare-fun l$ (j$) b$) 
(declare-fun g$f (c$ b$) b$)  
(assert (= (g$f (e$ d$a) d$a) (l$ (k$ d$))))
(assert (forall ((?m b$) (?h b$) (?i b$)) (= (= (g$f (e$ ?m) ?h) (g$f (e$ ?i) ?h)) (= ?m ?i)))) 
(assert (forall ((?m b$) (?h b$) (?i b$)) (= (= (g$f (e$ ?m) ?h) (g$f (e$ ?m) ?i)) (= ?h ?i)))) 
(check-sat)