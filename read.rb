puts "Leia as mensagem já inclusas!"
	
require 'pg'
conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
res = conn.exec("select * from posts")
	res.each do |r|
    	puts r
    		end

res.clear
conn.close
