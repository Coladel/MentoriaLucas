require './connectbd'

def delete_post(value)
  connect_bd_and_exec("DELETE FROM posts WHERE id = '#{value}'")
end
