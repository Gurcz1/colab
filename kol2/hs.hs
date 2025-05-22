compare::Ord a=>a->a->Ordering
compare x y
 |x>y=GT
 |x<y=LT
 |otherwise=EQ




delta:: Float->Float->Float->String
delta a b c
|b*b-4*a*c>0="Dwa rozwiazania"
|b*b-4*a*c=0="Jedno Rozwiazanie"
|otherwise="Zero"