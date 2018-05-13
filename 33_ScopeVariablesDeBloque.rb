def hola
    yield
end

nombre = "Mundo"
# El bloque recibe las variables locales de donde se esta ejecutando en este
# caso recibe la variable local "nombre"
hola { puts "Hola #{nombre}" }

hola do
    nombre = "Juan"
    puts "Hola #{nombre}"
end
 # Los cambios que se le realizen a una variable dentro de un bloque se mantienen
 # incluso fuera de dicho bloque
puts nombre

# Tambien se pueden definir variables locales dentro de los bloques
# A la izquierda del ";" estan los argumentos y a la derecha las variables locales
# Ejemplo: hola do |argumento1, argumento2 ; local1, local2|
hola do |;nombre|
    nombre = "Andres"
    puts "Hola #{nombre}"
end
# el valor de nombre no fue afectado ya que lo que se modifico fuen una variable
# local llamada de la misma forma
puts nombre
