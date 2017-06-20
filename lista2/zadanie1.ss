(define (my_map func l)
  (cond 
    ((null? l) '())
    (else (cons (func (car l)) (my_map func (cdr l))))))