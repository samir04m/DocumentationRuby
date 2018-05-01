
puts "(10 > 5) && (0 == 1) -->  #{(10 > 5) && (0 == 1)}"
puts "(10 > 5) and (0 == 1) -->  #{(10 > 5) and (0 == 1)}"

puts "(10 > 5) || (0 == 1) -->  #{(10 > 5) || (0 == 1)}"
puts "(10 > 5) or (0 == 1) -->  #{(10 > 5) or (0 == 1)}"

puts "!true -->  #{!true}"
puts "(not true) -->  #{(not true)}"
puts "!false -->  #{!false}"
puts "(not false) -->  #{(not false)}"

=begin
	Jerarquia, Prioridad de operaciones
	1. **
	2. !
	3. * / 	%
	4. + -
	5. < > <= >=
	6. == <=> !=
	7. &&
	8. ||
	9. Asignacion
	10 not 
	11 or and
=end

# es falso porque el ! es de mayor precedencia que &&
# lo que quiere decir que primero niega y luego evalua si se cumplen las dos 
puts "!true && true -->  #{!true && true }"
