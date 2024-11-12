import construcciones.*
import personas.*

class Planeta{
    const property personas = [] 
    const property construcciones = []

    method agregarConstrucciones(listaConstrucciones){
        construcciones.clear()
        construcciones.addAll(listaConstrucciones)
    }

    method agregarPersonas(listaPersonas){
        personas.clear()
        personas.addAll(listaPersonas)
    }

    method delegacionDiplomatica(){
        const delegacion = []
        delegacion.addAll(self.habitantesDestacados())
        delegacion.add(self.habitanteConMasRecursos())
        return delegacion.asSet()
    }

    method habitantesDestacados(){
        return personas.filter({ p => p.esDestacada() })
    }

    method habitanteConMasRecursos(){
        return personas.max({ p => p.monedas()})
    }

    method esValioso(){
        return construcciones.all({ c => c.valor() > 100})
    }


}


