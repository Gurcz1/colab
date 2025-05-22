--równoważność logiczna z if...then...else
eq::Bool->Bool->Bool
eq x y = if x == y then True else False

--równoważność logiczna strażnicy
eq2::Bool->Bool->Bool
eq2 x y 
 |x==y=True
 |otherwise=False


sprawdz::Integer->String
sprawdz x
 |x<0="liczba mniejsza od zera"
 |x>5="liczba wieksza od 5"
 |otherwise="liczba z przedzialu od 0 do 5"

--funkcje wyznaczające pierwszy, drugi i trzeci element trójki uporządkowanej
first::(a,b,c)->a
first(x,_,_)=x

second::(a,b,c)->b
second(_,y,_)=y

third::(a,b,c)->c
third(_,_,z)=z

compare::Ord a=>a->a->Ordering
compare x y
 |x>y=GT
 |x<y=LT
 |otherwise=EQ

-- LISTY
-- : dodaje element (głowę do istniejącej listy)
-- ++ konkantenacja list
-- !! operator indeksowania; wyznacza element listy o podanym numerze (numeracja od 0)
-- .. specyfikacja zasięgu listy 
--PRZYKŁADY
-- (:)::a->[a]->[a]
-- (!!)::[a]->Int->a
-- [1,2,3,4]!!2=>3
-- [[1],[5,6,7],[2]]!!1!!2=>[5,6,7]!!2=>7
-- [1,3..10]=>[1,3,5,7,9]::[Integer]
-- ['a'..'k']=>"abcdefghijk"::[Char]

--(3+4*5:4:[6,[2],3])!!length[2,3,4] = (3+20:4:[6,[2],3])!!length[2,3,4]=
--=(23:4:[6,[2],3])!!length[2,3,4] = (23:[4,6,[2],3])!!length[2,3,4]=
--= [23,4,6,[2],3]!!3 = [2]

--(reverse[5,2,1,7]++tail[2,3])!!head[1,1,3] = ([7,1,2,5]++tail[2,3])!!head[1,1,3]=
--= ([7,1,2,5]++[3])!!head[1,1,3] = ([7,1,2,5,3])!!1 = 1

--(head[2,3,5]:[5,6,[7,8]])!!3 = (2:[5,6,[7,8]])!!3 = ([2,5,6,[7,8]])!!3 =
-- = [7,8]

-- 1:(tail[2,3,7]++reverse[3,4,6]) = 1:([3,7]++[6,4,3]) = 1:[3,7,6,4,3] = [1,3,7,6,4]
