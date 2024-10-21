import accesorios.*

class Bicicletas {
  const rodado 
  const largo 
  const marca 
  var accesorios = []

  method altura() = rodado * 2.5 + 15

  method velocidadDeCrucero() = if(largo > 120){rodado + 6}else{rodado + 2}

  method cargaDeBici() = accesorios.sum({a => a.carga()})

  method pesoDeBici() {
    const pesoDeLaCarga = accesorios.sum({a => a.peso()})
    return rodado / 2 + pesoDeLaCarga
  }

  method tieneLuz() = accesorios.any({a => a.esLuminoso()})

  method accesoriosLivianos() = accesorios.count({a => a.peso() < 1})

  method esBiciRapida() {
    return self.velocidadDeCrucero() > 25
  }
}