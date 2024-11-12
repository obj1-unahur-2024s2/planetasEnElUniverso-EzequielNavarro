class Construccion{
    const longitud

    method longitud() = longitud

    method valor()
}

class Muralla inherits Construccion{

    override method valor() =  longitud * 10
}

class Museo{
    const superficieCubierta
	var property indiceImportancia
    
	method valor() = superficieCubierta * indiceImportancia
}