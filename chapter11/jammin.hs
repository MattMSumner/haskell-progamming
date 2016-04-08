module Jammin where
import Data.List

data Fruit =
    Peach
  | Plum
  | Apple
  | Blackberry deriving (Eq, Show, Ord)

data JamJars =
  Jam { fruit :: Fruit, jars :: Int }
  deriving (Eq, Show, Ord)

row1 = Jam Apple 10
row2 = Jam Apple 5
row3 = Jam Plum 200
row4 = Jam Peach 1
row5 = Jam Blackberry 7
row6 = Jam Blackberry 7
allJam = [row1, row2, row3, row4, row5, row6]

allJars :: [JamJars] -> Int
allJars = sum . map jars

maxJar :: JamJars -> JamJars -> JamJars
maxJar x y = if (jars x) > (jars y) then x else y

mostRow :: [JamJars] -> JamJars
mostRow = foldl1 maxJar

compareKind (Jam k _) (Jam k' _) = compare k k'

sortJars :: [JamJars] -> [JamJars]
sortJars = sortBy compareKind

sameFruit :: JamJars -> JamJars -> Bool
sameFruit (Jam x _) (Jam y _) = x == y

groupJam :: [JamJars] -> [[JamJars]]
groupJam = groupBy sameFruit
