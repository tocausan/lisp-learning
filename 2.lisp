; ########## ########## ########## ########## ##########

#|
    TP 2.1
    PRIMITIVES FUNCTIONS
|#

(defun primitive-function-1 (listx)
    (print (caaddr listx))
)

; test primitive function 1
(print '(--- primitive-function-1 ---))
; test 1
(print '(primitive-function-1 '(1 2 ((3 (4) 5)))))
(primitive-function-1 '(1 2 ((3 (4) 5))))
; line break
(terpri)

; ########## ########## ########## ########## ##########

(defun primitive-function-2 (listx)
    (print (caadr (caaddr listx)))
)

; test primitive function 2
(print '(--- primitive-function-2 ---))
; test 1
(print '(primitive-function-2 '(1 2 ((3 (4) 5)))))
(primitive-function-2 '(1 2 ((3 (4) 5))))
; line break
(terpri)

; ########## ########## ########## ########## ##########

(defun primitive-function-3 (listx)
    (print (caddr (caaddr listx)))
)

; test primitive function 3
(print '(--- primitive-function-3 ---))
; test 1
(print '(primitive-function-3 '(1 2 ((3 (4) 5)))))
(primitive-function-3 '(1 2 ((3 (4) 5))))
; line break
(terpri)

; ########## ########## ########## ########## ##########

#|
    TP 2.2
    PREDICATES

	1- null
	2- equal
	3- (list 'a 'b 1 2) | '(a b 1 2)
	4- (1 2 3 4 5) -> (caddr '(1 2 3 4 5)) -> 3
|#

; ########## ########## ########## ########## ##########

#|
    TP 2.3
    FONCTIONS
|#


; retourner valeur
(setq listx '((12 c) (54 g) (t 67) (v (z t))))

(defun retournerValeur (x list)
		(cond 
			((null list) ())
			((equal (caar list) x) (cadar list))
			(T (retournerValeur x (cdr list)))
		)
)

; test function retournerValeur
; test 1
(print '(retournerValeur 12 ((12 c) (54 g) (t 67) (v (z t)))))
(print (retournerValeur 12 listx) )
; test 2
(print '(retournerValeur 'v ((12 c) (54 g) (t 67) (v (z t)))))
(print (retournerValeur 'v listx) )
; test 3
(print '(retournerValeur 23 ((12 c) (54 g) (t 67) (v (z t)))))
(print (retournerValeur 23 listx) )
; line break
(terpri)


; cube
(defun cube (x)
	(defun carre (x)
		(* x x)  
	)
	(* (carre x) x)
)

;test function cube
(print '(cube 5))
(print (cube 5))
; line break
(terpri)


; multi
(defun multi (x)
	(setq y 5)
	(* x y)
)

; test function multi
(print '(multi 5))
(print (multi 5))


; f (exercice missing informations)
(defun f (x)
  x(1)
)
