--[] :: [a] - typ listy której elementy mają typ a
--[2,5,3,2] :: [Int] - lista której elementy mają typ Int
--[[], [2], [6,7]] :: [[Int]] - lista której elementy mają typ listy której elementy mają typ Int

--kwadrat_lista rekurencyjnie

kwadrat x=x*x
kwadrat_lista::[Int]->[Int]
kwadrat_lista []=[] --kwadrat listy dla listy pustej to lista pusta
kwadrat_lista (x:t)=(kwadrat x):(kwadrat_lista t) --dla listy której głową jest x a ogonem t to jest lista której głową jest kwadrat od x a ogonem jest kwadrat listy od t

--lista_mniejsza_o1 ([4,3]=[3,2])

mniejsze_o1 x=x-1
lista_mniejsza_o1::[Int]->[Int]
lista_mniejsza_o1 []=[]
lista_mniejsza_o1 (x:t)=(mniejsze_o1 x):(lista_mniejsza_o1 t)

--lista_razy3

razy3 x=x*3
lista_razy3::[Int]->[Int]
lista_razy3 []=[]
lista_razy3 (x:t)=(razy3 x):(lista_razy3 t)

--dlugosc_lista

dlugosc_lista::[Int]->Int
dlugosc_lista []=0
dlugosc_lista (x:t)=1+dlugosc_lista t

--iloczyn_lista

iloczyn_lista::[Int]->Int
iloczyn_lista [x]=x
iloczyn_lista (x:t)=x*iloczyn_lista t

fun::[Int]->Int
fun []=5
fun (x:y)=x-fun y
--obliczanie wyniku aplikacji funkcji fun dla listy [10,7..2]
--fun [10,7,4] = 10-fun[7,4] = 10-(7-fun[4]) = 10-(7-(4-5)) = 2
--[0,1,2]!!1 = 1
--head - zwraca głowę listy
--tail - zwraca ogon listy

--ostatni - wybiera ostatni element listy
--ostatni::[Int]->Int
--ostatni xs = head(reverse xs)

ostatni::[Int]->Int
ostatni xs=xs!!(length xs-1)

usun_ostatni::[Int]->[Int]
usun_ostatni xs=reverse(tail(reverse xs))

konkatenacja::[Int]->[Int]->[Int]
--konkatenacja xs xt = xs++xt
konkatenacja [] a2=a2
konkatenacja (h:t) a2=h:(konkatenacja t a2)
