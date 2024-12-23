(define (problem instance)
  (:domain Cnot-Synthesis)
  (:objects  q0 q1 q2 q3 q4 q5 q6 q7 q8 q9 q10 q11 q12 q13 - qubit)
(:init

;; Indentity matrix
(X q0 q0)
(X q1 q1)
(X q2 q2)
(X q3 q3)
(X q4 q4)
(X q5 q5)
(X q6 q6)
(X q7 q7)
(X q8 q8)
(X q9 q9)
(X q10 q10)
(X q11 q11)
(X q12 q12)
(X q13 q13)
  (connected q1 q0)
  (connected q1 q2)
  (connected q2 q3)
  (connected q4 q3)
  (connected q4 q10)
  (connected q5 q4)
  (connected q5 q6)
  (connected q5 q9)
  (connected q6 q8)
  (connected q7 q8)
  (connected q9 q8)
  (connected q9 q10)
  (connected q11 q3)
  (connected q11 q10)
  (connected q11 q12)
  (connected q12 q2)
  (connected q13 q1)
  (connected q13 q12)
  (connected q0 q1)
  (connected q2 q1)
  (connected q3 q2)
  (connected q3 q4)
  (connected q10 q4)
  (connected q4 q5)
  (connected q6 q5)
  (connected q9 q5)
  (connected q8 q6)
  (connected q8 q7)
  (connected q8 q9)
  (connected q10 q9)
  (connected q3 q11)
  (connected q10 q11)
  (connected q12 q11)
  (connected q2 q12)
  (connected q1 q13)
  (connected q12 q13)
)
(:goal
  (and
   ;; target destabilizer X matrix
      (X q0 q0) (not (X q0 q1))(not (X q0 q2))(not (X q0 q3))(not (X q0 q4))(not (X q0 q5))(not (X q0 q6))(not (X q0 q7))(not (X q0 q8))(not (X q0 q9))(not (X q0 q10))(not (X q0 q11))(not (X q0 q12))(not (X q0 q13))
 (not (X q1 q0))     (X q1 q1) (not (X q1 q2))(not (X q1 q3))(not (X q1 q4))(not (X q1 q5))(not (X q1 q6))(not (X q1 q7))(not (X q1 q8))(not (X q1 q9))(not (X q1 q10))(not (X q1 q11))(not (X q1 q12))(not (X q1 q13))
 (not (X q2 q0))(not (X q2 q1))     (X q2 q2) (not (X q2 q3))(not (X q2 q4))(not (X q2 q5))(not (X q2 q6))(not (X q2 q7))(not (X q2 q8))(not (X q2 q9))(not (X q2 q10))(not (X q2 q11))(not (X q2 q12))(not (X q2 q13))
 (not (X q3 q0))(not (X q3 q1))(not (X q3 q2))     (X q3 q3) (not (X q3 q4))(not (X q3 q5))(not (X q3 q6))(not (X q3 q7))(not (X q3 q8))(not (X q3 q9))(not (X q3 q10))(not (X q3 q11))(not (X q3 q12))(not (X q3 q13))
 (not (X q4 q0))(not (X q4 q1))(not (X q4 q2))(not (X q4 q3))     (X q4 q4) (not (X q4 q5))(not (X q4 q6))(not (X q4 q7))(not (X q4 q8))(not (X q4 q9))(not (X q4 q10))(not (X q4 q11))(not (X q4 q12))(not (X q4 q13))
 (not (X q5 q0))(not (X q5 q1))(not (X q5 q2))(not (X q5 q3))     (X q5 q4)      (X q5 q5) (not (X q5 q6))(not (X q5 q7))(not (X q5 q8))(not (X q5 q9))(not (X q5 q10))(not (X q5 q11))(not (X q5 q12))(not (X q5 q13))
 (not (X q6 q0))(not (X q6 q1))(not (X q6 q2))(not (X q6 q3))(not (X q6 q4))(not (X q6 q5))     (X q6 q6) (not (X q6 q7))(not (X q6 q8))(not (X q6 q9))(not (X q6 q10))(not (X q6 q11))(not (X q6 q12))(not (X q6 q13))
 (not (X q7 q0))(not (X q7 q1))(not (X q7 q2))(not (X q7 q3))(not (X q7 q4))(not (X q7 q5))(not (X q7 q6))     (X q7 q7) (not (X q7 q8))(not (X q7 q9))(not (X q7 q10))(not (X q7 q11))(not (X q7 q12))(not (X q7 q13))
 (not (X q8 q0))(not (X q8 q1))(not (X q8 q2))(not (X q8 q3))(not (X q8 q4))(not (X q8 q5))(not (X q8 q6))(not (X q8 q7))     (X q8 q8) (not (X q8 q9))(not (X q8 q10))(not (X q8 q11))(not (X q8 q12))(not (X q8 q13))
 (not (X q9 q0))(not (X q9 q1))(not (X q9 q2))(not (X q9 q3))     (X q9 q4)      (X q9 q5) (not (X q9 q6))(not (X q9 q7))(not (X q9 q8))     (X q9 q9) (not (X q9 q10))(not (X q9 q11))(not (X q9 q12))(not (X q9 q13))
 (not (X q10 q0))(not (X q10 q1))(not (X q10 q2))(not (X q10 q3))     (X q10 q4) (not (X q10 q5))(not (X q10 q6))(not (X q10 q7))(not (X q10 q8))(not (X q10 q9))(not (X q10 q10))     (X q10 q11) (not (X q10 q12))(not (X q10 q13))
 (not (X q11 q0))(not (X q11 q1))(not (X q11 q2))(not (X q11 q3))(not (X q11 q4))(not (X q11 q5))(not (X q11 q6))(not (X q11 q7))(not (X q11 q8))(not (X q11 q9))     (X q11 q10) (not (X q11 q11))(not (X q11 q12))(not (X q11 q13))
 (not (X q12 q0))(not (X q12 q1))(not (X q12 q2))(not (X q12 q3))(not (X q12 q4))(not (X q12 q5))(not (X q12 q6))(not (X q12 q7))(not (X q12 q8))(not (X q12 q9))(not (X q12 q10))(not (X q12 q11))     (X q12 q12) (not (X q12 q13))
 (not (X q13 q0))(not (X q13 q1))(not (X q13 q2))(not (X q13 q3))(not (X q13 q4))(not (X q13 q5))(not (X q13 q6))(not (X q13 q7))(not (X q13 q8))(not (X q13 q9))(not (X q13 q10))(not (X q13 q11))(not (X q13 q12))     (X q13 q13) 
  )
)
)