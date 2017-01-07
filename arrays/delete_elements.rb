require './helper'

@alphabet = ['a','b','c','d', 'e']


print_to_console(@alphabet.delete('d'), 'alphabet.delete(d)')
print_to_console(@alphabet.delete_at(3), 'alphabet.delete_at(3)')
print_to_console(@alphabet.delete_if{|element_value| element_value == 'a'}, 'alphabet.delete_if{|element_value| element_value == a})')
print_to_console(@alphabet.reject{|element_value| element_value == 'a'}, 'alphabet.reject{|element_value| element_value == a})')
print_to_console(@alphabet.reject!{|element_value| element_value == 'a'}, 'alphabet.reject!{|element_value| element_value == a})')
print_to_console(@alphabet.reject, 'alphabet.reject')