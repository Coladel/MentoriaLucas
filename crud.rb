require './create'

puts 'CRUD do João, Gerencie aqui seus posts'

puts 'Digite o número referente a opção que deseja utilizar!'
puts
puts '1 - Criar Post'
puts '2 - Ler Post'
puts '3 - Alterar Post'
puts '4 - Deletar Post'

puts 'Informe a opção:'
action = gets.chomp

if action == '1'
  puts 'Digite sua mensagem!'
  message = gets.chomp

  create(message)
end

if action == '2'
  load 'read.rb'
end

if action =='3'
  load 'update.rb'
end

if action =='4'
  load 'delete.rb'
end
