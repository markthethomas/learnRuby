# Basic method definition
def someMethod
  print "I am a method"
end

# Some recursion
# Apparently TCO isn't supported by default?
def count(n)
  return if n.zero?
  print n
  count(n+1)
end

def args(a,b,c)
  puts self == self
end
