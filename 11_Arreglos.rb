
array = Array.new()

array[0] = 1
array[1] = "hola"

# Definicion de elementos sin comas
vocales = %w[a e i o z]

# Insercion de un nuevo elemento
vocales << 'u'

# Eliminacion de un elemento
vocales.delete('z')

puts "Estas son las vocales #{vocales}"

numeros = [4, 5, 1, 3, 2,]

puts "Lista ordenada #{numeros.sort}"

