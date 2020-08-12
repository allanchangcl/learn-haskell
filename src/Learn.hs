doubleMe x = x + x 

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

hypotenuse a b = sqrt (a ^ 2 + b ^ 2)

multiplication = [[x*y | y <- [1..5]] | x <- [1..5]]
