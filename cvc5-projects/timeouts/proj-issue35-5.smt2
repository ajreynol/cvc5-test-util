(set-logic ALL)
(set-option :strings-exp true)
(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
(set-info :status unsat)
(declare-fun integer () Int)
(declare-fun result () String)
(assert (! 
 (let ((?x107 (str.++ (str.from_int (div integer 10)) (str.from_int (mod integer 10)))))
 (let (($x92 (and (=> (= (= integer 8) true) (= (= result "8") true)) (=> (= (= integer 9) true) (= (= result "9") true)))))
 (let (($x93 (and (=> (= (= integer 7) true) (= (= result "7") true)) $x92)))
 (let (($x94 (and (=> (= (= integer 6) true) (= (= result "6") true)) $x93)))
 (let (($x95 (and (=> (= (= integer 5) true) (= (= result "5") true)) $x94)))
 (let (($x96 (and (=> (= (= integer 4) true) (= (= result "4") true)) $x95)))
 (let (($x97 (and (=> (= (= integer 3) true) (= (= result "3") true)) $x96)))
 (let (($x98 (and (=> (= (= integer 2) true) (= (= result "2") true)) $x97)))
 (let (($x99 (and (=> (= (= integer 1) true) (= (= result "1") true)) $x98)))
 (let (($x100 (and (=> (= (= integer 0) true) (= (= result "0") true)) $x99)))
 (and (=> (< integer 0) (= (= result "") true)) (and $x100 (=> (>= integer 10) (= (= result ?x107) true)))))))))))))) :named a1))
(assert (! 
 (not (= (str.from_int integer) result)) :named a0))
(check-sat)
(get-unsat-core)
