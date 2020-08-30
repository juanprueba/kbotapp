require 'sinatra'
require './config'

historia=[]
get '/' do
    historia=[]
    erb :index
end

post '/chat' do
    if historia== []
        historia.push "Hola"
        historia.push "¿Puedes decirme tu nombre?"
    else
        historia.push ">#{params[:ingreso]}"
        historia.push "Buen día, #{params[:ingreso]}"
    end
    @mensajes= historia

    erb :chat
end