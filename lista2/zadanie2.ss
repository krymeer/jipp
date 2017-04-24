(define stala? number?)
(define zmienna? symbol?)
(define lewa_strona car)
(define prawa_strona caddr)
(define (suma? wyrazenie)
  (and (pair? wyrazenie) (eq? '+ (cadr wyrazenie))))
(define (roznica? wyrazenie)
  (and (pair? wyrazenie) (eq? '- (cadr wyrazenie))))
(define (iloczyn? wyrazenie)
  (and (pair? wyrazenie) (eq? '* (cadr wyrazenie))))
(define (iloraz? wyrazenie)
  (and (pair? wyrazenie) (eq? '/ (cadr wyrazenie))))

(define (pochodna wyrazenie zmienna)
  (cond 
    ((stala? wyrazenie) 0)
    ((zmienna? wyrazenie) 
      (if (eq? wyrazenie zmienna) 1 0))
    ((suma? wyrazenie) 
      (list (pochodna (lewa_strona wyrazenie) zmienna) '+ (pochodna (prawa_strona wyrazenie) zmienna)))
    ((roznica? wyrazenie)
      (list (pochodna (lewa_strona wyrazenie) zmienna) '- (pochodna (prawa_strona wyrazenie) zmienna)))
    ((iloczyn? wyrazenie)
      (list
        (list (pochodna (lewa_strona wyrazenie) zmienna) '* (prawa_strona wyrazenie))
        '+
        (list (lewa_strona wyrazenie) '* (pochodna (prawa_strona wyrazenie) zmienna))))
    ((iloraz? wyrazenie)
      (list
        (list
          (list (pochodna (lewa_strona wyrazenie) zmienna) '* (prawa_strona wyrazenie))
          '-
          (list (lewa_strona wyrazenie) '* (pochodna (prawa_strona wyrazenie) zmienna)))
        '/
        (list (prawa_strona wyrazenie) '* (prawa_strona wyrazenie))))))