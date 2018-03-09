# The Last Digit

For a given list `[x1, x2, x3, ..., xn]` compute the last (decimal) digit of `x1 ^ (x2 ^ (x3 ^ (... ^ xn)))`.

```
lastDigit [3, 4, 2] == 1
because 3 ^ (4 ^ 2) = 3 ^ 16 = 43046721.
```

Beware: powers grow incredibly fast. For example, `9 ^ (9 ^ 9)` has more than 369 millions of digits. lastDigit has to deal with such numbers efficiently.

Corner cases: we assume that `0 ^ 0 = 1` and that lastDigit of an empty list equals to `1`.

## Test Data aka Examples:

```
getLastDigit([]                             1)
getLastDigit([0,0]                          1) -- 0 ^ 0
getLastDigit([0,0,0]                        0) -- 0^(0 ^ 0) = 0^1 = 0
getLastDigit([1,2]                          1)
getLastDigit([3,4,5]                        1)
getLastDigit([4,3,6]                        4)
getLastDigit([7,6,21]                       1)
getLastDigit([12,30,21]                     6)
getLastDigit([2,2,2,0]                      4)
getLastDigit([937640,767456,981242]         0)
getLastDigit([123232,694022,140249]         6)
getLastDigit([499942,898102,846073]         6)
```