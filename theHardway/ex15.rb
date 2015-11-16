filename = ARGV.first

# Check to see if the file exists or is a zero-sized file
if !File.file?(filename) || !File.size?(filename)
  puts "File does not exist"
  exit
end

file = open(filename)

puts "Here is the file's history"
puts "=" * 20
puts "Created at #{file.birthtime}"
puts "Last modified at #{File.ctime(file)}"
puts "Last accessed at #{File.atime(file)}"
puts "Extension type: #{File.extname(file)} "
