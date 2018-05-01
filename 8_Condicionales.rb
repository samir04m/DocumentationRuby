print "Ingrese un numero: "
numero_uno = gets.chomp.to_i

print "Ingrese otro numero: "
numero_dos = gets.chomp.to_i

=begin
if numero_uno > numero_dos 
	puts "#{numero_uno} es mayor que #{numero_dos}"
end
=end

puts "#{numero_uno} es mayor que #{numero_dos}" if numero_uno > numero_dos 

=begin
 	unless(a menos que) es un if inverso, 
 	NOTA: 	se recomienda no utilizar if anidados
			solo se recomienda si es una sola condicion	
=end

unless numero_uno > numero_dos 
	puts "#{numero_uno} es menor que #{numero_dos}"
end

puts "Se cumple la condicion" unless false