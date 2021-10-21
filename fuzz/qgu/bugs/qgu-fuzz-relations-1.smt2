relations model:

(query (and (= b (singleton (tuple 1 0))) (= a (join b (transpose a))) (= a (join b (tclosure a))) (= a (join b (singleton d)))))
