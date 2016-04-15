type Name = String
type Age = Integer

data Person = Person Name Age deriving Show
data PersonInvalid = NameEmpty
                    | AgeTooLow
                    | PersonInvalidUnknown String
                    deriving (Eq, Show)

mkPerson :: Name -> Age -> Either PersonInvalid Person
mkPerson name age
  | name /= "" && age > 0 = Right $ Person name age | name == "" = Left NameEmpty
  | not (age > 0) = Left AgeTooLow
  | otherwise = Left $ PersonInvalidUnknown $
                       "Name was: " ++ show name ++
                       " Age was: " ++ show age

reportPerson :: Either PersonInvalid Person -> IO ()
reportPerson (Left NameEmpty) = putStrLn "Empty Name"
reportPerson (Left AgeTooLow) = putStrLn "Age too Low"
reportPerson (Left (PersonInvalidUnknown s)) = putStrLn $ "Unknown: " ++ (show s)
reportPerson (Right p) = putStrLn $ "YAY! Successfully got a person:" ++ (show p)

gimmePerson :: IO ()
gimmePerson = do
  putStr "Person name: "
  name <- getLine
  putStr "Person age: "
  age <- getLine
  reportPerson $ mkPerson name (read age :: Age)

