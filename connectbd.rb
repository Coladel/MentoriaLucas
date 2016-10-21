require 'pg'
require 'dotenv'
Dotenv.load

def connect_bd_and_exec(sql_command)
  conn = PGconn.connect(ENV['DB_HOST'], ENV['DB_PORT'], nil, nil, ENV['DB_NAME'], ENV['DB_USER'], ENV['DB_PASSWORD'])
  conn.prepare 'user_action', "#{sql_command}"
  result = conn.exec_prepared 'user_action'
  conn.close
  result
end
