class Usuario
    attr_reader :cuentas

    def initialize(nombre,cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end

    def saldo_total
        saldo_t = @cuentas.map {|cuenta| cuenta.saldo}.sum
        "el saldo de todas tus cuentas es #{saldo_t}"
    end
end


class CuentaBancaria
    attr_accessor :saldo
    def initialize(banco, cuenta,saldo=0)
        @banco = banco
        @cuenta = cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_destino, cuenta_procedencia)
        raise ArgumentError, "no tienes saldo suficiente. Tu saldo es #{cuenta_procedencia.saldo} y tu quieres transferir #{monto}" if monto > cuenta_procedencia.saldo
        @cuenta -=monto
        cuenta_destino.saldo = cuenta_destino.saldo + monto
    end
end
