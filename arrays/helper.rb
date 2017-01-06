
def start(description)
  puts "-"* 50
  puts "alphabet = #{['a','b','c','d', 'e'].to_s}"
end

def stop
  puts "alphabet after = #{@alphabet.to_s}"
  puts "-"* 50
  puts "\n"
  puts "\n"
  @alphabet = ['a','b','c','d', 'e']
end

def print_to_console(array, label)
  start(label)
  puts  "#{label} = #{array}"
  stop
end
