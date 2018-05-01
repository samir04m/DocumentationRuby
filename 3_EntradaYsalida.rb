# Puts pone un salto de linea al final y puts no

print "Ingresa tu nombre : "
# con la funcions gets obtenemos pedimos al usuarios un datos 
nombre = gets
# con chomp quitamos el ultimo caracter de un string 
# En ese caso es usado para quitar el salto de linea que por defecto coloca gets
nombre = nombre.chomp 

puts "Hola #{nombre}"
# con length se obtiene el numero de caracteres de un string
puts "Tu nombre tiene #{nombre.length} caracteres"

 