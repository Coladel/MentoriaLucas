require 'pg'

def read_individual(value)
  conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
  res = conn.exec("SELECT post FROM posts WHERE id = #{value}")
  res.each do |r|
    puts r
  end

  res.clear
  conn.close
end


def read_all
  conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
  res = conn.exec('SELECT * FROM posts')
  res.each do |r|
    puts r
  end

  res.clear
  conn.close
end

def read_last_one
  conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
  res = conn.exec('SELECT * FROM posts ORDER BY id DESC LIMIT 1')
  res.each do |r|
    puts r
  end

  res.clear
  conn.close
end

