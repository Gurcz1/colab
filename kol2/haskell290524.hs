--zwięzły sposób definiowania list (list comprehensions)
--ogólna postać to [wyrażenie | kwalifikator ]
--np {x^2 | x<<{1,...,10},x-parzyste}
--w haskellu: [x*x | x<-[1..10],even x]
--[x*x | x<-[1..10], even x] = [4,16,36,64,100] - to po prawo to jest lista którą zwraca list comprehensions
--[2*x | x<-[1..5]] = [2,4,6,8,10]
--[y 'mod' 3 | y<-[5..10]] = [2,0,1,2,0,1]
--[a*b|(a,b)<-[(1,2),(2,3),(3,4)]] = [2,6,12]
--[(x,y)|x<-[1,2],y<-[3,4]] = [(1,3),(1,4),(2,3),(2,4)]
--[x|x<-[1..12],y<-[1..12],x*y==12] = [1,2,3,4,6,12]
--[x|x<-[-5,2,3,-2],x>0] = [2,3]

--Generatory zależne 
--Kolejny generator może zależeć od zmiennej wprowadzonej przez poprzedni generator
--[(x,y)|x<-[1..3],y<-[x..3]] 
--Lista [(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)] wszystkich par liczb (x,y) takich, że x i y są elementami listy [1..3], przy czym y>=x

--przykład
--[x*y|x<-[1..3],y<-[1..x]] = [1,2,4,3,6,9] - wykonywanie działań [(1),(2,4),(3,6,9)] dla x= 1,2 i 3

--[x+y|x<-[1..4],y<-[x..4]] = [2,3,4,5,4,5,6,6,7,8]
--[x-y|x<-[1..3],y<-[1..x]] = [0,1,0,2,1,0] - wykonywanie działań [(0),(1,0),(2,1,0)] dla x=1,2,3

kwadrat_lista::[Int]->[Int]
kwadrat_lista xs = [x*x|x<-xs]

lista_mniejszao1::[Int]->[Int]
lista_mniejszao1 xs = [x-1|x<-xs]

lista_razy5::[Int]->[Int]
lista_razy5 xs = [x*5|x<-xs]

--funkcja mapująca map, tak działa:
--map::(a->b)->[a]->[b]
--map f[]=[]
--map f(x:xs)=(f x):(map f xs)

--razy_dwa x = 2*x
--razy_dwa_lista []=[]
--razy_dwa_lista (x:xs)=(razy_dwa x):(razy_dwa_lista xs)

--razy_dwa_lista xs = map razy_dwa xs

mniejsze_o1 x=x-1
lista_mniejsza_o1::[Int]->[Int]
lista_mniejsza_o1 xs = map mniejsze_o1 xs

kwadrat x=x*x
kwadrat_lista2::[Int]->[Int]
kwadrat_lista2 xs = map kwadrat xs

--funkcja na powiększanie listy o 2 na trzy sposoby
lista_wiekszao2::[Int]->[Int]
wiekszeo2 x=x+2
lista_wiekszao2 []=[]
lista_wiekszao2 (x:xs)=(wiekszeo2 x):(lista_wiekszao2 xs)

lista_wiekszao22::[Int]->[Int]
lista_wiekszao22 xs = [x+2|x<-xs]

lista_wiekszao23::[Int]->[Int]
lista_wiekszao23 xs = map wiekszeo2 xs 
