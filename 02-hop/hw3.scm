; SICP Ex 1.33

; (define (accumulate combiner null-value term a next b)
;   (if (> a b)
;     null-value
;     (combiner (term a) (accumulate combiner null-value term (next a) next b))
;   )
; )

(define (filtered-accumulate filter combiner null-value term a next b)
  (if (> a b)
    null-value
    (if (filter? (combiner (term a))
      (combiner (term a) (filtered-accumulate filter combiner null-value term (next a) next b))
      null-value
    ))
  )
)