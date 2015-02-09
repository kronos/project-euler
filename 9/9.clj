(def task-9
  (for [a (range 1 999)
        b (range (+ a 1) (- 1000 a))
        :let [c (- 1000 (+ a b))]
        :when (= (+ (* a a) (* b b)) (* c c))]
  (* a b c)))

(println (first task-9))
