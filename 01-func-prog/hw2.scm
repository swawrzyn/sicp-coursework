(load "../simply.scm")

(define (square num) (* num num))

(define (squares sent)
  (if (equal? (bf sent) '())
    (square (first sent))
    (sentence (square (first sent)) (squares (bf sent)))))

(print (squares '(1 2 3 4)))