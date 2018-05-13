=begin
    A diferencia de casi todo en Ruby, un bloque no es un objeto, es parte de
    la sintaxis de definicion de un metodo
    Un bloque solo puede ser definido cuando se envia un metodo, porque esa
    es su funcion, simple y sencillamente no es un objeto como tal
=end

def hola &block
    puts block.class.name
    block.call
end
hola { puts "Hola" }
=begin
    En lo anterior podemos acceder al metodo "call" del bloque (el cual NO es
    un objeto), porque en realidad no es un bloque, al definirlo con un "&"
    al inicio estamos indicando que es un "Proc" y no un bloque.

    Las diferencias entre un "Proc" y un "Block" son las siguentes:
        -> Los bloques no son objetos pero los Proc si
        -> Los Proc pueden ser almacenados como variables y pasados como
            argumentos en metodos

    Un metodos puede recibir varios Proc, pero solamente un Block
    Se recomienda utilizar bloques antes que los proc (a menos que se necesiten)
    en los metodos ya que los bloques son mucho mas rapido de ejecutar
=end
def saludo proc1, proc2
    proc1.call
    proc2.call
end
 proc1 = Proc.new { puts "Soy proc1" }
 proc2 = Proc.new { puts "Soy proc2" }

 saludo(proc1, proc2)
