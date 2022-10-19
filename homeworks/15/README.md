# Homework 15


## Try out Shamir secret sharing

1. Create a polynomial with the secret being the constant term a0, the other a values (a1...a4) can be chosen at random. The polynomial will be of the form
`y(x) = a4 * x^4 + a3 * x^3 + a2 * x^2 + a1 * x + a0`.

Answer: 
```
Secret = a0 = 9
a1 = 4
a2 = -8
a3 = 7
a4 = -3
```
`y(x) = -3x^4 + 7x^3 - 8x^2 + 4x + 9`


2. Calculate the y values for five x values by applying the polynomial, these are the shares.

```python
def f(x):
  return -3 * x**4 + 7 * x ** 3 - 8 * x ** 2 + 4 * x + 9
```

Points:
```
1 9
6 -2631
-1 -13
-2 -135
-3 -507
```


3. Reconstruct the polynomial using those points and an online interpolation calculator
such as https://planetcalc.com/8680/.

![image](https://user-images.githubusercontent.com/13151232/196757230-41d6df93-74ba-4aa5-8cf8-8c5353377b89.png)

