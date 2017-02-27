# Functional programming

## Functional expression
- F = (f(n) (f(n-1) ... ) )

## Constructor functions
- []
    - empty sequence
- O
    - add in sequence head
- •
    - add in sequence tail

## Selector functions
- first
    - first element
- beginning
    - sequence without its last element
- last
    - last element
- end
    - sequence without its first element
- empty
    - TRUE if empty sequence, otherwise FALSE
- not empty
    - FALSE if empty sequence, otherwise TRUE


```
E = {e, ..., e}

constructeur
soit F la fonction -> valeur:
F(valeur, []): valeur
F(valeur, e O D): f(e, F(valeur, D))
```