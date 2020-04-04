import Data.List

messyMain :: IO()
messyMain = do
  print "Who is the email for?"
  recipient <- getLine
  print "What is the Title?"
  title <- getLine
  print "Aho is the Author?"
  author <- getLine
  print ("Dear " ++ recipient ++ ",\n" ++
        "Thanks for buying" ++ title ++ "\nthanks, \n" ++ author)
toPart recipient = "Dear" ++ recipient ++ ",\n"

calcChange owed given = if change >0
  then change
  else 0
  where
    change = given - owed

sumSquareOrSquareSum x y = if sumSquare > squareSum
  then sumSquare
  else squareSum
  where sumSquare = x^2 + y^2
        squareSum = (x+y)^2

-- 3.2

x = 1
counter a = do
  let x = a
  1

names = [("Ian", "Curtis"),
         ("Will", "Kurt"),
         ("Peter", "Hook"),
         ("Stephen", "Morris")]

compareLastNames name1 name2 = if lastName1 > lastName2
                               then GT
                               else if lastName1 < lastName2
                                    then LT
                                    else EQ
  where
    lastName1 = snd name1
    lastName2 = snd name2
