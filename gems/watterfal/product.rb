require 'waterfall'
require 'pry'


class Product
  include Waterfall

  def call
    chain { @xx = 'dd'}
    .chain { @yy = 'pp'}
    .when_falsy { false}
    .dam { puts 'error'}
    .chain {puts @xx + @yy}
  end

end

Product.new.call

