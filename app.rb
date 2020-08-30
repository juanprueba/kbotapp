require 'sinatra'
require './config'
require './lib/kbot'

kbot= nil
get '/' do
    kbot= Kbot.new 
    erb :index
end

post '/chat' do
    if params[:ingreso]
        kbot.ingresa params[:ingreso]
    end
    @mensajes=  kbot.mensajes

    erb :chat
end