myLength [] = 0
myLength xs = 1 + myLength ((\(_:xs) -> xs) xs)

myTake _ [] = []
myTake 0 _ = []
myTake n (x: xs) = x:rest
  where rest = myTake (n - 1) xs

myCycle (first:rest) = first:myCycle (rest ++ [first])

ackermann 0 n = n + 1
ackermann m 0 = ackermann (m-1) 1
ackermann m n = ackermann (m-1) (ackermann m (n-1))

collatz 1 = 1
collatz n = if n `mod` 2 == 0
            then 1 + collatz(n `div` 2)
            else 1 + collatz(n * 3 + 1)


myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fastFib n1 n2 0 = n2
fastFib 1 1 counter = fastFib 1 2 (counter-3)
fastFib n1 n2 counter = fastFib (n2) (n1 + n2) (counter-1)
