; Obliczanie wartości funkcji func dla każdego argumentu z listy args
(define (mymap func args)
  (define lst '())
  (for-each 
    (lambda (x)
      (set! lst (cons (func x) lst)))
    args)
  (reverse lst))