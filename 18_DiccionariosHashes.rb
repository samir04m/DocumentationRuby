
estudiante = {
	"nombre" => "Andres",
	"edad" 	 => 18,
	"materias" => ["Calculo", "Ingles", "Fisica"],
	# podemos poner "simbolos" como claves
	:promedio => 340,
	# incluso se pude hacer con esta sintaxis
	semestre: 1,
}

# podemos definir un valor defecto para cuando no se encuntre la clave o dato
estudiante.default = "No encontrado"

puts "Materias #{estudiante["materias"]}"
puts "Promedio #{estudiante[:promedio]}"
puts "Semestre #{estudiante[:semestre]} \n\n"

estudiante.each do |clave, valor|
	puts "En #{clave} esta #{valor}"
end

# Operacione con hashes

# Obtener el tamaño del hash
puts "Numero de elementos: #{estudiante.size}"
# de igual forma se puede hacer con el metodo length

# verificar si existe la clave dentro del hash
puts "Existe la clave apellido: #{estudiante.has_key?(:apellido)}"

# verificar si el valor existe dentro del hash
puts "Existe el valor 340: #{estudiante.has_value?(340)}"

# obtener todas la claves, esto retorna un arreglo solo con las claves
puts "Claves: #{estudiante.keys}"

# obtener todos los valores, de igual forma retorna un array de valores
puts "Valores: #{estudiante.values}"

# para limpiar todo el hash (dejarlo vacio) -> estudiante.clear

# eliminar un elemnto en espesifico
estudiante.delete(:semestre)

# para saber si el hash esta vacio
puts "Esta vacio? -> #{estudiante.empty?}"

# Obtener la clave que le pertenece a un valor especifico
puts "El valor 'Andres' esta en la clave --> #{estudiante.index("Andres")} "
# tambien se puede con key
puts "En clave de 18 es --> #{estudiante.key(18)}"

# para convertir las claves en valores y los valores en clave
puts "Invert #{estudiante.invert}"

# combinar o unir dos hashes
datos_nuevos = {
	apellido: "Meza",
	genero: "Masculino"
}
puts "Merge: #{estudiante.merge(datos_nuevos)}"


