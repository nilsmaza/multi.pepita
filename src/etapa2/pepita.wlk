import comidas.*

/*
 * p.ej. pepita.comer(alpiste, 300) o pepita.comer(alcaucil, 50) 
 */
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { 
		return self.energia() < 50
	}
	
	method estaFeliz() { 
		return 500 < self.energia()
	}
		
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	
	method salirAComer() {
		self.volar(5)
		self.comer(alpiste,80)
		self.volar(5)
				// "self" es una referencia al objeto que recibe el mensaje
		// ... completar este metodo con las otra acciones sobre self
	}
	
	method llegadaAComer(){
		self.comer(alpiste,5)
	}
	
	method haceLoQueQuieras() { 
		if (self.estaFeliz()) { self.comer(canelones,10) }
		} 
	
	method xuandoeEtaDevil() { 
		if (self.estaDebil()) { self.comer(alcaucil,20) }
		} 
		
	method cuandoEstaFeliz(){
		if(self.estaFeliz()){ self.volar(8)	}
		}
	}