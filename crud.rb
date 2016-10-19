require './post'
require './menu'

menu
action = gets.chomp

if action == '1'
  puts 'Digite seu post:'
  param_text = gets.chomp

  post = Post.new
  post.text = param_text
  post.create

  puts "Ultimo post cadastrado:"
  post.read_last_one
  #result = Post.read_last_one
  #post = Post.new
  #post.text = result
  #post
end

if action == '2'
  puts 'Digite o Id referente qual mensagem deseja ler'
  puts 'Para ler todas as mensagens digite all'
  id_message = gets.chomp

  post = Post.new
  post.id = id_message

  if post.id  == 'all'
    post.read_all #(aqui não caberia um metodo self como mais adequado pois nao tem entradas?)
  else
    post.read_individual(post.id)
  end
end

if action == '3'
  puts 'Informe o id da mensagem que deseja atualizar'
  id_message = gets.chomp

  post = Post.new
  post.id = id_message
  post.read_individual(post.id)

  puts 'Digite a nova mensagem para o Post:'
  message_update = gets.chomp

  post.text = message_update
  post.update(post.text, post.id)

  puts 'Confira sua mensagem atualizada!'
  post.read_individual(post.id)
end

if action == '4'
  puts 'Digite o Id da mensagem que deseja deletar'
  id_message = gets.chomp

  post=Post.new
  post.id = id_message
  post.read_individual(post.id)
  post.delete(post.id)
  puts 'Esta mensagem foi deletada!'
end
