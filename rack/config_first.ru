# We can also use shortcut for server run `rackup`
# `rackup config_first.ru` run server
# `config_first.ru` must respond run method

rack_proc = lambda{ |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]] }

run rack_proc