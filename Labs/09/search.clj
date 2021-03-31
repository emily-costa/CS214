;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; search.clj tests a function to search a list for a value
;; Emily Costa
;; 22 April 2020
;; Project 09
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns search)

(load "listOps")

(defn -main []
  (let
    [ 
      list1 (list 99 88 77 66 55)    
      list2 (list 55 66 77 88 99)    
      list3 (list 55 77 99 88 66)    
      list4 (list 55 77 98 88 66)		; Does not contain 99                 
    ]

 
    (println)                        ;   and their maxima
    (println "Index of 99 in list1: " (searchVal list1 99))
    (println "Index of 99 in list2: " (searchVal list2 99))
    (println "Index of 99 in list3: " (searchVal list3 99))
    (println "Index of 99 in list4: " (searchVal list4 99))
    (println)

  )
)