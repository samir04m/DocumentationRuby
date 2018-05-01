# Con los rangos podemos hacer lo que conociamos como ciclo for en otros lenguajes

(1..10).each do |n|
	print "#{n}, "
end
puts ""

(2..20).step(2).each do |n|
	print "#{n}, "
end
puts "" 

('a'..'k').each do |l|
	print "#{l}, "
end
puts ""

('letra-a'..'letra-e').each do |l|
	print "#{l}, "
end
puts ""

=begin
 	NOTA: aunque a los rangos se le puede aplicar algunos metodos de arreglos,
	los rangos NO SON ARREGLOS, pero se pueden covertir con en arreglo con 
	el metodo to_a
	Aun rango puede ejecutar metodos como max y min pero no otros como reverse
=end

puts "Rango convertido a array: "+(1..4).to_a * ", "
puts "Tipo: "+(1..4).to_a.class.name

