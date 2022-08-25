require 'sinatra'
puts "Sinatra server #{Process.pid}"

sum = 0

get '/' do
  @contador = sum
  erb :index
end

post '/count' do
  sum += 1
  @contador = sum
  erb :index
end

