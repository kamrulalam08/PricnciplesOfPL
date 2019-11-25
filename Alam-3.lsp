; Solution to problem 1
(defun MIN-2 (A B)
  (if (and (numberp A) (numberp B))
    (cond   ((<= A B) A)
            ((> A B) B))
            'ERROR))

;Solution to problem 2
(defun SAFE-AVG (A B)
    (if (and(numberp A) (numberp B)) (/ (+ A B) 2)
        'NIL))

;Solution to problem 3
(defun ODD-GT-MILLION (A)
    (and (integerp A) (oddp A) (> A 1000000)))

;Solution to problem 4
(defun MULTIPLE-MEMBER (A B)
(if (and (or(symbolp A)(numberp A)) (listp B))
(member A ( member A B))
'NIL))

;Solution to problem 5
(defun MONTH->INTEGER (A)
(if (member A '(JANUARY FEBRUARY MARCH APRIL MAY JUNE JULY AUGUST SEPTEMBER OCTOBER NOVEMBER DECEMBER))
(cond ((eq A 'JANUARY) 1)
      ((eq A 'FEBRUARY) 2)
      ((eq A 'MARCH) 3)
      ((eq A 'APRIL) 4)  
      ((eq A 'MAY) 5)
      ((eq A 'JUNE) 6)
      ((eq A 'JULY) 7)
      ((eq A 'AUGUST) 8)
      ((eq A 'SEPTEMBER) 9)
      ((eq A 'OCTOBER) 10)
      ((eq A 'NOVEMBER) 11)
      ((eq A 'DECEMBER) 12) )
      'ERROR))

;Solution to problem 6
(defun SCORE->GRADE (S)
(if (numberp S)
(cond ((< S 60) 'F)
((and (>= S 60) (<= S 70)) 'D)    
((and (>= S 70) (<= S 73)) 'C)
((and (>= S 73) (<= S 77)) 'C+)
((and (>= S 77) (<= S 80)) 'B-)
((and (>= S 80) (<= S 83)) 'B)
((and (>= S 83) (<= S 87)) 'B+)
((and (>= S 87) (<= S 90)) 'A-)
((>= S 90) 'A)) 'NIL))

;Solution to problem 7
(defun GT (A B)
(and (and (numberp A) (numberp B)) (> A B)))

;Solution to problem 8
(defun SAME-PARITY (A B)
(or (and (oddp A) (oddp B)) (and (evenp A) (evenp B))))

;Solution to problem 9
(defun SAFE-DIV (A B)
(and (numberp A) (numberp B) (not (zerop B)) (/ A B)))