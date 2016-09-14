class Dog
  # def self.find(id)
  #   # something like
  #   dogs = ['bob', 'rex']
  #   dog = new
  #   dog.name = dogs[id]
  #   dog
  # end

  def self.send_email
    puts "send e-mail"
  end

  def walk
    puts "andando"
  end

  def bark
    puts name unless name.nil?
    puts "latindo"
  end

  def name=(value)
    @name = value
  end

  def name
    @name
  end
end

# trex = Dog.find(0)
# puts trex.name

bob = Dog.new
bob.name = "bob"
puts bob.bark


rex = Dog.new
rex.name = "my dog rex"
puts rex.bark
