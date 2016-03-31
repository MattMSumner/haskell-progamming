fibs = takeWhile (\x -> x < 100) $ 1 : scanl (+) 1 fibs
fibsN x = fibs !! x

myFactorial = scanl (*) 1 [1..]

someWords :: [a] -> [b] -> [(a, b, a)]
someWords as bs = [(x, y, z) | x <- as, y <- bs, z <- as]
