import wollok.vm.*
object tom {
    var energia = 50
    method comer(raton) {
      energia = 1000.min(energia + 12 + raton.peso())
    }

    method correr(distancia){
        energia = 0.max(energia - distancia / 2)
    }

    method velocidadMaxima() {
      return 5 + energia / 10
    }

    method energia(){
        return energia
    }

    method puedeCazar(distancia) {
      return energia >= distancia / 2
    }

    method cazar(raton, distancia) {
      if(self.puedeCazar(distancia)){
        self.correr(distancia)
        self.comer(raton)
      }
    }
}

object jerry {
  var edad = 2

  method peso(){
    return edad * 20
  }

  method cumplirAnios(){
    edad += 1
  }
}

object nibbles {
  method peso(){
    return 35
  }
}

// Inventar otro ratón

object topoChurros {
  method peso() {
    return 40
  }
}