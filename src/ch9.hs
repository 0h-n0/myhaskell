x = map reverse ["dog", "cat", "moose"]
y = map head ["dog", "cat", "moose"]
z = map (take 4) ["pumpkin", "pie", "peanut butter"]

xx = map ("a "++) ["train", "plane", "boat"]
yy = map (^2) [1, 2, 3]

xxx = filter even [1, 2, 3, 4]
zzz = filter (\(x:xs) -> x == 'a') ["apple", "banana", "abocado"]

myFilter test [] = []
myFilter test (x:xs) = if test x
                       then x:myFilter test xs
                       else myFilter test xs

remove test [] = []
remove test (x:xs) = if test x
                     then x:remove test xs
                     else remove test xs
-- remove (\x -> x `mod` 2 == 0) [1, 2, 3, 4, 5]

a = foldl (+) 0 [1 .. 4]

myProduct xs = foldl (*) 1 xs
concatAll xs = foldl (++) "" xs
sumOfSquares xs = foldl (+) 0 (map (^2) xs)

rcons x y = y:x
myReverse xs = foldl rcons [] xs

myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
  where newInit = f init x
