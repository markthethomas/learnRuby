filename = ARGV.first

if !File.exist?(filename)
  puts "File does not exist"
  exit
end

file = open(filename)

puts "Here is the file's history"
puts "=" * 20
puts "Created at #{file.birthtime}"
puts "Extension type: #{File.extname(file)} "
