require './post_db'

class Post
  def text=(value)
    @text = value
  end

  def text
    @text
  end

  def create
    connect_bd_and_exec("INSERT INTO posts(text) VALUES('#{text}')")
  end

  def self.read_last_one
    result = PostDb.read_last_one

    post = new
    post.text = result.first['text'] # {"text" => "textooo"}
    post
  end
end
