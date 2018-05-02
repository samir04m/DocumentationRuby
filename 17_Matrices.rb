# una matriz se puede declarar asi, como un arreglo bidimensional
matriz = [[1,2,3],[4,5,6]]
# Pero tambien se puede crear un objeto Matriz
# de esta forma la valida para que pueda realizar operaciones y metodos de matriz
# se debe importar la clase matriz
require 'matrix'
matriz = Matrix[[1,2,3],[4,5,6],[7,8,9]]

# con el ciclo each recorremos la matrix
matriz.each do |i|
	print "#{i}, "
end
puts ""

# tambien con el ciclo each podemos recorrer la diagonal
matriz.each(:diagonal) do |i|
	print "#{i}, "
end
puts ""

# recorrer los elemntos que estan por encima de la diagonal
matriz.each(:strict_upper) do |i|
	print "#{i}, "
end
puts ""

# recorrer los elemntos que estan por debajo de la diagonal
matriz.each(:strict_lower) do |i|
	print "#{i}, "
end
puts ""

# verificar que una matriz sea diagonal
matriz = Matrix[[1,0,0],
				[0,2,0],
				[0,0,3]]
puts "Es diagonal --> #{matriz.diagonal?}"