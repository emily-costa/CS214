;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; TempTable.clj uses Temperature name type in Tmeperature.clj
;;; Emily Costa
;;; 4/14/2020
;;; Project 08
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns TempTable)

(use '[clojure.string :only (join split)])
(load-file "src/Temperature.clj")

(defn -main []
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; scan in input
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	(print "\nbaseTemp -> ") (flush)
	(let [
		degree (read-line)
		deg (split degree #" ")
		degree (Float/parseFloat (get deg 0))
		scale (get deg 1) 
		baseTemp (make-Temp degree scale)
	]

		(print "limitTemp -> ") (flush)
		(let [
			degree (read-line)
			deg (split degree #" ")
			degree (Float/parseFloat (get deg 0))
			scale (get deg 1) 
			limitTemp (make-Temp degree scale)
		]

			(print "stepValue -> ") (flush)
			(let [
				stepValue (read)
			]

			(def temp1 baseTemp)
			(def temp2 baseTemp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; if statements to print table
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			; if base and limit are equal
			(if (true? (equals baseTemp limitTemp))
				(do
					(printTemp (convertF limitTemp)) (print "\t\t")
					(printTemp (convertC limitTemp)) (print "\t\t")
					(printTemp (convertK limitTemp)) 
					(print " IN EQUALS")
				) ; end do
				(do

				; if base is less than limit
					(if (true? (less-than baseTemp limitTemp))
					(do
						(while (true? (less-than temp1 limitTemp))
							(do
								(printTemp (convertF temp1)) (print "\t\t")
								(printTemp (convertC temp1)) (print "\t\t")
								(printTemp (convertK temp1)) (print "\n")
								(def temp1 (raise temp2 stepValue))
								(def temp2 temp1)
								)
							) ; end do
						) ; end while
					) ; end if

					; if base if greater than limit
					(if (false? (less-than baseTemp limitTemp))
					(do
						(while (false? (less-than temp1 limitTemp))
							(do
								(printTemp (convertF temp1)) (print "\t\t")
								(printTemp (convertC temp1)) (print "\t\t")
								(printTemp (convertK temp1)) (print "\n")
								(def temp1 (lower temp2 stepValue))
								(def temp2 temp1)
								)
							) ; end do
						) ; end while
					) ; end if


				) ; end do
			) ; end if

			(print "\n")

			) ; end let
		) ; end let
	) ; end let
)