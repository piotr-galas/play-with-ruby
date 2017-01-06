require 'pry'

class Order
  def one_asterix(*xxx)
      "args are #{xxx.to_s}"
  end

  def param_with_options(a,*options)
      "#{a} has options #{options.to_s}"
  end

  def param_with_options_and_param(a,*options, b)
      "a = #{a} " + "options = #{options.to_s} " + "b = #{b}"
  end

  def param_with_options_and_two_param(a,*options, b, c)
      "a = #{a} " + "options = #{options.to_s} " + "b = #{b} + c = #{c}"
  end

  def hashe_method(a:,b:)
    puts a.to_s
  end


end

puts  "\n"
puts Order.new.one_asterix('a','b', 'c', 'd')
puts  "\n"
puts Order.new.param_with_options('a','b', 'c', 'd')
puts  "\n"
puts Order.new.param_with_options_and_param('a','b', 'c', 'd')
puts  "\n"

puts Order.new.param_with_options_and_param('a','b', 'c', 'd', 'e')
puts  "\n"

puts Order.new.param_with_options_and_param('a','b', 'c', 'd', 'e', 'f')
puts  "\n"

puts Order.new.param_with_options_and_two_param('a','b', 'c', 'd', 'e', 'f')
puts  "\n"



puts "x" * 30

Order.new.hashe_method(b: 'b_value', a: 'a_value')
