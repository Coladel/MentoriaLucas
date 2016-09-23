class Post
  def title=(value)
    @title = value
  end

  def title
    @title
  end

  def self.find(id)
    puts "calling class method .find"
  end

  def find(id)
    puts "calling class method #find"
  end
end

#######

# Post.find(1)

post1 = Post.new
post1.title = "post1 title"
puts post1.title

post2 = Post.new
post2.title = "post2 title"
puts post2.title
