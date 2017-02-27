; ########## ########## ########## ########## ##########

#|
    TP 4.1
    SOMME
|#

(defun somme (x)
    ; set sum
    (setq s 0)
    ; set i
    (setq i 0)
    ; while i <= x
    (loop while (<= i x)
        do 
            ; add i to sum
            (setq s (+ s i))
            ; increment i
            (setq i (+ i 1))    
    )
    ; print sum
    (print s)
)

; test function somme
(print '(--- somme ---))
; test 1
(print '(somme 10))
(somme 10)
; line break
(terpri)

; ########## ########## ########## ########## ##########

#|
    TP 4.2
    INVERSER
|#

(defun inverser (listx)
    ; set new list
    (setq listy ())
    ; while list is not empty
    (loop while (not (null listx))
        do
            ; set new list with initial list item
            (setq listy (cons (car listx) listy))
            ; remove the first element of the initial list 
            (setq listx (cdr listx))
    )
    ; print new list
    (print listy)
)

; test function inverser
(print '(--- inverser ---))
; test 1
(print '(inverser '(a b c d e)))
(inverser '(a b c d e))
; line break
(terpri)

; ########## ########## ########## ########## ##########

#|
    TP 4.3
    FACTORIELLE
|#

(defun factorielle (x)
    ; set factoriel
    (setq f 1)
    ; set i
    (setq i 1)
    ; while i <= x
    (loop while (<= i x)
        do 
            ; multiply i to factoriel
            (setq f (* f i))
            ; increment i
            (setq i (+ i 1))  
    )
    ; print factoriel
    (print f)
)

; test function factorielle
(print '(--- factorielle ---))
; test 1
(print '(factorielle 3))
(factorielle 3)
; line break
(terpri)

; ########## ########## ########## ########## ##########