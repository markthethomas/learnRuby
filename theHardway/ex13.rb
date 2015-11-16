# ARGV is kinda like process.argv in node!
if ARGV.length < 2
  puts 'You need to provide at least 2 arguments to this script'
  exit
end
outputString, times = ARGV
# expands to outputString = ARGV[0], times = ARGV[1]

# puts "ARGV is #{ARGV.to_s}"
puts "ARGV is #{ARGV.inspect}"
puts "Arguments provided: #{ARGV.length}"
# We need to coerce the times arg into a number
# beacause otherwise it's implicitly a string
puts "#{outputString}\n" * times.to_i
