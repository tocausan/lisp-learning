# LISP

[![Status](https://img.shields.io/badge/Status-On_going-yellow.svg)]() 

## CLISP
- run file      clisp [file]
- exit cli 		(cl-user::quit)

## List manipulating functions
- car
    - it takes a list as argument and returns its first element
- cdr
    - it takes a list as arguments and returns a list without the first element
- cons
    - it takes two arguments, an element and a list and returns a list with the element inserted at the first place
- list
    - it takes any number of arguments and returns a list with the arguments as member element of the list
- append
    - it merges two or more list into one
- last
    - it takes a list and returns a list containing the last element
- member
    - it takes two arguments of which the second must be a list, if the first argument is a member of the second ergument, and then it returns the remainder of the list beginning with the first argument
- reverse
    - it takes a list and returns a list with the top elements in reverse order

## Predicates
- atom
    - it takes one argument and returns T if the argument is an atom or NIL if otherwise
- equal
    - it takes two arguments and returns T if they are structurally equal or NIL otherwise
- eq
    - it takes two arguments and returns T if they are same identical objects, sharing
- eql
- evenp
- oddp
- zerop
- null
- listp
- greaterp
- lessp
- numberp
- symbolp
- integerp
- rationalp
- floatp
- realp
- complexp
- characterp
- stringp
- arrayp
- packagep

## Input / Output
- terpri
    - add output stream (line break)

- read
    - input stream (user interaction)


## Set functions
- set
```lisp
(set (quote foo) (list 1 2 3))  ;foo => (1 2 3)
(1 2 3)

(set 'foo '(1 2 3))             ;foo => (1 2 3) same function, simpler expression
(1 2 3)
```

- setq
```lisp
(setq foo '(1 2 3))             ;foo => (1 2 3) similar function, different syntax
(1 2 3)
```
- setf
```lisp
(setf foo '(1 2 3))             ;foo => (1 2 3) more capable function
(1 2 3)

foo                             ;foo => (1 2 3) as defined above
(1 2 3)

(car foo)                       ;the first item in foo is 1
1

(setf (car foo) 4)              ;set or setq will fail since (car foo) is not a symbol
4

foo                             ;the fist item in foo was set to 4 by setf
(4 2 3)
```




## Source
- [tutorialspoint](http://www.tutorialspoint.com/lisp/)
- [learnxinyminutes](https://learnxinyminutes.com/docs/common-lisp/)
- [hku](http://i.cs.hku.hk/~kpchan/cs23270/)