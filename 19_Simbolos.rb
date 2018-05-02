# Un simbolo es una cadena(string) imutable, lo que quiere decir 
# que dicha cadena no se puede modificar en tiempo de ejecucion

# El principal beneficio de utilizar un simbolo esta en el performance
cadena1 = "word"
cadena2 = "word"

simbolo1 = :word
simbolo2 = :word
puts "cadena1=#{cadena1.object_id} y cadena2=#{cadena2.object_id} distintos ids"
puts "simbolo1=#{simbolo1.object_id} y simbolo2=#{simbolo2.object_id} mismos ids"
# los simbolos comparten el mismo id porque el simbolo es el mismo
# Ruby verifica si el simbolo existe para no tener dos iguales

=begin
	Cuando utilizar simbolos
	1. Cuando no se necesita modificar le string
	2. Cuando no voy a utilizar metodos de string
	3. Para ser usados como nombres	
	4. En hashes como claves o keys
=end

