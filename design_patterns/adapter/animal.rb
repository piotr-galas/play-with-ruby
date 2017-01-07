# https://www.sitepoint.com/using-and-testing-the-adapter-design-pattern/

require './adapter_module'
require './animals/cat'
require './animals/dog'
require './animals/owl'


# Standard approach

# class Animal
#   def speak(kind)
#     puts case kind
#            when :dog then "woof!"
#            when :cat then "meow!"
#            when :owl then "hoo!"
#          end
#   end
# end
#
# Animal.new.speak(:dog)


class Animal
  include AdapterModule
  include Animals::Cat
  include Animals::Owl
  include Animals::Dog
end

animal = Animal.new

animal.adapter = :owl
animal.adapter.speak
animal.adapter = :cat
animal.adapter.speak


