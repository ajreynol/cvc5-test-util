(set-logic QF_SLIA)
(declare-fun var7 () String)
(declare-fun var4 () String)
(declare-fun var17 () String)
(declare-fun var35 () Int)
(declare-fun var22 () Int)
(declare-fun var31 () Int)
(declare-fun var23 () Int)
(declare-fun var19 () String)
(declare-fun var16 () String)
(declare-fun var30 () Int)
(declare-fun var6 () String)
(declare-fun var3 () String)
(declare-fun var29 () Int)
(declare-fun var8 () String)
(declare-fun var14 () String)
(declare-fun var10 () String)
(declare-fun var0 () String)
(declare-fun var27 () Int)
(declare-fun var12 () String)
(declare-fun var25 () Int)
(declare-fun var15 () String)
(assert (str.prefixof "tP,1\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\mvbE/0$qBj[G7*""pdku\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\P%^n%iM;_dK]vWgQC/\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\xC@\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\;W=#Ze.ki)n`,h""Smuu9=u~svf#e&+_rwWz>:s#0:`2><j0-Nd(u" var15))
(assert (> (str.len (str.at var12 var29)) (str.indexof "&s`bGa+pKA2c1dtCN{8Y}g5dVoD$td[vf{zU[K[Y6@{?S:}:_\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\GulbeF1;_Mx:l0uzR`Pa}<<TeF]Y5nNW{*>(.TwvQ<T7m$ofiW" var19 var27)))
(assert (not (< var30 var29)))
(assert (str.prefixof (str.replace var7 var8 var10) (str.replace "|,{vBw7,#0:I[&.w8z~$_5H*:aw<Ah;#@YMpdLSS5+o?_f%#4%SRjs/RBYV|olV*nEVTkp0=][HWYdY;u0gI&m<mK.o`[q)8?sOX" var14 var3)))
(assert (str.prefixof (str.at var14 var22) (str.at var0 var27)))
(assert (>= (str.indexof (str.replace var4 var10 var14) (str.at var16 var31) (str.len var17)) (str.len var6)))
(assert (> var35 var22))
(assert (<= var25 var23))
(assert (< (str.len var14) (str.indexof "2ovpq'zk`.~FM\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\$bf9\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\oFHw^E[|I]ec4]a%UI\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\GJ8pyLs'lPaB&dSxVZX3(iNq2-`B(1@9@x\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\7DzY|Q$ZnPRfrL7\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\a.eOfM?ARI0" var0 var22)))
(assert (not (> var22 10)))
(check-sat) 