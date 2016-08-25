require 'pg'

def create(value)
  conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
  res = conn.exec("INSERT INTO posts(post) VALUES('#{value}')")

  res.clear
  conn.close
end
