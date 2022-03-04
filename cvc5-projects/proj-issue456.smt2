(set-logic ALL)
(set-option :produce-models true)
(declare-fun Variable1 () (Set (Tuple Int Int)))
(assert (= Variable1 (set.insert (tuple 4 4) 
(tuple 7 7) 
(tuple 6 6) 
(tuple 2 2) 
(tuple 3 3) 
(tuple 8 8) 
(tuple 10 10) 
(set.singleton (tuple 11 11)))))
(declare-fun Variable2 () (Set (Tuple Int Int)))
(assert (= Variable2 (set.insert (tuple 12 12) 
(tuple 9 9) 
(set.singleton (tuple 1 1)))))
(declare-fun Variable3 () (Set (Tuple Int Int)))
(assert (= Variable3 (set.insert (tuple 10 5) 
(tuple 2 2) 
(tuple 3 3) 
(tuple 2 5) 
(tuple 1 1) 
(tuple 6 5) 
(tuple 4 5) 
(tuple 4 4) 
(tuple 7 7) 
(tuple 7 8) 
(tuple 8 10) 
(tuple 6 6) 
(tuple 3 7) 
(tuple 7 5) 
;(tuple 1 9)  ;;COMMENT THIS LINE
(set.singleton (tuple 10 10)))))
(declare-fun Variable4 (Int) (Set (Tuple Int Int Int)))

(assert (= (Variable4 0) (set.insert(tuple 7 14 9) 
(tuple 7 15 9) 
(tuple 8 13 9) 
(set.singleton (tuple 10 16 9)))))

(declare-fun Variable5 (Int) (Set (Tuple Int Int Int)))
(declare-fun Tclosure(Int) (Set (Tuple Int Int)))
(declare-fun Variable6 (Int) (Set (Tuple Int Int)))
(declare-fun Variable7 (Int) (Set (Tuple Int Int)))
(declare-fun Variable8(Int) (Set (Tuple Int Int Int)))

(assert (= (Tclosure 0) (rel.tclosure Variable3)))
(assert (= (Variable6 0) (rel.join Variable1 (Tclosure 0))))
(assert (= (Variable7 0) (rel.join Variable2 (Tclosure 0))))
(assert (= (Variable5 0) (rel.join (Variable6 0) (Variable4 0))))
(assert (= (Variable8 0) (rel.join (Variable5 0) (rel.transpose (Variable7 0)))))

(declare-fun Variable9 (Int) Int)
(declare-fun Variable10 (Int) Int)
(declare-fun Variable11 (Int) Int)
(declare-fun Variable12 (Int) Int)

(assert 
(xor 
(= (Variable9 0) 0) 
(and (set.member (tuple 8 16 1) (Variable8 0)) (= (Variable9 0) 1))
)
)				
(assert 
(xor 
(= (Variable10 0) 0) 
(and (set.member (tuple 4 16 1) (Variable8 0)) (= (Variable10 0) 1))
)
)				
(assert 
(xor 
(= (Variable11 0) 0) 
(and (set.member (tuple 6 16 1) (Variable8 0)) (= (Variable11 0) 1))
)
)				
(assert 
(xor 
(= (Variable12 0) 0) 
(and (set.member (tuple 2 16 1) (Variable8 0)) (= (Variable12 0) 1))
)
)				

(declare-fun Variable13 () (Set (Tuple Int Int)))
(declare-fun Variable14 () (Set (Tuple Int Int)))
(assert (= Variable14 (set.inter (Tclosure 0) Variable3)))

(assert (or 
(and (= (Variable9 0) 1)
(xor (= Variable13 
(setminus (union (union  Variable14 (set.singleton(tuple 4 8))) (set.singleton(tuple 6 8))) (set.singleton(tuple 2 8))))
(= Variable13 Variable14)))

(and (= (Variable10 0) 1)
(xor (= Variable13 
(union  Variable14 (set.singleton(tuple 6 4))))
(= Variable13 Variable14)))

(and (= (Variable11 0) 1)
(xor (= Variable13 
(union  Variable14 (set.singleton(tuple 2 6))))
(= Variable13 Variable14)))

(= Variable13 Variable14)))

(assert (or 
(and (= (Variable12 0) 1)
(xor (= (Variable4 1) 
(union  (Variable4 0) (set.singleton(tuple 7 17 9))))
(= (Variable4 1) (Variable4 0))))

(= (Variable4 1) (Variable4 0))))

(assert (= (Tclosure 1) (rel.tclosure Variable13)))
(assert (= (Variable6 1) (rel.join Variable1 (Tclosure 1))))
(assert (= (Variable7 1) (rel.join Variable2 (Tclosure 1))))
(assert (= (Variable5 1) (rel.join (Variable6 1) (Variable4 1))))
(assert (= (Variable8 1) (rel.join (Variable5 1) (rel.transpose (Variable7 1)))))


(assert 
(xor 
(= (Variable9 1) 0) 
(and (set.member (tuple 8 16 1) (Variable8 1)) (= (Variable9 1) 1))
)
)				
(assert 
(xor 
(= (Variable10 1) 0) 
(and (set.member (tuple 4 16 1) (Variable8 1)) (= (Variable10 1) 1))
)
)				
(assert 
(xor 
(= (Variable11 1) 0) 
(and (set.member (tuple 6 16 1) (Variable8 1)) (= (Variable11 1) 1))
)
)				
(assert 
(xor 
(= (Variable12 1) 0) 
(and (set.member (tuple 2 16 1) (Variable8 1)) (= (Variable12 1) 1))
)
)				

(declare-fun Variable15 () (Set (Tuple Int Int)))
(declare-fun Variable16 () (Set (Tuple Int Int)))
(assert (= Variable16 (set.inter (Tclosure 1) Variable13)))

(assert (or 
(and (= (Variable9 1) 1)
(xor (= Variable15 
(setminus (union (union  Variable16 (set.singleton(tuple 4 8))) (set.singleton(tuple 6 8))) (set.singleton(tuple 2 8))))
(= Variable15 Variable16)))

(and (= (Variable10 1) 1)
(xor (= Variable15 
(union  Variable16 (set.singleton(tuple 6 4))))
(= Variable15 Variable16)))

(and (= (Variable11 1) 1)
(xor (= Variable15 
(union  Variable16 (set.singleton(tuple 2 6))))
(= Variable15 Variable16)))

(= Variable15 Variable16)))

(assert (or 
(and (= (Variable12 1) 1)
(xor (= (Variable4 2) 
(union  (Variable4 1) (set.singleton(tuple 7 17 9))))
(= (Variable4 2) (Variable4 1))))

(= (Variable4 2) (Variable4 1))))

(assert (= (Tclosure 2) (rel.tclosure Variable15)))
(assert (= (Variable6 2) (rel.join Variable1 (Tclosure 2))))
(assert (= (Variable7 2) (rel.join Variable2 (Tclosure 2))))
(assert (= (Variable5 2) (rel.join (Variable6 2) (Variable4 2))))
(assert (= (Variable8 2) (rel.join (Variable5 2) (rel.transpose (Variable7 2)))))

(assert (= (Variable12 1) 1))


(check-sat)
(get-value (Variable8 0))
