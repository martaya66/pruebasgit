=begin

Nuestro programa:

1- salude a los usuarios
2- pida una cantidad al usuario(lo que sea)
3- calcula el importe
4- haga descuento por cantidad

=end

def say (nombre)
    print "Hola, Buenos dias, usuario #{nombre}"
    puts " ¿Cuantos cursos quieres? "
    gets.chomp
end

respuesta= say ("marta")
puts "la respuesta es: #{respuesta} cursos"
res=respuesta.to_i

print "para #{respuesta} cursos el precio es   #{res*10}"




