; CS61A HW 2
(load "../simply.scm")

(define (every fn items)
  (if (empty? items)
    '()
    (sentence (fn (first items)) (every fn (bf items)))
  )
)

(display (every (lambda (x) (* x x)) '(1 2 3 4 5)))
(display (every first '(nowhere man)))