; ########## ########## ########## ########## ##########

#|
    TP 6.1
    LABYRINTH
|#

(setq labyrinth
    '(
        (* * * * * * * * *)
        (E - - - - - - - *)
        (* * * * - * - - *)
        (* - - - - - - - *)
        (* * * - * * * - *)
        (* - - - - - * - *)
        (* * * * * S * * *)        
    )
)


(defun find-path (labyrinth)
    ; set cursor
    (setq cursor ())
    ; set entrance
    (setq entrance ())
    ; set exit
    (setq exit ())
    ; set path
    (setq path ())
    ; set vertical coordinate
    (setq i ())
    ; set horizontal coordinate
    (setq j ())

    ; find entrance function
    (defun find-entrance ()
        
        ; set coordinates
        ; vertical
        (setq m 0)
        ; scan
        (loop for x in labyrinth
            do
                ; horizontal
                (setq n 0)
                (loop for y in x
                    do 
                        ; set coordinates if entrance found
                        (if (equal y 'E)
                            (setq entrance (list m n))
                            ()
                        )
                    (setq n (+ n 1))
                )
            (setq m (+ m 1))
        )
    )

    ; show labyrinth
    (defun show-labyrinth ()
        (loop for x in labyrinth
            do
                (print x)
        )
    )
    
    ; update labyrinth
    (defun update-labyrinth ()
        (print '(cursor))
        (prin1 cursor)

        ; update labyrinth
        (cond
            ( (equal '- (nth (cadr cursor) (nth (car cursor) labyrinth))) (setf (nth (cadr cursor) (nth (car cursor) labyrinth)) '+) )
            ( (equal '+ (nth (cadr cursor) (nth (car cursor) labyrinth))) (setf (nth (cadr cursor) (nth (car cursor) labyrinth)) '@) )
            ( (equal 'S (nth (cadr cursor) (nth (car cursor) labyrinth))) (exit-found) )
        )
        
        ; push cursor to path
        (push cursor path)

        ; show labyrinth
        (show-labyrinth)
        ; line break
        (terpri)
    )


    ; directional functions
    (defun go-up ()
        (print '(go up))
        (setq cursor (list (- (car cursor) 1) (cadr cursor)))
        (update-labyrinth)
    )
    (defun go-down ()
        (print '(go down))
        (setq cursor (list (+ (car cursor) 1) (cadr cursor)))    
        (update-labyrinth)
    )
    (defun go-left ()
        (print '(go left))
        (setq cursor (list (car cursor) (- (cadr cursor) 1)))
        (update-labyrinth)
    )
    (defun go-right ()
        (print '(go right))
        (setq cursor (list (car cursor) (+ (cadr cursor) 1)))
        (update-labyrinth)
    )

    (defun exit-found ()
        (setq exit '(exit found))
    )


    ; move function
    (defun move ()
        ; find entrance
        (find-entrance)
        (setq cursor entrance)
        ; push cursor to path
        (push cursor path)
       
        ; move while exit is null
        (loop while (null exit)
            do 
                (cond
                    ; discover
                    ; go right
                    ( (and (< (cadr cursor) (length labyrinth)) (equal '- (nth (+ (cadr cursor) 1) (nth (car cursor) labyrinth)))) (go-right) )
                    ; go down
                    ( (and (< (car cursor) (length labyrinth)) (equal '- (nth (cadr cursor) (nth (+ (car cursor) 1) labyrinth)))) (go-down) )
                    ; go left
                    ( (and (> (cadr cursor) 0) (equal '- (nth (- (cadr cursor) 1) (nth (car cursor) labyrinth)))) (go-left) )
                    ; go up
                    ( (and (> (car cursor) 0) (equal '- (nth (cadr cursor) (nth (- (car cursor) 1) labyrinth)))) (go-up) )

                    ; rediscover
                    ; go up
                    ( (and (> (car cursor) 0) (equal '+ (nth (cadr cursor) (nth (- (car cursor) 1) labyrinth)))) (go-up) )
                    ; go right
                    ( (and (< (cadr cursor) (length labyrinth)) (equal '+ (nth (+ (cadr cursor) 1) (nth (car cursor) labyrinth)))) (go-right) )
                    ; go down
                    ( (and (< (car cursor) (length labyrinth)) (equal '+ (nth (cadr cursor) (nth (+ (car cursor) 1) labyrinth)))) (go-down) )
                    ; go left
                    ( (and (> (cadr cursor) 0) (equal '+ (nth (- (cadr cursor) 1) (nth (car cursor) labyrinth)))) (go-left) )

                    ; found exit
                    ; go up
                    ( (and (> (car cursor) 0) (equal 'S (nth (cadr cursor) (nth (- (car cursor) 1) labyrinth)))) (go-up) )
                    ; go right
                    ( (and (< (cadr cursor) (length labyrinth)) (equal 'S (nth (+ (cadr cursor) 1) (nth (car cursor) labyrinth)))) (go-right) )
                    ; go down
                    ( (and (< (car cursor) (length labyrinth)) (equal 'S (nth (cadr cursor) (nth (+ (car cursor) 1) labyrinth)))) (go-down) )
                    ; go left
                    ( (and (> (cadr cursor) 0) (equal 'S (nth (- (cadr cursor) 1) (nth (car cursor) labyrinth)))) (go-left) )

                    ( T (setq exit '(game over)) )
                )
        )
        (print exit)
        (print '(path))
        (prin1 path)
    )


    ; call move function
    (move)

    ; output data
    (print '(entrance))
    (prin1 entrance)
    
)

; test find-path function
(print '(--- find-path ---))
(find-path labyrinth)
(terpri)

; ########## ########## ########## ########## ##########