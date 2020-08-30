require 'sinatra'
require './config'

get '/' do
    erb :index
end

post '/chat' do
    erb :chat
end