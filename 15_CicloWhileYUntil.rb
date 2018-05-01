
playlist = ["First Song","Second Song","Third Song"]
playing = true

index_song = 0

while (index_song < playlist.length) && playing
	puts "Reproduciendo #{playlist[index_song]}"
	index_song += 1

	print "Ingrese 1 si desea detener la reproduccion: "
	answer = gets.chomp.to_i
	# playing = false if answer == 1
	playing = answer != 1
end

# until(hasta que) es el inverso de while por asi decirlo, 
# se ejecuta miestra que la condicion sea falsa o hasta que sea verdadera

numero_magico = 4
print "Adivina el numero magico: "
numero_usurio = gets.chomp.to_i

until numero_usurio ==	numero_magico
	print "Incorrecto. Intenta de nuevo: "
	numero_usurio = gets.chomp.to_i
end

puts "Congratulations, lo has adivinado!"


# Sintaxis del ciclo do while
numero = 2
begin 
	puts numero
end while numero < 0

numero = -1
begin 
	puts numero
end until numero < 0


