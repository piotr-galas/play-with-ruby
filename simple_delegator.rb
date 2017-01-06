require 'delegate'

class Order
  def method1
    puts 'method1'
  end

  def method2
    puts 'method2'
  end
end

class OrderWithDiscount < SimpleDelegator
  def discount
    puts 'discount'
  end
end


# all method from Order class are available in OrderWithDiscount
# to achevie it, make class inherit SimpleDelegator, and put another class to initializer
order = Order.new
order_with_discount = OrderWithDiscount.new(order)


order_with_discount.method2
