require 'pg'

def delete_post(value)
  conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
  res = conn.exec("DELETE FROM posts WHERE id = '#{value}'")
  res.clear
  conn.close
end
