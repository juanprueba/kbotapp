require './lib/kbot'

describe Kbot do
    it "inicia con Hola" do
        kbot= Kbot.new
        msg= kbot.mensajes
        expect(msg[0]).to eq "Hola"
    end    
    it "eco cuando saluda nombre" do
        kbot= Kbot.new
        ult= kbot.mensajes.length-1
        kbot.ingresa "Pepe"
        msg= kbot.mensajes
        expect(msg[ult+1]).to eq ">Pepe"
    end    
end