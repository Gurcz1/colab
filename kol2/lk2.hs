abs::Float->Float
abs x=if x<0 then (-x) else x

min::Float->Float->Float
min a b = if a<b then a else b

abs2 x
 |x<0 =(-x)
 |otherwise =x

min2 a b
 |a<b =a
 |otherwise = b

sgn:: Float->Float
sgn x = if x>0 then 1 
else if x==0 then 0 
else (-1)

sgn2 x
 |x>0 = 1
 |x==0 = 0
 |otherwise = (-1)

--funkcja albo_albo (dopasowanie do wzorca)
albo_albo1::(Bool,Bool)->Bool
albo_albo1 (p,q)= case (p,q) of (True,True)->False
				(True,False)->True
				(False,True)->True
				(False,False)->False	

albo_albo2::(Bool,Bool)->Bool
albo_albo2 (p,q) = if p==q then False else True

albo_albo3 (p,q)
 |p==q = False
 |otherwise = True

row::(Bool,Bool)->Bool
row (p,q) = case (p,q) of (True,True)->True
			  (True,False)->False
			  (False,True)->False
			  (False,False)->True	

row2::(Bool,Bool)->Bool
row2 (p,q) = if p==q then True else False

row3 (p,q)
 |p==q = True
 |otherwise = False

--Błąd
--row4 (p,q)::(Bool,Bool)->Bool
--row4 (p,q) = (p && q) || (not p && not q)

--Ord - klasa typów dla których zdefinowane jest porównanie
--compare - porównuje na argumenty i zwraca wartość LT,GT,EQ przy pomocy strażników

compare::Ord a=>a->a->Ordering
compare x y
 |x>y=GT
 |x<y=LT
 |otherwise=EQ