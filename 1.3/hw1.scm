; SICP Exercise 1.31a

(load "../simply.scm")

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))))


(define (product term a next b)
  (if (> a b)
    1
    (* (term a) (product term (next a) next b))
  )
)

; (display (sum (lambda (x) (* x x)) 2 (lambda (x) (+ x 1)) 3))
(define (facto a)
  (product (lambda (x) x) 1 (lambda (y) (+ y 1)) a)
)

(display (facto 6))

