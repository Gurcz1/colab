suma :: Integer -> Integer
suma n = if(n==0) then 0 else n + suma(n-1)
main = do 
print("Podaj n =")
n<-readLn
let wynik = suma n
print(wynik)