require './create'
require './read'
require './delete'
require './update'

      puts
      puts 'CRUD do João, Gerencie aqui seus posts'
      puts
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
        puts "Veja sua mensagem postada"
        read_last_one
      end

      if action == '2'
        puts "Digite o Id referente qual mensagem deseja ler"
        puts "Para ler todas as mensagens digite all"
        id_message = gets.chomp
            if id_message  == 'all'
              read_all
            else
              read_individual(id_message)
            end
      end

      if action =='3'
        puts "Se deseja atualizar a ultima mensagem digite 0"
        puts "Caso contrário informe o id da mensagem que deseja atualizar"
        id_message = gets.chomp
            if id_message == '0'
             read_last_one
              puts "Digite a nova mensagem para o Post:"
             message_update = gets.chomp
              update_last_post(message_update)
              puts "Confira sua mensagem atualizada!"
              read_last_one
            else
              read_individual(id_message)
              puts "Digite a nova mensagem para o Post:"
              message_update = gets.chomp
              update_choice_post(message_update, id_message)
              puts "Confira sua mensagem atualizada!"
              read_individual(id_message)
            end
      end

      if action =='4'
        puts "Digite o Id da mensagem que deseja deletar"
        id_message = gets.chomp
        read_individual(id_message)
        delete_post(id_message)
        puts "Esta mensagem foi deletada!"
      end
