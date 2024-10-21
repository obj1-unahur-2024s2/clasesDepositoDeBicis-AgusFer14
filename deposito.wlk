import bicicletas.*

object deposito {
  const bicis = []

  method bicisRapidas() {
    bicis.filter({b => b.esBiciRapida()})
  }

  method marcasDeLasBicis() {
    bicis.filter({b => b.marca()}).asSet()
  }

  method esDepositoNocturno() {
    bicis.all({b => b.esLuminoso()})
  }

  method algunaBiciPuedeLlevar(pesoALlevar) {
    bicis.any({b => b.carga() == pesoALlevar})
  }
}