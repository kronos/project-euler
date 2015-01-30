(defn palindrom? [n]
  (let [n (seq (str n))]
    (= n (reverse n))))

(def task-4
  (apply max
    (for [x (range 100 1000) y (range 100 1000)
          :let [product (* x y)]
          :when (palindrom? product)]
          product)))

(println task-4)
