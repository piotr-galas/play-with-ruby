require './helper'

# shift
# shift(n)
# unshift(n)
# select
# select!
# delete
# delete_at


start 'alphabet.shift.to_s'
alphabet = ['a','b','c','d', 'e']
puts alphabet.shift.to_s
puts alphabet.to_s
stop

start 'alphabet.shift(3).to_s'
alphabet = ['a','b','c','d', 'e']
puts alphabet.shift(3).to_s
puts alphabet.to_s
stop

start 'alphabet.unshift(a).to_s'
alphabet = ['a','b','c','d', 'e']
puts alphabet.unshift('a').to_s
puts alphabet.to_s
stop

start 'alphabet.select{|element_value| element_value == a or element_value == d}'
alphabet = ['a','b','c','d', 'e']
puts alphabet.select{|element_value| element_value == 'a' or element_value == 'd'}.to_s
puts alphabet.to_s
stop
