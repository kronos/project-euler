(defn prime? [n]
  (and (odd? n)
    (every? #(not= 0 (mod n %)) (range 3 (+ 1 (int (Math/sqrt n))) 2))))

(def primes
  (cons 2
    ((fn primes_seq [n]
      (lazy-seq
        (if (prime? n)
          (cons n (primes_seq (+ 2 n)))
          (primes_seq (+ 2 n)))))
    3)))

(def task-10
  (reduce + (take-while #(< % 2000000) primes)))

(println task-10)
