# Homework 13


1. Imagine you get the following trace
0,2,4,6,8,10,12
from your program (which simply adds 2 to the previous value.)
Write out the constraints for this trace, in terms of i, j.

| Step | Amount | Total |
| - | - | - |
| 0 | 0 | 0 |
| 1 | 2 | 2 |
| 2 | 4 | 6 |
| 3 | 6 | 12 |
| 4 | 8 | 20 |
| 5 | 10 | 30 |
| 6 | 12 | 42 |


A(0,2) = 0
A(6,2) = 42
∀ 1 >= i <= 6 : A(i,2) − A(i,1) − A(i−1,2) = 0

--- 

2. Polynomial practice
for p(x) = x^3 − 5x^2 − 4x + 20
a) find an integer root a , i.e. (clue < 7)
b) write this in terms of a lower degree polynomial.

What are the degrees of and ?
Note we are doing this over the real numbers, for zkps we would use a finite field

a.

- x = 2: p(2) = 2^3 - 5 * 2^2 - 4 * 2 + 20 = 0
- x = 5: p(5) = 5^3 - 5 * 5^2 - 4 * 5 + 20 = 0

b. 

- p(x) = (x-2)*(x^2 - 3x - 10)
- p(x) = (x-5)*(x^2 - 4)

Theese are 2th deggre polynomials.
