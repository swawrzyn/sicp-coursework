; CS61A 1.3 Extras

; (display ((lambda (a b)
; ((lambda (square)
; (+ (square a) (square b)))
; (lambda (x) (* x x))))
; 3 4))

; (define (fact n)
; (if (= n 0)
; 1
; (* n (fact (- n 1)))))

; (fact 5)

(display (((lambda (x) (x x))
  (lambda (fact-gen)
    (lambda (n)
      (if (= n 0)
          1
          (* n ((fact-gen fact-gen) (- n 1)))))))
 5))