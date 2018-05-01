# obtenermos un dato y le quitamos el salto de linea
number = gets.chomp
# convertimos el dato a entero ya que gets obtiene strings
number = number.to_i
# obtenemos el mod
residuo = number % 2

if residuo == 0
	puts "#{number} es par"
else
	puts "#{number} es impar"
end

=begin
	Jerarquia, Prioridad de operaciones
	1. **
	2. * / 	%
	3. + -
=end

