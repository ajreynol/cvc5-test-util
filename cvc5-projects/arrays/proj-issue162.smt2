(set-logic QF_ABV)
(set-option :arrays-weak-equiv true)
(declare-fun _substvar_131_ () (Array (_ BitVec 4) (Array (_ BitVec 9) (_ BitVec 4))))
(declare-fun _substvar_198_ () (Array (_ BitVec 4) (Array (_ BitVec 9) (_ BitVec 4))))
(declare-fun _substvar_208_ () Bool)
(declare-const arr-5044556539632049674_5044556539626637049-0 (Array (_ BitVec 9) (_ BitVec 4)))
(declare-const arr-5044556539626637049_283417760765342584-0 (Array (_ BitVec 4) (Array (_ BitVec 9) (_ BitVec 4))))
(assert (or _substvar_208_ (= _substvar_198_ (store arr-5044556539626637049_283417760765342584-0 (_ bv0 4) arr-5044556539632049674_5044556539626637049-0) _substvar_131_ (store arr-5044556539626637049_283417760765342584-0 (_ bv0 4) (store arr-5044556539632049674_5044556539626637049-0 #b100100000 (_ bv0 4))) arr-5044556539626637049_283417760765342584-0)))
(check-sat)
