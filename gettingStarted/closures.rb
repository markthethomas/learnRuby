# There are 4 ways to use closures in Ruby

# Blocks
class Foo
  def initialize(baz)
    @name = baz
  end

  def identify
    puts @name
  end
end

Foo.new(baz = 'I am Foo!')

class Bar < Foo
  def foo
    print self.identify()
  end
end

Bar.new('I am bar! Inheriting from Foo')

arr = [1,2,3,5]
arr.each { |el| next}

# Let's create a block runner
def run_block
  yield if block_given?
end

run_block do
  puts "Hello World!"
end

# Monkey-patch array class
class Array
  def random_each(&b)
    # puts b => #<Proc:0x007fdb1a8f0e60>
    shuffle.each do |n|
      b.call n
    end
  end
end

[1,2,3,4,5].random_each do |el|
  puts el
end

