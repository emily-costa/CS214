;;; Emily Costa
;;; March 11, 2020
;;; CS 214 A
;;; Project 5 -  
;;; Calculate the roots using the quadratic equaiton
;;; given values for a, b, and c from the user Math/sqrt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns root)

(defn calculate[a b c]

	;(let [
		(def disc (- (* b b) (* 4 (* a c))) )
		;(def root1 (float ( / (+ ((- 0.0 (float b)) (float (Math/sqrt disc)))) (* 2.0 (float a) ))))
		(def root1 (float (Math/sqrt disc)))
		;(def root2 (float ( / (- ((- 0.0 b) (float (Math/sqrt disc)))) (* 2.0 a)))) ;]
		;root1 (float (Math/sqrt disc))
		(def root2 (float 3))

		(vector disc root1 root2)
	
	;(if (< disc 0)

		;(vector 0 0 0))

	;(if (= disc 0)

		;(vector 1 root1 0))

	;( if (> disc 0)

		;(vector 2 root1 root2))

	;) ; end let

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

	(print part1)
	(printf "\n")
	(print part2)
	(printf "\n")


	;(printf " disc is: %.2f b is: %.2f, c is: %.2f \n\n" (float part1) (float part2) (float part3))

	
	) ; end let
) ; end main