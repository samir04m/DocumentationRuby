=begin
    Los tipos de visibilidad o acceso de metodos, en ingles se conoce como "Scope"
    Publico -> Public
         Por defecto todos los metodos que creamos en un clase toman este nivel de acceso
         Estos metodos se pueden llamar desde cualquier parte de la clase
         tanto dentro como fuera de ella
    Privado -> Private
        Solo se pueden llamar dentro de la clase
        En Ruby a diferencia de otros lenguajes, una clase hija SI hereda los
        metodos privados de la clase padre
    Protegidos -> Protected
        Un metodos protected se puede llamar desde otras clases siempre y cuando
        estas sean del mismo tipo.
        La clases hijas tambien pueden llamar a los metodos privados del padre
=end

class Humano

    def publico
        puts "Soy publico"
    end

    # el private o protected indica que todos los metodos que esten debajo seran
    # de ese tipo, hasta que se indique otro tipo de acceso diferente,
    # no es necesario que los metodos esten identados, solo es por facil lectura
    private
        def privado
            puts "Soy privado"
        end

    protected
        def protegido
            puts "Soy protegido"
        end
end

class Tutor < Humano
    def llamar_a_privado
        privado
    end

    def llamar_a_protegido
        protegido
    end
end

puts "Para Tutor"
tutor = Tutor.new
tutor.publico
# "tutor.privado" asi no se puede llamar al metodo porque estamos fuera de la clase
# esta seria la forma de acceder al metodo privado
tutor.llamar_a_privado
# de la misma forma ocurre con los metodos protected
tutor.llamar_a_protegido

class Alien
    def llamar_a_publico_humano
        @humano = Humano.new
        @humano.publico
    end

    def llamar_a_protegido_humano
        @humano = Humano.new
        @humano.protegido
    end
end
puts "Para Alien"
alien = Alien.new
alien.llamar_a_publico_humano
# alien.llamar_a_protegido_humano este metodo no puede ser ejecutado porque alien
# no es de tipo Humano
puts "tutor es de tipo Humano? : #{tutor.is_a?(Humano)}"
puts "alien es de tipo Humano? : #{alien.is_a?(Humano)}"
