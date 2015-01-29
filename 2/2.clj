(def task-2
  ((fn fib [a b]
    (lazy-seq
      (if (= 0 (rem b 2))
        (cons b (fib b (+ a b)))
        (fib b (+ a b)))))
  0 1))

(println (apply + (take-while #(>= 4000000 %) task-2)))
