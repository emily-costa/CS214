;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 1a.script
; return max absolute value 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
((fn [x y z] (max (Math/abs x) (Math/abs y) (Math/abs z) )) -10 2 -3 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 1b.script
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
((fn [x y z] (+ x y z)) 1 2 3)
((fn [x] (nil? x)) 1)
((fn [] 17.2))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 2a.script
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def squareSquare (fn [x] (* x x)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 3.script
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(filter (fn [x] (or (neg? x) (odd? x))) [-1 1 -2 2 -3 3 -4 4])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 3a.script
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn negate [sequence] 
	(map (fn [x] 
			(- x (* 2 x)))
	sequence))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 4a.script
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn sumSquares [sequence]
	(reduce + (map (fn [x] (* x x))sequence))
)






