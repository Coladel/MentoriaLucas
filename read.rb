require 'pg'

def read_individual(value)
conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
res = conn.exec("select post from posts where id = '#{value}'")
	res.each do |r|
    	puts r
    	end

res.clear
conn.close
end


def read_all
conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
res = conn.exec("select * from posts")
  res.each do |r|
      puts r
      end

res.clear
conn.close
end

def read_last_one
conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
res = conn.exec("select * from posts where id = (select max(id) from posts)")
  res.each do |r|
      puts r
      end

res.clear
conn.close
end

