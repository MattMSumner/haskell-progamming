waxOn = x * 5
  where x = y ^ 2
        z = 7
        y = z + 8

waxOn2 =
  let
    x = y ^ 2
    z = 7
    y = z + 8
  in
    x * 5

triple x = x * 3

waxOff x = triple x
