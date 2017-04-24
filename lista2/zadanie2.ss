(define constant? number?)
(define variable? symbol?)

(define (pochodna derivative zmienna)
  (cond ((constant? derivative) 0)
    ((variable? derivative) derivative)))