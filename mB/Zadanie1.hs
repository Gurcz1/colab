silnia :: Integer->Integer
silnia n = if(n==1||n==0)then 1 else n*silnia(n-1)
main = do 
print("Podaj n =")
n <-readLn
let wynik = silnia n 
print(wynik)