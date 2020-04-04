ifEven f x = if x `mod` 2 == 0
             then f x
             else x

genIfXEven f = (\x -> ifEven f x)
ifEvenDouble = genIfXEven (\x -> x * 2)
