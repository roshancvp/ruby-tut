# Print "Hello, World!"
puts "Hello, World!"

# Arithmetic
a = 2 ** 3
b = 4 + 6
puts Math.sqrt(a + b)

# Functions
def hi
  puts "Hello, San Francisco"
end

# Calling Functions
# (parentheses optional)
hi

# More Functions
def hi(name)
  puts "Hello, #{name.capitalize}"
end

# Calling functions with arguments
hi "roshan"
hi("nirmala")

# Classes
class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

greeter = Greeter.new("Los Angeles")
greeter.say_hi   # Hi Los Angeles!
greeter.say_bye  # Bye Los Angeles, come back soon.

# Object Methods
puts Greeter.instance_methods          # All methods including ancestors
puts Greeter.instance_methods(false)   # User defined methods
Greeter.respond_to?("name")   # true

# Modifying Class access
class Greeter
  attr_accessor :name
end

greeter = Greeter.new("Portland")
greeter.say_hi   # Hi Portland!

greeter.name = "Seattle"
greeter.say_hi   # Hi Seattle!
