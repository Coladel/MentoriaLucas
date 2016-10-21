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

  def self.read_last_one
    result = connect_bd_and_exec("SELECT * FROM posts ORDER BY id DESC LIMIT 1")

    post = new
    post.text = result.first['message']
    post
  end

  def self.read_individual(value)
    result = connect_bd_and_exec("SELECT * FROM posts WHERE id = #{value}")

    post = new
    post.id = result.first['id']
    post.text = result.first['message']
    post

  end

  def self.read_all
    result = connect_bd_and_exec('SELECT * FROM posts')
    posts = []
    result.each do |row|
      post = new
      post.text = row['message']
      posts << post
    end
    posts
  end

  def update
    connect_bd_and_exec("UPDATE posts SET message = '#{text}' WHERE id = '#{id}'")
  end

  def delete
    connect_bd_and_exec("DELETE FROM posts WHERE id = '#{id}'")
  end

end
