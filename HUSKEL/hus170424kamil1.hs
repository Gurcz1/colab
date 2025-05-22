kwadrat::Num a => a -> a
kwadrat x=x*x

razy_dwa :: Num a=> a -> a
razy_dwa x = 2*x

sum_kw::Num a => a -> a -> a
sum_kw x y = kwadrat x 
	   + kwadrat y



ob_kuli r = 4/3*pi*r*r*r

ob_kuli1 r = a * pi * sz
	     where a = 4/3
		   sz = r*r*r

ob_kuli2 r = a*pi*(sz r)
	     where a = 4/3
		   sz r = r*r*r	


	
ob_kuli3 r = let a =4/3
		 sz = r*r*r
	     in a*pi*sz


pole_kola r = pi*r*r
pole_kola1 r = pi*k where k=r*r
pole_kola2 r = let k=r*r
	       in pi*k 

pole_prostopadlo a b h = 2*a*b + 2*a*h + 2*b*h
pole_prostopadlo1 a b h = x+y+z
			  where x=2*a*b
				y=2*a*h
				z=2*b*h

pole_prostopadlo2 a b h = let x=2*a*b
			      y=2*a*h
			      z=2*b*h
			  in x+y+z

			