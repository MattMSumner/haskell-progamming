import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime
            (fromGregorian 1911 5 1)
            (secondsToDiffTime 34123))
  , DbString "Hello, world!"
  , DbDate (UTCTime
            (fromGregorian 1921 5 1)
            (secondsToDiffTime 34123))
  ]

addIfDate :: DatabaseItem -> [UTCTime] -> [UTCTime]
addIfDate (DbDate y) xs = xs ++ [y]
addIfDate _ xs = xs

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr addIfDate []

addIfInt :: DatabaseItem -> [Integer] -> [Integer]
addIfInt (DbNumber y) xs = xs ++ [y]
addIfInt _ xs = xs

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr addIfInt []

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = maximum . filterDbDate

sumDb :: [DatabaseItem] -> Integer
sumDb = sum . filterDbNumber

avgDb :: [DatabaseItem] -> Double
avgDb xs = total / count
          where total = fromIntegral $ sumDb xs
                count = fromIntegral $ length $ filterDbNumber xs
