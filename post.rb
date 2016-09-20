require './connectbd'

class Post
  def self.create(value)
    connect_bd_and_exec("INSERT INTO posts(post) VALUES('#{value}')")
  end

  def self.delete(value)
    connect_bd_and_exec("DELETE FROM posts WHERE id = '#{value}'")
  end

  def self.update(value, message_id)
    connect_bd_and_exec("UPDATE posts SET post = '#{value}' WHERE id = '#{message_id}'")
  end

  def self.read_individual(value)
    connect_bd_and_exec("SELECT post FROM posts WHERE id = #{value}")
  end

  def self.read_all
    connect_bd_and_exec('SELECT * FROM posts')
  end

  def self.read_last_one
    connect_bd_and_exec('SELECT * FROM posts ORDER BY id DESC LIMIT 1')
  end
end
