--cup f10z = \_ -> f10z
cup f10z = \message -> message f10z
aCup = cup 6
coffeeCup = cup 12
getOz aCup = aCup (\f10z -> f10z)
