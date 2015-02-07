(defn sum [coll]
  (apply + coll))

(def task-6
  (let [coll (range 1 101) sum_coll (sum coll)]
    (- (* sum_coll sum_coll) (sum (map #(* % %) coll)))))

(println task-6)
