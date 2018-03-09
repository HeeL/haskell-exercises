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
