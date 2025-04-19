import cosas.* 

object casa {
    const property cosas = #{}


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

    method vieneDeComprar(categoria){
        return cosas.last({ cosa =>
            cosa.categoria() == categoria})
    }

    method esDerrochona(){
        return cosas.sum({cosa => 
            cosa.precio()})
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
            cosa.categoria() == comida})
    }

    method queFaltaComprar(lista){
        return lista.filter({cosa =>
            not self.comprada(cosa)})
    }

    method faltaComida(){
        
    }

}