# Las "Lambdas" son funciones anonimas, es decir una funcion sin nombre

(lambda { puts "Hola Mundo" }).call

# podemos guardar las lambdas en variables
mi_lambda = lambda { puts "¿Como estas?" }
mi_lambda.call

# la palabra lambda puede ser remplazada por ->()
mi_lambda = ->() { puts "¿Como estas? x2" }
mi_lambda.call

# Las Lambdas se comportan igual que los metodos, por lo que podemos definir argumentos
mi_lambda = ->(nombre) { puts "Hola #{nombre}" }
mi_lambda.call("Andres")

# Si imprimimos el tipo de dato de un lambda, podemos ver que dira que es un Proc
# porque las lambdas son un objeto de la clase Proc
puts mi_lambda.class.name
# la diferencia entre un Proc y una lambda es que un Proc se comporta como un bloque
# mientras que la lambda se comporta como un metodo

def test_lambda
    (->() { return "Soy una lambda"}).call()
    puts "Despues de la lambda"
end

def test_proc
    (Proc.new { return "Soy un Proc" }).call()
    puts "Despues del Proc"
end

puts test_lambda
puts test_proc

# En el ejemplo anterior podemos notar que al ejecutar un lambda dentro de un metodo
# este finaliza su ejecucion y sigue la ejecucion posterior a ella, es decir el return
# que este lambda posee no hace que salga del metodo contenedor
# A diferencia el return del proc hace que termine la ejecucion del metodo contenedor
