;;; Emily Costa
;;; 4/8/2020
;;; Project 7
;;;;;;;;;;;;;;;;;;;;;;;

(ns names)   ; program name

(defrecord Name [firstName middleName lastName])


; Replace this line with a definition of function make-Name
(defn make-Name [first middle last]
		(->Name first middle last)
)

(defn getFirst [^Name aName]
		(:firstName aName)
)

(defn getMiddle [^Name aName]
		(:middleName aName)
)

(defn getLast [^Name aName]
		(:lastName aName)
)

(defn toString [^Name aName]
		(str (getFirst aName) " " (getMiddle aName) " " (getLast aName))
)

(defn printName [^Name aName]
		(print (toString aName))
)

(defn input-Name []
	(printf "\nEnter first name: ") (flush)
	(let [
		first (read-line) ]

		(printf "Enter middle name: ") (flush)
		(let [
	 	middle (read-line)] 

	 	(printf "Enter last name: ") (flush)
	 	(let [
	 		last (read-line)]

	 		(->Name first middle last)

	 	) ; end let
	 ) ; end let
	) ; end let
)

; function to change first name
(defn changeFirst [^Name aName]
		(assoc aName :firstName "John")
)

; function to change middle name
(defn changeMiddle [^Name aName]
		(assoc aName :middleName "Fitz")
)

; function to change last name
(defn changeLast [^Name aName]
		(assoc aName :lastName "Kennedy")
)

(defn lfmi [^Name aName]
		(str (getLast aName) " " (getFirst aName) " " (subs (getMiddle aName) 0 1))
)

(defn -main []
  (let
    [                                          ; 3 ways to construct an object:
       name1 (make-Name "John" "Paul" "Jones")  ; -using our "make-" constructor
       name2 (->Name "Jane" "Penelope" "Jones") ; -invoking constructor directly
                                               ; -mapping field-names to values
       name3 (map->Name {:lastName "Jones" :firstName "Jinx" :middleName "Joy"})
    ]
    ;; ----- SECTION 1 -----
    (println)
    (print name1) (println)
    (assert (= (getFirst name1) "John") "getFirst(1) failed")
    (assert (= (getMiddle name1) "Paul") "getMiddle(1) failed")
    (assert (= (getLast name1) "Jones") "getLast(1) failed")
    (assert (= (toString name1) "John Paul Jones") "toString(1) failed")
    (printName name1) (println)
    ;; ----- SECTION 2 -----
    (println)
    (print name2) (println)
    (assert (= (getFirst name2) "Jane") "getFirst(2) failed")
    (assert (= (getMiddle name2) "Penelope") "getMiddle(2) failed")
    (assert (= (getLast name2) "Jones") "getLast(2) failed")
    (assert (= (toString name2) "Jane Penelope Jones") "toString(2) failed")
    (printName name2) (println)
    ;; ----- SECTION 3 -----
    (println)
    (print name3) (println)
    (assert (= (getFirst name3) "Jinx") "getFirst(3) failed")
    (assert (= (getMiddle name3) "Joy") "getMiddle(3) failed")
    (assert (= (getLast name3) "Jones") "getLast(3) failed")
    (assert (= (toString name3) "Jinx Joy Jones") "toString(3) failed")
    (printName name3) (println)

    (println "\nAll tests passed!")
  ) ; end let

  ; scan in new names
  (let [ 
  		aName (input-Name)]
  		; works for input: Emily Abby Costa
  		(assert (= (getFirst aName) "Emily") "makeName failed")
				(assert (= (getMiddle aName) "Abby") "makeName failed")
    (assert (= (getLast aName) "Costa") "makeName failed")
    
    ; change first, middle, last names
    (let [
    		aName (changeFirst aName)
    		aName (changeMiddle aName)
    		aName (changeLast aName)]

    		(assert (= (getFirst aName) "John") "changeFirst failed")
						(assert (= (getMiddle aName) "Fitz") "changeMiddle failed")
   		 (assert (= (getLast aName) "Kennedy") "changeLast failed")

   		 ; test lfmi
   		 (assert (= (lfmi aName) "Kennedy John F") "lfmi failed")

    		(println "\nAll tests passed!\n")
    ) ; end let
  ) ; end let



)
