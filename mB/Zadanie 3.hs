potega :: Integer -> (Integer->Integer)
potega a b = if b==1 || b==0 || a==0 || a==1 then 1 else (b-1)*a
main=do
print("Podaj a =")
a <-readLn
print("Podaj b =")
b <-readLn
let wynik = potega(a,b)
print(wynik)