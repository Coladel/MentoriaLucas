class Comment
  def self.find(id)
    puts "id: #{id}"
  end

  def text=(value)
    @text = value
  end

  def text
    @text
  end
end

# Comment.find(1)


# - title
# - comment body
# - user_id


comment = Comment.new
comment.text = "my comment"
puts comment.inspect
puts comment.text
