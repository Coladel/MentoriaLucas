require 'pg'
require 'dotenv'
Dotenv.load('keys.env')

def connect_bd_and_exec(sql_command)
  conn = PGconn.connect(ENV['DB_HOST'], 5432, nil, nil, ENV['DB_NAME'], ENV['DB_USER'], ENV['DB_SECRET_KEY'])
  res = conn.exec("#{sql_command}")
  res.each do |r|
    puts r
  end

  res.clear
  conn.close
end
