
data Price = Price Integer deriving (Eq, Show)
data Manufacturer = Mini | Mazda | Tata | Dud deriving (Eq, Show)
data Airline = PapuAir | CatapultsR'Us | TakeYourChancesUnited deriving (Eq, Show)
data Size = Size Integer deriving (Eq, Show)
data Vehicle = Car Manufacturer Price | Plane Airline Size deriving (Eq, Show)

dud :: Manufacturer
dud = Dud

myCar :: Vehicle
myCar = Car Mini (Price 14000)

urCar :: Vehicle
urCar = Car Mazda (Price 20000)

clownCar :: Vehicle
clownCar = Car Tata (Price 7000)

doge :: Vehicle
doge = Plane PapuAir (Size 100)

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _ = False

isPlane :: Vehicle -> Bool
isPlane (Plane _ _) = True
isPlane _ = False

areCars :: [Vehicle] -> [Bool]
areCars = map isCar

getManu :: Vehicle -> Maybe Manufacturer
getManu (Car m _) = Just m
getManu _ = Nothing

getManus :: [Vehicle] -> [Manufacturer]
getManus = map (maybe dud id) . filter isManu . map getManu

isManu :: (Maybe Manufacturer) -> Bool
isManu (Just _) = True
isManu Nothing = False
