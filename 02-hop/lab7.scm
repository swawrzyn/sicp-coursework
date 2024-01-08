; 7. Write and test the make-tester procedure. Given a word w as argument, make-tester returns a procedure
; of one argument x that returns true if x is equal to w and false otherwise. Examples:
; > ((make-tester ’hal) ’hal) 
; #t
; > ((make-tester ’hal) ’cs61a) 
; #f
; > (define sicp-author-and-astronomer? (make-tester ’ger ry))
; > (sicp-author-and-astronomer? ’hal) 
; #f
; > (sicp-author-and-astronomer? ’gerry) 
; #t

(load "../simply.scm")

(define (make-tester x) (lambda (y) (equal? x y)))

(display ((make-tester 'hal) 'hal))
(display ((make-tester 'hal) 'jer))
