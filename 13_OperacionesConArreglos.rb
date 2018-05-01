
valores = [4, 5, 2, 1, 6, 3, 1]

# para ver los elementos separados por un - (esto hace un join)
puts "valores * ' - '  -->  #{valores * " - "}"
# un join convierte un arreglo en una cadena string
puts "valores.join('')  -->  #{valores.join("")}"
# para comprobar el tipo de dato
puts "valores.join('').class.name  -->  #{valores.join("").class.name}"

# join recibe como parametro un string que separa los elementos del array
puts "valores.join(', ')  -->  #{valores.join(", ")}"
# Lo anterior tambien se puede hacer asi
puts "valores * ', '  -->  #{valores * ", "}"

# Para ordenar un arreglo de menor a mayor
print "De menor a mayor  -->  #{valores.sort} \n"
# Para ordenar un arreglo de mayor a menor
print "De mayor a menor  -->  #{valores.sort.reverse} \n"

# Invertir los elemntos en un arreglo
print "valores.reverse  -->  #{valores.reverse} \n"
# Vefificar si un elemento esta en el arreglo (retorna un booleano)
puts "valores.include?(4)  -->   #{valores.include?(4)}"

puts "Numero de elementos: #{valores.length}"

puts "Primer elemento: #{valores.first}"

puts "Ultimo elemento: #{valores.last}"

# uniq retorna la lista con valores unicos
puts "Sin elementos repetidos: #{valores.uniq}"
# retorna un elemento de arreglo de manera random o aleatoria
puts "Elemento aleatorio: #{valores.sample}"

puts "Valor minimo #{valores.min}"
puts "Valor maximo #{valores.max}"



