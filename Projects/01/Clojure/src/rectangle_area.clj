
;;;; Project 1
;;;; Emily Costa
;;;; Feb 12 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rectangle_area) ; namespace function names the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn rectangleArea [height width]
  (* height width) )  ; returns area


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main is where execution begins
;;; Input: the width and height of a rectangle.
;;; Output: the area of that rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "\nTo compute the area of a rectangle,")
  (print   " enter its height: ") (flush)
  (let [ height (read) ]
    (assert (>= height 0) "-main: height must be positive")  
    (print   " enter its width: ") (flush)
    (let [ width (read) ]

    (assert (>= width 0) "-main: width must be positive")

    (printf "\nThe area is %.2f \n\n" (float(rectangleArea height width)))
  )
))


