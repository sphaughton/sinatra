require 'sinatra'

get '/' do
  @name = %w(Coolguy Surfdog).sample
  erb :index
end

get '/hello' do
  @visitor = params[:name]
  erb :index
end

get '/secret' do
  'Stick around for joy!'
end