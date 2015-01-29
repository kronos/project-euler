(def task-1
  ((fn free-five [n]
    (lazy-seq
      (if (or (= 0 (rem n 3)) (= 0 (rem n 5)))
        (cons n (free-five (inc n)))
        (free-five (inc n)))))
  3))

(println (apply + (take-while #(> 1000 %) task-1)))
