data Expr =
    Number Int
  | Add Expr Expr
  | Minus Expr
  | Mult Expr Expr
  | Divide Expr Expr

type Number = Int
type Add = (Expr, Expr) type Minus = Expr
type Mult = (Expr, Expr) type Divide = (Expr, Expr)
type Expr =
  Either Number
    (Either Add (Either Minus
      (Either Mult Divide)))
