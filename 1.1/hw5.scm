(load "../simply.scm")

(define (ends-e sent)
  (if (empty? sent)
    '()
    (cond 
      ((equal? (last (first sent)) 'e) (sentence (first sent) (ends-e (bf sent))))
      (else (ends-e (bf sent)))
    )
  )
)

(display (ends-e '(please put the salami above the blue elephant)))
