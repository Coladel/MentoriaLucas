require './connectbd'

class Post
  def text=(value)
    @text = value
  end

  def text
    @text
  end

def id=(value)
    @id = value
  end

  def id
    @id
  end

  def create
    connect_bd_and_exec("INSERT INTO posts(message) VALUES('#{text}')")
  end

  def read_last_one
    connect_bd_and_exec("SELECT * FROM posts ORDER BY id DESC LIMIT 1")
  end

  def read_individual(value)
    connect_bd_and_exec("SELECT * FROM posts WHERE id = #{value}")
  end

  def read_all
    connect_bd_and_exec('SELECT * FROM posts')
  end

  def update(value, message_id)
    connect_bd_and_exec("UPDATE posts SET message = '#{value}' WHERE id = '#{message_id}'")
  end

  def delete(value)
    connect_bd_and_exec("DELETE FROM posts WHERE id = '#{value}'")
  end

end
