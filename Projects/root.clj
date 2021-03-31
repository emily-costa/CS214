;;; Emily Costa
;;; March 11, 2020
;;; CS 214 A
;;; Project 5 -  
;;; Calculate the roots using the quadratic equaiton
;;; given values for a, b, and c from the user Math/sqrt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns root)

(defn calculate[a b c]

                ; calculate the roots
                (def disc (- (* b b) (* 4 (* a c))) )
                ; numerator when adding
                (def top1 (+ (- 0.0 b) (Math/sqrt disc)))
                ; numerator when subtracting
                (def top2 (- (- 0.0 b) (Math/sqrt disc)))
                ; calcualte denominator
                (def bottom (* 2.0 a))
                ; assign root values to root1 and root2
                (def root1 (/ top1 bottom))
                (def root2 (/ top2 bottom))

                ; return vector with the results
                (vector disc root1 root2)


) ; end calculate function

(defn -main[]

        (printf "\n To calculate the root(s): ")
        (print "\n Enter a value for a, b, and c: ") (flush)
        (let [
                a (float(read))
                b (float(read))
                c (float(read))

                result (calculate a b c)
                part1 (get result 0)
                part2 (get result 1)
                part3 (get result 2)
                ]

        ; if statements to print the proper result
        (if (< part1 0)
                (printf " There are no real solutions. \n\n"))
        (if (== part1 0)
                (printf " The root is %.2f \n\n" (float part2)))
        (if (> part1 0)
                        (printf " The roots are %.2f and %.2f \n\n" (float part2) (float part3)))

        ) ; end let
) ; end main