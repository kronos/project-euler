(defn gcd [x y]
  (if (= y 0) x (gcd y (mod x y))))

(defn lcm [x y]
  (/ (* x y) (gcd x y)))

(def task-5
  (reduce lcm (range 1 21)))

(println task-5)
