
valores = %w[4 3 2 1]

suma = 0

valores.each_with_index do |valor, posicion|
	puts "En la posicion #{posicion} esta #{valor}"
	suma += valor.to_i
end

puts "El promedio es #{suma.to_f / valores.length}"

# NOTA: No se recomienda el uso de for en Ruby

