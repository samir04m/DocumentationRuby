# NOTA: Ruby NO soporta la herencia multiple, solo simple
# NOTA: Todas las clases que no se le indiquen herencia, 
# 		heredan implicitamente de la clase objects de Ruby

class Video
	attr_accessor :title, :duration

	def start
		puts "Inicio del video"
	end

	def setup title
		@title = title
	end
end

class YouTubeVideo < Video
	attr_accessor :youtube_id

	# De esta manera se sobreescribe un metodo de la super clase
	# 	y se adopta un comportamiento propio 
	def start
		puts "Ha iniciado la reproduccion"
	end

	def setup title
		# con "super" se le indica que implementara la logica de la super clase 
		super
		# y luego se definen funcionalidades extras
		puts "Logica extra"
	end
end

yt = YouTubeVideo.new
yt.title = "Nombre video YT"
yt.youtube_id = 1

puts yt.title
puts yt.youtube_id
puts yt.setup("Nuevo nombre")
puts yt.title

# En Ruby podemos redefinir o añadir metodos a las clases predeterminada
# Al modificar la clase object, todo estos cambios los tendra todos y cada
# uno de los objetos de Ruby
class Object
	def mi_metodo
		puts "Al ser un objeto heredo de Object"
	end
end

[].mi_metodo
"".mi_metodo
10.mi_metodo
yt.mi_metodo
