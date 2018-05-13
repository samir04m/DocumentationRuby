=begin
    Un Bloque es un conjunto de sentencias agrupadas
    se pueden definir con "do end" o "{ }"
=end

# el ciclo each emplea un bloque, que recibe un parametro number
[1,2,3,4,5,6].each do |number|
    print "#{number}, "
end
p ""
# Lo anterior tambien se puede reescribir como
[1,2,3,4,5,6].each { |number| print "#{number}, " }
# Cabe aclarar que se usan con llaves cuando la sentencia dentro del bloque
# solo requiere una linea de codigo, si es mas que eso se usa el "do end"
puts ""
# los bloques retornan valores en este caso si se cumple  que "number%2!=0"
# retorna "true" de lo contrario "false" u no lo incluiria en el arreglo "impares"
impares  = [1,2,3,4,5,6].select do |number|
    number % 2 != 0
end
puts "Los impares son #{impares}"

# Los bloques tambien pueden recibir 2 parametros
['Juan','Jose','Ana','Lorem'].each_with_index do |name, index|
    puts "#{index} - #{name}"
end
