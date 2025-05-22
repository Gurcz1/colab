--nazwa_funkcji::TypParam_1->TypParam_2->TypWyjsciowy
--definicja funkcji wartość bezwzględna abs(float, float)
abs::Float->Float
abs x=if x<0 then (-x) else x

--funkcja na obliczanie minimalnej wartości spośród dwóch argumentów
min::Float->Float->Float
min x y=if x<y then x else y

--funkcja wartość bezwzględna ale zapisana za pomocą "strażników"
abs2::Float->Float
abs2 x
	|x<0 = (-x)
	|otherwise =x

--funkcja minimalna wartość ale zapisana za pomocą "strażników"
min2::Float->Float->Float
min2 x y
	|x<y = x
	|otherwise = y

--funkcja signum która daje 1 gdy x większy od 0, -1 gdy x mniejszy od 0 i 0 gdy x=0
sgn::Float->Float
sgn x=if x>0 then 1 else if x<0 then -1 else 0

--to co wyżej, ale za pomocą "strażników"
sgn2::Float->Float
sgn2 x
	|x>0=1
	|x<0=(-1)
	|otherwise=0

--funkcja albo albo (alternatywa wykluczająca) (XOR)
-- 1 0 = 1
-- 0 1 = 1
-- 0 0 = 0
-- 1 1 = 0
albo_albo1::(Bool,Bool)->Bool
albo_albo1 (a,b)=case (a,b) of  (True,True)->False
				(True,False)->True
				(False,True)->True
				(False,False)->False

albo_albo2::Bool->Bool->Bool
albo_albo2 x y= if x==y then False else True

albo_albo3::Bool->Bool->Bool
albo_albo3 x y
	|x==y=False
	|otherwise=True

albo_albo4::Bool->Bool->Bool
albo_albo4 x y= x&&not y||not x&&y

--implikacja logiczna 
imply::Bool->Bool->Bool
imply x y= if y==False&&x==True then False else True

imply2::Bool->Bool->Bool
imply2 x y
	|x==False&&y==True=False
	|otherwise=True