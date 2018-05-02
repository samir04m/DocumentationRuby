=begin
	La convencion en Ruby para nombrar las clases es:
		1. En mayuscula la primera letra
		2. Se utiliza el camel case
=end

class Video
	# se indica los atributos que seran accesibles y modificables
	attr_accessor :minutes, :title

	# definicion del metodo constructor
	def initialize(title, minutes)
		self.title = title
		self.minutes = minutes
	end

	def play
	end

	def pause
	end

	def stop
	end
end

video = Video.new("Titulo",3)

puts "Titulo del video: #{video.title}"
puts "Minuto del video: #{video.minutes}"

