import cosas.* 

object casa {
    const property cosas = []

    method comprar(cosa){
        //registra una compra por ejemplo heladera
        cosas.add(cosa)
    }
    method cantidadDeCosasCompradas(){
        return cosas.size()
    }
    
    method tieneAlgun(categoria){
		return cosas.any({cosa => 
            cosa.categoria() == categoria})
	}

    method ultimoComprado() {
		return cosas.last()
	}

    method vieneDeComprar(categoria){
        return self.ultimoComprado().categoria() == categoria
    }

    method esDerrochona(){
        return cosas.sum({cosa => 
            cosa.precio()}) >= 9000
    }

    method compraMasCara() {
        return cosas.max({cosa => 
            cosa.precio()})
    }

    method comprados(categoria){
        return cosas.filter({cosa => 
            cosa.categoria() == categoria})
    }

    method malaEpoca(){
        return cosas.all({cosa =>
            cosa.categoria() == comida}) //No entiendo lo que me señala
    }

    method queFaltaComprar(lista){
        return lista.filter({cosa =>
            not self.comprados(cosa)})
    }

    method faltaComida(){
        
    }

}

object cuentaCorriente {
    var property saldo = 0

    method suma(_saldo){
        saldo += _saldo
    }

    method resta(_saldo){
        saldo -= _saldo
    }

}

object cuentaConGastos{
    var property saldo = 0
    var property costOperacion = 0

    const property deposito = 1000

    method suma(_saldo){
        saldo = saldo + _saldo - self.costOperacion()
    }

    method resta(_saldo){
        saldo = saldo - (_saldo + self.costOperacion())
    }


}