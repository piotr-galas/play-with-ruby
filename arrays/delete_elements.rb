require './helper'

start 'alphabet.select!{|element_value| element_value == a or element_value == d}'
alphabet = ['a','b','c','d', 'e']
puts alphabet.select!{|element_value| element_value == 'a' or element_value == 'd'}.to_s
puts alphabet.to_s
stop


start 'alphabet.delete(d)'
alphabet = ['a','b','c','d', 'e']
puts alphabet.delete('d').to_s
puts alphabet.to_s
stop


start 'alphabet.delete_at(3)'
alphabet = ['a','b','c','d', 'e']
puts alphabet.delete_at(3).to_s
puts alphabet.to_s
stop


start 'alphabet.delete_if{|element_value| element_value == a})'
alphabet = ['a','b','c','d', 'e']
puts alphabet.delete_if{|element_value| element_value == 'a'}.to_s
puts alphabet.to_s
stop

start 'alphabet.drop(3)'
alphabet = ['a','b','c','d', 'e']
puts alphabet.drop(3).to_s
puts alphabet.to_s
stop
