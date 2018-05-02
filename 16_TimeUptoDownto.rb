# con time es desde 0 hasta el numero indicado menos 1
# en este caso i tomara valores de 0 a 9
10.times do |i|
	print "#{i}, "
end 
puts ""
# se puede ejecutar incluso sin variable iteradora
4.times do 
	print "me ejecute, "
end 
puts ""

# con upto(hasta que llegas a) indicamos el numero de partida y en el final
1.upto(10) do |i|
	print "#{i}, "
end
puts "" 

# downto en el inverso de upto, partimos de un numero superior a uno inferior
10.downto(1) do |i|
	print "#{i}, "
end
puts "" 
