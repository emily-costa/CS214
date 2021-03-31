
;;; Emily Costa
;;; 4/8/2020
;;; Project 7
;;;;;;;;;;;;;;;;;;;;;;;

(ns names)

; Definiion of record-type Name
(defrecord Name [firstName middleName lastName])

; function to initialize Name
(defn make-Name []
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
) ; end initialize-Name

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

; function to change first name
(defn changeFirst [^Name aName]
	(printf "\nEnter new first name: ") (flush)
	(let [
		name (read-line)]
		(assoc aName :firstName name)
	)
)

; function to change middle name
(defn changeMiddle [^Name aName]
	(printf "Enter new middle name: ") (flush)
	(let [
		name (read-line)]
		(assoc aName :middleName name)
	)
)

; function to change last name
(defn changeLast [^Name aName]
	(printf "Enter new last name: ") (flush)
	(let [
		name (read-line)]
		(assoc aName :lastName name)
	)
)

; function to return last, first, middle initial 
(defn lfmi [^Name aName]
	(str (getLast aName) " " (getFirst aName) " " (subs (getMiddle aName) 0 1))
)

(defn -main []

	(let [
			aName (make-Name) ]

	(printName aName) (println)
	(printf (lfmi aName)) (println)

	(let [
		aName (changeFirst aName)
		aName (changeMiddle aName)
		aName (changeLast aName) ]

	(printName aName) (println)
	(printf (lfmi aName)) (println) (println)

	) ; end let
	) ; end let
)