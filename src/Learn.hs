doubleMe x = x + x 

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

hypotenuse a b = sqrt (a ^ 2 + b ^ 2)

multiplication = [[x*y | y <- [1..5]] | x <- [1..5]]

-- car is a tuple
car = ("Honda","Civic","200")

-- Special functions that works only for pairs -- tuple
fruits = ("Apple","orange")
-- fst fruits, 1st element
-- snd fruits, 2nd element

list1 = ["Allan","May"]
list2 = ["Chang","Leong"]
-- zip list1 list2

-- puzzle: among the numbers 1 to 8, when does the smaller number have a longer word

