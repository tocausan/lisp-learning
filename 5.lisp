; ########## ########## ########## ########## ##########

#| 
    source:
    http://clhs.lisp.se/Body/m_defmac.htm
    http://clhs.lisp.se/Body/s_let_l.htm
|#

; ########## ########## ########## ########## ##########

(setq arbre 
    '(+
        (*
            (4)
            (3)
        ) 
        (*
            (5)
            (2)
        ) 
    )
)

; ########## ########## ########## ########## ##########

#|
    TP 5.1
    INORDRE
|#

(defmacro inordre (x a)
    `(print 
        (let* 
            (
                (b (car (cadadr ,a)))
                (c (caar (cddadr ,a)))
                (d (caar (cdaddr ,a)))
                (e (caadr (cdaddr ,a)))

                (sum (car ,a))
                (mult1 (caadr ,a))
                (mult2 (caaddr ,a))
            
                (r (list b mult1 c sum d mult2 e))
            )
            r
        )
    )
)

; test inordre function
(print '(--- inordre ---))
(inordre 'prin1 arbre)
; line break
(terpri)

; ########## ########## ########## ########## ##########

#|
    TP 5.2
    POSTORDRE
|#

(defmacro postordre (x a)
    `(print 
        (let* 
            (
                (b (car (cadadr ,a)))
                (c (caar (cddadr ,a)))
                (d (caar (cdaddr ,a)))
                (e (caadr (cdaddr ,a)))

                (sum (car ,a))
                (mult1 (caadr ,a))
                (mult2 (caaddr ,a))
            
                (r (list b c mult1 d e mult2 sum))
            )
            r
        )
    )
)

; test postordre function
(print '(--- postordre ---))
(postordre 'prin1 arbre)
; line break
(terpri)

; ########## ########## ########## ########## ##########

#|
    TP 5.2
    LARGEUR
|#

(defmacro largeur (x a)
    `(print 
        (let* 
            (
                (b (car (cadadr ,a)))
                (c (caar (cddadr ,a)))
                (d (caar (cdaddr ,a)))
                (e (caadr (cdaddr ,a)))

                (sum (car ,a))
                (mult1 (caadr ,a))
                (mult2 (caaddr ,a))
            
                (r (list sum mult1 mult2 b c d e))
            )
            r
        )
    )
)

; test largeur function
(print '(--- largeur ---))
(largeur 'prin1 arbre)
; line break
(terpri)

; ########## ########## ########## ########## ##########