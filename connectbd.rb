require 'pg'
require 'dotenv'
Dotenv.load

def connect_bd_and_exec(sql_command)
  conn = PGconn.connect(ENV['DB_HOST'], ENV['DB_PORT'], nil, nil, ENV['DB_NAME'], ENV['DB_USER'], ENV['DB_PASSWORD'])
  result = conn.exec("#{sql_command}")
  conn.close

  result
end
