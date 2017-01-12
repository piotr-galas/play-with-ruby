# frozen_string_literal: true

# Represents a result of an operation. Use Failure/Success to make it more concise
# Its recommended to use named args:
# result = Failure.new(:invalid, foo: 'bar')
# result.invalid { |foo:| puts foo }
# result = Success.new(foo: 'bar')
# result.success { |foo:| puts foo }
class Result
  def initialize(name, *params)
    @params = params

    define_singleton_method(name) do |&block|
      block.call(*@params)
    end
  end

  def method_missing(_method_name)
  end

  def values
    @params
  end

  def value
    raise 'There are more then single value, use .values method instead' if @params > 1
    @params.first
  end
end
