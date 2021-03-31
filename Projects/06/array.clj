;;;; Emily Costa
;;;; 214 A
;;;; March 18, 2020
;;;; Project 06 - read in an array from keyboard from user
;;;; and print the values
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns array)

;;; function to read in array values
(defn inputArray [array size]

		(loop [i 0]
				(when (< i size)
						(print " Enter array value: ") (flush)
						(let
								[
										num (read)
								]

								(aset-float array i num)
								(recur (+ i 1))
						 ) ; end let
				) ; end when
		) ; end loop
		array ; return array with in values
) ; end inputArray function

;;; function to print values
(defn printArray [size array]

(print " The array's values are: ")
(loop [i 0]
	(when (< i size)

			(print (nth array i))
			(print " ")
			(recur (+ i 1))

	) ; end when
) ; end loop
) ; end ptintArray function

(defn -main []
	
		(print "\n Enter the number of values in the array: ") (flush)

		(let 
				[ 
						size (read)
				]
				; initialize array length of size
				(def inArray (float-array (seq (repeat size 0))))
				; call function to scan in values into array
				(def array1 (inputArray inArray size))
				; call function to print array values
				(printArray size array1)

				(printf "\n")
				(printf "\n")

		); end let

) ; end main