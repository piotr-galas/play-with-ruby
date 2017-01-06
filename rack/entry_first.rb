require 'rack'

# rack proc consist of followed required part:
# It must take argument env like rack_proc.call({})
# It must return array consist of
# - status code > 100,
# - headers
# - array of strings

rack_proc = lambda { |env| [200, {'Content-Type' => 'text/plain'}, ["Hello. The time is #{Time.now}"]] }


# We can use a few of included handlers, handlers just run server as process and speak with rack
puts Rack::Handler.constants


# This is the simplest rack application, juts run this file via `ruby entry_first.rb`  and go to localhost:xxxx

Rack::Handler::WEBrick.run rack_proc