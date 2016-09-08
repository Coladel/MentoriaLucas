require './connectbd'

def read_individual(value)
  connect_bd_and_exec("SELECT post FROM posts WHERE id = #{value}")
end

def read_all
  connect_bd_and_exec('SELECT * FROM posts')
end

def read_last_one
  connect_bd_and_exec('SELECT * FROM posts ORDER BY id DESC LIMIT 1')
end
