
puts "10 > 4 -->  #{10 > 4}"
puts "10 >= 4 -->  #{10 >= 4}"
puts "10 < 4 -->  #{10 < 4}"
puts "10 <= 4 -->  #{10 <= 4}"
puts "10 != 4 -->  #{10 != 4}"
puts "10 == 4 -->  #{10 == 4}"
# retorna 0 si son iguales 
puts "10 <=> 10  -->  #{10 <=> 10}"
# retorna 1 si el primero es mayor
puts "10 <=> 4  -->  #{10 <=> 4}"
# retorna -1 si el primero es menor
puts "4 <=> 10  -->  #{4 <=> 10}"

puts "hola" == "hola"
# es true porque no evalua el tipo
puts "1 == 1.0  -->  #{1 == 1.0}"
# es false porque evalua tanto el valor como tipo
puts "1.eql?(1.0)  -->  #{1.eql?(1.0)}"

puts "hola".eql?("hola") # es true porque tienen el mismo valor y tipo
puts "hola".equal?("hola") # es false porque evalua las ids 
puts "hola".object_id # devuelve el id de cada token

cadena = "hola"
puts cadena.equal?(cadena)
