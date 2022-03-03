(declare-const u Bool)
(declare-fun v () String)
(assert   (exists ((x Int)) (or (not (>= 0 (str.len (str.substr 
          (str.replace_re "" (str.to_re v) v) x 1)))) u)))
(check-sat)
(simplify (exists ((x Int)) (or (not (>= 0 (str.len (str.substr 
          (str.replace_re "" (str.to_re v) v) x 1)))) u)))
