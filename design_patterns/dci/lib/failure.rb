# frozen_string_literal: true

require './lib/result'


# Represents a failed operation. Use Success to represent success
# Its recommended to use named args:
# result = Failure.new(:invalid, foo: 'bar')
# result.invalid { |foo:| puts foo }
class Failure < Result
end
