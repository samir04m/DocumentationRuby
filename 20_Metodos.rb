=begin
	En Ruby no es necesario que los metodos lleven parentesis
	tampoco es necesario que se le coloque el return, porque por defecto
	siempre retornan lo que este en la ultima linea antes de cerrar el metodo	

=end

def saludar nombre
	# a menos que nombre sea un string, no retornara 0
	return 0 unless nombre.is_a? String
	"Hola #{nombre}"
end

puts saludar "Mundo"

puts saludar 1
