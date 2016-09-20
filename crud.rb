require './post'
require './menu'

menu
action = gets.chomp

if action == '1'
  puts 'Digite sua mensagem!'
  message = gets.chomp
  Post.create(message)
  puts 'Veja sua mensagem postada'
  Post.read_last_one
end

if action == '2'
  puts 'Digite o Id referente qual mensagem deseja ler'
  puts 'Para ler todas as mensagens digite all'
  id_message = gets.chomp
  if id_message  == 'all'
    Post.read_all
  else
    Post.read_individual(id_message)
  end
end

if action == '3'
  puts 'Informe o id da mensagem que deseja atualizar'
  id_message = gets.chomp
  Post.read_individual(id_message)
  puts 'Digite a nova mensagem para o Post:'
  message_update = gets.chomp
  Post.update(message_update, id_message)
  puts 'Confira sua mensagem atualizada!'
  Post.read_individual(id_message)
end

if action == '4'
  puts 'Digite o Id da mensagem que deseja deletar'
  id_message = gets.chomp
  Post.read_individual(id_message)
  Post.delete(id_message)
  puts 'Esta mensagem foi deletada!'
end
