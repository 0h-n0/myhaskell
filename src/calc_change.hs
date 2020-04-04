calcChange owed given = if given - owed > 0
  then given - owed
  else 0

calcChangeV2 owed given = if change > 0
  then change
  else 0
  where
    change = given - owed

doublePlusTwo x = doubleX + 2
  where doubleX = x * 2

inc x = x + 1
double x = x * 2
square x = x ** 2

q23 n = if n == 0
        then 0
        else if n `mod` 2 == 0
             then n - 2
             else 3 * n + 1
