(define (add_to_end lst element)
  (if (null? lst)
    (list element)
    (cons (car lst)
      (add_to_end (cdr lst) element))))

(define (mymap func args)
  (define lst '())
  (for-each 
    (lambda (x)
      (set! lst (add_to_end lst (* 2 x))))
    args)
  (display lst)
  (func args))