require 'pry'

class Product
  def price
    20
  end

  def quantity
    5
  end

  def to_s
    "Price is #{price}"
  end
end


 # Simple delegator


class ProductDecorator < SimpleDelegator
  def full_price
    price * quantity
  end
end


product = ProductDecorator.new(Product.new)
puts product.full_price
puts product.to_s #<ProductDelegator:0x007fb423303070>  problem here

# Basic object



class ProductDelegator
  def initialize(object)
    @object = object
  end

  def method_missing(method, *args, &block)
    @object.send(method)
  end

  def full_price
    price * quantity
  end
end

product = ProductDelegator.new(Product.new)
puts product.full_price
puts product.to_s #<ProductDelegator:0x007fb423303070>  problem here


class ProductDelegatorBasic < BasicObject
  def initialize(object)
    @object = object
  end

  def method_missing(method, *args, &block)
    @object.send(method)
  end

  def full_price
    price * quantity
  end
end


product = ProductDelegatorBasic.new(Product.new)
puts product.full_price
puts product.to_s #<ProductDelegator:0x007fb423303070>  problem here