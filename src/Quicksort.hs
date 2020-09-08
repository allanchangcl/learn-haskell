-- Quicksort
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x : xs) = quicksort smaller ++ [x] ++ quicksort larger
  where
    smaller = [a | a <- xs, a <= x]
    larger = [b | b <- xs, b > x]