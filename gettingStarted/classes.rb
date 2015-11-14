class Thing
  # Constructor function!
  def initialize(prop)
    @name = prop
  end
  # A method
  def speak
    puts @name
  end
end

# Create a new thing
newThing = Thing.new('thing')

puts newThing.methods # get the methods of a thing