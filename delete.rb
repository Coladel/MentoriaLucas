puts "Informe o id de qual mensagem deseja apagar:"
message_id = gets.chomp

require 'pg'
conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
res = conn.exec("DELETE FROM posts WHERE id = '#{message_id}'") 
	
res.clear
conn.close
