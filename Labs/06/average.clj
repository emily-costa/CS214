(ns average)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; sum() sums the values in a vector.       
;; Receive: aVec, a vector of numbers.
;; Return: the sum of the values in aVec.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Replace this line with the definition of sum()
(defn sum [aVec]
  (if (vector? aVec)      ; if aVec is a vector
    (if (empty? aVec)     ;   if aVec is empty:
      0.0                 ;     return 0
      (+ (peek aVec)      ;   else return the last value
         (sum (pop aVec)) ;    + sum(all but the last value)
      )
    )
  )
)


;; Replace this line with the definition of sum2()
(defn sum2 [aVec]
  (if (vector? aVec)      ; if aVec is a vector:
    (if (empty? aVec)     ;   if aVec is empty:
      0.0                 ;    return 0
      (reduce + aVec)     ;   else reduce aVec using +
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; average() computes the average of a vector of numbers.
;; Receive: aVec, a vector of numbers. 
;; Return: the average of the numbers in aVec.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Replace this line with the definition of average()
(defn average [aVec]
  (if (vector? aVec)      ; if aVec is a vector:
    (if (empty? aVec)     ;   if aVec is empty:
      0.0                 ;    return 0
      (/ (sum aVec) (count aVec))    ;   else reduce aVec using +
    )
  )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; main function to test functions sum() and average()
;; Output: the sum and average of some test vectors.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [ emptyVec []
      testVec  [9.0 8.0 7.0 6.0]
    ]

    (print "\nThe empty vec: " emptyVec)
    (print "\nThe test  vec: " testVec)
    (println "\n")

;    Test sum()...
    (printf "The first sum is %.3f\n" (sum emptyVec))
    (printf "The second sum is %.3f\n" (sum testVec))

    ;; Test average()...
    (printf "\nThe first average is %.3f\n" (average emptyVec))
    (printf "The second average is %.3f\n" (average testVec))

    ;; Test sum2()...
    (printf "\nThe first sum2 is %.3f\n" (sum2 emptyVec))
    (printf "The second sum2 is %.3f\n\n" (sum2 testVec))
  )
)