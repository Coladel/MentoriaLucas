require './connectbd'

def create(value)
  connect_bd_and_exec("INSERT INTO posts(post) VALUES('#{value}')")
end
