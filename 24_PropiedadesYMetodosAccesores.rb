
class Tutor
	def initialize nombre
		@nombre = nombre
	end

	# el metodo get se hace de esta forma en Ruby
	def nombre
		@nombre
	end

	# el metodo set se hace de esta forma en Ruby
	def nombre=(nombre)
		@nombre= nombre
	end

	# Los metodos get y set anteriores se pueden omitit con lo siguente
	attr_accessor :nombre 	# define tanto el get como el set
	attr_reader :nombre 	# define solo el get
	attr_writer :nombre 	# define solo el set

end

tutor = Tutor.new("Juan")

puts tutor.nombre

# Parecera que se esta igualando al atributo o propiedad directamente, 
# 	pero en realidad esta llamando al metodo set
tutor.nombre = "Jorge"
puts tutor.nombre