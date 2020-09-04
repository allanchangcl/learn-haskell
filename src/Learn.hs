doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

hypotenuse a b = sqrt (a ^ 2 + b ^ 2)

multiplication = [[x * y | y <- [1 .. 5]] | x <- [1 .. 5]]

-- car is a tuple
car = ("Honda", "Civic", "200")

-- Special functions that works only for pairs -- tuple
fruits = ("Apple", "orange")

-- fst fruits, 1st element
-- snd fruits, 2nd element

list1 = ["Allan", "May"]

list2 = ["Chang", "Leong"]

-- zip list1 list2

-- puzzle: among the numbers 1 to 8, when does the smaller number have a longer word
numbers = [1 .. 8]

wordings = ["one", "two", "three", "four", "five", "six", "seven", "eight"]

pairs = zip numbers wordings

-- prepare tuple format
format = [(fst p, fst q) | p <- pairs, q <- pairs]

-- filter length word length
filter1 = [(fst p, fst q) | p <- pairs, q <- pairs, length (snd p) > length (snd q)]

-- filter p < q
filter2 = [(fst p, fst q) | p <- pairs, q <- pairs, length (snd p) > length (snd q), fst p < fst q]

-- answer, filter2 = [(3,4),(3,5),(3,6),(4,6),(5,6)]

f :: [Int] -> Int
f ls = head ls + length ls

-- / return a fractional, use div
dividesEvenly :: Int -> Int -> Bool
dividesEvenly x y = (y `div` x) * x == y

-- fibonacci direct recursion
fib 0 = 0
fib 1 = 1
fib n = fib (n -1) + fib (n -2)

increasing :: (Ord a) => [a] -> Bool
increasing xs =
  if xs == []
    then True
    else
      if tail xs == []
        then True
        else
          if head xs <= head (tail xs)
            then increasing (tail xs)
            else False

-- increasing with pattern matching
increasingpattern :: (Ord a) => [a] -> Bool
increasingpattern (x : y : ys) = x <= y && increasing (y : ys)
increasingpattern _ = True

-- takes a string and returns with no "aeiou" vowels
noVowels :: [Char] -> [Char]
noVowels word =
  if word == ""
    then ""
    else
      if head word `elem` "aeiou"
        then noVowels (tail word)
        else (head word) : noVowels (tail word)

noVowelsPattern :: [Char] -> [Char]
noVowelsPattern "" = ""
noVowelsPattern (x : xs) =
  if x `elem` "aeiouAEIOU"
    then noVowelsPattern xs
    else x : noVowelsPattern xs