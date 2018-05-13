class Usuario
    attr_accessor :nombre

    def saludar
        yield(@nombre)
    end
    def saludar2
        saludo = yield(@nombre)
        puts saludo
    end
end

user = Usuario.new

user.nombre = "Andres"
# los argumentos de un bloque se indican dentro de "||"
user.saludar { |nombre| puts "Hola #{nombre}" }
user.saludar2 { |nombre| "Hello #{nombre}" }

user.saludar2 do |nombre|
    mensaje = "como estas #{nombre}"
    # si colocara "return mensaje" arrojaria error ya que "return" es solo para metodos
    mensaje
end
