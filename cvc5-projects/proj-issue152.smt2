(set-logic QF_BV)                                                                                                                                                                                   
(set-option :ext-rewrite-quant true)
(set-option :sygus-inference true)
(declare-fun _substvar_141_ () Bool)
(declare-fun _substvar_294_ () Bool)
(declare-const v18 Bool)
(assert _substvar_141_)
(assert (or v18 _substvar_294_))
(check-sat)