puts "Informe o id de qual mensagem deseja alterar:"
message_id = gets.chomp
puts "Digite a nova mensagem para o Post ID #{message_id}"
message_update = gets.chomp

require 'pg'
conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
res = conn.exec("UPDATE posts SET post = '#{message_update}' WHERE id = '#{message_id}'") 
	
res.clear
conn.close
