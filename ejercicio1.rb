class Usuario
    attr_accessor :nombre,:cuenta
    def initialize(nombre,cuenta)
        @nombre=nombre
        @cuenta=cuenta
    end
    def saldo_total()
        total = 0
        @cuenta.each do |i|
            total += i.saldo
        end
    return total
    end
end

class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo
    def initialize(banco, numero_de_cuenta,saldo=0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_destino)
        @saldo -=monto
        cuenta_destino.saldo +=monto
    end
    
end

cta1 = CuentaBancaria.new('BCI', '123456789',5000)
cta2 = CuentaBancaria.new('Santander', '987654321',5000)
cta3 = CuentaBancaria.new('Scotia', '345678901',5000)
usua1 = Usuario.new('juanito',[cta1,cta2])
usua2 = Usuario.new('pepito',[cta3])