print "Ingrese su username:"
user = gets.chomp

=begin
if user == "admin"
	puts "Administrador"
else 
	puts "Visitante"
end

puts (if user == "admin" then "Administrador" else "Visitante" end)

tipo_usuario = if user == "admin" then
	"Administrador"
else 
	"Visitante"
end
puts "El usuarios es un #{tipo_usuario}"

=end

# Operador ternario 
# si_condicion_se_cumple ? entonces_esto : sino_esto
puts user == "admin" ? "Administrador" : "Visitante"

