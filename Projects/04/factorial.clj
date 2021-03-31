;;; Emily Costa
;;; March 4, 2020
;;; CS 214 A
;;; Project 4 - given an integer n, returns n!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial) ; namespace function names the program

;;; recursive function to return n!
(defn calc_factorial [n]
	(if (= n 1)
		n
		(* n (calc_factorial(dec n)))
	) ; end if 
) ; end calc_factorial function

(defn -main []
	; prompt user and scan in inpit
	(print "\n To compute n!, enter n: ") (flush)
	(let [ n (read)]
		; call calc_factorial function and print result
		(printf " The factorial is: %d \n" (calc_factorial n))
	) ; end let

	(print "\n")
) ; end main