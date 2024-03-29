; SICP 1.32a

; (define (sum term a next b)
;   (if (> a b)
;     0
;     (+ (term a) (sum term (next a) next b))))


; (define (product term a next b)
;   (if (> a b)
;     1
;     (* (term a) (product term (next a) next b))
;   )
; )

(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a) (accumulate combiner null-value term (next a) next b))
  )
)

(define (sum term a next b)
  (accumulate + 0 term a next b)
)

(display (sum (lambda (x) (* x x)) 2 (lambda (x) (+ x 1)) 3))
