; ########## ########## ########## ########## ##########

#|
    TP 3.1
|#

; ########## ########## ########## ########## ##########

#|
    TP 3.2
    INCLUS function :
    check if each first list item are included in the second list whatever the order
|#

; inclus function declaration
(defun inclus (list1 list2)

    ; scan function declaration
    (defun scan (x listx)
        ; scan listX to match x
        (cond
            ; stop if empty list
            ( (null listx) () )
            ; return T if x found
            ( (equal x (car listx)) T )
            ; take off scanned list item and do it again
            ( T (scan x (cdr listx)) )
        )
    )

    ; for each x in list1 -> scan x in list2
    (cond
        ; stop if list1 is empty
        ( (null list1) (print T) )
        ; error if list1 and list2 are not list
        ( (not (listp list1)) (print '(error - first parameter is not a list)) )
        ( (not (listp list2)) (print '(error - second parameter is not a list)) )
        ; scan first list1 element with list2
        ( (scan (car list1) list2) (inclus (cdr list1) list2) )
        ; error if no condition match
        (T (print ()))
    )
)

; test inclus function
(print '(--- inclus ---))
; test 1
(print '(inclus '(a b c) '(a b c)))
(inclus '(a b c) '(a b c))
; test 2
(print '(inclus '(a b c) '(c b a)))
(inclus '(a b c) '(c b a))
; test3
(print '(inclus 'a '(c b a)))
(inclus 'a '(c b a))
; line break
(terpri)

; ########## ########## ########## ########## ##########

#|
    TP 3.3
|#

; ########## ########## ########## ########## ##########

#|
    TP 3.4
    COMPARE function :
    same as INCLUS function but with no recursivity in second list scan
|#

; inclus function declaration
(defun compare (list1 list2)

    ; scan function declaration
    (defun scan (x listx)
        ; scan listX to match x
        (cond
            ; stop if empty list
            ( (null listx) () )
            ; return T if x found
            ( (equal x (car listx)) T )
            ; take off scanned list item and do it again
            ( T () )
        )
    )

    ; for each x in list1 -> scan x in list2
    (cond
        ; stop if list1 is empty
        ( (null list1) (print T) )
        ; error if list1 and list2 are not list
        ( (not (listp list1)) (print '(error - first parameter is not a list)) )
        ( (not (listp list2)) (print '(error - second parameter is not a list)) )
        ; scan first list1 element with list2
        ( (scan (car list1) list2) (inclus (cdr list1) list2) )
        ; error if no condition match
        (T (print ()))
    )
)

; test inclus function
(print '(--- compare ---))
; test 1
(print '(compare '(a b c) '(a b c)))
(compare '(a b c) '(a b c))
; test 2
(print '(compare '(a b c) '(b a c)))
(compare '(a b c) '(b a c))
; test 3
(print '(compare 'a '(a b c)))
(compare 'a '(a b c))
; line break
(terpri)


; ########## ########## ########## ########## ##########

#|
    TP 3.5
|#

; ########## ########## ########## ########## ##########

#|
    TP 3.6
    UNIQUE function :
    create a new list from unique element of a list
|#

(defun unique (listx)
    ; scan if item is in list
    (defun scan (z listz)
        (cond
            ( (null listz) () )
            ( (equal z (car listz)) T )
            ( T (scan z (cdr listz)) )
        )
    )
    ; set new list
    (setq listy ())
    ; for each item in initial list
    (loop for x in listx
        do
            (cond
                ( (equal T (scan x listy)) () )
                ( T (push x listy) )
            )
    )
    ; return new list
    (print listy)
)

; test unique function
(print '(--- unique ---))
; test 1
(print '(unique '(a b c d e f g)))
(unique '(a b c d e f g))
; test 2
(print '(unique '(a c b a a b c)))
(unique '(a c b a a b c))
; line break
(terpri)

; ########## ########## ########## ########## ##########

#|
    TP 3.7
|#

; ########## ########## ########## ########## ##########

#|
    TP 3.8
    REUNION function :
    create a new list from two lists
|#

(defun reunion (lista listb)
    ; scan if item is in list
    (defun scan (z listz)
        (cond
            ( (null listz) () )
            ( (equal z (car listz)) T )
            ( T (scan z (cdr listz)) )
        )
    )
    ; set new list
    (setq listy ())
    ; for each item in first list
    (loop for x in lista
        do
            (cond
                ; if scan return T -> do nothing
                ( (equal T (scan x listy)) () )
                ; else -> push x to new list
                ( T (push x listy) )
            )
    )
    ; for each item in second list
    (loop for y in listb
        do
            (cond
                ; if scan return T -> do nothing
                ( (equal T (scan y listy)) () )
                ; else -> push y to new list
                ( T (push y listy) )
            )
    )
    ; return new list
    (print listy)
)

; test reunion function
(print '(--- reunion ---))
; test 1
(print '(reunion '(a b c) '(d e f g)))
(reunion '(a b c) '(d e f g))
; test 2
(print '(reunion '(a c b a) '(a b c)))
(reunion '(a c b a) '(a b c))
; line break
(terpri)

; ########## ########## ########## ########## ##########

#|
    TP 3.9
|#

; ########## ########## ########## ########## ##########

#|
    TP 3.10
    INTER function :
    create a new list from identical items in the two lists
|#

; ########## ########## ########## ########## ##########