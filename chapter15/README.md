# 15.9 Exercise

```hs
data Optional a =
    Nada
  | Only a
  deriving (Eq, Show)

instance Monoid a => Monoid (Optional a) where
mempty = undefined
mappend = undefined
```

