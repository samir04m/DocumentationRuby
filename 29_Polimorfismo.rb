=begin
    El Polimorfismo es el concepto que en programacion orientada a objetos,
    describe la habilidad de que multiples objetos respondan de maneras distintas
    al mismo mensaje

    En otros lenguajes se usan las interfaces para definir metodos no implementados
    en Ruby no existen las interfaces
=end

class Persona
    def corte
        # Not implemented
    end
end

class Cocinero < Persona
    def corte
        p "Corta un alimento"
    end
end
class Actor < Persona
    def corte
        p "Deja de actuar"
    end
end
class Estilista < Persona
    def corte
        p "Corta el cabello"
    end
end

personas = [Cocinero.new, Actor.new, Estilista.new]

personas.each do |persona|
    persona.corte
end
