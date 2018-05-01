
print "Ingresa tu calificacion entre (1-10): "
calificacion = gets.chomp.to_i


=begin
case calificacion
	when 10,9
		puts "Exelente"
	when 8,7
		puts "Puedes Mejorar"
	when 6,5
		puts "Puede ser aun mejor"
	else 
		puts "Reprobastes"
end
=end

puts case calificacion
	when 10,9
		"Exelente"
	when 8,7
		"Puedes Mejorar"
	when 6,5
		"Puede ser aun mejor"
	else 
		"Reprobastes"
end

