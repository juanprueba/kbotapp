Momento= ["Buen día", "Buenas tardes", "Buenas noches"]
class Kbot
    attr_reader :mensajes
    def initialize
        @mensajes= []
        @mensajes.push "Hola"
        @mensajes.push "¿Puedes decirme tu nombre?"
        @respuestas=0
    end
    def ingresa(mensaje, momento=0)
        @mensajes.push ">#{mensaje}"
        respuesta(mensaje, momento)
    end
    def respuesta(mensaje, momento=0)
        if @respuestas==0
            @mensajes.push "#{Momento[momento]}, #{mensaje}"
        else
            @mensajes.push "Gracias por tu consulta, nos pondremos en contacto contigo"
        end
        @respuestas+=1
    end
end
