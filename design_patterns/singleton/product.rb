require 'singleton'

class Product
  include Singleton

  def initialize
    puts 'ddsd'
  end

  def one
    puts 'some'
  end
end


Product.instance.one
Product.instance.one
Product.instance.one
