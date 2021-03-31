;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; listOps.clj is a Clojure "module" for list operations.
;; Emily Costa
;; 22 April 2020
;; Project 09
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; recursively go through the list and return index value
(defn traverse [aList num index]

	(if (< index (count aList))
		(if (= (nth aList index) num)
			index ; return index if equal
			(traverse aList num (+ index 1)) ; recursive call is false
		)
		-1 ; return -1 if not in list
	)
)


(defn searchVal [aList num]

	(traverse aList num 0)

)