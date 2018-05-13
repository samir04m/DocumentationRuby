=begin
    Metodos de clase:
        En otros lenguajes son conocidos como metodos estaticos
        Los distingue de los metodos que le pertenecen al objeto (clase instanceada)
        en que estan antecedidos por "self" (quien es el objeto de la clase)
        otra forma de hacerlo en incluir los metodos dentro de la "class << self"

    Variables de instacia:
        inicia por un @, esta le pertenecen al objeto, y no es posible acceder
        a ellas fuera del objeto mismo.

=end

class IAmObject
    @nombre_clase =  "I am object"

    def self.nombre_clase
        @nombre_clase
    end
    def self.nombre_clase=(nombre_clase)
        @nombre_clase = nombre_clase
    end

    class << self
        def nombre_clase2
            @nombre_clase
        end
        def nombre_clase2=(nombre_clase)
            @nombre_clase = nombre_clase
        end
    end

end
# Para llamar a un metodo de clase no es necesario instancear la clase
puts IAmObject.nombre_clase

IAmObject.nombre_clase = "Nuevo nombre"
puts IAmObject.nombre_clase
