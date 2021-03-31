 
(ns extraCreditProject)
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 1a. my-reverve function
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn my-reverse [coll]
  (if (empty? coll) 
    ()													; if empty return ()
    (concat (my-reverse (rest coll)) (list (first coll))))) ; recursive call


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 1b. super-reverse function
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn super-reverse [coll]
  (if (empty? coll)
    ()
    (concat (super-reverse (rest coll)) ;recursive call 
            (list (if (coll? (first coll)) 
                    (super-reverse (first coll)) ;recursive call
                    (first coll))))))

;;;;;;;;;;;;;;;;;;;;;;;;
; 2a. member? function
;;;;;;;;;;;;;;;;;;;;;;;;
(defn member? [x coll]
	(if (= x (first coll)) 
		true																;if match found return true
		(do 
			(if (empty? coll)  
				false													;if no matches found return false
				(member? x (rest coll)) ;recursive call to search rest of list
			)
		)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 2b. subsquence function
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn subsequence [coll start num]
	(if (> start 0)
		(subsequence (rest coll) (- start 1) num)
		(do
			(if (= (count coll) num )
				coll
				(subsequence (butlast coll) start num) ; recursive call to print rest
			) 
		)
	)
)

(defn -main []

	(println "\n1a. my-reverve function:\n")
	(println "(my-reverse '(a b (c d) (e (f g))))")
	(print "result: ")
	(println (my-reverse '(a b (c d) (e (f g)))))

	(println "---------------------------------------")

	(println "\n1b. super-reverse function\n")
	(println "(super-reverse '(a b (c d) (e (f g))))")
	(print "result: ")
	(println (super-reverse '(a b (c d) (e (f g)))))

	(println "---------------------------------------")

	(println "\n2a. member? function\n")
	(println "(member? '(1 2) '((1 2) 3 (4 (5 6))))")
	(print "result: ")
	(println (member? '(1 2) '((1 2) 3 (4 (5 6)))))
	(println "(member? 3 '((1 2) 3 (4 (5 6))))")
	(print "result: ")
	(println (member? 3 '((1 2) 3 (4 (5 6)))))
	(println "(member? '(4 (5 6)) '((1 2) 3 (4 (5 6))))")
	(print "result: ")
	(println (member? '(4 (5 6)) '((1 2) 3 (4 (5 6)))))
	(println "(member? 1 '((1 2) 3 (4 (5 6))))")
	(print "result: ")
	(println (member? 1 '((1 2) 3 (4 (5 6)))))
	(println "(member? 2 '((1 2) 3 (4 (5 6))))")
	(print "result: ")
	(println (member? 2 '((1 2) 3 (4 (5 6)))))
	(println "(member? 4 '((1 2) 3 (4 (5 6))))")
	(print "result: ")
	(println (member? 4 '((1 2) 3 (4 (5 6)))))

	(println "---------------------------------------")

	(println "\n2b. subsequence function:\n")
	(println "(subsequence '(1 2 (3 4) (5 (6 7))) 1 2)")
	(print "result: ")
	(println (subsequence '(1 2 (3 4) (5 (6 7))) 1 2))
	(println "(subsequence '(1 2 3 4 5 6 7) 2 4)")
	(print "result: ")
	(println (subsequence '(1 2 3 4 5 6 7) 2 4))

)






