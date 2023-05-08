(load "../simply.scm")

(define (switch sent)
  (if (empty? sent) 
  '()
  (cond 
    ((equal? (first sent) 'You) (sentence 'i (switch (bf sent))))
    ((equal? (first sent) 'you) (sentence 'me (switch (bf sent))))
    ((equal? (first sent) 'I) (sentence 'you (switch (bf sent))))
    ((equal? (first sent) 'me) (sentence 'you (switch (bf sent))))
    (else (sentence (first sent) (switch (bf sent)))))
  )
)

(display (switch '(You told me that I should wake you up)))