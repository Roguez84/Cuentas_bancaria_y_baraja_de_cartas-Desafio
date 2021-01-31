require_relative 'carta.rb'

class Baraja
    attr_reader :cartas
    def initialize()
        cartas = []
        numeros = [1,2,3,4,5,6,7,8,9,10,11,12,13]
        pintas = ['C','D','E','T']
        pintas.each do |pinta|
            numeros.each do |numero|
                cartas.append(Carta.new(numero,pinta))
            end
        end
        @cartas = cartas
    end

    def barajar()
        @cartas = @cartas.shuffle
    end

    def sacar()
        @cartas.shift #shift es para sacar el primer elemento de un array, mientras que pop es para sacar el ultimo elemento
    end

    def repartir_mano()
        mano = []
        5.times {|carta| mano.append(@cartas[carta])}
    return mano
    end
end

#baraja1 = Baraja.new
# print baraja1.cartas
# baraja1.barajar
# puts "\n ahora barajadas \n"
# print baraja1.cartas
#puts baraja1.cartas.length
#puts baraja1.sacar.numero
#puts baraja1.cartas.length
#puts baraja1.repartir_mano[0].pinta
#puts baraja1.repartir_mano[0].numero