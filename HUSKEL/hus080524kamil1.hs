row_log::Bool->Bool->Bool
row_log p q = if p==q then True else False

row_log_guard::Bool->Bool->Bool
row_log_guard p q 
 |p==q =True
 |otherwise =False

first::(a,b,c)->a
first(x,_,_)=x
second::(a,b,c)->b
second(_,y,_)=y
third::(a,b,c)->c
third(_,_,z)=z

sprawdz::Integer->String
sprawdz x
 | x<0 ="Liczba mniejsza od 0"
 | x>10 ="Liczba wieksza od 10"
 | otherwise ="Liczba w przedziale 0 do 10"

compare::Ord a => a -> a -> Ordering
compare x y 
 | x<y =LT
 | x>y =GT
 | otherwise =EQ

pierwiastki::Float->Float->Float->String
pierwiastki a b c
 | b*b-4*a*c > 0 ="2 rozwiazania"
 | b*b-4*a*c == 0 ="1 rozwiazania"
 | b*b-4*a*c < 0 ="brak rozwiazania"

