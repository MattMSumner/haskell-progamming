A function describes a relationship between two sets, a set of inputs and
outputs.

# Combinators

1. λx.xxx - YES
2. λxy.zx - NO
3. λxyz.xy(zx) - YES
4. λxyz.xy(zxy) - YES
5. λxy.xy(zxy) - NO

# Normal form or diverge?

1. λx.xxx - Normal
2. (λz.zz)(λy.yy) - Diverge
3. (λx.xxx)z - Normal

# Beta reduce

1. (λabc.cba)zz(λwv.w) - z
2. (λx.λy.xyy)(λa.a)b - bb
3. (λy.y)(λx.xx)(λz.zq) - qq
4. (λz.z)(λz.zz)(λz.zy) - yy
5. (λx.λy.xyy)(λy.y)y - yy
6. (λa.aa)(λb.ba)c - aac
7. (λxyz.xz(yz))(λx.z)(λx.a) - λz.za - λz1.za
