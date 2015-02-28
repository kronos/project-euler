(use 'clojure.java.io)

(def lines
  (line-seq (reader "input.txt")))

(def arabic-roman
  [[1000 "M" ]
   [900  "CM"]
   [500  "D" ]
   [400  "CD"]
   [100  "C" ]
   [90   "XC"]
   [50   "L" ]
   [40   "XL"]
   [10   "X" ]
   [9    "IX"]
   [5    "V" ]
   [4    "IV"]
   [1    "I" ]])

(def roman-arabic
  {"M" 1000 "D" 500 "C" 100 "L" 50 "X" 10 "V" 5 "I" 1})

(defn to-roman [arabic]
  (cond
    (> arabic 999) (str (apply str (repeat (quot arabic 1000) "M")) (to-roman (rem arabic 1000)))
    (> arabic 0)
      (let [[diff letter] (first (filter #(<= (first %) arabic) arabic-roman))]
        (str letter (to-roman (- arabic diff))))
    :else ""))

(defn to-arabic [roman]
  (loop [last_number 0 roman roman result 0]
    (if (= roman "")
      result
    (let [current (roman-arabic (subs roman 0 1))]
      (if (> current last_number)
        (recur current (subs roman 1) (+ result current (- (* 2 last_number))))
        (recur current (subs roman 1) (+ result current)))))))


(defn compact [array]
  (map #(to-roman (to-arabic %)) array))

(def task-89
  (- (apply + (map #(.length %) lines)) (apply + (map #(.length %) (compact lines)))))

(println task-89)
