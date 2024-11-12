import construcciones.*

class Persona{
    var edad
    var monedas = 20

    method esDestacada() = edad.between(18, 65) or monedas > 30

    method monedas() = monedas

    method edad() = edad

    method gastarMonedas(unaCantidad){
        monedas = 0.max( monedas - unaCantidad )
    }

    method ganarMonedas(unaCantidad){
        monedas = monedas + unaCantidad 
    }

    method cumplirAnios() {
        edad = edad + 1
    }
}


