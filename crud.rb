require './create'
require './read'
require './delete'
require './update'
require './main_menu'

menu

      if menu == '1'
        puts 'Digite sua mensagem!'
        message = gets.chomp
        create(message)
        puts "Veja sua mensagem postada"
        read_last_one
      end

      if menu == '2'
        puts "Digite o Id referente qual mensagem deseja ler"
        puts "Para ler todas as mensagens digite all"
        id_message = gets.chomp
            if id_message  == 'all'
              read_all
            else
              read_individual(id_message)
            end
      end

      if menu =='3'
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

      if menu =='4'
        puts "Digite o Id da mensagem que deseja deletar"
        id_message = gets.chomp

        delete_post(id_message)
      end

puts
puts "Gostaria de continuar no CRUD? (S ou N)"
puts
puts "Obrigado por usar o CRUD do João"
