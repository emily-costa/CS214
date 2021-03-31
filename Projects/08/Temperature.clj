;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Temperature.clj has Temperature name type 
;;; Emily Costa
;;; 4/14/2020
;;; Project 08
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrecord Temperature [degrees scale])

(defn make-Temp [deg sc]
	(->Temperature deg sc)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; print Temperature
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn printTemp [temp]
	;(print (:degrees temp))
	(print (format "%.2f" (:degrees temp)))
	(print (:scale temp))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Convert temp to Fahrenheit
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn convertF [temp]

	(def newTemp (:degrees temp))

	(if (or (= (compare (:scale temp) "C") 0) (= (compare (:scale temp) "c") 0))
		(def newTemp (+ (* (:degrees temp) (/ 9.0 5.0)) 32.0)) 
	) ; end if
	(if (or (= (compare (:scale temp) "K") 0) (= (compare (:scale temp) "k") 0))
		(def newTemp (+ (* (- (:degrees temp) 273.15)(/ 9.0 5.0)) 32))
	); end if
	(make-Temp newTemp "F")
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Convert temp to Celsius
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn convertC [temp]

	(def newTemp (:degrees temp))

	(if (or (= (compare (:scale temp) "F") 0) (= (compare (:scale temp) "f") 0))
		(def newTemp (* (- (:degrees temp) 32.0) (/ 5.0 9.0)))
	) ; end if
	(if (or (= (compare (:scale temp) "K") 0) (= (compare (:scale temp) "k") 0))
		(def newTemp (- (:degrees temp) 273.15))
	) ; end if
	(make-Temp newTemp "C")
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Convert temp to Kelvin
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn convertK [temp]

	(def newTemp (:degrees temp))

	(if (or (= (compare (:scale temp) "F") 0) (= (compare (:scale temp) "f") 0))
		(def newTemp (+ (* (- (:degrees temp) 32.0) (/ 5.0 9.0)) 273.15))
	) ; end if
	(if (or (= (compare (:scale temp) "C") 0) (= (compare (:scale temp) "c") 0))
		(def newTemp (+ (:degrees temp) 273.15))
	) ; end if
	(make-Temp newTemp "K")
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; raise degree by stepValue
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn raise [temp step]
	(def newDegree (+ (float(:degrees temp)) (float step)))
	(def newTemp (make-Temp newDegree (:scale temp)))
	newTemp
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; lower degree by stepValue
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lower [temp step]
	(def newDegree (- (float(:degrees temp)) (float step)))
	(def newTemp (make-Temp newDegree (:scale temp)))
	newTemp
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; compare two temps if equal
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn equals [temp1 temp2] 

	(def result false)
	(if (= (float (:degrees (convertF temp1))) (float (:degrees (convertF temp2))))
		(def result true)
	)
	result
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; compare two temps less than
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn less-than [temp1 temp2] 

	(def result false)
	(if (< (float (:degrees (convertF temp1))) (float (:degrees (convertF temp2))))
		(def result true)
	)
	result
)

