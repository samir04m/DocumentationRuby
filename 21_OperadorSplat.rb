# NOTA: se recomienda que en los metodos con mas de una palabra utilizar
# snake case y no camel case como en otros lenguajes

# no es recomendado pasar un arreglo como parametro
# El operador splat lo que hace es que al metodo se le puede pasar cualquier 
# cantidad de argumentos y los resivira como un arreglo	
def hola_gente(mensaje, *personas)
	personas.each{|persona| puts "#{mensaje} #{persona}"}
end

hola_gente("Hey hola", "Juan", "Pedro")

nombres = ["Andres", "Mario", "Luis"]
# si paso nombres tal cual el metodo resivira un solo argumento tipo array
hola_gente("Hola a", nombres)
# pero si le antecedemos un * el metodo lo tomara como una lista de argumentos
hola_gente("Hola a", *nombres)


