require './helper'

# shift
# shift(n)
# unshift(n)
# select
# select!




@alphabet = ['a','b','c','d', 'e']

print_to_console(@alphabet.shift, 'alphabet.shift')
print_to_console(@alphabet.shift(3), 'alphabet.shift(3)')
print_to_console(@alphabet.unshift('a'), 'alphabet.unshift(a).')
print_to_console(@alphabet.select{|element_value| element_value == 'a' or element_value == 'd'},
                 'alphabet.select{|element_value| element_value == a or element_value == d}')

print_to_console(@alphabet.select!{|element_value| element_value == 'a' or element_value == 'd'},
                 'alphabet.select!{|element_value| element_value == a or element_value == d}')
print_to_console(@alphabet.first, 'alphabet.first')
print_to_console(@alphabet.first(3), 'alphabet.first(3)')
print_to_console(@alphabet.last, 'alphabet.last')
print_to_console(@alphabet.last(3), 'alphabet.last(3)')
print_to_console(@alphabet.take(3), 'alphabet.take(3)')
