;;;; Emily Costa
;;;; Feb 28, 2020
;;;; CS 214 A
;;;; Lab 4 - Display simple algoirthm: 
;;;; 1. Get start, stop, and increment. 
;;;; 2. For count = start to stop by increment: 
;;;; Display count and the logarithm of count
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns logTable) ; namespace function names the program

;;; recursive solution
;;; function displayLogTable to read in start and stop values
;;; print incrimenting by .5 and the corresponding log value
(defn displayLogTable [start stop step]
	(if (<= start  stop)
		(do
			(printf "\n The logarithm of %.1f is %.5f " (float start) (float(Math/log10 start)))

			(displayLogTable (+ start step) stop step)
		) ; end of do
	) ; end if
) ; end function

;; loop (indirect-recursion) version
(defn displayLogTable2 [start stop step]
  (loop [i start]                           ; set i to start
    (when (<= i stop)                       ; if i <= stop:
    	(printf " The logarithm of %.1f is %.5f\n" (float i) (float(Math/log10 i)));  print one line
    	;(printf " The logarithm of %.1f " (float i))
    	;(printf "%.5f\n" (float (Math/log10 i)))
    	(recur (+ i step))                    ; recurse, i += step
    )
  ) ; end loop
) ; end function

(defn -main []

	(println "\n To compute logarithms: ");
	(print " Enter start value: ") (flush)
	(let [ start (read)]
		(print " Enter stop value: ") (flush)
		(let [stop (read)]
			(print "\n Function: displayLogTable ")
			(displayLogTable start stop 0.5)
			(println "\n\n Fucntion: displayLogTable2")
			(displayLogTable2 start stop 0.5)

		(print "\n" )
		); end let
	) ; end let
) ; end main

