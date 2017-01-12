require './lib/success'
require './lib/failure'

class Product
  def create
    result = Products::CreateOne.new(:car).call
    result.wrong_name { |params| puts params}
    result.wrong_length {  puts 'params'}
    result.wrong_notification {|message, picture, something| puts [message, picture.size, something].to_s}
    result.success{|picture| puts picture.size}
  end
end


module Products
  class CreateOne
    def initialize(name)
      @product_name = name
    end


    def call
      return Failure.new(:wrong_name, :wrong_name_message) if false
      return Failure.new(:wrong_length, :wrong_length_message) if false
      return Failure.new(:wrong_notification, :wrong_notification_message, Pictures.new, :third) if true
      return Failure.new(:wrong_price, :wrong_price_message) if false
      Success.new(Pictures.new)
    end
  end
end

class Pictures
  attr_reader :size, :color

  def initialize
    @size = '20'
    @color = 'black'
  end
end

Product.new.create
