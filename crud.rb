puts "CRUD do João, Gerencie aqui seus posts"

puts "Digite o número referente a opção que deseja utilizar!"
puts
puts "1 - Criar Post"
puts "2 - Ler Post"
puts "3 - Alterar Post"
puts "4 - Deletar Post" 


puts "Informe a opção:"
opcao = gets.chomp

if opcao == '1'
	load "Create.rb"
end

if opcao == '2'
	load "read.rb"
end

if opcao =='3'
	load 'update.rb'
end

if opcao =='4'
	load 'delete.rb'
end
