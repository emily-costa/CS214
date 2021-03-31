;; listOps.clj is a Clojure "module" for list operations.
;;
;; Begun by: Prof. Adams, CS 214 at Calvin College.
;; Completed by: Emily Costa
;; Date: 4/17/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; maxOf2() finds the maximum of two values.  
;; Receive: val1, val2, two values.  
;; PRE: val1 and val2 can be compared using >.
;; Return: the maximum of val1 and val2. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn maxOf2 [val1 val2]
  (if (> val1 val2)      ; if val1 > val2
    val1                 ;   return val1
    val2                 ; else return val2
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; listMax() finds the maximum value in a list.
;; Receive: aList, a list of values.    
;; PRE: aList is a list 
;;      values in aList can be compared using >.
;; Return: the maximum value in aList.         
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn listMax [aList]

	(if (list? aList)
			(if (empty? aList) ; if list is true 
				nil ; returns nil if empty
				(if (= (count aList) 1)
					(first aList) ; returns first element of list if true
					(maxOf2 (first aList) (listMax (rest aList))) ; recursive call if false
				) ; end if count = 1
			) ; end if empty
			nil ; if list is false
	) ; end if list
)

;; using Clojure's built-in max and apply functions
(defn listMax2 [aList]
  (if (list? aList)       ; if aList is a list:
    (if (empty? aList)    ;  if aList is empty:
      nil                 ;    nil
      (apply max aList)   ;  else apply max to 
    )                     ;        the items in aList
  )
)
