

def multiple_by(number)
  Proc.new { |n| n * number}
end


block_instnce = multiple_by(3)


# the n in block didn't change, it is fresh for all new invoke
puts block_instnce.call(10)
puts block_instnce.call(8)



# Proc can be used as argument in method


def multiply_proc(block_instance, number)
  block_instance.call(number)
end

puts multiply_proc(block_instnce, 5)

# return from block

def return_block
  block_instance = Proc.new { return puts "something"}
  block_instance.call
  puts 'it will not be print'
end

return_block

def return_lambda
  block_instance = lambda { return puts "something"}
  block_instance.call
  puts 'it will be print'
end

return_lambda

# interesting thing about



say = lambda {|something| puts something} # work also for Proc.new

say.call("Hello")

# same effect
say["Hello"]