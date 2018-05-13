=begin
    Para ejecutar el bloque de codigo recibido se utiliza la palabra
    reservada "yield"
    Y utilizamos "block_given?" para condicionar que ejecutara el bloque
    recibido solo si recibe un bloque, de esta manera se evitan errores al
    llamar al metodo y no enviale ningun bloque
=end

def hola
    yield if block_given?
end

hola { puts "Hola Mundo" }

hola do
    puts "Como estas?"
end

hola
# Tambien se puede indicar un bloque como parametro con &, pero es de suma
# importancia de que siempre se defina al final de los parametros comunes
def saludo nombre, &bloque
    print "Hola #{nombre}"
    bloque.call if block_given?
end

saludo ("Andres") { print ", como estas hoy?" }
