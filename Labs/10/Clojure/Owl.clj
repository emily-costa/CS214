;;;; Owl.clj provides an Owl "class".
;;;; 
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Emily Costa
;;;; Date: 4/22/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;; bring in 'Bird' (to be used as 'superclass')
(load "Bird")


;; define 'Owl' as 'subclass' of Bird
(defrecord Owl [^Bird name])


;;; Owl constructors
;;; - default: no args
;;;   Postcondition: name == a default value. 
;;; - explicit1:
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Owl
    ([]                (->Owl "Ann Onymous"))
    ([^String itsName] (->Owl itsName))
)


;;; method to retrieve a Owl's class
;;; Receive: this, an Owl object.
;;; Return: "Owl".
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getClass Owl [ _ ]
    "Owl"
)

;;; method to retrieve a Goose's call
;;; Receive: this, a Goose object.
;;; Return: "Honk!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getCall Owl [ _ ]
    "Whoo-hoo!"
)