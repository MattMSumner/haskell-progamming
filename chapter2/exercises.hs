sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple x = x * 3

circleArea r = 3.14 * (r * r)

foo x =
    let y = x * 2
        z = x ^ 2
    in 2 * y * z

question1 = x * 3 + y
  where x = 3
        y = 1000

question2 = x * 5
  where y = 10
        x = 10 * 5 + y

question3 = z / x + y
  where x = 7
        y = negate x
        z = y * 10
