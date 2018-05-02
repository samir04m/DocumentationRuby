# Los keywords son basicamente argumentos con nombres
# Los parametros se volverian opcionales ya que le definimos un valor por defecto 
# 	aunque se pueden poner parametros obligratorios dejandolos con : y no 
# 	definiendoles valores predeterminados
# Los parametros al tener nombre, deja de importar el orden en que se pasan
# El operador splat de indica con ** doble asterisco
def hola(nombre:,apellido:"No registra",edad:1,**options)
	if edad > 30
		puts "Hola señor #{nombre} #{apellido}"
	elsif edad < 30
		puts "Hola joven #{nombre} #{apellido}"
	end
	puts options[:mensaje]
end

hola(nombre:"Juan",edad:19,mensaje:"Bienvenido")
