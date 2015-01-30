(defn task-3 []
  ((fn find-factor [number divisor]
    (if (= number divisor)
      divisor
      (if (= 0 (rem number divisor))
        (find-factor (/ number divisor) divisor)
        (find-factor number (+ 2 divisor)))))
   600851475143 3))

(println task-3)
