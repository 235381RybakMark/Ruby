class Grains
  def self.square(licz)
zier=1   
a=1
 if licz<1 
licz="ArgumentError"
licz
end
 if licz>64 
licz="ArgumentError"
licz
end
if licz>1
	while a<licz
		a=a+1
		zier=zier*2	
	end
	zier
   else
   zier

end
end
def self.total
total=2
d=1
	while d<=63
	d=d+1
	total=total*2
	end
total=total-1
total
end
end
