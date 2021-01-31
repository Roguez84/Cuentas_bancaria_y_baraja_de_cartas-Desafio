#menciona Utilizar el ejercicio Carta creado en la primera parte y dejarlo en el archivo carta.rb
#menciona Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un arreglo.


class Carta
    attr_accessor :numero,:pinta
    def initialize(numero,pinta)
        @numero=numero
        @pinta=pinta
    end
end

#carta1 = Carta.new(12,'T')
#puts carta1