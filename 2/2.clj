(def fib
  (lazy-cat [0 1]
    (map + fib (rest fib))))

(def task-2
  (filter even? fib))

(println (apply + (take-while #(>= 4000000 %) task-2)))
