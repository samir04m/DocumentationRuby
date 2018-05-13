=begin
    Variables de clase:
        inicia por doble @@, esta le pertenecen al objeto, pueden ser usadas
        por metodos de clase o metodos del objeto

        Tener en cuenta que al usarlas se permitira que al heredar de esta 
        clase los hijos posean esta misma variable
=end

class Video
    @de_instacia = "Soy de instancia"
    @@de_clase = "Soy de clase"

    def self.de_instacia_desde_mclase
        @de_instacia
    end
    def de_instacia_desde_mobjeto
        @de_instacia
    end

    def self.de_clase_desde_mclase
        @@de_clase
    end
    def de_clase_desde_mobjeto
        @@de_clase
    end
end

p Video.de_instacia_desde_mclase
# este retornara nil porque la variable no fue asignada a partir de la instacia
p Video.new.de_instacia_desde_mobjeto

p Video.de_clase_desde_mclase
p Video.new.de_clase_desde_mobjeto

class Video
    def self.variables
        p @de_instacia
        p @@de_clase
    end
end

class YouTube < Video
    @@de_clase = "de clase (modificada)"
end

p " -> Desde la clase YouTube"
YouTube.variables
p " -> Desde la clase Video"
Video.variables

=begin
    NOTAS:
        -> las variables de clase son las unicas que son heredadas por las clases hijas
        es decir que las variables de instacia no se heredan.

        -> Si se modifica el valor de una variable de clase ya sea en una clase padres
        o en una clase hija, este cambio se vera reflejado en todas las clases

=end
