# Basic method definition
def someMethod
  print "I am a method"
end

# Some recursion
# Apparently TCO isn't supported by default?
def countTo(n, stop)
  return if n == stop
  print n
  # ruby has implicit returns, sort of like JS. Last statement is implicitly returned
  countTo(n+1, stop)
end

def args(a,b,c)
  puts self == self
end

class Bar
  def bar
    puts "bar"
  end
end

class Foo < Bar
  def bar
    puts "Foo"
  end
end

newFoo = Foo.new
# Polymorphism — overrides superclass method
newFoo.bar

# checks to see if the instance is an instance of a class — doens't check ancestors
puts newFoo.instance_of? Foo

# Checks to see if is class or inherits from <class>
puts "Is newFoo an instance of Bar?: #{newFoo.is_a? Bar}" # inherits from Bar
puts "Is newFoo an instance of Foo?: #{newFoo.is_a? Foo}" # is an instance of Foo