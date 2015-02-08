(defn prime? [n]
  (and (odd? n)
    (every? #(not= 0 (mod n %)) (range 3 (+ 1 (int (Math/sqrt n))) 2))))

(def task-7
  (cons 2
    ((fn primes_seq [n]
      (lazy-seq
        (if (prime? n)
          (cons n (primes_seq (+ 2 n)))
          (primes_seq (+ 2 n)))))
    3)))

(println (nth task-7 10000))

;; too slow
; (defn prime? [number primes]
;   (every? #(not= 0 (mod number %)) primes))

; (def task-7
;   (concat '(2 3)
;     ((fn primes_seq [primes next_prime]
;       (lazy-seq
;         (if (prime? next_prime primes)
;           (cons next_prime (primes_seq (conj primes next_prime) (+ 2 next_prime)))
;           (primes_seq primes (+ 2 next_prime)))))
;     [2 3] 5)))



