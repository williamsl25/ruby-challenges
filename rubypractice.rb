class MegaGreeter
  attr_accessor :names
  def initialize(names = "World")
    @names = names
  end

  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      #@names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else 
      puts "Hello, #{@names}!"
    end
  end

# if __FILE__ == $0
  # mg = MegaGreeter.new
  # mg.say_hi
# end
# => "Hello, World!""

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end
# if __FILE__ == $0
  # mg = MegaGreeter.new
  # mg.say_bye
# end
# => Goodbye World. Come back soon!

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to be "Lindsay"
  mg.names = "Lindsay"
  mg.say_hi
  mg.say_bye
  # => Hello, Lindsay! 
  # => Goodbye, Lindsay, Come back soon!

  # Change the name to an array of names
  mg.names = ["Blythe", "Lucy", "Ben",
    "Nico", "Townes"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end

# will return:

# Hello, World!
# Goodbye World. Come back soon!
# Hello, Lindsay!
# Goodbye Lindsay. Come back soon!
# Hello Blythe!
# Hello Lucy!
# Hello Ben!
# Hello Nico!
# Hello Townes!
# Goodbye Blythe, Lucy, Ben, Nico, Townes. Come back soon!
# ...
# ...

