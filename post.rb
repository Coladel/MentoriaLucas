require './connectbd'

class Post
  def initialize(attrs={})
       @id = attrs[:id]
       @text = attrs[:text]
  end

  def text=(value)
    @text = value
  end

  def text
    @text
  end

  def id
    @id
  end

  def self.posts
    DB[:posts]
  end

  def self.read_all
    ds = posts
    ds.each do |row|
      p row
    end
  end

  def self.read_individual(value)
    post_hash = posts.where(id: value).first
    new(id: post_hash[:id], text: post_hash[:message])
end

  def create
    ds = DB[:posts].insert(:message => text)
    ds
  end

  def self.read_last_one
    ds = posts.order(Sequel.desc(:id)).limit(1)
    ds.each do |row|
      p row
    end
  end

  def update
    ds = DB[:posts].where(:id => id).update(:message => text)
    ds
  end

  def delete
    ds = DB[:posts].where(:id => id).delete
    ds
  end

end
