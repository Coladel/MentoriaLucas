puts "Digite sua mensagem!"
	mensagem = gets.chomp	

require 'pg'
conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
res = conn.exec("INSERT INTO posts(post) VALUES('#{mensagem}')")

res.clear
conn.close
