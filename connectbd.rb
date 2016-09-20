require 'pg'
require 'dotenv'
Dotenv.load

def connect_bd_and_exec(sql_command)
  conn = PGconn.connect(ENV['DB_HOST'], ENV['DB_PORT'], nil, nil, ENV['DB_NAME'], ENV['DB_USER'], ENV['DB_PASSWORD'])
  res = conn.exec("#{sql_command}")
  res.each do |r|
    puts r
  end

  res.clear
  conn.close
end
