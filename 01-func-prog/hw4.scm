(load "../simply.scm")

(define (ordered? li)
  (if (empty? (bf li))
    #t
    (cond
      ((> (first li) (first (bf li))) #f)
      (else (ordered? (bf li)))
    )
  )
)

; (if ((ordered? '(1 2 3 4 5)) (display 'first_test_pass) (display 'first_test_fail)))
; (if ((not (ordered? '(4 2 3 4))) (display 'second_test_pass) (display 'second_test_fail)))

(display (ordered? '(1 2 3 4 5)))
(display (ordered? '(5 10 3 4 5)))