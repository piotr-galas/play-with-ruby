require 'rack'

# rack_method could also be method

def rack_method(env)
   [200, {'Content-Type' => 'text/plain'}, ["Hello. The time is #{Time.now}"]]
end


# juts run this file via `ruby entry_first.rb`  and go to localhost:xxxx
Rack::Handler::WEBrick.run method(:rack_method)