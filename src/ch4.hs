import Data.List

ifEven myFunction x = if even x
                      then myFunction x
                      else x
inc n = n + 1
double n = n * 2
square n = n ^ 2
ifEvenInc n = ifEven inc n
ifEvenDouble n = ifEven double n
ifEvenSquare n = ifEven square n
ifEvenCubed n = ifEven (\x -> x^3) n


names = [("Ian", "Curtis"),
         ("Bernard", "Sumner"),
         ("Peter", "Hook"),
         ("Stephen", "Morris")]

compareLastNames name1 name2 = if lastName1 > lastName2
                               then GT
                               else if lastName1 > lastName2
                                    then LT
                                    else EQ
  where lastName1 = snd name1
        lastName2 = snd name2
