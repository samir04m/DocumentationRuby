# Concatenacion
nombre = "juan"
puts "Hola " + nombre

# Interpolacion
puts "Hola #{ nombre }"
# poner en mayusculas
puts "Hola #{ nombre.upcase }"
# Poner en minusculas
puts "Hola #{ nombre.downcase }"
# Poner la primera en mayuscula
puts "Hola #{ nombre.capitalize }"
# Realizar operaciones dentro de un puts
puts "20 + 20 = #{ 20 + 20 }"

# Con comilla doble indentifica los saltos de linea y tabulaciones
puts "Hola \n \n \n \t Mundo"
# Con comilla simple no
puts 'Hola \n \n \n \t Mundo'

# Conversion de string a float
puts "2".to_f
# Conversion de string a entero
puts "2".to_i
puts "1abs".to_i 
puts "ab2cd".to_i
# Conversion de entero a string
puts 1.to_s

# Ver los metodos del objeto string
# puts "".methods