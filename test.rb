=begin
def suma (primero, segundo)
    puts primero, segundo
    puts primero + segundo
end

def resta(primero, segundo)
    puts primero, segundo
    puts primero - segundo  
end

suma 50, 100
resta 100, 50 


def espera (segundos)
    puts "En espera..."
    sleep segundos
    puts "Listo"
end

espera 1    
(primero, segundo)
    puts primero + segundo
end
 suma(suma (50,30),40)

=end

#"Madrid #(Time.now) Lo que sea"
=begin
def saludo(pregunta)
    print pregunta
    gets
end
=end

#puts "AA".length
#puts 3.odd?
#string="Aa"
#puts string.length
#puts "aaaa".length.even?
#puts 2.methods.sort
#p "7".class


#name = "Marta"
#puts "Hola #{name}, lo que sea"

#entero = 12
#decimal = 12.34

#p.entero.even?
=begin
def say (numero )
    print "Hola, Buenos dias, usuario"
    puts " ¿Introduce el #{numero} numero ? "
    gets.to_f
end

primero = say "primero"
segundo = say "prisegundo"
tercero = say "tercero"
cuarto = say "cuarto"
puts (primero+ segundo + tercero + cuarto)/4.0
=end

=begin
#se escapa con \\t si tiene ""  si no se pone ''
puts 'Cuando escribes  \t  en un string con comillas dobles se muestra así:'
puts "David \t  Pique"
puts 'Cuando escribes \n en un string con comillas dobles se muestra asi:'
puts "David \nPique"
=end
=begin
loop do
    print "Quieres segui?(s/n)"
    answer = gets.chomp.downcase
   
    if answer =="n"
        break
    end

end
=end


=begin
def repeat (string, times)
    fail "times debe ser 1 o mayor que 1"   if times<1
    counter = 0
    
    loop do
        puts string
        counter+=1
        if counter> times
            break
        end
    end
end

repeat("Hola clase" , 5)
=end




=begin
loop{
    print "Quieres segui?(s/n)"
    answer = gets.chomp.downcase
}
=end

=begin
random_number = Random.new.rand(5)

#puts random_number

loop do
   
    puts " Dame un numero del 1 al 5 "
    answer= gets.chomp
    #puts answer
    if answer == "e"
        break
    end 
    if answer.to_i == random_number
        puts"Has acertado"
        break
    else
        if answer .to_i!= random_number
            puts"No has  acertado je, je"
        end
    end

end

=end
=begin
answer=""
while answer != "n"
    print "Quieres eguir con este deproposito?(s/n)"
    answer=gets.chomp.downcase
end 
=end

=begin
def print_hello(repeticiones)
    i=0
    while i<repeticiones
        puts "saludos"
        i+=1
    end
end
answer=0
while answer <5
    print"Cuants veces repetimos?(+ de 5 se acaba la broma)"
    answer= gets.chomp.to_i
    print_hello(answer)
end
=end

=begin
answer=""
until answer == "no" do
    print "Cualquier tonteria otra vez"
    answer = gets.chomp
end
=end

=begin
array=[0,1,2,3,4,5,6,7,]

array.each do |valor|
    valor=valor+2
    puts "El valor en este momento es : #{valor}"
end
puts array.inspect

=end

=begin
business={"name"=> "Pixelpro", "location" =>"Madrid, MA"}

business.each do |key,value|
    puts"La clave es #{key} y el valor es #{value}"
end

business.each do |key|
    puts"La clave es #{key} "
end

business.each do |value|
    puts"el valor es #{value}"
end

5.times do
    puts "hola"
end
5.times do |item|
    puts "hola #{item}"
end

for item in 1..3 do
    puts "El valor es #{item}"
end

for item in ["Pixelpro","Cursos", "Online"]
    puts "El valor es #{item}"
end

=end

contact_list =[] 

def ask(question, kind="string")
    print question + " "
    answer = gets.chomp
    answer= answer.to_i if king=="number"
    return answer
end

answer=ask("Como te llamas?")
puts answer

#Creamos un hash con 2 claves. nombre= string y telefono=array
#Añadimos el nombre con el metodo ask
#Añadimos el telefono y preguntamos si quiere añadir otro
#Meter un loop para ver si tines mas telefonos y si tine los añadimos
def ask(question, kind="string")  # kind="string"  es la validacion del parametro anterior que tiene que ser string
    print question + " "
    answer = gets.chomp
    answer = answer.to_i if kind == "number"  # answr lo pasa a integer en caso que sea number
    return answer
end
  
  def add_contact
    #Creamos un hash con dos claves, nombreque es un string y telefono que es un array
    contact = {"name" => "", "phone_numbers" => []}
    #añadimos el nombre con el metodo ask creado previamente
    contact["name"] = ask("Introduce el nombre del contacto")
    answer = ""
    #Usamos un loop para ver si quiere añadir más o cerrar el programa
    while answer != "n"
      answer = ask("Quieres añadir un número de teléfono? (s/n)")
      #Si dice que si, volvemos a usar el metodo ask para pedir el telefono, si sigue añadiendo entremos en blucle
      if answer == "s"
        phone = ask("Introduce el número:")
        contact["phone_numbers"].push(phone)
      end
    end
    return contact
  end
  
  contact_list = []
  
  answer = ""
  while answer != "n"
    contact_list.push(add_contact())
    #Preguntamos si quiere añadir otro contacto
    answer = ask("Quieres añadir otro? (s/n)")
  end

contact_list.each do |key|
    puts"la persona  #{key} "
end
  




