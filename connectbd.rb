require 'pg'
require 'dotenv'
Dotenv.load

def connect_bd_and_exec(sql_command)
  conn = PGconn.connect(ENV['DB_HOST'], ENV['DB_PORT'], nil, nil, ENV['DB_NAME'], ENV['DB_USER'], ENV['DB_PASSWORD'])
  conn.prepare 'user_action', "#{sql_command}"
  res = conn.exec_prepared 'user_action'
  res.each do |r|
  puts r
  end
  #puts res.values[a=>b]
  conn.close
end
