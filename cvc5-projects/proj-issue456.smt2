(set-logic ALL_SUPPORTED)
(set-option :produce-models true)
(declare-fun Variable1 () (Set (Tuple Int Int)))
(assert (= Variable1 (insert (mkTuple 4 4) 
(mkTuple 7 7) 
(mkTuple 6 6) 
(mkTuple 2 2) 
(mkTuple 3 3) 
(mkTuple 8 8) 
(mkTuple 10 10) 
(singleton (mkTuple 11 11)))))
(declare-fun Variable2 () (Set (Tuple Int Int)))
(assert (= Variable2 (insert (mkTuple 12 12) 
(mkTuple 9 9) 
(singleton (mkTuple 1 1)))))
(declare-fun Variable3 () (Set (Tuple Int Int)))
(assert (= Variable3 (insert (mkTuple 10 5) 
(mkTuple 2 2) 
(mkTuple 3 3) 
(mkTuple 2 5) 
(mkTuple 1 1) 
(mkTuple 6 5) 
(mkTuple 4 5) 
(mkTuple 4 4) 
(mkTuple 7 7) 
(mkTuple 7 8) 
(mkTuple 8 10) 
(mkTuple 6 6) 
(mkTuple 3 7) 
(mkTuple 7 5) 
;(mkTuple 1 9)  ;;COMMENT THIS LINE
(singleton (mkTuple 10 10)))))
(declare-fun Variable4 (Int) (Set (Tuple Int Int Int)))

(assert (= (Variable4 0) (insert(mkTuple 7 14 9) 
(mkTuple 7 15 9) 
(mkTuple 8 13 9) 
(singleton (mkTuple 10 16 9)))))

(declare-fun Variable5 (Int) (Set (Tuple Int Int Int)))
(declare-fun Tclosure(Int) (Set (Tuple Int Int)))
(declare-fun Variable6 (Int) (Set (Tuple Int Int)))
(declare-fun Variable7 (Int) (Set (Tuple Int Int)))
(declare-fun Variable8(Int) (Set (Tuple Int Int Int)))

(assert (= (Tclosure 0) (tclosure Variable3)))
(assert (= (Variable6 0) (join Variable1 (Tclosure 0))))
(assert (= (Variable7 0) (join Variable2 (Tclosure 0))))
(assert (= (Variable5 0) (join (Variable6 0) (Variable4 0))))
(assert (= (Variable8 0) (join (Variable5 0) (transpose (Variable7 0)))))

(declare-fun Variable9 (Int) Int)
(declare-fun Variable10 (Int) Int)
(declare-fun Variable11 (Int) Int)
(declare-fun Variable12 (Int) Int)

(assert 
(xor 
(= (Variable9 0) 0) 
(and (member (mkTuple 8 16 1) (Variable8 0)) (= (Variable9 0) 1))
)
)				
(assert 
(xor 
(= (Variable10 0) 0) 
(and (member (mkTuple 4 16 1) (Variable8 0)) (= (Variable10 0) 1))
)
)				
(assert 
(xor 
(= (Variable11 0) 0) 
(and (member (mkTuple 6 16 1) (Variable8 0)) (= (Variable11 0) 1))
)
)				
(assert 
(xor 
(= (Variable12 0) 0) 
(and (member (mkTuple 2 16 1) (Variable8 0)) (= (Variable12 0) 1))
)
)				

(declare-fun Variable13 () (Set (Tuple Int Int)))
(declare-fun Variable14 () (Set (Tuple Int Int)))
(assert (= Variable14 (intersection (Tclosure 0) Variable3)))

(assert (or 
(and (= (Variable9 0) 1)
(xor (= Variable13 
(setminus (union (union  Variable14 (singleton(mkTuple 4 8))) (singleton(mkTuple 6 8))) (singleton(mkTuple 2 8))))
(= Variable13 Variable14)))

(and (= (Variable10 0) 1)
(xor (= Variable13 
(union  Variable14 (singleton(mkTuple 6 4))))
(= Variable13 Variable14)))

(and (= (Variable11 0) 1)
(xor (= Variable13 
(union  Variable14 (singleton(mkTuple 2 6))))
(= Variable13 Variable14)))

(= Variable13 Variable14)))

(assert (or 
(and (= (Variable12 0) 1)
(xor (= (Variable4 1) 
(union  (Variable4 0) (singleton(mkTuple 7 17 9))))
(= (Variable4 1) (Variable4 0))))

(= (Variable4 1) (Variable4 0))))

(assert (= (Tclosure 1) (tclosure Variable13)))
(assert (= (Variable6 1) (join Variable1 (Tclosure 1))))
(assert (= (Variable7 1) (join Variable2 (Tclosure 1))))
(assert (= (Variable5 1) (join (Variable6 1) (Variable4 1))))
(assert (= (Variable8 1) (join (Variable5 1) (transpose (Variable7 1)))))


(assert 
(xor 
(= (Variable9 1) 0) 
(and (member (mkTuple 8 16 1) (Variable8 1)) (= (Variable9 1) 1))
)
)				
(assert 
(xor 
(= (Variable10 1) 0) 
(and (member (mkTuple 4 16 1) (Variable8 1)) (= (Variable10 1) 1))
)
)				
(assert 
(xor 
(= (Variable11 1) 0) 
(and (member (mkTuple 6 16 1) (Variable8 1)) (= (Variable11 1) 1))
)
)				
(assert 
(xor 
(= (Variable12 1) 0) 
(and (member (mkTuple 2 16 1) (Variable8 1)) (= (Variable12 1) 1))
)
)				

(declare-fun Variable15 () (Set (Tuple Int Int)))
(declare-fun Variable16 () (Set (Tuple Int Int)))
(assert (= Variable16 (intersection (Tclosure 1) Variable13)))

(assert (or 
(and (= (Variable9 1) 1)
(xor (= Variable15 
(setminus (union (union  Variable16 (singleton(mkTuple 4 8))) (singleton(mkTuple 6 8))) (singleton(mkTuple 2 8))))
(= Variable15 Variable16)))

(and (= (Variable10 1) 1)
(xor (= Variable15 
(union  Variable16 (singleton(mkTuple 6 4))))
(= Variable15 Variable16)))

(and (= (Variable11 1) 1)
(xor (= Variable15 
(union  Variable16 (singleton(mkTuple 2 6))))
(= Variable15 Variable16)))

(= Variable15 Variable16)))

(assert (or 
(and (= (Variable12 1) 1)
(xor (= (Variable4 2) 
(union  (Variable4 1) (singleton(mkTuple 7 17 9))))
(= (Variable4 2) (Variable4 1))))

(= (Variable4 2) (Variable4 1))))

(assert (= (Tclosure 2) (tclosure Variable15)))
(assert (= (Variable6 2) (join Variable1 (Tclosure 2))))
(assert (= (Variable7 2) (join Variable2 (Tclosure 2))))
(assert (= (Variable5 2) (join (Variable6 2) (Variable4 2))))
(assert (= (Variable8 2) (join (Variable5 2) (transpose (Variable7 2)))))

(assert (= (Variable12 1) 1))


(check-sat)
(get-value (Variable8 0))
