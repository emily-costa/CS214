;; Name.clj is a module for our 'Name' type-abstraction.
;;
;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;; Completed by: Emily Costa
;; Date: 4/10/2020 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with the Name-related functions from nameTester.clj

;; Create a record/struct type named Name
(defrecord Name [firstName middleName lastName])

(defn make-Name [firstN middleN lastN]
  (->Name firstN middleN lastN)
)

(defn getFirst [aName]
  (:firstName aName)
)

(defn getMiddle [aName]
  (:middleName aName)
)

(defn getLast [aName]
  (:lastName aName)
)

(defn toString [aName]
  (str (getFirst aName) " " (getMiddle aName) " " (getLast aName))
)

(defn printName [aName]
  (print (toString aName) )
)