require 'pg'

def connect_bd_and_exec(sql_command)
  conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
  res = conn.exec("#{sql_command}")
  res.each do |r|
    puts r
  end

  res.clear
  conn.close
end
